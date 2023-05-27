return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/realtime-bidding"] = {
          description = "See, create, edit, and delete your Authorized Buyers and Open Bidding account entities",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://realtimebidding.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Real-time Bidding",
  description = "Allows external bidders to manage their RTB integration with Google. This includes managing bidder endpoints, QPS quotas, configuring what ad inventory to receive via pretargeting, submitting creatives for verification, and accessing creative metadata such as approval status.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/authorized-buyers/apis/realtimebidding/reference/rest/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "realtimebidding:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://realtimebidding.mtls.googleapis.com/",
  name = "realtimebidding",
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
    bidders = {
      methods = {
        get = {
          description = "Gets a bidder account by its name.",
          flatPath = "v1/bidders/{biddersId}",
          httpMethod = "GET",
          id = "realtimebidding.bidders.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the bidder to get. Format: `bidders/{bidderAccountId}`",
              location = "path",
              pattern = "^bidders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Bidder",
          },
          scopes = {
            "https://www.googleapis.com/auth/realtime-bidding",
          },
        },
        list = {
          description = "Lists all the bidder accounts that belong to the caller.",
          flatPath = "v1/bidders",
          httpMethod = "GET",
          id = "realtimebidding.bidders.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of bidders to return. If unspecified, at most 100 bidders will be returned. The maximum value is 500; values above 500 will be coerced to 500.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token identifying a page of results the server should return. This value is received from a previous `ListBidders` call in ListBiddersResponse.nextPageToken.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/bidders",
          response = {
            ["$ref"] = "ListBiddersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/realtime-bidding",
          },
        },
      },
      resources = {
        creatives = {
          methods = {
            list = {
              description = "Lists creatives as they are at the time of the initial request. This call may take multiple hours to complete. For large, paginated requests, this method returns a snapshot of creatives at the time of request for the first page. `lastStatusUpdate` and `creativeServingDecision` may be outdated for creatives on sequential pages. We recommend [Google Cloud Pub/Sub](//cloud.google.com/pubsub/docs/overview) to view the latest status.",
              flatPath = "v1/bidders/{biddersId}/creatives",
              httpMethod = "GET",
              id = "realtimebidding.bidders.creatives.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Query string to filter creatives. If no filter is specified, all active creatives will be returned. Example: 'accountId=12345 AND (dealsStatus:DISAPPROVED AND disapprovalReason:UNACCEPTABLE_CONTENT) OR declaredAttributes:IS_COOKIE_TARGETED'",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The server may return fewer creatives than requested (due to timeout constraint) even if more are available through another call. If unspecified, server will pick an appropriate default. Acceptable values are 1 to 1000, inclusive.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results the server should return. Typically, this is the value of ListCreativesResponse.nextPageToken returned from the previous call to the 'ListCreatives' method. Page tokens for continued pages are valid for up to five hours, counting from the call to 'ListCreatives' for the first page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the parent buyer that owns the creatives. The pattern for this resource is either `buyers/{buyerAccountId}` or `bidders/{bidderAccountId}`. For `buyers/{buyerAccountId}`, the `buyerAccountId` can be one of the following: 1. The ID of the buyer that is accessing their own creatives. 2. The ID of the child seat buyer under a bidder account. So for listing creatives pertaining to the child seat buyer (`456`) under bidder account (`123`), you would use the pattern: `buyers/456`. 3. The ID of the bidder itself. So for listing creatives pertaining to bidder (`123`), you would use `buyers/123`. If you want to access all creatives pertaining to both the bidder and all of its child seat accounts, you would use `bidders/{bidderAccountId}`, for example, for all creatives pertaining to bidder (`123`), use `bidders/123`.",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Controls the amount of information included in the response. By default only creativeServingDecision is included. To retrieve the entire creative resource (including the declared fields and the creative content) specify the view as \"FULL\".",
                  enum = {
                    "CREATIVE_VIEW_UNSPECIFIED",
                    "SERVING_DECISION_ONLY",
                    "FULL",
                  },
                  enumDescriptions = {
                    "Not specified, equivalent to SERVING_DECISION_ONLY.",
                    "Only creativeServingDecision is included in the response.",
                    "The entire creative resource (including the declared fields and the creative content) is included in the response.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/creatives",
              response = {
                ["$ref"] = "ListCreativesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            watch = {
              description = "Watches all creatives pertaining to a bidder. It is sufficient to invoke this endpoint once per bidder. A Pub/Sub topic will be created and notifications will be pushed to the topic when any of the bidder's creatives change status. All of the bidder's service accounts will have access to read from the topic. Subsequent invocations of this method will return the existing Pub/Sub configuration.",
              flatPath = "v1/bidders/{biddersId}/creatives:watch",
              httpMethod = "POST",
              id = "realtimebidding.bidders.creatives.watch",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. To watch all creatives pertaining to the bidder and all its child seat accounts, the bidder must follow the pattern `bidders/{bidderAccountId}`.",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/creatives:watch",
              request = {
                ["$ref"] = "WatchCreativesRequest",
              },
              response = {
                ["$ref"] = "WatchCreativesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
          },
        },
        endpoints = {
          methods = {
            get = {
              description = "Gets a bidder endpoint by its name.",
              flatPath = "v1/bidders/{biddersId}/endpoints/{endpointsId}",
              httpMethod = "GET",
              id = "realtimebidding.bidders.endpoints.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the bidder endpoint to get. Format: `bidders/{bidderAccountId}/endpoints/{endpointId}`",
                  location = "path",
                  pattern = "^bidders/[^/]+/endpoints/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Endpoint",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            list = {
              description = "Lists all the bidder's endpoints.",
              flatPath = "v1/bidders/{biddersId}/endpoints",
              httpMethod = "GET",
              id = "realtimebidding.bidders.endpoints.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of endpoints to return. If unspecified, at most 100 endpoints will be returned. The maximum value is 500; values above 500 will be coerced to 500.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results the server should return. This value is received from a previous `ListEndpoints` call in ListEndpointsResponse.nextPageToken.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the bidder whose endpoints will be listed. Format: `bidders/{bidderAccountId}`",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/endpoints",
              response = {
                ["$ref"] = "ListEndpointsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            patch = {
              description = "Updates a bidder's endpoint.",
              flatPath = "v1/bidders/{biddersId}/endpoints/{endpointsId}",
              httpMethod = "PATCH",
              id = "realtimebidding.bidders.endpoints.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Name of the endpoint resource that must follow the pattern `bidders/{bidderAccountId}/endpoints/{endpointId}`, where {bidderAccountId} is the account ID of the bidder who operates this endpoint, and {endpointId} is a unique ID assigned by the server.",
                  location = "path",
                  pattern = "^bidders/[^/]+/endpoints/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Field mask to use for partial in-place updates.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Endpoint",
              },
              response = {
                ["$ref"] = "Endpoint",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
          },
        },
        pretargetingConfigs = {
          methods = {
            activate = {
              description = "Activates a pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:activate",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.activate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:activate",
              request = {
                ["$ref"] = "ActivatePretargetingConfigRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            addTargetedApps = {
              description = "Adds targeted apps to the pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:addTargetedApps",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.addTargetedApps",
              parameterOrder = {
                "pretargetingConfig",
              },
              parameters = {
                pretargetingConfig = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+pretargetingConfig}:addTargetedApps",
              request = {
                ["$ref"] = "AddTargetedAppsRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            addTargetedPublishers = {
              description = "Adds targeted publishers to the pretargeting config.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:addTargetedPublishers",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.addTargetedPublishers",
              parameterOrder = {
                "pretargetingConfig",
              },
              parameters = {
                pretargetingConfig = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+pretargetingConfig}:addTargetedPublishers",
              request = {
                ["$ref"] = "AddTargetedPublishersRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            addTargetedSites = {
              description = "Adds targeted sites to the pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:addTargetedSites",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.addTargetedSites",
              parameterOrder = {
                "pretargetingConfig",
              },
              parameters = {
                pretargetingConfig = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+pretargetingConfig}:addTargetedSites",
              request = {
                ["$ref"] = "AddTargetedSitesRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            create = {
              description = "Creates a pretargeting configuration. A pretargeting configuration's state (PretargetingConfig.state) is active upon creation, and it will start to affect traffic shortly after. A bidder may create a maximum of 10 pretargeting configurations. Attempts to exceed this maximum results in a 400 bad request error.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the bidder to create the pretargeting configuration for. Format: bidders/{bidderAccountId}",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/pretargetingConfigs",
              request = {
                ["$ref"] = "PretargetingConfig",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            delete = {
              description = "Deletes a pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}",
              httpMethod = "DELETE",
              id = "realtimebidding.bidders.pretargetingConfigs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the pretargeting configuration to delete. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            get = {
              description = "Gets a pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}",
              httpMethod = "GET",
              id = "realtimebidding.bidders.pretargetingConfigs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the pretargeting configuration to get. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            list = {
              description = "Lists all pretargeting configurations for a single bidder.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs",
              httpMethod = "GET",
              id = "realtimebidding.bidders.pretargetingConfigs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of pretargeting configurations to return. If unspecified, at most 10 pretargeting configurations will be returned. The maximum value is 100; values above 100 will be coerced to 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results the server should return. This value is received from a previous `ListPretargetingConfigs` call in ListPretargetingConfigsResponse.nextPageToken.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the bidder whose pretargeting configurations will be listed. Format: bidders/{bidderAccountId}",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/pretargetingConfigs",
              response = {
                ["$ref"] = "ListPretargetingConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            patch = {
              description = "Updates a pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}",
              httpMethod = "PATCH",
              id = "realtimebidding.bidders.pretargetingConfigs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Name of the pretargeting configuration that must follow the pattern `bidders/{bidder_account_id}/pretargetingConfigs/{config_id}`",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Field mask to use for partial in-place updates.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "PretargetingConfig",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            removeTargetedApps = {
              description = "Removes targeted apps from the pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:removeTargetedApps",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.removeTargetedApps",
              parameterOrder = {
                "pretargetingConfig",
              },
              parameters = {
                pretargetingConfig = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+pretargetingConfig}:removeTargetedApps",
              request = {
                ["$ref"] = "RemoveTargetedAppsRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            removeTargetedPublishers = {
              description = "Removes targeted publishers from the pretargeting config.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:removeTargetedPublishers",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.removeTargetedPublishers",
              parameterOrder = {
                "pretargetingConfig",
              },
              parameters = {
                pretargetingConfig = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+pretargetingConfig}:removeTargetedPublishers",
              request = {
                ["$ref"] = "RemoveTargetedPublishersRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            removeTargetedSites = {
              description = "Removes targeted sites from the pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:removeTargetedSites",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.removeTargetedSites",
              parameterOrder = {
                "pretargetingConfig",
              },
              parameters = {
                pretargetingConfig = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+pretargetingConfig}:removeTargetedSites",
              request = {
                ["$ref"] = "RemoveTargetedSitesRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            suspend = {
              description = "Suspends a pretargeting configuration.",
              flatPath = "v1/bidders/{biddersId}/pretargetingConfigs/{pretargetingConfigsId}:suspend",
              httpMethod = "POST",
              id = "realtimebidding.bidders.pretargetingConfigs.suspend",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the pretargeting configuration. Format: bidders/{bidderAccountId}/pretargetingConfig/{configId}",
                  location = "path",
                  pattern = "^bidders/[^/]+/pretargetingConfigs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:suspend",
              request = {
                ["$ref"] = "SuspendPretargetingConfigRequest",
              },
              response = {
                ["$ref"] = "PretargetingConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
          },
        },
        publisherConnections = {
          methods = {
            batchApprove = {
              description = "Batch approves multiple publisher connections.",
              flatPath = "v1/bidders/{biddersId}/publisherConnections:batchApprove",
              httpMethod = "POST",
              id = "realtimebidding.bidders.publisherConnections.batchApprove",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The bidder for whom publisher connections will be approved. Format: `bidders/{bidder}` where `{bidder}` is the account ID of the bidder.",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/publisherConnections:batchApprove",
              request = {
                ["$ref"] = "BatchApprovePublisherConnectionsRequest",
              },
              response = {
                ["$ref"] = "BatchApprovePublisherConnectionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            batchReject = {
              description = "Batch rejects multiple publisher connections.",
              flatPath = "v1/bidders/{biddersId}/publisherConnections:batchReject",
              httpMethod = "POST",
              id = "realtimebidding.bidders.publisherConnections.batchReject",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The bidder for whom publisher connections will be rejected. Format: `bidders/{bidder}` where `{bidder}` is the account ID of the bidder.",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/publisherConnections:batchReject",
              request = {
                ["$ref"] = "BatchRejectPublisherConnectionsRequest",
              },
              response = {
                ["$ref"] = "BatchRejectPublisherConnectionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            get = {
              description = "Gets a publisher connection.",
              flatPath = "v1/bidders/{biddersId}/publisherConnections/{publisherConnectionsId}",
              httpMethod = "GET",
              id = "realtimebidding.bidders.publisherConnections.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the publisher whose connection information is to be retrieved. In the pattern `bidders/{bidder}/publisherConnections/{publisher}` where `{bidder}` is the account ID of the bidder, and `{publisher}` is the ads.txt/app-ads.txt publisher ID. See publisherConnection.name.",
                  location = "path",
                  pattern = "^bidders/[^/]+/publisherConnections/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "PublisherConnection",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            list = {
              description = "Lists publisher connections for a given bidder.",
              flatPath = "v1/bidders/{biddersId}/publisherConnections",
              httpMethod = "GET",
              id = "realtimebidding.bidders.publisherConnections.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Query string to filter publisher connections. Connections can be filtered by `displayName`, `publisherPlatform`, and `biddingState`. If no filter is specified, all publisher connections will be returned. Example: 'displayName=\"Great Publisher*\" AND publisherPlatform=ADMOB AND biddingState != PENDING' See https://google.aip.dev/160 for more information about filtering syntax.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Order specification by which results should be sorted. If no sort order is specified, the results will be returned in alphabetic order based on the publisher's publisher code. Results can be sorted by `createTime`. Example: 'createTime DESC'.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The server may return fewer results than requested (due to timeout constraint) even if more are available through another call. If unspecified, the server will pick an appropriate default. Acceptable values are 1 to 5000, inclusive.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results the server should return. Typically, this is the value of ListPublisherConnectionsResponse.nextPageToken returned from the previous call to the 'ListPublisherConnections' method.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the bidder for which publishers have initiated connections. The pattern for this resource is `bidders/{bidder}` where `{bidder}` represents the account ID of the bidder.",
                  location = "path",
                  pattern = "^bidders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/publisherConnections",
              response = {
                ["$ref"] = "ListPublisherConnectionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
          },
        },
      },
    },
    buyers = {
      methods = {
        get = {
          description = "Gets a buyer account by its name.",
          flatPath = "v1/buyers/{buyersId}",
          httpMethod = "GET",
          id = "realtimebidding.buyers.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the buyer to get. Format: `buyers/{buyerId}`",
              location = "path",
              pattern = "^buyers/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Buyer",
          },
          scopes = {
            "https://www.googleapis.com/auth/realtime-bidding",
          },
        },
        getRemarketingTag = {
          description = "Gets remarketing tag for a buyer. A remarketing tag is a piece of JavaScript code that can be placed on a web page. When a user visits a page containing a remarketing tag, Google adds the user to a user list.",
          flatPath = "v1/buyers/{buyersId}:getRemarketingTag",
          httpMethod = "GET",
          id = "realtimebidding.buyers.getRemarketingTag",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. To fetch remarketing tag for an account, name must follow the pattern `buyers/{accountId}` where `{accountId}` represents ID of a buyer that owns the remarketing tag. For a bidder accessing remarketing tag on behalf of a child seat buyer, `{accountId}` should represent the ID of the child seat buyer. To fetch remarketing tag for a specific user list, name must follow the pattern `buyers/{accountId}/userLists/{userListId}`. See UserList.name.",
              location = "path",
              pattern = "^buyers/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:getRemarketingTag",
          response = {
            ["$ref"] = "GetRemarketingTagResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/realtime-bidding",
          },
        },
        list = {
          description = "Lists all buyer account information the calling buyer user or service account is permissioned to manage.",
          flatPath = "v1/buyers",
          httpMethod = "GET",
          id = "realtimebidding.buyers.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of buyers to return. If unspecified, at most 100 buyers will be returned. The maximum value is 500; values above 500 will be coerced to 500.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token identifying a page of results the server should return. This value is received from a previous `ListBuyers` call in ListBuyersResponse.nextPageToken.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/buyers",
          response = {
            ["$ref"] = "ListBuyersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/realtime-bidding",
          },
        },
      },
      resources = {
        creatives = {
          methods = {
            create = {
              description = "Creates a creative.",
              flatPath = "v1/buyers/{buyersId}/creatives",
              httpMethod = "POST",
              id = "realtimebidding.buyers.creatives.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the parent buyer that the new creative belongs to that must follow the pattern `buyers/{buyerAccountId}`, where `{buyerAccountId}` represents the account ID of the buyer who owns a creative. For a bidder accessing creatives on behalf of a child seat buyer, `{buyerAccountId}` should represent the account ID of the child seat buyer.",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/creatives",
              request = {
                ["$ref"] = "Creative",
              },
              response = {
                ["$ref"] = "Creative",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            get = {
              description = "Gets a creative.",
              flatPath = "v1/buyers/{buyersId}/creatives/{creativesId}",
              httpMethod = "GET",
              id = "realtimebidding.buyers.creatives.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the creative to retrieve. See creative.name.",
                  location = "path",
                  pattern = "^buyers/[^/]+/creatives/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Controls the amount of information included in the response. By default only creativeServingDecision is included. To retrieve the entire creative resource (including the declared fields and the creative content) specify the view as \"FULL\".",
                  enum = {
                    "CREATIVE_VIEW_UNSPECIFIED",
                    "SERVING_DECISION_ONLY",
                    "FULL",
                  },
                  enumDescriptions = {
                    "Not specified, equivalent to SERVING_DECISION_ONLY.",
                    "Only creativeServingDecision is included in the response.",
                    "The entire creative resource (including the declared fields and the creative content) is included in the response.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Creative",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            list = {
              description = "Lists creatives as they are at the time of the initial request. This call may take multiple hours to complete. For large, paginated requests, this method returns a snapshot of creatives at the time of request for the first page. `lastStatusUpdate` and `creativeServingDecision` may be outdated for creatives on sequential pages. We recommend [Google Cloud Pub/Sub](//cloud.google.com/pubsub/docs/overview) to view the latest status.",
              flatPath = "v1/buyers/{buyersId}/creatives",
              httpMethod = "GET",
              id = "realtimebidding.buyers.creatives.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Query string to filter creatives. If no filter is specified, all active creatives will be returned. Example: 'accountId=12345 AND (dealsStatus:DISAPPROVED AND disapprovalReason:UNACCEPTABLE_CONTENT) OR declaredAttributes:IS_COOKIE_TARGETED'",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The server may return fewer creatives than requested (due to timeout constraint) even if more are available through another call. If unspecified, server will pick an appropriate default. Acceptable values are 1 to 1000, inclusive.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results the server should return. Typically, this is the value of ListCreativesResponse.nextPageToken returned from the previous call to the 'ListCreatives' method. Page tokens for continued pages are valid for up to five hours, counting from the call to 'ListCreatives' for the first page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the parent buyer that owns the creatives. The pattern for this resource is either `buyers/{buyerAccountId}` or `bidders/{bidderAccountId}`. For `buyers/{buyerAccountId}`, the `buyerAccountId` can be one of the following: 1. The ID of the buyer that is accessing their own creatives. 2. The ID of the child seat buyer under a bidder account. So for listing creatives pertaining to the child seat buyer (`456`) under bidder account (`123`), you would use the pattern: `buyers/456`. 3. The ID of the bidder itself. So for listing creatives pertaining to bidder (`123`), you would use `buyers/123`. If you want to access all creatives pertaining to both the bidder and all of its child seat accounts, you would use `bidders/{bidderAccountId}`, for example, for all creatives pertaining to bidder (`123`), use `bidders/123`.",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Controls the amount of information included in the response. By default only creativeServingDecision is included. To retrieve the entire creative resource (including the declared fields and the creative content) specify the view as \"FULL\".",
                  enum = {
                    "CREATIVE_VIEW_UNSPECIFIED",
                    "SERVING_DECISION_ONLY",
                    "FULL",
                  },
                  enumDescriptions = {
                    "Not specified, equivalent to SERVING_DECISION_ONLY.",
                    "Only creativeServingDecision is included in the response.",
                    "The entire creative resource (including the declared fields and the creative content) is included in the response.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/creatives",
              response = {
                ["$ref"] = "ListCreativesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            patch = {
              description = "Updates a creative.",
              flatPath = "v1/buyers/{buyersId}/creatives/{creativesId}",
              httpMethod = "PATCH",
              id = "realtimebidding.buyers.creatives.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Name of the creative. Follows the pattern `buyers/{buyer}/creatives/{creative}`, where `{buyer}` represents the account ID of the buyer who owns the creative, and `{creative}` is the buyer-specific creative ID that references this creative in the bid response.",
                  location = "path",
                  pattern = "^buyers/[^/]+/creatives/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Field mask to use for partial in-place updates.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Creative",
              },
              response = {
                ["$ref"] = "Creative",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
          },
        },
        userLists = {
          methods = {
            close = {
              description = "Change the status of a user list to CLOSED. This prevents new users from being added to the user list.",
              flatPath = "v1/buyers/{buyersId}/userLists/{userListsId}:close",
              httpMethod = "POST",
              id = "realtimebidding.buyers.userLists.close",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the user list to close. See UserList.name",
                  location = "path",
                  pattern = "^buyers/[^/]+/userLists/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:close",
              request = {
                ["$ref"] = "CloseUserListRequest",
              },
              response = {
                ["$ref"] = "UserList",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            create = {
              description = "Create a new user list.",
              flatPath = "v1/buyers/{buyersId}/userLists",
              httpMethod = "POST",
              id = "realtimebidding.buyers.userLists.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the parent buyer of the user list to be retrieved that must follow the pattern `buyers/{buyerAccountId}`, where `{buyerAccountId}` represents the account ID of the buyer who owns user lists. For a bidder accessing user lists on behalf of a child seat buyer , `{buyerAccountId}` should represent the account ID of the child seat buyer.",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/userLists",
              request = {
                ["$ref"] = "UserList",
              },
              response = {
                ["$ref"] = "UserList",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            get = {
              description = "Gets a user list by its name.",
              flatPath = "v1/buyers/{buyersId}/userLists/{userListsId}",
              httpMethod = "GET",
              id = "realtimebidding.buyers.userLists.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the user list to be retrieved. See UserList.name.",
                  location = "path",
                  pattern = "^buyers/[^/]+/userLists/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "UserList",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            getRemarketingTag = {
              description = "Gets remarketing tag for a buyer. A remarketing tag is a piece of JavaScript code that can be placed on a web page. When a user visits a page containing a remarketing tag, Google adds the user to a user list.",
              flatPath = "v1/buyers/{buyersId}/userLists/{userListsId}:getRemarketingTag",
              httpMethod = "GET",
              id = "realtimebidding.buyers.userLists.getRemarketingTag",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. To fetch remarketing tag for an account, name must follow the pattern `buyers/{accountId}` where `{accountId}` represents ID of a buyer that owns the remarketing tag. For a bidder accessing remarketing tag on behalf of a child seat buyer, `{accountId}` should represent the ID of the child seat buyer. To fetch remarketing tag for a specific user list, name must follow the pattern `buyers/{accountId}/userLists/{userListId}`. See UserList.name.",
                  location = "path",
                  pattern = "^buyers/[^/]+/userLists/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:getRemarketingTag",
              response = {
                ["$ref"] = "GetRemarketingTagResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            list = {
              description = "Lists the user lists visible to the current user.",
              flatPath = "v1/buyers/{buyersId}/userLists",
              httpMethod = "GET",
              id = "realtimebidding.buyers.userLists.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The number of results to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Continuation page token (as received from a previous response).",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent buyer for the user lists to be returned that must follow the pattern `buyers/{buyerAccountId}`, where `{buyerAccountId}` represents the account ID of the buyer who owns user lists. For a bidder accessing user lists on behalf of a child seat buyer , `{buyerAccountId}` should represent the account ID of the child seat buyer.",
                  location = "path",
                  pattern = "^buyers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/userLists",
              response = {
                ["$ref"] = "ListUserListsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            open = {
              description = "Change the status of a user list to OPEN. This allows new users to be added to the user list.",
              flatPath = "v1/buyers/{buyersId}/userLists/{userListsId}:open",
              httpMethod = "POST",
              id = "realtimebidding.buyers.userLists.open",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the user list to open. See UserList.name",
                  location = "path",
                  pattern = "^buyers/[^/]+/userLists/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:open",
              request = {
                ["$ref"] = "OpenUserListRequest",
              },
              response = {
                ["$ref"] = "UserList",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
            update = {
              description = "Update the given user list. Only user lists with URLRestrictions can be updated.",
              flatPath = "v1/buyers/{buyersId}/userLists/{userListsId}",
              httpMethod = "PUT",
              id = "realtimebidding.buyers.userLists.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Name of the user list that must follow the pattern `buyers/{buyer}/userLists/{user_list}`, where `{buyer}` represents the account ID of the buyer who owns the user list. For a bidder accessing user lists on behalf of a child seat buyer, `{buyer}` represents the account ID of the child seat buyer. `{user_list}` is an int64 identifier assigned by Google to uniquely identify a user list.",
                  location = "path",
                  pattern = "^buyers/[^/]+/userLists/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "UserList",
              },
              response = {
                ["$ref"] = "UserList",
              },
              scopes = {
                "https://www.googleapis.com/auth/realtime-bidding",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://realtimebidding.googleapis.com/",
  schemas = {
    ActivatePretargetingConfigRequest = {
      description = "A request to activate a pretargeting configuration. Sets the configuration's state to ACTIVE.",
      id = "ActivatePretargetingConfigRequest",
      properties = {},
      type = "object",
    },
    AdTechnologyProviders = {
      description = "The list of detected Ad Technology Providers for this creative. Bids placed for inventory that will serve to EEA or UK users are expected to comply with GDPR requirements. You must ensure that the creatives used in such bids should contain only user consented ad technology providers as indicated in the bid request. Google reserves the right to filter non-compliant bids. User consented ad technology providers can be found in the [Google Protocol](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto) with the `BidRequest.adslot.consented_providers_settings` field, and can be found as an [OpenRTB extension](https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto) with the `BidRequest.user.ext.consented_providers_settings` and `BidRequest.user.ext.consent` fields. See https://support.google.com/authorizedbuyers/answer/9789378 for additional information about the Google TCF v2 integration.",
      id = "AdTechnologyProviders",
      properties = {
        detectedGvlIds = {
          description = "The detected IAB Global Vendor List (GVL) IDs for this creative. See the IAB Global Vendor List at https://vendor-list.consensu.org/v2/vendor-list.json for details about the vendors.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        detectedProviderIds = {
          description = "The detected [Google Ad Tech Providers (ATP)](https://support.google.com/admanager/answer/9012903) for this creative. See https://storage.googleapis.com/adx-rtb-dictionaries/providers.csv for mapping of provider ID to provided name, a privacy policy URL, and a list of domains which can be attributed to the provider.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        unidentifiedProviderDomains = {
          description = "Domains of detected unidentified ad technology providers (if any). You must ensure that the creatives used in bids placed for inventory that will serve to EEA or UK users does not contain unidentified ad technology providers. Google reserves the right to filter non-compliant bids.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AddTargetedAppsRequest = {
      description = "A request to start targeting the provided app IDs in a specific pretargeting configuration. The pretargeting configuration itself specifies how these apps are targeted. in PretargetingConfig.appTargeting.mobileAppTargeting.",
      id = "AddTargetedAppsRequest",
      properties = {
        appIds = {
          description = "A list of app IDs to target in the pretargeting configuration. These values will be added to the list of targeted app IDs in PretargetingConfig.appTargeting.mobileAppTargeting.values.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetingMode = {
          description = "Required. The targeting mode that should be applied to the list of app IDs. If there are existing targeted app IDs, must be equal to the existing PretargetingConfig.appTargeting.mobileAppTargeting.targetingMode or a 400 bad request error will be returned.",
          enum = {
            "TARGETING_MODE_UNSPECIFIED",
            "INCLUSIVE",
            "EXCLUSIVE",
          },
          enumDescriptions = {
            "Placeholder for undefined targeting mode.",
            "The inclusive list type. Inventory must match an item in this list to be targeted.",
            "The exclusive list type. Inventory must not match any item in this list to be targeted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AddTargetedPublishersRequest = {
      description = "A request to start targeting the provided publishers in a specific pretargeting configuration. The pretargeting configuration itself specifies how these publishers are targeted in PretargetingConfig.publisherTargeting.",
      id = "AddTargetedPublishersRequest",
      properties = {
        publisherIds = {
          description = "A list of publisher IDs to target in the pretargeting configuration. These values will be added to the list of targeted publisher IDs in PretargetingConfig.publisherTargeting.values. Publishers are identified by their publisher ID from ads.txt / app-ads.txt. See https://iabtechlab.com/ads-txt/ and https://iabtechlab.com/app-ads-txt/ for more details.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetingMode = {
          description = "Required. The targeting mode that should be applied to the list of publisher IDs. If are existing publisher IDs, must be equal to the existing PretargetingConfig.publisherTargeting.targetingMode or a 400 bad request error will be returned.",
          enum = {
            "TARGETING_MODE_UNSPECIFIED",
            "INCLUSIVE",
            "EXCLUSIVE",
          },
          enumDescriptions = {
            "Placeholder for undefined targeting mode.",
            "The inclusive list type. Inventory must match an item in this list to be targeted.",
            "The exclusive list type. Inventory must not match any item in this list to be targeted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AddTargetedSitesRequest = {
      description = "A request to start targeting the provided sites in a specific pretargeting configuration. The pretargeting configuration itself specifies how these sites are targeted in PretargetingConfig.webTargeting.",
      id = "AddTargetedSitesRequest",
      properties = {
        sites = {
          description = "A list of site URLs to target in the pretargeting configuration. These values will be added to the list of targeted URLs in PretargetingConfig.webTargeting.values.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetingMode = {
          description = "Required. The targeting mode that should be applied to the list of site URLs. If there are existing targeted sites, must be equal to the existing PretargetingConfig.webTargeting.targetingMode or a 400 bad request error will be returned.",
          enum = {
            "TARGETING_MODE_UNSPECIFIED",
            "INCLUSIVE",
            "EXCLUSIVE",
          },
          enumDescriptions = {
            "Placeholder for undefined targeting mode.",
            "The inclusive list type. Inventory must match an item in this list to be targeted.",
            "The exclusive list type. Inventory must not match any item in this list to be targeted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AdvertiserAndBrand = {
      description = "Detected advertiser and brand information.",
      id = "AdvertiserAndBrand",
      properties = {
        advertiserId = {
          description = "See https://storage.googleapis.com/adx-rtb-dictionaries/advertisers.txt for the list of possible values. Can be used to filter the response of the creatives.list method.",
          format = "int64",
          type = "string",
        },
        advertiserName = {
          description = "Advertiser name. Can be used to filter the response of the creatives.list method.",
          type = "string",
        },
        brandId = {
          description = "Detected brand ID or zero if no brand has been detected. See https://storage.googleapis.com/adx-rtb-dictionaries/brands.txt for the list of possible values. Can be used to filter the response of the creatives.list method.",
          format = "int64",
          type = "string",
        },
        brandName = {
          description = "Brand name. Can be used to filter the response of the creatives.list method.",
          type = "string",
        },
      },
      type = "object",
    },
    AppTargeting = {
      description = "A subset of app inventory to target. Bid requests that match criteria in at least one of the specified dimensions will be sent.",
      id = "AppTargeting",
      properties = {
        mobileAppCategoryTargeting = {
          ["$ref"] = "NumericTargetingDimension",
          description = "Lists of included and excluded mobile app categories as defined in https://developers.google.com/adwords/api/docs/appendix/mobileappcategories.csv.",
        },
        mobileAppTargeting = {
          ["$ref"] = "StringTargetingDimension",
          description = "Targeted app IDs. App IDs can refer to those found in an app store or ones that are not published in an app store. A maximum of 30,000 app IDs can be targeted.",
        },
      },
      type = "object",
    },
    BatchApprovePublisherConnectionsRequest = {
      description = "A request to approve a batch of publisher connections.",
      id = "BatchApprovePublisherConnectionsRequest",
      properties = {
        names = {
          description = "Required. The names of the publishers with which connections will be approved. In the pattern `bidders/{bidder}/publisherConnections/{publisher}` where `{bidder}` is the account ID of the bidder, and `{publisher}` is the ads.txt/app-ads.txt publisher ID.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchApprovePublisherConnectionsResponse = {
      description = "A response for the request to approve a batch of publisher connections.",
      id = "BatchApprovePublisherConnectionsResponse",
      properties = {
        publisherConnections = {
          description = "The publisher connections that have been approved.",
          items = {
            ["$ref"] = "PublisherConnection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchRejectPublisherConnectionsRequest = {
      description = "A request to reject a batch of publisher connections.",
      id = "BatchRejectPublisherConnectionsRequest",
      properties = {
        names = {
          description = "Required. The names of the publishers with whom connection will be rejected. In the pattern `bidders/{bidder}/publisherConnections/{publisher}` where `{bidder}` is the account ID of the bidder, and `{publisher}` is the ads.txt/app-ads.txt publisher ID.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchRejectPublisherConnectionsResponse = {
      description = "A response for the request to reject a batch of publisher connections.",
      id = "BatchRejectPublisherConnectionsResponse",
      properties = {
        publisherConnections = {
          description = "The publisher connections that have been rejected.",
          items = {
            ["$ref"] = "PublisherConnection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Bidder = {
      description = "Bidder settings.",
      id = "Bidder",
      properties = {
        bypassNonguaranteedDealsPretargeting = {
          description = "Output only. An option to bypass pretargeting for private auctions and preferred deals. When true, bid requests from these nonguaranteed deals will always be sent. When false, bid requests will be subject to regular pretargeting configurations. Programmatic Guaranteed deals will always be sent to the bidder, regardless of the value for this flag. Auction packages are not impacted by this value and are subject to the regular pretargeting configurations.",
          readOnly = true,
          type = "boolean",
        },
        cookieMatchingNetworkId = {
          description = "Output only. The buyer's network ID used for cookie matching. This ID corresponds to the `google_nid` parameter in the URL used in cookie match requests. Refer to https://developers.google.com/authorized-buyers/rtb/cookie-guide for further information.",
          readOnly = true,
          type = "string",
        },
        cookieMatchingUrl = {
          description = "Output only. The base URL used in cookie match requests. Refer to https://developers.google.com/authorized-buyers/rtb/cookie-guide for further information.",
          readOnly = true,
          type = "string",
        },
        dealsBillingId = {
          description = "Output only. The billing ID for the deals pretargeting config. This billing ID is sent on the bid request for guaranteed and nonguaranteed deals matched in pretargeting.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Name of the bidder resource that must follow the pattern `bidders/{bidderAccountId}`, where `{bidderAccountId}` is the account ID of the bidder whose information is to be received. One can get their account ID on the Authorized Buyers or Open Bidding UI, or by contacting their Google account manager.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Buyer = {
      description = "RTB Buyer account information.",
      id = "Buyer",
      properties = {
        activeCreativeCount = {
          description = "Output only. The number of creatives that this buyer submitted through the API or bid with in the last 30 days. This is counted against the maximum number of active creatives.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        bidder = {
          description = "Output only. The name of the bidder resource that is responsible for receiving bidding traffic for this account. The bidder name must follow the pattern `bidders/{bidderAccountId}`, where `{bidderAccountId}` is the account ID of the bidder receiving traffic for this buyer.",
          readOnly = true,
          type = "string",
        },
        billingIds = {
          description = "Output only. A list of billing IDs associated with this account. These IDs appear on: 1. A bid request, to signal which buyers are eligible to bid on a given opportunity, and which pretargeting configurations were matched for each eligible buyer. 2. The bid response, to attribute a winning impression to a specific account for billing, reporting, policy and publisher block enforcement.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        displayName = {
          description = "Output only. The diplay name associated with this buyer account, as visible to sellers.",
          readOnly = true,
          type = "string",
        },
        maximumActiveCreativeCount = {
          description = "Output only. The maximum number of active creatives that this buyer can have.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Name of the buyer resource that must follow the pattern `buyers/{buyerAccountId}`, where `{buyerAccountId}` is the account ID of the buyer account whose information is to be received. One can get their account ID on the Authorized Buyers or Open Bidding UI, or by contacting their Google account manager.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CloseUserListRequest = {
      description = "A request to close a specified user list.",
      id = "CloseUserListRequest",
      properties = {},
      type = "object",
    },
    Creative = {
      description = "A creative and its classification data.",
      id = "Creative",
      properties = {
        accountId = {
          description = "Output only. ID of the buyer account that this creative is owned by. Can be used to filter the response of the creatives.list method with equality and inequality check.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        adChoicesDestinationUrl = {
          description = "The link to AdChoices destination page. This is only supported for native ads.",
          type = "string",
        },
        advertiserName = {
          description = "The name of the company being advertised in the creative. Can be used to filter the response of the creatives.list method.",
          type = "string",
        },
        agencyId = {
          description = "The agency ID for this creative.",
          format = "int64",
          type = "string",
        },
        apiUpdateTime = {
          description = "Output only. The last update timestamp of the creative through the API.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creativeFormat = {
          description = "Output only. The format of this creative. Can be used to filter the response of the creatives.list method.",
          enum = {
            "CREATIVE_FORMAT_UNSPECIFIED",
            "HTML",
            "VIDEO",
            "NATIVE",
          },
          enumDescriptions = {
            "The format is unknown.",
            "HTML creative.",
            "Video creative.",
            "Native creative.",
          },
          readOnly = true,
          type = "string",
        },
        creativeId = {
          description = "Buyer-specific creative ID that references this creative in bid responses. This field is Ignored in update operations. Can be used to filter the response of the creatives.list method. The maximum length of the creative ID is 128 bytes.",
          type = "string",
        },
        creativeServingDecision = {
          ["$ref"] = "CreativeServingDecision",
          description = "Output only. Top level status and detected attributes of a creative (for example domain, language, advertiser, product category, etc.) that affect whether (status) and where (context) a creative will be allowed to serve.",
          readOnly = true,
        },
        dealIds = {
          description = "Output only. IDs of all of the deals with which this creative has been used in bidding. Can be used to filter the response of the creatives.list method.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        declaredAttributes = {
          description = "All declared attributes for the ads that may be shown from this creative. Can be used to filter the response of the creatives.list method. If the `excluded_attribute` field of a [bid request](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto\") contains one of the attributes that were declared or detected for a given creative, and a bid is submitted with that creative, the bid will be filtered before the auction.",
          items = {
            enum = {
              "ATTRIBUTE_UNSPECIFIED",
              "IMAGE_RICH_MEDIA",
              "ADOBE_FLASH_FLV",
              "IS_TAGGED",
              "IS_COOKIE_TARGETED",
              "IS_USER_INTEREST_TARGETED",
              "EXPANDING_DIRECTION_NONE",
              "EXPANDING_DIRECTION_UP",
              "EXPANDING_DIRECTION_DOWN",
              "EXPANDING_DIRECTION_LEFT",
              "EXPANDING_DIRECTION_RIGHT",
              "EXPANDING_DIRECTION_UP_LEFT",
              "EXPANDING_DIRECTION_UP_RIGHT",
              "EXPANDING_DIRECTION_DOWN_LEFT",
              "EXPANDING_DIRECTION_DOWN_RIGHT",
              "CREATIVE_TYPE_HTML",
              "CREATIVE_TYPE_VAST_VIDEO",
              "EXPANDING_DIRECTION_UP_OR_DOWN",
              "EXPANDING_DIRECTION_LEFT_OR_RIGHT",
              "EXPANDING_DIRECTION_ANY_DIAGONAL",
              "EXPANDING_ACTION_ROLLOVER_TO_EXPAND",
              "INSTREAM_VAST_VIDEO_TYPE_VPAID_FLASH",
              "RICH_MEDIA_CAPABILITY_TYPE_MRAID",
              "RICH_MEDIA_CAPABILITY_TYPE_FLASH",
              "RICH_MEDIA_CAPABILITY_TYPE_HTML5",
              "SKIPPABLE_INSTREAM_VIDEO",
              "RICH_MEDIA_CAPABILITY_TYPE_SSL",
              "RICH_MEDIA_CAPABILITY_TYPE_NON_SSL",
              "RICH_MEDIA_CAPABILITY_TYPE_INTERSTITIAL",
              "NON_SKIPPABLE_INSTREAM_VIDEO",
              "NATIVE_ELIGIBILITY_ELIGIBLE",
              "NON_VPAID",
              "NATIVE_ELIGIBILITY_NOT_ELIGIBLE",
              "ANY_INTERSTITIAL",
              "NON_INTERSTITIAL",
              "IN_BANNER_VIDEO",
              "RENDERING_SIZELESS_ADX",
              "OMSDK_1_0",
            },
            enumDescriptions = {
              "Do not use. This is a placeholder value only.",
              "The creative is of type image/rich media. For pretargeting.",
              "The creative is of video type Adobe Flash FLV. For pretargeting.",
              "The creative is tagged.",
              "The creative is cookie targeted.",
              "The creative is user interest targeted.",
              "The creative does not expand.",
              "The creative expands up.",
              "The creative expands down.",
              "The creative expands left.",
              "The creative expands right.",
              "The creative expands up and left.",
              "The creative expands up and right.",
              "The creative expands down and left.",
              "The creative expands down and right.",
              "The creative type is HTML.",
              "The creative type is VAST video.",
              "The creative expands up or down.",
              "The creative expands left or right.",
              "The creative expands on any diagonal.",
              "The creative expands when rolled over.",
              "The instream vast video type is vpaid flash.",
              "The creative is MRAID.",
              "The creative is Flash.",
              "The creative is HTML5.",
              "The creative has an instream VAST video type of skippable instream video. For pretargeting.",
              "The creative is SSL.",
              "The creative is non-SSL.",
              "The creative is an interstitial.",
              "The creative has an instream VAST video type of non-skippable instream video. For pretargeting.",
              "The creative is eligible for native.",
              "The creative has an instream VAST video type of non-VPAID. For pretargeting.",
              "The creative is not eligible for native.",
              "The creative has an interstitial size of any interstitial. For pretargeting.",
              "The creative has an interstitial size of non interstitial. For pretargeting.",
              "The video type is in-banner video.",
              "The creative can dynamically resize to fill a variety of slot sizes.",
              "The open measurement SDK is supported.",
            },
            type = "string",
          },
          type = "array",
        },
        declaredClickThroughUrls = {
          description = "The set of declared destination URLs for the creative. Can be used to filter the response of the creatives.list method.",
          items = {
            type = "string",
          },
          type = "array",
        },
        declaredRestrictedCategories = {
          description = "All declared restricted categories for the ads that may be shown from this creative. Can be used to filter the response of the creatives.list method.",
          items = {
            enum = {
              "RESTRICTED_CATEGORY_UNSPECIFIED",
              "ALCOHOL",
            },
            enumDescriptions = {
              "Default value that should never be used.",
              "The alcohol restricted category.",
            },
            type = "string",
          },
          type = "array",
        },
        declaredVendorIds = {
          description = "IDs for the declared ad technology vendors that may be used by this creative. See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for possible values. Can be used to filter the response of the creatives.list method.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        html = {
          ["$ref"] = "HtmlContent",
          description = "An HTML creative.",
        },
        impressionTrackingUrls = {
          description = "The set of URLs to be called to record an impression.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Output only. Name of the creative. Follows the pattern `buyers/{buyer}/creatives/{creative}`, where `{buyer}` represents the account ID of the buyer who owns the creative, and `{creative}` is the buyer-specific creative ID that references this creative in the bid response.",
          readOnly = true,
          type = "string",
        },
        native = {
          ["$ref"] = "NativeContent",
          description = "A native creative.",
        },
        renderUrl = {
          description = "Experimental field that can be used during the [FLEDGE Origin Trial](/authorized-buyers/rtb/fledge-origin-trial). The URL to fetch an interest group ad used in [TURTLEDOVE on-device auction](https://github.com/WICG/turtledove/blob/main/FLEDGE.md#1-browsers-record-interest-groups\"). This should be unique among all creatives for a given `accountId`.",
          type = "string",
        },
        restrictedCategories = {
          description = "All restricted categories for the ads that may be shown from this creative.",
          items = {
            enum = {
              "RESTRICTED_CATEGORY_UNSPECIFIED",
              "ALCOHOL",
            },
            enumDescriptions = {
              "Default value that should never be used.",
              "The alcohol restricted category.",
            },
            type = "string",
          },
          type = "array",
        },
        version = {
          description = "Output only. The version of the creative. Version for a new creative is 1 and it increments during subsequent creative updates.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        video = {
          ["$ref"] = "VideoContent",
          description = "A video creative.",
        },
      },
      type = "object",
    },
    CreativeDimensions = {
      description = "The dimensions of a creative. This applies to only HTML and Native creatives.",
      id = "CreativeDimensions",
      properties = {
        height = {
          description = "The height of the creative in pixels.",
          format = "int64",
          type = "string",
        },
        width = {
          description = "The width of the creative in pixels.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeServingDecision = {
      description = "Top level status and detected attributes of a creative.",
      id = "CreativeServingDecision",
      properties = {
        adTechnologyProviders = {
          ["$ref"] = "AdTechnologyProviders",
          description = "The detected ad technology providers.",
        },
        chinaPolicyCompliance = {
          ["$ref"] = "PolicyCompliance",
          description = "The policy compliance of this creative in China. When approved or disapproved, this applies to both deals and open auction in China. When pending review, this creative is allowed to serve for deals but not for open auction.",
        },
        dealsPolicyCompliance = {
          ["$ref"] = "PolicyCompliance",
          description = "Policy compliance of this creative when bidding on Programmatic Guaranteed and Preferred Deals (outside of Russia and China).",
        },
        detectedAdvertisers = {
          description = "Detected advertisers and brands.",
          items = {
            ["$ref"] = "AdvertiserAndBrand",
          },
          type = "array",
        },
        detectedAttributes = {
          description = "Publisher-excludable attributes that were detected for this creative. Can be used to filter the response of the creatives.list method. If the `excluded_attribute` field of a [bid request](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto) contains one of the attributes that were declared or detected for a given creative, and a bid is submitted with that creative, the bid will be filtered before the auction.",
          items = {
            enum = {
              "ATTRIBUTE_UNSPECIFIED",
              "IMAGE_RICH_MEDIA",
              "ADOBE_FLASH_FLV",
              "IS_TAGGED",
              "IS_COOKIE_TARGETED",
              "IS_USER_INTEREST_TARGETED",
              "EXPANDING_DIRECTION_NONE",
              "EXPANDING_DIRECTION_UP",
              "EXPANDING_DIRECTION_DOWN",
              "EXPANDING_DIRECTION_LEFT",
              "EXPANDING_DIRECTION_RIGHT",
              "EXPANDING_DIRECTION_UP_LEFT",
              "EXPANDING_DIRECTION_UP_RIGHT",
              "EXPANDING_DIRECTION_DOWN_LEFT",
              "EXPANDING_DIRECTION_DOWN_RIGHT",
              "CREATIVE_TYPE_HTML",
              "CREATIVE_TYPE_VAST_VIDEO",
              "EXPANDING_DIRECTION_UP_OR_DOWN",
              "EXPANDING_DIRECTION_LEFT_OR_RIGHT",
              "EXPANDING_DIRECTION_ANY_DIAGONAL",
              "EXPANDING_ACTION_ROLLOVER_TO_EXPAND",
              "INSTREAM_VAST_VIDEO_TYPE_VPAID_FLASH",
              "RICH_MEDIA_CAPABILITY_TYPE_MRAID",
              "RICH_MEDIA_CAPABILITY_TYPE_FLASH",
              "RICH_MEDIA_CAPABILITY_TYPE_HTML5",
              "SKIPPABLE_INSTREAM_VIDEO",
              "RICH_MEDIA_CAPABILITY_TYPE_SSL",
              "RICH_MEDIA_CAPABILITY_TYPE_NON_SSL",
              "RICH_MEDIA_CAPABILITY_TYPE_INTERSTITIAL",
              "NON_SKIPPABLE_INSTREAM_VIDEO",
              "NATIVE_ELIGIBILITY_ELIGIBLE",
              "NON_VPAID",
              "NATIVE_ELIGIBILITY_NOT_ELIGIBLE",
              "ANY_INTERSTITIAL",
              "NON_INTERSTITIAL",
              "IN_BANNER_VIDEO",
              "RENDERING_SIZELESS_ADX",
              "OMSDK_1_0",
            },
            enumDescriptions = {
              "Do not use. This is a placeholder value only.",
              "The creative is of type image/rich media. For pretargeting.",
              "The creative is of video type Adobe Flash FLV. For pretargeting.",
              "The creative is tagged.",
              "The creative is cookie targeted.",
              "The creative is user interest targeted.",
              "The creative does not expand.",
              "The creative expands up.",
              "The creative expands down.",
              "The creative expands left.",
              "The creative expands right.",
              "The creative expands up and left.",
              "The creative expands up and right.",
              "The creative expands down and left.",
              "The creative expands down and right.",
              "The creative type is HTML.",
              "The creative type is VAST video.",
              "The creative expands up or down.",
              "The creative expands left or right.",
              "The creative expands on any diagonal.",
              "The creative expands when rolled over.",
              "The instream vast video type is vpaid flash.",
              "The creative is MRAID.",
              "The creative is Flash.",
              "The creative is HTML5.",
              "The creative has an instream VAST video type of skippable instream video. For pretargeting.",
              "The creative is SSL.",
              "The creative is non-SSL.",
              "The creative is an interstitial.",
              "The creative has an instream VAST video type of non-skippable instream video. For pretargeting.",
              "The creative is eligible for native.",
              "The creative has an instream VAST video type of non-VPAID. For pretargeting.",
              "The creative is not eligible for native.",
              "The creative has an interstitial size of any interstitial. For pretargeting.",
              "The creative has an interstitial size of non interstitial. For pretargeting.",
              "The video type is in-banner video.",
              "The creative can dynamically resize to fill a variety of slot sizes.",
              "The open measurement SDK is supported.",
            },
            type = "string",
          },
          type = "array",
        },
        detectedClickThroughUrls = {
          description = "The set of detected destination URLs for the creative. Can be used to filter the response of the creatives.list method.",
          items = {
            type = "string",
          },
          type = "array",
        },
        detectedDomains = {
          description = "The detected domains for this creative.",
          items = {
            type = "string",
          },
          type = "array",
        },
        detectedLanguages = {
          description = "The detected languages for this creative. The order is arbitrary. The codes are 2 or 5 characters and are documented at https://developers.google.com/adwords/api/docs/appendix/languagecodes. Can be used to filter the response of the creatives.list method.",
          items = {
            type = "string",
          },
          type = "array",
        },
        detectedProductCategories = {
          description = "Detected product categories, if any. See the ad-product-categories.txt file in the technical documentation for a list of IDs. Can be used to filter the response of the creatives.list method.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        detectedSensitiveCategories = {
          description = "Detected sensitive categories, if any. Can be used to filter the response of the creatives.list method. See the ad-sensitive-categories.txt file in the technical documentation for a list of IDs. You should use these IDs along with the excluded-sensitive-category field in the bid request to filter your bids.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        detectedVendorIds = {
          description = "IDs of the ad technology vendors that were detected to be used by this creative. See https://storage.googleapis.com/adx-rtb-dictionaries/vendors.txt for possible values. Can be used to filter the response of the creatives.list method. If the `allowed_vendor_type` field of a [bid request](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto) does not contain one of the vendor type IDs that were declared or detected for a given creative, and a bid is submitted with that creative, the bid will be filtered before the auction.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        lastStatusUpdate = {
          description = "The last time the creative status was updated. Can be used to filter the response of the creatives.list method.",
          format = "google-datetime",
          type = "string",
        },
        networkPolicyCompliance = {
          ["$ref"] = "PolicyCompliance",
          description = "Policy compliance of this creative when bidding in open auction, private auction, or auction packages (outside of Russia and China).",
        },
        platformPolicyCompliance = {
          ["$ref"] = "PolicyCompliance",
          description = "Policy compliance of this creative when bidding in Open Bidding (outside of Russia and China). For the list of platform policies, see: https://support.google.com/platformspolicy/answer/3013851.",
        },
        russiaPolicyCompliance = {
          ["$ref"] = "PolicyCompliance",
          description = "The policy compliance of this creative in Russia. When approved or disapproved, this applies to both deals and open auction in Russia. When pending review, this creative is allowed to serve for deals but not for open auction.",
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
    DestinationNotCrawlableEvidence = {
      description = "Evidence that the creative's destination URL was not crawlable by Google.",
      id = "DestinationNotCrawlableEvidence",
      properties = {
        crawlTime = {
          description = "Approximate time of the crawl.",
          format = "google-datetime",
          type = "string",
        },
        crawledUrl = {
          description = "Destination URL that was attempted to be crawled.",
          type = "string",
        },
        reason = {
          description = "Reason of destination not crawlable.",
          enum = {
            "REASON_UNSPECIFIED",
            "UNREACHABLE_ROBOTS",
            "TIMEOUT_ROBOTS",
            "ROBOTED_DENIED",
            "UNKNOWN",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "Site's robots exclusion file (for example, robots.txt) was unreachable.",
            "Timed out reading site's robots exclusion file (for example, robots.txt).",
            "Crawler was disallowed by the site's robots exclusion file (for example, robots.txt).",
            "Unknown reason.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DestinationNotWorkingEvidence = {
      description = "Evidence of the creative's destination URL not functioning properly or having been incorrectly set up.",
      id = "DestinationNotWorkingEvidence",
      properties = {
        dnsError = {
          description = "DNS lookup errors.",
          enum = {
            "DNS_ERROR_UNSPECIFIED",
            "ERROR_DNS",
            "GOOGLE_CRAWLER_DNS_ISSUE",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "DNS name was not found.",
            "An internal issue occurred when Google's crawler tried to resolve the DNS entry. This is a Google-internal issue and may not be the result of an issue with the landing page.",
          },
          type = "string",
        },
        expandedUrl = {
          description = "The full non-working URL.",
          type = "string",
        },
        httpError = {
          description = "HTTP error code (for example, 404 or 5xx)",
          format = "int32",
          type = "integer",
        },
        invalidPage = {
          description = "Page was crawled successfully, but was detected as either a page with no content or an error page.",
          enum = {
            "INVALID_PAGE_UNSPECIFIED",
            "EMPTY_OR_ERROR_PAGE",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "Page was empty or had an error.",
          },
          type = "string",
        },
        lastCheckTime = {
          description = "Approximate time when the ad destination was last checked.",
          format = "google-datetime",
          type = "string",
        },
        platform = {
          description = "Platform of the non-working URL.",
          enum = {
            "PLATFORM_UNSPECIFIED",
            "PERSONAL_COMPUTER",
            "ANDROID",
            "IOS",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "The personal computer platform.",
            "The Android platform.",
            "The iOS platform.",
          },
          type = "string",
        },
        redirectionError = {
          description = "HTTP redirect chain error.",
          enum = {
            "REDIRECTION_ERROR_UNSPECIFIED",
            "TOO_MANY_REDIRECTS",
            "INVALID_REDIRECT",
            "EMPTY_REDIRECT",
            "REDIRECT_ERROR_UNKNOWN",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "Too many redirect hops.",
            "Got a redirect but it was invalid.",
            "Got a redirect but it was empty.",
            "Unknown redirect error.",
          },
          type = "string",
        },
        urlRejected = {
          description = "Rejected because of malformed URLs or invalid requests.",
          enum = {
            "URL_REJECTED_UNSPECIFIED",
            "BAD_REQUEST",
            "MALFORMED_URL",
            "URL_REJECTED_UNKNOWN",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "URL rejected because of a malformed request.",
            "URL rejected because of a malformed URL.",
            "URL rejected because of unknown reason.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DestinationUrlEvidence = {
      description = "The full landing page URL of the destination.",
      id = "DestinationUrlEvidence",
      properties = {
        destinationUrl = {
          description = "The full landing page URL of the destination.",
          type = "string",
        },
      },
      type = "object",
    },
    DomainCallEvidence = {
      description = "Number of HTTP calls made by a creative, broken down by domain.",
      id = "DomainCallEvidence",
      properties = {
        topHttpCallDomains = {
          description = "Breakdown of the most frequent domains called through HTTP by the creative.",
          items = {
            ["$ref"] = "DomainCalls",
          },
          type = "array",
        },
        totalHttpCallCount = {
          description = "The total number of HTTP calls made by the creative, including but not limited to the number of calls in the top_http_call_domains.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DomainCalls = {
      description = "The number of HTTP calls made to the given domain.",
      id = "DomainCalls",
      properties = {
        domain = {
          description = "The domain name.",
          type = "string",
        },
        httpCallCount = {
          description = "Number of HTTP calls made to the domain.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DownloadSizeEvidence = {
      description = "Total download size and URL-level download size breakdown for resources in a creative.",
      id = "DownloadSizeEvidence",
      properties = {
        topUrlDownloadSizeBreakdowns = {
          description = "Download size broken down by URLs with the top download size.",
          items = {
            ["$ref"] = "UrlDownloadSize",
          },
          type = "array",
        },
        totalDownloadSizeKb = {
          description = "Total download size (in kilobytes) for all the resources in the creative.",
          format = "int32",
          type = "integer",
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
    Endpoint = {
      description = "Bidder endpoint that receives bid requests.",
      id = "Endpoint",
      properties = {
        bidProtocol = {
          description = "The protocol that the bidder endpoint is using.",
          enum = {
            "BID_PROTOCOL_UNSPECIFIED",
            "GOOGLE_RTB",
            "OPENRTB_JSON",
            "OPENRTB_PROTOBUF",
            "OPENRTB_2_2",
            "OPENRTB_2_3",
            "OPENRTB_PROTOBUF_2_3",
            "OPENRTB_2_4",
            "OPENRTB_PROTOBUF_2_4",
            "OPENRTB_2_5",
            "OPENRTB_PROTOBUF_2_5",
          },
          enumDescriptions = {
            "Placeholder for undefined bid protocol. This value should not be used.",
            "Google RTB protocol / Protobuf encoding.",
            "OpenRTB / JSON encoding (unversioned/latest).",
            "OpenRTB / Protobuf encoding (unversioned/latest).",
            "Deprecated: Use OPENRTB_JSON.",
            "Deprecated: Use OPENRTB_JSON.",
            "Deprecated: Use OPENRTB_PROTOBUF.",
            "Deprecated: Use OPENRTB_JSON.",
            "Deprecated: Use OPENRTB_PROTOBUF.",
            "Deprecated: Use OPENRTB_JSON.",
            "Deprecated: Use OPENRTB_PROTOBUF.",
          },
          type = "string",
        },
        maximumQps = {
          description = "The maximum number of queries per second allowed to be sent to this server.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Output only. Name of the endpoint resource that must follow the pattern `bidders/{bidderAccountId}/endpoints/{endpointId}`, where {bidderAccountId} is the account ID of the bidder who operates this endpoint, and {endpointId} is a unique ID assigned by the server.",
          readOnly = true,
          type = "string",
        },
        tradingLocation = {
          description = "The trading location that bid requests should be sent from. See https://developers.google.com/authorized-buyers/rtb/peer-guide#trading-locations for further information.",
          enum = {
            "TRADING_LOCATION_UNSPECIFIED",
            "US_WEST",
            "US_EAST",
            "EUROPE",
            "ASIA",
          },
          enumDescriptions = {
            "A placeholder for an undefined trading region. This value should not be used.",
            "The Western US trading location.",
            "The Eastern US trading location.",
            "The European trading location.",
            "The Asia trading location.",
          },
          type = "string",
        },
        url = {
          description = "Output only. The URL that bid requests should be sent to.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GetRemarketingTagResponse = {
      description = "Response for a request to get remarketing tag.",
      id = "GetRemarketingTagResponse",
      properties = {
        snippet = {
          description = "A HTML tag that can be placed on the advertiser's page to add users to a user list. For more information and code samples on using snippet on your website refer to [Tag your site for remarketing]( https://support.google.com/google-ads/answer/2476688).",
          type = "string",
        },
      },
      type = "object",
    },
    HtmlContent = {
      description = "HTML content for a creative.",
      id = "HtmlContent",
      properties = {
        height = {
          description = "The height of the HTML snippet in pixels. Can be used to filter the response of the creatives.list method.",
          format = "int32",
          type = "integer",
        },
        snippet = {
          description = "The HTML snippet that displays the ad when inserted in the web page.",
          type = "string",
        },
        width = {
          description = "The width of the HTML snippet in pixels. Can be used to filter the response of the creatives.list method.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    HttpCallEvidence = {
      description = "HTTP calls made by a creative that resulted in policy violations.",
      id = "HttpCallEvidence",
      properties = {
        urls = {
          description = "URLs of HTTP calls made by the creative.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HttpCookieEvidence = {
      description = "Evidence for HTTP cookie-related policy violations.",
      id = "HttpCookieEvidence",
      properties = {
        cookieNames = {
          description = "Names of cookies that violate Google policies. For TOO_MANY_COOKIES policy, this will be the cookie names of top domains with the largest number of cookies. For other policies, this will be all the cookie names that violate the policy.",
          items = {
            type = "string",
          },
          type = "array",
        },
        maxCookieCount = {
          description = "The largest number of cookies set by a creative. If this field is set, cookie_names above will be set to the cookie names of top domains with the largest number of cookies. This field will only be set for TOO_MANY_COOKIES policy.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Image = {
      description = "An image resource. You may provide a larger image than was requested, so long as the aspect ratio is preserved.",
      id = "Image",
      properties = {
        height = {
          description = "Image height in pixels.",
          format = "int32",
          type = "integer",
        },
        url = {
          description = "The URL of the image.",
          type = "string",
        },
        width = {
          description = "Image width in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListBiddersResponse = {
      description = "A response containing bidders.",
      id = "ListBiddersResponse",
      properties = {
        bidders = {
          description = "List of bidders.",
          items = {
            ["$ref"] = "Bidder",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token which can be passed to a subsequent call to the `ListBidders` method to retrieve the next page of results in ListBiddersRequest.pageToken.",
          type = "string",
        },
      },
      type = "object",
    },
    ListBuyersResponse = {
      description = "A response containing buyer account information.",
      id = "ListBuyersResponse",
      properties = {
        buyers = {
          description = "List of buyers.",
          items = {
            ["$ref"] = "Buyer",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token which can be passed to a subsequent call to the `ListBuyers` method to retrieve the next page of results in ListBuyersRequest.pageToken.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCreativesResponse = {
      description = "A response for listing creatives.",
      id = "ListCreativesResponse",
      properties = {
        creatives = {
          description = "The list of creatives.",
          items = {
            ["$ref"] = "Creative",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass this value in the ListCreativesRequest.pageToken field in the subsequent call to the `ListCreatives` method to retrieve the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListEndpointsResponse = {
      description = "A response containing bidder endpoints.",
      id = "ListEndpointsResponse",
      properties = {
        endpoints = {
          description = "List of bidder endpoints.",
          items = {
            ["$ref"] = "Endpoint",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token which can be passed to a subsequent call to the `ListEndpoints` method to retrieve the next page of results in ListEndpointsRequest.pageToken.",
          type = "string",
        },
      },
      type = "object",
    },
    ListPretargetingConfigsResponse = {
      description = "A response containing pretargeting configurations.",
      id = "ListPretargetingConfigsResponse",
      properties = {
        nextPageToken = {
          description = "A token which can be passed to a subsequent call to the `ListPretargetingConfigs` method to retrieve the next page of results in ListPretargetingConfigsRequest.pageToken.",
          type = "string",
        },
        pretargetingConfigs = {
          description = "List of pretargeting configurations.",
          items = {
            ["$ref"] = "PretargetingConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPublisherConnectionsResponse = {
      description = "A response to a request for listing publisher connections.",
      id = "ListPublisherConnectionsResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. Pass this value in the ListPublisherConnectionsRequest.pageToken field in the subsequent call to the `ListPublisherConnections` method to retrieve the next page of results.",
          type = "string",
        },
        publisherConnections = {
          description = "The list of publisher connections.",
          items = {
            ["$ref"] = "PublisherConnection",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListUserListsResponse = {
      description = "The list user list response.",
      id = "ListUserListsResponse",
      properties = {
        nextPageToken = {
          description = "The continuation page token to send back to the server in a subsequent request. Due to a currently known issue, it is recommended that the caller keep invoking the list method till the time a next page token is not returned (even if the result set is empty).",
          type = "string",
        },
        userLists = {
          description = "List of user lists from the search.",
          items = {
            ["$ref"] = "UserList",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MediaFile = {
      description = "Information about each media file in the VAST.",
      id = "MediaFile",
      properties = {
        bitrate = {
          description = "Bitrate of the video file, in Kbps. Can be used to filter the response of the creatives.list method.",
          format = "int64",
          type = "string",
        },
        mimeType = {
          description = "The MIME type of this media file. Can be used to filter the response of the creatives.list method.",
          enum = {
            "VIDEO_MIME_TYPE_UNSPECIFIED",
            "MIME_VIDEO_XFLV",
            "MIME_VIDEO_WEBM",
            "MIME_VIDEO_MP4",
            "MIME_VIDEO_OGG",
            "MIME_VIDEO_YT_HOSTED",
            "MIME_VIDEO_X_MS_WMV",
            "MIME_VIDEO_3GPP",
            "MIME_VIDEO_MOV",
            "MIME_APPLICATION_SWF",
            "MIME_APPLICATION_SURVEY",
            "MIME_APPLICATION_JAVASCRIPT",
            "MIME_APPLICATION_SILVERLIGHT",
            "MIME_APPLICATION_MPEGURL",
            "MIME_APPLICATION_MPEGDASH",
            "MIME_AUDIO_MP4A",
            "MIME_AUDIO_MP3",
            "MIME_AUDIO_OGG",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "Flash container.",
            "WebM container assuming VP9 codec.",
            "MPEG-4 container typically with H.264 codec.",
            "Ogg container assuming Theora codec.",
            "Video files hosted on YouTube.",
            "Windows Media Video Codec.",
            "3GPP container format used on 3G phones.",
            "Quicktime container format.",
            "Shockwave Flash (used for VPAID ads).",
            "Properties of VAST served by consumer survey.",
            "JavaScript (used for VPAID ads).",
            "Silverlight (used for VPAID ads).",
            "HLS/M3U8.",
            "DASH.",
            "MPEG-4 audio format.",
            "MPEG-3 audio format.",
            "Ogg audio format",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NativeContent = {
      description = "Native content for a creative.",
      id = "NativeContent",
      properties = {
        advertiserName = {
          description = "The name of the advertiser or sponsor, to be displayed in the ad creative.",
          type = "string",
        },
        appIcon = {
          ["$ref"] = "Image",
          description = "The app icon, for app download ads.",
        },
        body = {
          description = "A long description of the ad.",
          type = "string",
        },
        callToAction = {
          description = "A label for the button that the user is supposed to click.",
          type = "string",
        },
        clickLinkUrl = {
          description = "The URL that the browser/SDK will load when the user clicks the ad.",
          type = "string",
        },
        clickTrackingUrl = {
          description = "The URL to use for click tracking.",
          type = "string",
        },
        headline = {
          description = "A short title for the ad.",
          type = "string",
        },
        image = {
          ["$ref"] = "Image",
          description = "A large image.",
        },
        logo = {
          ["$ref"] = "Image",
          description = "A smaller image, for the advertiser's logo.",
        },
        priceDisplayText = {
          description = "The price of the promoted app including currency info.",
          type = "string",
        },
        starRating = {
          description = "The app rating in the app store. Must be in the range [0-5].",
          format = "double",
          type = "number",
        },
        videoUrl = {
          description = "The URL to fetch a native video ad.",
          type = "string",
        },
        videoVastXml = {
          description = "The contents of a VAST document for a native video ad.",
          type = "string",
        },
      },
      type = "object",
    },
    NumericTargetingDimension = {
      description = "Generic targeting used for targeting dimensions that contain a list of included and excluded numeric IDs used in app, user list, geo, and vertical id targeting.",
      id = "NumericTargetingDimension",
      properties = {
        excludedIds = {
          description = "The IDs excluded in a configuration.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        includedIds = {
          description = "The IDs included in a configuration.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OpenUserListRequest = {
      description = "A request to open a specified user list.",
      id = "OpenUserListRequest",
      properties = {},
      type = "object",
    },
    PolicyCompliance = {
      description = "Policy compliance of the creative for a transaction type or a region.",
      id = "PolicyCompliance",
      properties = {
        status = {
          description = "Serving status for the given transaction type (for example, open auction, deals) or region (for example, China, Russia). Can be used to filter the response of the creatives.list method.",
          enum = {
            "STATUS_UNSPECIFIED",
            "PENDING_REVIEW",
            "DISAPPROVED",
            "APPROVED",
            "CERTIFICATE_REQUIRED",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "Creative is pending review.",
            "Creative cannot serve.",
            "Creative is approved.",
            "Certificates are required for the creative to be served in some regions. For more information about creative certification, refer to: https://support.google.com/authorizedbuyers/answer/7450776",
          },
          type = "string",
        },
        topics = {
          description = "Topics related to the policy compliance for this transaction type (for example, open auction, deals) or region (for example, China, Russia). Topics may be present only if status is DISAPPROVED.",
          items = {
            ["$ref"] = "PolicyTopicEntry",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PolicyTopicEntry = {
      description = "Each policy topic entry will represent a violation of a policy topic for a creative, with the policy topic information and optional evidence for the policy violation.",
      id = "PolicyTopicEntry",
      properties = {
        evidences = {
          description = "Pieces of evidence associated with this policy topic entry.",
          items = {
            ["$ref"] = "PolicyTopicEvidence",
          },
          type = "array",
        },
        helpCenterUrl = {
          description = "URL of the help center article describing this policy topic.",
          type = "string",
        },
        policyTopic = {
          description = "Policy topic this entry refers to. For example, \"ALCOHOL\", \"TRADEMARKS_IN_AD_TEXT\", or \"DESTINATION_NOT_WORKING\". The set of possible policy topics is not fixed for a particular API version and may change at any time. Can be used to filter the response of the creatives.list method",
          type = "string",
        },
      },
      type = "object",
    },
    PolicyTopicEvidence = {
      description = "Evidence associated with a policy topic entry.",
      id = "PolicyTopicEvidence",
      properties = {
        destinationNotCrawlable = {
          ["$ref"] = "DestinationNotCrawlableEvidence",
          description = "The creative's destination URL was not crawlable by Google.",
        },
        destinationNotWorking = {
          ["$ref"] = "DestinationNotWorkingEvidence",
          description = "The creative's destination URL did not function properly or was incorrectly set up.",
        },
        destinationUrl = {
          ["$ref"] = "DestinationUrlEvidence",
          description = "URL of the actual landing page.",
        },
        domainCall = {
          ["$ref"] = "DomainCallEvidence",
          description = "Number of HTTP calls made by the creative, broken down by domain.",
        },
        downloadSize = {
          ["$ref"] = "DownloadSizeEvidence",
          description = "Total download size and URL-level download size breakdown for resources in a creative.",
        },
        httpCall = {
          ["$ref"] = "HttpCallEvidence",
          description = "HTTP calls made by the creative that resulted in policy violations.",
        },
        httpCookie = {
          ["$ref"] = "HttpCookieEvidence",
          description = "Evidence for HTTP cookie-related policy violations.",
        },
      },
      type = "object",
    },
    PretargetingConfig = {
      description = "Pretargeting configuration: a set of targeting dimensions applied at the pretargeting stage of the RTB funnel. These control which inventory a bidder will receive bid requests for.",
      id = "PretargetingConfig",
      properties = {
        allowedUserTargetingModes = {
          description = "Targeting modes included by this configuration. A bid request must allow all the specified targeting modes. An unset value allows all bid requests to be sent, regardless of which targeting modes they allow.",
          items = {
            enum = {
              "USER_TARGETING_MODE_UNSPECIFIED",
              "REMARKETING_ADS",
              "INTEREST_BASED_TARGETING",
            },
            enumDescriptions = {
              "Placeholder for undefined user targeting mode.",
              "Remarketing ads are allowed to serve.",
              "Ads based on user interest category targeting are allowed to serve.",
            },
            type = "string",
          },
          type = "array",
        },
        appTargeting = {
          ["$ref"] = "AppTargeting",
          description = "Targeting on a subset of app inventory. If APP is listed in targeted_environments, the specified targeting is applied. A maximum of 30,000 app IDs can be targeted. An unset value for targeting allows all app-based bid requests to be sent. Apps can either be targeting positively (bid requests will be sent only if the destination app is listed in the targeting dimension) or negatively (bid requests will be sent only if the destination app is not listed in the targeting dimension).",
        },
        billingId = {
          description = "Output only. The identifier that corresponds to this pretargeting configuration that helps buyers track and attribute their spend across their own arbitrary divisions. If a bid request matches more than one configuration, the buyer chooses which billing_id to attribute each of their bids.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The diplay name associated with this configuration. This name must be unique among all the pretargeting configurations a bidder has.",
          type = "string",
        },
        excludedContentLabelIds = {
          description = "The sensitive content category label IDs excluded in this configuration. Bid requests for inventory with any of the specified content label IDs will not be sent. Refer to this file https://storage.googleapis.com/adx-rtb-dictionaries/content-labels.txt for category IDs.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        geoTargeting = {
          ["$ref"] = "NumericTargetingDimension",
          description = "The geos included or excluded in this configuration defined in https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.csv",
        },
        includedCreativeDimensions = {
          description = "Creative dimensions included by this configuration. Only bid requests eligible for at least one of the specified creative dimensions will be sent. An unset value allows all bid requests to be sent, regardless of creative dimension.",
          items = {
            ["$ref"] = "CreativeDimensions",
          },
          type = "array",
        },
        includedEnvironments = {
          description = "Environments that are being included. Bid requests will not be sent for a given environment if it is not included. Further restrictions can be applied to included environments to target only a subset of its inventory. An unset value includes all environments.",
          items = {
            enum = {
              "ENVIRONMENT_UNSPECIFIED",
              "APP",
              "WEB",
            },
            enumDescriptions = {
              "Placeholder for unspecified environment. This value should not be used.",
              "App environment.",
              "Web environment.",
            },
            type = "string",
          },
          type = "array",
        },
        includedFormats = {
          description = "Creative formats included by this configuration. Only bid requests eligible for at least one of the specified creative formats will be sent. An unset value will allow all bid requests to be sent, regardless of format.",
          items = {
            enum = {
              "CREATIVE_FORMAT_UNSPECIFIED",
              "HTML",
              "VAST",
              "NATIVE",
            },
            enumDescriptions = {
              "Placeholder for undefined creative format. This value should not be used.",
              "HTML and AMPHTML creatives.",
              "VAST video or audio creative.",
              "Native creative, including standard and video native ads.",
            },
            type = "string",
          },
          type = "array",
        },
        includedLanguages = {
          description = "The languages included in this configuration, represented by their language code. See https://developers.google.com/adwords/api/docs/appendix/languagecodes.",
          items = {
            type = "string",
          },
          type = "array",
        },
        includedMobileOperatingSystemIds = {
          description = "The mobile operating systems included in this configuration as defined in https://storage.googleapis.com/adx-rtb-dictionaries/mobile-os.csv",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        includedPlatforms = {
          description = "The platforms included by this configration. Bid requests for devices with the specified platform types will be sent. An unset value allows all bid requests to be sent, regardless of platform.",
          items = {
            enum = {
              "PLATFORM_UNSPECIFIED",
              "PERSONAL_COMPUTER",
              "PHONE",
              "TABLET",
              "CONNECTED_TV",
            },
            enumDescriptions = {
              "Placeholder for an undefined platform. This value should not be used.",
              "The personal computer platform.",
              "The mobile platform.",
              "The tablet platform.",
              "The connected TV platform.",
            },
            type = "string",
          },
          type = "array",
        },
        includedUserIdTypes = {
          description = "User identifier types included in this configuration. At least one of the user identifier types specified in this list must be available for the bid request to be sent.",
          items = {
            enum = {
              "USER_ID_TYPE_UNSPECIFIED",
              "HOSTED_MATCH_DATA",
              "GOOGLE_COOKIE",
              "DEVICE_ID",
            },
            enumDescriptions = {
              "Placeholder for unspecified user identifier.",
              "Hosted match data, referring to hosted_match_data in the bid request.",
              "Google cookie, referring to google_user_id in the bid request.",
              "Mobile device advertising ID.",
            },
            type = "string",
          },
          type = "array",
        },
        interstitialTargeting = {
          description = "The interstitial targeting specified for this configuration. The unset value will allow bid requests to be sent regardless of whether they are for interstitials or not.",
          enum = {
            "INTERSTITIAL_TARGETING_UNSPECIFIED",
            "ONLY_INTERSTITIAL_REQUESTS",
            "ONLY_NON_INTERSTITIAL_REQUESTS",
          },
          enumDescriptions = {
            "Unspecified interstitial targeting. Represents an interstitial-agnostic selection.",
            "Only bid requests for interstitial inventory should be sent.",
            "Only bid requests for non-interstitial inventory should be sent.",
          },
          type = "string",
        },
        invalidGeoIds = {
          description = "Output only. Existing included or excluded geos that are invalid. Previously targeted geos may become invalid due to privacy restrictions.",
          items = {
            format = "int64",
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        maximumQps = {
          description = "The maximum QPS threshold for this configuration. The bidder should receive no more than this number of bid requests matching this configuration per second across all their bidding endpoints among all trading locations. Further information available at https://developers.google.com/authorized-buyers/rtb/peer-guide",
          format = "int64",
          type = "string",
        },
        minimumViewabilityDecile = {
          description = "The targeted minimum viewability decile, ranging in values [0, 10]. A value of 5 means that the configuration will only match adslots for which we predict at least 50% viewability. Values > 10 will be rounded down to 10. An unset value or a value of 0 indicates that bid requests will be sent regardless of viewability.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "Output only. Name of the pretargeting configuration that must follow the pattern `bidders/{bidder_account_id}/pretargetingConfigs/{config_id}`",
          readOnly = true,
          type = "string",
        },
        publisherTargeting = {
          ["$ref"] = "StringTargetingDimension",
          description = "Targeting on a subset of publisher inventory. Publishers can either be targeted positively (bid requests will be sent only if the publisher is listed in the targeting dimension) or negatively (bid requests will be sent only if the publisher is not listed in the targeting dimension). A maximum of 10,000 publisher IDs can be targeted. Publisher IDs are found in [ads.txt](https://iabtechlab.com/ads-txt/) / [app-ads.txt](https://iabtechlab.com/app-ads-txt/) and in bid requests in the `BidRequest.publisher_id` field on the [Google RTB protocol](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto) or the `BidRequest.site.publisher.id` / `BidRequest.app.publisher.id` field on the [OpenRTB protocol](https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto). Publisher IDs will be returned in the order that they were entered.",
        },
        state = {
          description = "Output only. The state of this pretargeting configuration.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Placeholder for undefined state.",
            "This pretargeting configuration is actively being used to filter bid requests.",
            "This pretargeting configuration is suspended and not used in serving.",
          },
          readOnly = true,
          type = "string",
        },
        userListTargeting = {
          ["$ref"] = "NumericTargetingDimension",
          description = "The remarketing lists included or excluded in this configuration as defined in UserList.",
        },
        verticalTargeting = {
          ["$ref"] = "NumericTargetingDimension",
          description = "The verticals included or excluded in this configuration as defined in https://developers.google.com/authorized-buyers/rtb/downloads/publisher-verticals",
        },
        webTargeting = {
          ["$ref"] = "StringTargetingDimension",
          description = "Targeting on a subset of site inventory. If WEB is listed in included_environments, the specified targeting is applied. A maximum of 50,000 site URLs can be targeted. An unset value for targeting allows all web-based bid requests to be sent. Sites can either be targeting positively (bid requests will be sent only if the destination site is listed in the targeting dimension) or negatively (bid requests will be sent only if the destination site is not listed in the pretargeting configuration).",
        },
      },
      type = "object",
    },
    PublisherConnection = {
      description = "An Open Bidding exchange's connection to a publisher. This is initiated by the publisher for the bidder to review. If approved by the bidder, this means that the bidder agrees to receive bid requests from the publisher.",
      id = "PublisherConnection",
      properties = {
        biddingState = {
          description = "Whether the publisher has been approved by the bidder.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "REJECTED",
            "APPROVED",
          },
          enumDescriptions = {
            "An unspecified bidding status.",
            "Indicates a request for connection from the publisher that the bidder needs to review.",
            "Indicates that the publisher was rejected.",
            "Indicates that the publisher was approved.",
          },
          type = "string",
        },
        createTime = {
          description = "Output only. The time at which the publisher initiated a connection with the bidder (irrespective of if or when the bidder approves it). This is subsequently updated if the publisher revokes and re-initiates the connection.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Output only. Publisher display name.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Name of the publisher connection. This follows the pattern `bidders/{bidder}/publisherConnections/{publisher}`, where `{bidder}` represents the account ID of the bidder, and `{publisher}` is the ads.txt/app-ads.txt publisher ID.",
          readOnly = true,
          type = "string",
        },
        publisherPlatform = {
          description = "Output only. Whether the publisher is an Ad Manager or AdMob publisher.",
          enum = {
            "PUBLISHER_PLATFORM_UNSPECIFIED",
            "GOOGLE_AD_MANAGER",
            "ADMOB",
          },
          enumDescriptions = {
            "An unspecified publisher platform.",
            "A Google Ad Manager publisher.",
            "An AdMob publisher.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    RemoveTargetedAppsRequest = {
      description = "A request to stop targeting the provided apps in a specific pretargeting configuration. The pretargeting configuration itself specifies how these apps are targeted. in PretargetingConfig.appTargeting.mobileAppTargeting.",
      id = "RemoveTargetedAppsRequest",
      properties = {
        appIds = {
          description = "A list of app IDs to stop targeting in the pretargeting configuration. These values will be removed from the list of targeted app IDs in PretargetingConfig.appTargeting.mobileAppTargeting.values.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RemoveTargetedPublishersRequest = {
      description = "A request to stop targeting publishers in a specific configuration. The pretargeting configuration itself specifies how these publishers are targeted in PretargetingConfig.publisherTargeting.",
      id = "RemoveTargetedPublishersRequest",
      properties = {
        publisherIds = {
          description = "A list of publisher IDs to stop targeting in the pretargeting configuration. These values will be removed from the list of targeted publisher IDs in PretargetingConfig.publisherTargeting.values. Publishers are identified by their publisher ID from ads.txt / app-ads.txt. See https://iabtechlab.com/ads-txt/ and https://iabtechlab.com/app-ads-txt/ for more details.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RemoveTargetedSitesRequest = {
      description = "A request to stop targeting sites in a specific pretargeting configuration. The pretargeting configuration itself specifies how these sites are targeted in PretargetingConfig.webTargeting.",
      id = "RemoveTargetedSitesRequest",
      properties = {
        sites = {
          description = "A list of site URLs to stop targeting in the pretargeting configuration. These values will be removed from the list of targeted URLs in PretargetingConfig.webTargeting.values.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StringTargetingDimension = {
      description = "Generic targeting with string values used in app, website and publisher targeting.",
      id = "StringTargetingDimension",
      properties = {
        targetingMode = {
          description = "How the items in this list should be targeted.",
          enum = {
            "TARGETING_MODE_UNSPECIFIED",
            "INCLUSIVE",
            "EXCLUSIVE",
          },
          enumDescriptions = {
            "Placeholder for undefined targeting mode.",
            "The inclusive list type. Inventory must match an item in this list to be targeted.",
            "The exclusive list type. Inventory must not match any item in this list to be targeted.",
          },
          type = "string",
        },
        values = {
          description = "The values specified.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SuspendPretargetingConfigRequest = {
      description = "A request to suspend a pretargeting configuration. Sets the configuration's state to SUSPENDED.",
      id = "SuspendPretargetingConfigRequest",
      properties = {},
      type = "object",
    },
    UrlDownloadSize = {
      description = "The URL-level breakdown for the download size.",
      id = "UrlDownloadSize",
      properties = {
        downloadSizeKb = {
          description = "Download size of the URL in kilobytes.",
          format = "int32",
          type = "integer",
        },
        normalizedUrl = {
          description = "The normalized URL with query parameters and fragment removed.",
          type = "string",
        },
      },
      type = "object",
    },
    UrlRestriction = {
      description = "Represents the URL restriction (for the URL captured by the pixel callback) for a user list.",
      id = "UrlRestriction",
      properties = {
        endDate = {
          ["$ref"] = "Date",
          description = "End date (if specified) of the URL restriction. End date should be later than the start date for the date range to be valid.",
        },
        restrictionType = {
          description = "The restriction type for the specified URL.",
          enum = {
            "RESTRICTION_TYPE_UNSPECIFIED",
            "CONTAINS",
            "EQUALS",
            "STARTS_WITH",
            "ENDS_WITH",
            "DOES_NOT_EQUAL",
            "DOES_NOT_CONTAIN",
            "DOES_NOT_START_WITH",
            "DOES_NOT_END_WITH",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "The tag URL (as recorded by the pixel callback) contains the specified URL.",
            "The tag URL (as recorded by the pixel callback) exactly matches the specified URL.",
            "The tag URL (as recorded by the pixel callback) starts with the specified URL.",
            "The tag URL (as recorded by the pixel callback) ends with the specified URL.",
            "The tag URL (as recorded by the pixel callback) does not equal the specified URL.",
            "The tag URL (as recorded by the pixel callback) does not contain the specified URL.",
            "The tag URL (as recorded by the pixel callback) does not start with the specified URL.",
            "The tag URL (as recorded by the pixel callback) does not end with the specified URL.",
          },
          type = "string",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "Start date (if specified) of the URL restriction.",
        },
        url = {
          description = "Required. The URL to use for applying the restriction on the user list.",
          type = "string",
        },
      },
      type = "object",
    },
    UserList = {
      description = "Represents an Authorized Buyers user list. Authorized Buyers can create/update/list user lists. Once a user list is created in the system, Authorized Buyers can add users to the user list using the bulk uploader API. Alternatively, users can be added by hosting a tag on the advertiser's page.",
      id = "UserList",
      properties = {
        description = {
          description = "The description for the user list.",
          type = "string",
        },
        displayName = {
          description = "Required. Display name of the user list. This must be unique across all user lists for a given account.",
          type = "string",
        },
        membershipDurationDays = {
          description = "Required. The number of days a user's cookie stays on the user list. The field must be between 0 and 540 inclusive.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Output only. Name of the user list that must follow the pattern `buyers/{buyer}/userLists/{user_list}`, where `{buyer}` represents the account ID of the buyer who owns the user list. For a bidder accessing user lists on behalf of a child seat buyer, `{buyer}` represents the account ID of the child seat buyer. `{user_list}` is an int64 identifier assigned by Google to uniquely identify a user list.",
          readOnly = true,
          type = "string",
        },
        status = {
          description = "Output only. The status of the user list. A new user list starts out as open.",
          enum = {
            "STATUS_UNSPECIFIED",
            "OPEN",
            "CLOSED",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "New users can be added to the user list.",
            "New users cannot be added to the user list.",
          },
          readOnly = true,
          type = "string",
        },
        urlRestriction = {
          ["$ref"] = "UrlRestriction",
          description = "Required. The URL restriction for the user list.",
        },
      },
      type = "object",
    },
    VideoContent = {
      description = "Video content for a creative.",
      id = "VideoContent",
      properties = {
        videoMetadata = {
          ["$ref"] = "VideoMetadata",
          description = "Output only. Video metadata.",
          readOnly = true,
        },
        videoUrl = {
          description = "The URL to fetch a video ad.",
          type = "string",
        },
        videoVastXml = {
          description = "The contents of a VAST document for a video ad. This document should conform to the VAST 2.0 or 3.0 standard.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoMetadata = {
      description = "Video metadata for a creative.",
      id = "VideoMetadata",
      properties = {
        duration = {
          description = "The duration of the ad. Can be used to filter the response of the creatives.list method.",
          format = "google-duration",
          type = "string",
        },
        isValidVast = {
          description = "Is this a valid VAST ad? Can be used to filter the response of the creatives.list method.",
          type = "boolean",
        },
        isVpaid = {
          description = "Is this a VPAID ad? Can be used to filter the response of the creatives.list method.",
          type = "boolean",
        },
        mediaFiles = {
          description = "The list of all media files declared in the VAST. If there are multiple VASTs in a wrapper chain, this includes the media files from the deepest one in the chain.",
          items = {
            ["$ref"] = "MediaFile",
          },
          type = "array",
        },
        skipOffset = {
          description = "The minimum duration that the user has to watch before being able to skip this ad. If the field is not set, the ad is not skippable. If the field is set, the ad is skippable. Can be used to filter the response of the creatives.list method.",
          format = "google-duration",
          type = "string",
        },
        vastVersion = {
          description = "The maximum VAST version across all wrapped VAST documents. Can be used to filter the response of the creatives.list method.",
          enum = {
            "VAST_VERSION_UNSPECIFIED",
            "VAST_VERSION_1_0",
            "VAST_VERSION_2_0",
            "VAST_VERSION_3_0",
            "VAST_VERSION_4_0",
          },
          enumDescriptions = {
            "Default value that should never be used.",
            "VAST 1.0",
            "VAST 2.0",
            "VAST 3.0",
            "VAST 4.0",
          },
          type = "string",
        },
      },
      type = "object",
    },
    WatchCreativesRequest = {
      description = "A request to receive push notifications when any of the creatives belonging to the bidder changes status.",
      id = "WatchCreativesRequest",
      properties = {},
      type = "object",
    },
    WatchCreativesResponse = {
      description = "A response for the request to receive push notification when a bidder's creatives change status.",
      id = "WatchCreativesResponse",
      properties = {
        subscription = {
          description = "The Pub/Sub subscription that can be used to pull creative status notifications. This would be of the format `projects/{project_id}/subscriptions/{subscription_id}`. Subscription is created with pull delivery. All service accounts belonging to the bidder will have read access to this subscription. Subscriptions that are inactive for more than 90 days will be disabled. Use watchCreatives to re-enable the subscription.",
          type = "string",
        },
        topic = {
          description = "The Pub/Sub topic that will be used to publish creative serving status notifications. This would be of the format `projects/{project_id}/topics/{topic_id}`.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Real-time Bidding API",
  version = "v1",
  version_module = true,
}
