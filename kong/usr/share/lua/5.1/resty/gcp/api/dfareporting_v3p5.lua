return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/ddmconversions"] = {
          description = "Manage DoubleClick Digital Marketing conversions",
        },
        ["https://www.googleapis.com/auth/dfareporting"] = {
          description = "View and manage DoubleClick for Advertisers reports",
        },
        ["https://www.googleapis.com/auth/dfatrafficking"] = {
          description = "View and manage your DoubleClick Campaign Manager's (DCM) display ad campaigns",
        },
      },
    },
  },
  basePath = "/dfareporting/v3.5/",
  baseUrl = "https://dfareporting.googleapis.com/dfareporting/v3.5/",
  batchPath = "batch",
  canonicalName = "Dfareporting",
  description = "Build applications to efficiently manage large or complex trafficking, reporting, and attribution workflows for Campaign Manager 360.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/doubleclick-advertisers/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "dfareporting:v3.5",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://dfareporting.mtls.googleapis.com/",
  name = "dfareporting",
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
    accountActiveAdSummaries = {
      methods = {
        get = {
          description = "Gets the account's active ad summary by account ID.",
          flatPath = "userprofiles/{profileId}/accountActiveAdSummaries/{summaryAccountId}",
          httpMethod = "GET",
          id = "dfareporting.accountActiveAdSummaries.get",
          parameterOrder = {
            "profileId",
            "summaryAccountId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            summaryAccountId = {
              description = "Account ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountActiveAdSummaries/{summaryAccountId}",
          response = {
            ["$ref"] = "AccountActiveAdSummary",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    accountPermissionGroups = {
      methods = {
        get = {
          description = "Gets one account permission group by ID.",
          flatPath = "userprofiles/{profileId}/accountPermissionGroups/{id}",
          httpMethod = "GET",
          id = "dfareporting.accountPermissionGroups.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Account permission group ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountPermissionGroups/{id}",
          response = {
            ["$ref"] = "AccountPermissionGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves the list of account permission groups.",
          flatPath = "userprofiles/{profileId}/accountPermissionGroups",
          httpMethod = "GET",
          id = "dfareporting.accountPermissionGroups.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountPermissionGroups",
          response = {
            ["$ref"] = "AccountPermissionGroupsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    accountPermissions = {
      methods = {
        get = {
          description = "Gets one account permission by ID.",
          flatPath = "userprofiles/{profileId}/accountPermissions/{id}",
          httpMethod = "GET",
          id = "dfareporting.accountPermissions.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Account permission ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountPermissions/{id}",
          response = {
            ["$ref"] = "AccountPermission",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves the list of account permissions.",
          flatPath = "userprofiles/{profileId}/accountPermissions",
          httpMethod = "GET",
          id = "dfareporting.accountPermissions.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountPermissions",
          response = {
            ["$ref"] = "AccountPermissionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    accountUserProfiles = {
      methods = {
        get = {
          description = "Gets one account user profile by ID.",
          flatPath = "userprofiles/{profileId}/accountUserProfiles/{id}",
          httpMethod = "GET",
          id = "dfareporting.accountUserProfiles.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "User profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountUserProfiles/{id}",
          response = {
            ["$ref"] = "AccountUserProfile",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new account user profile.",
          flatPath = "userprofiles/{profileId}/accountUserProfiles",
          httpMethod = "POST",
          id = "dfareporting.accountUserProfiles.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountUserProfiles",
          request = {
            ["$ref"] = "AccountUserProfile",
          },
          response = {
            ["$ref"] = "AccountUserProfile",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of account user profiles, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/accountUserProfiles",
          httpMethod = "GET",
          id = "dfareporting.accountUserProfiles.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            active = {
              description = "Select only active user profiles.",
              location = "query",
              type = "boolean",
            },
            ids = {
              description = "Select only user profiles with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name, ID or email. Wildcards (*) are allowed. For example, \"user profile*2015\" will return objects with names like \"user profile June 2015\", \"user profile April 2015\", or simply \"user profile 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"user profile\" will match objects with name \"my user profile\", \"user profile 2015\", or simply \"user profile\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            subaccountId = {
              description = "Select only user profiles with the specified subaccount ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            userRoleId = {
              description = "Select only user profiles with the specified user role ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountUserProfiles",
          response = {
            ["$ref"] = "AccountUserProfilesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing account user profile. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/accountUserProfiles",
          httpMethod = "PATCH",
          id = "dfareporting.accountUserProfiles.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "AccountUserProfile ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountUserProfiles",
          request = {
            ["$ref"] = "AccountUserProfile",
          },
          response = {
            ["$ref"] = "AccountUserProfile",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing account user profile.",
          flatPath = "userprofiles/{profileId}/accountUserProfiles",
          httpMethod = "PUT",
          id = "dfareporting.accountUserProfiles.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accountUserProfiles",
          request = {
            ["$ref"] = "AccountUserProfile",
          },
          response = {
            ["$ref"] = "AccountUserProfile",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    accounts = {
      methods = {
        get = {
          description = "Gets one account by ID.",
          flatPath = "userprofiles/{profileId}/accounts/{id}",
          httpMethod = "GET",
          id = "dfareporting.accounts.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Account ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accounts/{id}",
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves the list of accounts, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/accounts",
          httpMethod = "GET",
          id = "dfareporting.accounts.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            active = {
              description = "Select only active accounts. Don't set this field to select both active and non-active accounts.",
              location = "query",
              type = "boolean",
            },
            ids = {
              description = "Select only accounts with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"account*2015\" will return objects with names like \"account June 2015\", \"account April 2015\", or simply \"account 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"account\" will match objects with name \"my account\", \"account 2015\", or simply \"account\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accounts",
          response = {
            ["$ref"] = "AccountsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing account. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/accounts",
          httpMethod = "PATCH",
          id = "dfareporting.accounts.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Account ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accounts",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing account.",
          flatPath = "userprofiles/{profileId}/accounts",
          httpMethod = "PUT",
          id = "dfareporting.accounts.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/accounts",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    ads = {
      methods = {
        get = {
          description = "Gets one ad by ID.",
          flatPath = "userprofiles/{profileId}/ads/{id}",
          httpMethod = "GET",
          id = "dfareporting.ads.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Ad ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/ads/{id}",
          response = {
            ["$ref"] = "Ad",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new ad.",
          flatPath = "userprofiles/{profileId}/ads",
          httpMethod = "POST",
          id = "dfareporting.ads.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/ads",
          request = {
            ["$ref"] = "Ad",
          },
          response = {
            ["$ref"] = "Ad",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of ads, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/ads",
          httpMethod = "GET",
          id = "dfareporting.ads.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            active = {
              description = "Select only active ads.",
              location = "query",
              type = "boolean",
            },
            advertiserId = {
              description = "Select only ads with this advertiser ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            archived = {
              description = "Select only archived ads.",
              location = "query",
              type = "boolean",
            },
            audienceSegmentIds = {
              description = "Select only ads with these audience segment IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            campaignIds = {
              description = "Select only ads with these campaign IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            compatibility = {
              description = "Select default ads with the specified compatibility. Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering an in-stream video ads developed with the VAST standard.",
              enum = {
                "DISPLAY",
                "DISPLAY_INTERSTITIAL",
                "APP",
                "APP_INTERSTITIAL",
                "IN_STREAM_VIDEO",
                "IN_STREAM_AUDIO",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            creativeIds = {
              description = "Select only ads with these creative IDs assigned.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            creativeOptimizationConfigurationIds = {
              description = "Select only ads with these creative optimization configuration IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            dynamicClickTracker = {
              description = "Select only dynamic click trackers. Applicable when type is AD_SERVING_CLICK_TRACKER. If true, select dynamic click trackers. If false, select static click trackers. Leave unset to select both.",
              location = "query",
              type = "boolean",
            },
            ids = {
              description = "Select only ads with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            landingPageIds = {
              description = "Select only ads with these landing page IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            overriddenEventTagId = {
              description = "Select only ads with this event tag override ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            placementIds = {
              description = "Select only ads with these placement IDs assigned.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            remarketingListIds = {
              description = "Select only ads whose list targeting expression use these remarketing list IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"ad*2015\" will return objects with names like \"ad June 2015\", \"ad April 2015\", or simply \"ad 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"ad\" will match objects with name \"my ad\", \"ad 2015\", or simply \"ad\".",
              location = "query",
              type = "string",
            },
            sizeIds = {
              description = "Select only ads with these size IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sslCompliant = {
              description = "Select only ads that are SSL-compliant.",
              location = "query",
              type = "boolean",
            },
            sslRequired = {
              description = "Select only ads that require SSL.",
              location = "query",
              type = "boolean",
            },
            type = {
              description = "Select only ads with these types.",
              enum = {
                "AD_SERVING_STANDARD_AD",
                "AD_SERVING_DEFAULT_AD",
                "AD_SERVING_CLICK_TRACKER",
                "AD_SERVING_TRACKING",
                "AD_SERVING_BRAND_SAFE_AD",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/ads",
          response = {
            ["$ref"] = "AdsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing ad. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/ads",
          httpMethod = "PATCH",
          id = "dfareporting.ads.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Ad ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/ads",
          request = {
            ["$ref"] = "Ad",
          },
          response = {
            ["$ref"] = "Ad",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing ad.",
          flatPath = "userprofiles/{profileId}/ads",
          httpMethod = "PUT",
          id = "dfareporting.ads.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/ads",
          request = {
            ["$ref"] = "Ad",
          },
          response = {
            ["$ref"] = "Ad",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    advertiserGroups = {
      methods = {
        delete = {
          description = "Deletes an existing advertiser group.",
          flatPath = "userprofiles/{profileId}/advertiserGroups/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.advertiserGroups.delete",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Advertiser group ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserGroups/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one advertiser group by ID.",
          flatPath = "userprofiles/{profileId}/advertiserGroups/{id}",
          httpMethod = "GET",
          id = "dfareporting.advertiserGroups.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Advertiser group ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserGroups/{id}",
          response = {
            ["$ref"] = "AdvertiserGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new advertiser group.",
          flatPath = "userprofiles/{profileId}/advertiserGroups",
          httpMethod = "POST",
          id = "dfareporting.advertiserGroups.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserGroups",
          request = {
            ["$ref"] = "AdvertiserGroup",
          },
          response = {
            ["$ref"] = "AdvertiserGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of advertiser groups, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/advertiserGroups",
          httpMethod = "GET",
          id = "dfareporting.advertiserGroups.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            ids = {
              description = "Select only advertiser groups with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"advertiser*2015\" will return objects with names like \"advertiser group June 2015\", \"advertiser group April 2015\", or simply \"advertiser group 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"advertisergroup\" will match objects with name \"my advertisergroup\", \"advertisergroup 2015\", or simply \"advertisergroup\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserGroups",
          response = {
            ["$ref"] = "AdvertiserGroupsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing advertiser group. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/advertiserGroups",
          httpMethod = "PATCH",
          id = "dfareporting.advertiserGroups.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "AdvertiserGroup ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserGroups",
          request = {
            ["$ref"] = "AdvertiserGroup",
          },
          response = {
            ["$ref"] = "AdvertiserGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing advertiser group.",
          flatPath = "userprofiles/{profileId}/advertiserGroups",
          httpMethod = "PUT",
          id = "dfareporting.advertiserGroups.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserGroups",
          request = {
            ["$ref"] = "AdvertiserGroup",
          },
          response = {
            ["$ref"] = "AdvertiserGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    advertiserLandingPages = {
      methods = {
        get = {
          description = "Gets one landing page by ID.",
          flatPath = "userprofiles/{profileId}/advertiserLandingPages/{id}",
          httpMethod = "GET",
          id = "dfareporting.advertiserLandingPages.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Landing page ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserLandingPages/{id}",
          response = {
            ["$ref"] = "LandingPage",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new landing page.",
          flatPath = "userprofiles/{profileId}/advertiserLandingPages",
          httpMethod = "POST",
          id = "dfareporting.advertiserLandingPages.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserLandingPages",
          request = {
            ["$ref"] = "LandingPage",
          },
          response = {
            ["$ref"] = "LandingPage",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of landing pages.",
          flatPath = "userprofiles/{profileId}/advertiserLandingPages",
          httpMethod = "GET",
          id = "dfareporting.advertiserLandingPages.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserIds = {
              description = "Select only landing pages that belong to these advertisers.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            archived = {
              description = "Select only archived landing pages. Don't set this field to select both archived and non-archived landing pages.",
              location = "query",
              type = "boolean",
            },
            campaignIds = {
              description = "Select only landing pages that are associated with these campaigns.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only landing pages with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for landing pages by name or ID. Wildcards (*) are allowed. For example, \"landingpage*2017\" will return landing pages with names like \"landingpage July 2017\", \"landingpage March 2017\", or simply \"landingpage 2017\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"landingpage\" will match campaigns with name \"my landingpage\", \"landingpage 2015\", or simply \"landingpage\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            subaccountId = {
              description = "Select only landing pages that belong to this subaccount.",
              format = "int64",
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserLandingPages",
          response = {
            ["$ref"] = "AdvertiserLandingPagesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing advertiser landing page. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/advertiserLandingPages",
          httpMethod = "PATCH",
          id = "dfareporting.advertiserLandingPages.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "LandingPage ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserLandingPages",
          request = {
            ["$ref"] = "LandingPage",
          },
          response = {
            ["$ref"] = "LandingPage",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing landing page.",
          flatPath = "userprofiles/{profileId}/advertiserLandingPages",
          httpMethod = "PUT",
          id = "dfareporting.advertiserLandingPages.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertiserLandingPages",
          request = {
            ["$ref"] = "LandingPage",
          },
          response = {
            ["$ref"] = "LandingPage",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    advertisers = {
      methods = {
        get = {
          description = "Gets one advertiser by ID.",
          flatPath = "userprofiles/{profileId}/advertisers/{id}",
          httpMethod = "GET",
          id = "dfareporting.advertisers.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Advertiser ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertisers/{id}",
          response = {
            ["$ref"] = "Advertiser",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new advertiser.",
          flatPath = "userprofiles/{profileId}/advertisers",
          httpMethod = "POST",
          id = "dfareporting.advertisers.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertisers",
          request = {
            ["$ref"] = "Advertiser",
          },
          response = {
            ["$ref"] = "Advertiser",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of advertisers, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/advertisers",
          httpMethod = "GET",
          id = "dfareporting.advertisers.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserGroupIds = {
              description = "Select only advertisers with these advertiser group IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            floodlightConfigurationIds = {
              description = "Select only advertisers with these floodlight configuration IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only advertisers with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            includeAdvertisersWithoutGroupsOnly = {
              description = "Select only advertisers which do not belong to any advertiser group.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            onlyParent = {
              description = "Select only advertisers which use another advertiser's floodlight configuration.",
              location = "query",
              type = "boolean",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"advertiser*2015\" will return objects with names like \"advertiser June 2015\", \"advertiser April 2015\", or simply \"advertiser 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"advertiser\" will match objects with name \"my advertiser\", \"advertiser 2015\", or simply \"advertiser\" .",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            status = {
              description = "Select only advertisers with the specified status.",
              enum = {
                "APPROVED",
                "ON_HOLD",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            subaccountId = {
              description = "Select only advertisers with these subaccount IDs.",
              format = "int64",
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertisers",
          response = {
            ["$ref"] = "AdvertisersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing advertiser. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/advertisers",
          httpMethod = "PATCH",
          id = "dfareporting.advertisers.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Advertiser ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertisers",
          request = {
            ["$ref"] = "Advertiser",
          },
          response = {
            ["$ref"] = "Advertiser",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing advertiser.",
          flatPath = "userprofiles/{profileId}/advertisers",
          httpMethod = "PUT",
          id = "dfareporting.advertisers.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/advertisers",
          request = {
            ["$ref"] = "Advertiser",
          },
          response = {
            ["$ref"] = "Advertiser",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    browsers = {
      methods = {
        list = {
          description = "Retrieves a list of browsers.",
          flatPath = "userprofiles/{profileId}/browsers",
          httpMethod = "GET",
          id = "dfareporting.browsers.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/browsers",
          response = {
            ["$ref"] = "BrowsersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    campaignCreativeAssociations = {
      methods = {
        insert = {
          description = "Associates a creative with the specified campaign. This method creates a default ad with dimensions matching the creative in the campaign if such a default ad does not exist already.",
          flatPath = "userprofiles/{profileId}/campaigns/{campaignId}/campaignCreativeAssociations",
          httpMethod = "POST",
          id = "dfareporting.campaignCreativeAssociations.insert",
          parameterOrder = {
            "profileId",
            "campaignId",
          },
          parameters = {
            campaignId = {
              description = "Campaign ID in this association.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/campaigns/{campaignId}/campaignCreativeAssociations",
          request = {
            ["$ref"] = "CampaignCreativeAssociation",
          },
          response = {
            ["$ref"] = "CampaignCreativeAssociation",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves the list of creative IDs associated with the specified campaign. This method supports paging.",
          flatPath = "userprofiles/{profileId}/campaigns/{campaignId}/campaignCreativeAssociations",
          httpMethod = "GET",
          id = "dfareporting.campaignCreativeAssociations.list",
          parameterOrder = {
            "profileId",
            "campaignId",
          },
          parameters = {
            campaignId = {
              description = "Campaign ID in this association.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/campaigns/{campaignId}/campaignCreativeAssociations",
          response = {
            ["$ref"] = "CampaignCreativeAssociationsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    campaigns = {
      methods = {
        get = {
          description = "Gets one campaign by ID.",
          flatPath = "userprofiles/{profileId}/campaigns/{id}",
          httpMethod = "GET",
          id = "dfareporting.campaigns.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Campaign ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/campaigns/{id}",
          response = {
            ["$ref"] = "Campaign",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new campaign.",
          flatPath = "userprofiles/{profileId}/campaigns",
          httpMethod = "POST",
          id = "dfareporting.campaigns.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/campaigns",
          request = {
            ["$ref"] = "Campaign",
          },
          response = {
            ["$ref"] = "Campaign",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of campaigns, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/campaigns",
          httpMethod = "GET",
          id = "dfareporting.campaigns.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserGroupIds = {
              description = "Select only campaigns whose advertisers belong to these advertiser groups.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            advertiserIds = {
              description = "Select only campaigns that belong to these advertisers.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            archived = {
              description = "Select only archived campaigns. Don't set this field to select both archived and non-archived campaigns.",
              location = "query",
              type = "boolean",
            },
            atLeastOneOptimizationActivity = {
              description = "Select only campaigns that have at least one optimization activity.",
              location = "query",
              type = "boolean",
            },
            excludedIds = {
              description = "Exclude campaigns with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only campaigns with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            overriddenEventTagId = {
              description = "Select only campaigns that have overridden this event tag ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for campaigns by name or ID. Wildcards (*) are allowed. For example, \"campaign*2015\" will return campaigns with names like \"campaign June 2015\", \"campaign April 2015\", or simply \"campaign 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"campaign\" will match campaigns with name \"my campaign\", \"campaign 2015\", or simply \"campaign\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            subaccountId = {
              description = "Select only campaigns that belong to this subaccount.",
              format = "int64",
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/campaigns",
          response = {
            ["$ref"] = "CampaignsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing campaign. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/campaigns",
          httpMethod = "PATCH",
          id = "dfareporting.campaigns.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Campaign ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/campaigns",
          request = {
            ["$ref"] = "Campaign",
          },
          response = {
            ["$ref"] = "Campaign",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing campaign.",
          flatPath = "userprofiles/{profileId}/campaigns",
          httpMethod = "PUT",
          id = "dfareporting.campaigns.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/campaigns",
          request = {
            ["$ref"] = "Campaign",
          },
          response = {
            ["$ref"] = "Campaign",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    changeLogs = {
      methods = {
        get = {
          description = "Gets one change log by ID.",
          flatPath = "userprofiles/{profileId}/changeLogs/{id}",
          httpMethod = "GET",
          id = "dfareporting.changeLogs.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Change log ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/changeLogs/{id}",
          response = {
            ["$ref"] = "ChangeLog",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of change logs. This method supports paging.",
          flatPath = "userprofiles/{profileId}/changeLogs",
          httpMethod = "GET",
          id = "dfareporting.changeLogs.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            action = {
              description = "Select only change logs with the specified action.",
              enum = {
                "ACTION_CREATE",
                "ACTION_UPDATE",
                "ACTION_DELETE",
                "ACTION_ENABLE",
                "ACTION_DISABLE",
                "ACTION_ADD",
                "ACTION_REMOVE",
                "ACTION_MARK_AS_DEFAULT",
                "ACTION_ASSOCIATE",
                "ACTION_ASSIGN",
                "ACTION_UNASSIGN",
                "ACTION_SEND",
                "ACTION_LINK",
                "ACTION_UNLINK",
                "ACTION_PUSH",
                "ACTION_EMAIL_TAGS",
                "ACTION_SHARE",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            ids = {
              description = "Select only change logs with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxChangeTime = {
              description = "Select only change logs whose change time is before the specified maxChangeTime.The time should be formatted as an RFC3339 date/time string. For example, for 10:54 PM on July 18th, 2015, in the America/New York time zone, the format is \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the letter T, the hour (24-hour clock system), minute, second, and then the time zone offset.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            minChangeTime = {
              description = "Select only change logs whose change time is after the specified minChangeTime.The time should be formatted as an RFC3339 date/time string. For example, for 10:54 PM on July 18th, 2015, in the America/New York time zone, the format is \"2015-07-18T22:54:00-04:00\". In other words, the year, month, day, the letter T, the hour (24-hour clock system), minute, second, and then the time zone offset.",
              location = "query",
              type = "string",
            },
            objectIds = {
              description = "Select only change logs with these object IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            objectType = {
              description = "Select only change logs with the specified object type.",
              enum = {
                "OBJECT_ADVERTISER",
                "OBJECT_FLOODLIGHT_CONFIGURATION",
                "OBJECT_AD",
                "OBJECT_FLOODLIGHT_ACTVITY",
                "OBJECT_CAMPAIGN",
                "OBJECT_FLOODLIGHT_ACTIVITY_GROUP",
                "OBJECT_CREATIVE",
                "OBJECT_PLACEMENT",
                "OBJECT_DFA_SITE",
                "OBJECT_USER_ROLE",
                "OBJECT_USER_PROFILE",
                "OBJECT_ADVERTISER_GROUP",
                "OBJECT_ACCOUNT",
                "OBJECT_SUBACCOUNT",
                "OBJECT_RICHMEDIA_CREATIVE",
                "OBJECT_INSTREAM_CREATIVE",
                "OBJECT_MEDIA_ORDER",
                "OBJECT_CONTENT_CATEGORY",
                "OBJECT_PLACEMENT_STRATEGY",
                "OBJECT_SD_SITE",
                "OBJECT_SIZE",
                "OBJECT_CREATIVE_GROUP",
                "OBJECT_CREATIVE_ASSET",
                "OBJECT_USER_PROFILE_FILTER",
                "OBJECT_LANDING_PAGE",
                "OBJECT_CREATIVE_FIELD",
                "OBJECT_REMARKETING_LIST",
                "OBJECT_PROVIDED_LIST_CLIENT",
                "OBJECT_EVENT_TAG",
                "OBJECT_CREATIVE_BUNDLE",
                "OBJECT_BILLING_ACCOUNT_GROUP",
                "OBJECT_BILLING_FEATURE",
                "OBJECT_RATE_CARD",
                "OBJECT_ACCOUNT_BILLING_FEATURE",
                "OBJECT_BILLING_MINIMUM_FEE",
                "OBJECT_BILLING_PROFILE",
                "OBJECT_PLAYSTORE_LINK",
                "OBJECT_TARGETING_TEMPLATE",
                "OBJECT_SEARCH_LIFT_STUDY",
                "OBJECT_FLOODLIGHT_DV360_LINK",
                "OBJECT_ADVERTISER_CUSTOMER_LINK",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Select only change logs whose object ID, user name, old or new values match the search string.",
              location = "query",
              type = "string",
            },
            userProfileIds = {
              description = "Select only change logs with these user profile IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/changeLogs",
          response = {
            ["$ref"] = "ChangeLogsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    cities = {
      methods = {
        list = {
          description = "Retrieves a list of cities, possibly filtered.",
          flatPath = "userprofiles/{profileId}/cities",
          httpMethod = "GET",
          id = "dfareporting.cities.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            countryDartIds = {
              description = "Select only cities from these countries.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            dartIds = {
              description = "Select only cities with these DART IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            namePrefix = {
              description = "Select only cities with names starting with this prefix.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            regionDartIds = {
              description = "Select only cities from these regions.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/cities",
          response = {
            ["$ref"] = "CitiesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    connectionTypes = {
      methods = {
        get = {
          description = "Gets one connection type by ID.",
          flatPath = "userprofiles/{profileId}/connectionTypes/{id}",
          httpMethod = "GET",
          id = "dfareporting.connectionTypes.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Connection type ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/connectionTypes/{id}",
          response = {
            ["$ref"] = "ConnectionType",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of connection types.",
          flatPath = "userprofiles/{profileId}/connectionTypes",
          httpMethod = "GET",
          id = "dfareporting.connectionTypes.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/connectionTypes",
          response = {
            ["$ref"] = "ConnectionTypesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    contentCategories = {
      methods = {
        delete = {
          description = "Deletes an existing content category.",
          flatPath = "userprofiles/{profileId}/contentCategories/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.contentCategories.delete",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Content category ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/contentCategories/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one content category by ID.",
          flatPath = "userprofiles/{profileId}/contentCategories/{id}",
          httpMethod = "GET",
          id = "dfareporting.contentCategories.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Content category ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/contentCategories/{id}",
          response = {
            ["$ref"] = "ContentCategory",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new content category.",
          flatPath = "userprofiles/{profileId}/contentCategories",
          httpMethod = "POST",
          id = "dfareporting.contentCategories.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/contentCategories",
          request = {
            ["$ref"] = "ContentCategory",
          },
          response = {
            ["$ref"] = "ContentCategory",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of content categories, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/contentCategories",
          httpMethod = "GET",
          id = "dfareporting.contentCategories.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            ids = {
              description = "Select only content categories with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"contentcategory*2015\" will return objects with names like \"contentcategory June 2015\", \"contentcategory April 2015\", or simply \"contentcategory 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"contentcategory\" will match objects with name \"my contentcategory\", \"contentcategory 2015\", or simply \"contentcategory\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/contentCategories",
          response = {
            ["$ref"] = "ContentCategoriesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing content category. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/contentCategories",
          httpMethod = "PATCH",
          id = "dfareporting.contentCategories.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "ContentCategory ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/contentCategories",
          request = {
            ["$ref"] = "ContentCategory",
          },
          response = {
            ["$ref"] = "ContentCategory",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing content category.",
          flatPath = "userprofiles/{profileId}/contentCategories",
          httpMethod = "PUT",
          id = "dfareporting.contentCategories.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/contentCategories",
          request = {
            ["$ref"] = "ContentCategory",
          },
          response = {
            ["$ref"] = "ContentCategory",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    conversions = {
      methods = {
        batchinsert = {
          description = "Inserts conversions.",
          flatPath = "userprofiles/{profileId}/conversions/batchinsert",
          httpMethod = "POST",
          id = "dfareporting.conversions.batchinsert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/conversions/batchinsert",
          request = {
            ["$ref"] = "ConversionsBatchInsertRequest",
          },
          response = {
            ["$ref"] = "ConversionsBatchInsertResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/ddmconversions",
          },
        },
        batchupdate = {
          description = "Updates existing conversions.",
          flatPath = "userprofiles/{profileId}/conversions/batchupdate",
          httpMethod = "POST",
          id = "dfareporting.conversions.batchupdate",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/conversions/batchupdate",
          request = {
            ["$ref"] = "ConversionsBatchUpdateRequest",
          },
          response = {
            ["$ref"] = "ConversionsBatchUpdateResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/ddmconversions",
          },
        },
      },
    },
    countries = {
      methods = {
        get = {
          description = "Gets one country by ID.",
          flatPath = "userprofiles/{profileId}/countries/{dartId}",
          httpMethod = "GET",
          id = "dfareporting.countries.get",
          parameterOrder = {
            "profileId",
            "dartId",
          },
          parameters = {
            dartId = {
              description = "Country DART ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/countries/{dartId}",
          response = {
            ["$ref"] = "Country",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of countries.",
          flatPath = "userprofiles/{profileId}/countries",
          httpMethod = "GET",
          id = "dfareporting.countries.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/countries",
          response = {
            ["$ref"] = "CountriesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    creativeAssets = {
      methods = {
        insert = {
          description = "Inserts a new creative asset.",
          flatPath = "userprofiles/{profileId}/creativeAssets/{advertiserId}/creativeAssets",
          httpMethod = "POST",
          id = "dfareporting.creativeAssets.insert",
          mediaUpload = {
            accept = {
              "*/*",
            },
            maxSize = "1073741824",
            protocols = {
              simple = {
                multipart = true,
                path = "/upload/dfareporting/v3.5/userprofiles/{profileId}/creativeAssets/{advertiserId}/creativeAssets",
              },
            },
          },
          parameterOrder = {
            "profileId",
            "advertiserId",
          },
          parameters = {
            advertiserId = {
              description = "Advertiser ID of this creative. This is a required field.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeAssets/{advertiserId}/creativeAssets",
          request = {
            ["$ref"] = "CreativeAssetMetadata",
          },
          response = {
            ["$ref"] = "CreativeAssetMetadata",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
          supportsMediaUpload = true,
        },
      },
    },
    creativeFieldValues = {
      methods = {
        delete = {
          description = "Deletes an existing creative field value.",
          flatPath = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.creativeFieldValues.delete",
          parameterOrder = {
            "profileId",
            "creativeFieldId",
            "id",
          },
          parameters = {
            creativeFieldId = {
              description = "Creative field ID for this creative field value.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            id = {
              description = "Creative Field Value ID",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one creative field value by ID.",
          flatPath = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues/{id}",
          httpMethod = "GET",
          id = "dfareporting.creativeFieldValues.get",
          parameterOrder = {
            "profileId",
            "creativeFieldId",
            "id",
          },
          parameters = {
            creativeFieldId = {
              description = "Creative field ID for this creative field value.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            id = {
              description = "Creative Field Value ID",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues/{id}",
          response = {
            ["$ref"] = "CreativeFieldValue",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new creative field value.",
          flatPath = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          httpMethod = "POST",
          id = "dfareporting.creativeFieldValues.insert",
          parameterOrder = {
            "profileId",
            "creativeFieldId",
          },
          parameters = {
            creativeFieldId = {
              description = "Creative field ID for this creative field value.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          request = {
            ["$ref"] = "CreativeFieldValue",
          },
          response = {
            ["$ref"] = "CreativeFieldValue",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of creative field values, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          httpMethod = "GET",
          id = "dfareporting.creativeFieldValues.list",
          parameterOrder = {
            "profileId",
            "creativeFieldId",
          },
          parameters = {
            creativeFieldId = {
              description = "Creative field ID for this creative field value.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            ids = {
              description = "Select only creative field values with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for creative field values by their values. Wildcards (e.g. *) are not allowed.",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "VALUE",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          response = {
            ["$ref"] = "CreativeFieldValuesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing creative field value. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          httpMethod = "PATCH",
          id = "dfareporting.creativeFieldValues.patch",
          parameterOrder = {
            "profileId",
            "creativeFieldId",
            "id",
          },
          parameters = {
            creativeFieldId = {
              description = "CreativeField ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            id = {
              description = "CreativeFieldValue ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          request = {
            ["$ref"] = "CreativeFieldValue",
          },
          response = {
            ["$ref"] = "CreativeFieldValue",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing creative field value.",
          flatPath = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          httpMethod = "PUT",
          id = "dfareporting.creativeFieldValues.update",
          parameterOrder = {
            "profileId",
            "creativeFieldId",
          },
          parameters = {
            creativeFieldId = {
              description = "Creative field ID for this creative field value.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{creativeFieldId}/creativeFieldValues",
          request = {
            ["$ref"] = "CreativeFieldValue",
          },
          response = {
            ["$ref"] = "CreativeFieldValue",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    creativeFields = {
      methods = {
        delete = {
          description = "Deletes an existing creative field.",
          flatPath = "userprofiles/{profileId}/creativeFields/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.creativeFields.delete",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Creative Field ID",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one creative field by ID.",
          flatPath = "userprofiles/{profileId}/creativeFields/{id}",
          httpMethod = "GET",
          id = "dfareporting.creativeFields.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Creative Field ID",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields/{id}",
          response = {
            ["$ref"] = "CreativeField",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new creative field.",
          flatPath = "userprofiles/{profileId}/creativeFields",
          httpMethod = "POST",
          id = "dfareporting.creativeFields.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields",
          request = {
            ["$ref"] = "CreativeField",
          },
          response = {
            ["$ref"] = "CreativeField",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of creative fields, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/creativeFields",
          httpMethod = "GET",
          id = "dfareporting.creativeFields.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserIds = {
              description = "Select only creative fields that belong to these advertisers.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only creative fields with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for creative fields by name or ID. Wildcards (*) are allowed. For example, \"creativefield*2015\" will return creative fields with names like \"creativefield June 2015\", \"creativefield April 2015\", or simply \"creativefield 2015\". Most of the searches also add wild-cards implicitly at the start and the end of the search string. For example, a search string of \"creativefield\" will match creative fields with the name \"my creativefield\", \"creativefield 2015\", or simply \"creativefield\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields",
          response = {
            ["$ref"] = "CreativeFieldsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing creative field. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/creativeFields",
          httpMethod = "PATCH",
          id = "dfareporting.creativeFields.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "CreativeField ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields",
          request = {
            ["$ref"] = "CreativeField",
          },
          response = {
            ["$ref"] = "CreativeField",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing creative field.",
          flatPath = "userprofiles/{profileId}/creativeFields",
          httpMethod = "PUT",
          id = "dfareporting.creativeFields.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeFields",
          request = {
            ["$ref"] = "CreativeField",
          },
          response = {
            ["$ref"] = "CreativeField",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    creativeGroups = {
      methods = {
        get = {
          description = "Gets one creative group by ID.",
          flatPath = "userprofiles/{profileId}/creativeGroups/{id}",
          httpMethod = "GET",
          id = "dfareporting.creativeGroups.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Creative group ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeGroups/{id}",
          response = {
            ["$ref"] = "CreativeGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new creative group.",
          flatPath = "userprofiles/{profileId}/creativeGroups",
          httpMethod = "POST",
          id = "dfareporting.creativeGroups.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeGroups",
          request = {
            ["$ref"] = "CreativeGroup",
          },
          response = {
            ["$ref"] = "CreativeGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of creative groups, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/creativeGroups",
          httpMethod = "GET",
          id = "dfareporting.creativeGroups.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserIds = {
              description = "Select only creative groups that belong to these advertisers.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            groupNumber = {
              description = "Select only creative groups that belong to this subgroup.",
              format = "int32",
              location = "query",
              maximum = "2",
              minimum = "1",
              type = "integer",
            },
            ids = {
              description = "Select only creative groups with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for creative groups by name or ID. Wildcards (*) are allowed. For example, \"creativegroup*2015\" will return creative groups with names like \"creativegroup June 2015\", \"creativegroup April 2015\", or simply \"creativegroup 2015\". Most of the searches also add wild-cards implicitly at the start and the end of the search string. For example, a search string of \"creativegroup\" will match creative groups with the name \"my creativegroup\", \"creativegroup 2015\", or simply \"creativegroup\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeGroups",
          response = {
            ["$ref"] = "CreativeGroupsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing creative group. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/creativeGroups",
          httpMethod = "PATCH",
          id = "dfareporting.creativeGroups.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "CreativeGroup ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeGroups",
          request = {
            ["$ref"] = "CreativeGroup",
          },
          response = {
            ["$ref"] = "CreativeGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing creative group.",
          flatPath = "userprofiles/{profileId}/creativeGroups",
          httpMethod = "PUT",
          id = "dfareporting.creativeGroups.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creativeGroups",
          request = {
            ["$ref"] = "CreativeGroup",
          },
          response = {
            ["$ref"] = "CreativeGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    creatives = {
      methods = {
        get = {
          description = "Gets one creative by ID.",
          flatPath = "userprofiles/{profileId}/creatives/{id}",
          httpMethod = "GET",
          id = "dfareporting.creatives.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Creative ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creatives/{id}",
          response = {
            ["$ref"] = "Creative",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new creative.",
          flatPath = "userprofiles/{profileId}/creatives",
          httpMethod = "POST",
          id = "dfareporting.creatives.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creatives",
          request = {
            ["$ref"] = "Creative",
          },
          response = {
            ["$ref"] = "Creative",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of creatives, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/creatives",
          httpMethod = "GET",
          id = "dfareporting.creatives.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            active = {
              description = "Select only active creatives. Leave blank to select active and inactive creatives.",
              location = "query",
              type = "boolean",
            },
            advertiserId = {
              description = "Select only creatives with this advertiser ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            archived = {
              description = "Select only archived creatives. Leave blank to select archived and unarchived creatives.",
              location = "query",
              type = "boolean",
            },
            campaignId = {
              description = "Select only creatives with this campaign ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            companionCreativeIds = {
              description = "Select only in-stream video creatives with these companion IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            creativeFieldIds = {
              description = "Select only creatives with these creative field IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only creatives with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            renderingIds = {
              description = "Select only creatives with these rendering IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"creative*2015\" will return objects with names like \"creative June 2015\", \"creative April 2015\", or simply \"creative 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"creative\" will match objects with name \"my creative\", \"creative 2015\", or simply \"creative\".",
              location = "query",
              type = "string",
            },
            sizeIds = {
              description = "Select only creatives with these size IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            studioCreativeId = {
              description = "Select only creatives corresponding to this Studio creative ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            types = {
              description = "Select only creatives with these creative types.",
              enum = {
                "IMAGE",
                "DISPLAY_REDIRECT",
                "CUSTOM_DISPLAY",
                "INTERNAL_REDIRECT",
                "CUSTOM_DISPLAY_INTERSTITIAL",
                "INTERSTITIAL_INTERNAL_REDIRECT",
                "TRACKING_TEXT",
                "RICH_MEDIA_DISPLAY_BANNER",
                "RICH_MEDIA_INPAGE_FLOATING",
                "RICH_MEDIA_IM_EXPAND",
                "RICH_MEDIA_DISPLAY_EXPANDING",
                "RICH_MEDIA_DISPLAY_INTERSTITIAL",
                "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL",
                "RICH_MEDIA_MOBILE_IN_APP",
                "FLASH_INPAGE",
                "INSTREAM_VIDEO",
                "VPAID_LINEAR_VIDEO",
                "VPAID_NON_LINEAR_VIDEO",
                "INSTREAM_VIDEO_REDIRECT",
                "RICH_MEDIA_PEEL_DOWN",
                "HTML5_BANNER",
                "DISPLAY",
                "DISPLAY_IMAGE_GALLERY",
                "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO",
                "INSTREAM_AUDIO",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creatives",
          response = {
            ["$ref"] = "CreativesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing creative. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/creatives",
          httpMethod = "PATCH",
          id = "dfareporting.creatives.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Creative ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creatives",
          request = {
            ["$ref"] = "Creative",
          },
          response = {
            ["$ref"] = "Creative",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing creative.",
          flatPath = "userprofiles/{profileId}/creatives",
          httpMethod = "PUT",
          id = "dfareporting.creatives.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/creatives",
          request = {
            ["$ref"] = "Creative",
          },
          response = {
            ["$ref"] = "Creative",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    dimensionValues = {
      methods = {
        query = {
          description = "Retrieves list of report dimension values for a list of filters.",
          flatPath = "userprofiles/{profileId}/dimensionvalues/query",
          httpMethod = "POST",
          id = "dfareporting.dimensionValues.query",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            maxResults = {
              default = "100",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "The value of the nextToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/dimensionvalues/query",
          request = {
            ["$ref"] = "DimensionValueRequest",
          },
          response = {
            ["$ref"] = "DimensionValueList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
      },
    },
    directorySites = {
      methods = {
        get = {
          description = "Gets one directory site by ID.",
          flatPath = "userprofiles/{profileId}/directorySites/{id}",
          httpMethod = "GET",
          id = "dfareporting.directorySites.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Directory site ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/directorySites/{id}",
          response = {
            ["$ref"] = "DirectorySite",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new directory site.",
          flatPath = "userprofiles/{profileId}/directorySites",
          httpMethod = "POST",
          id = "dfareporting.directorySites.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/directorySites",
          request = {
            ["$ref"] = "DirectorySite",
          },
          response = {
            ["$ref"] = "DirectorySite",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of directory sites, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/directorySites",
          httpMethod = "GET",
          id = "dfareporting.directorySites.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            acceptsInStreamVideoPlacements = {
              description = "This search filter is no longer supported and will have no effect on the results returned.",
              location = "query",
              type = "boolean",
            },
            acceptsInterstitialPlacements = {
              description = "This search filter is no longer supported and will have no effect on the results returned.",
              location = "query",
              type = "boolean",
            },
            acceptsPublisherPaidPlacements = {
              description = "Select only directory sites that accept publisher paid placements. This field can be left blank.",
              location = "query",
              type = "boolean",
            },
            active = {
              description = "Select only active directory sites. Leave blank to retrieve both active and inactive directory sites.",
              location = "query",
              type = "boolean",
            },
            dfpNetworkCode = {
              description = "Select only directory sites with this Ad Manager network code.",
              location = "query",
              type = "string",
            },
            ids = {
              description = "Select only directory sites with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name, ID or URL. Wildcards (*) are allowed. For example, \"directory site*2015\" will return objects with names like \"directory site June 2015\", \"directory site April 2015\", or simply \"directory site 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"directory site\" will match objects with name \"my directory site\", \"directory site 2015\" or simply, \"directory site\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/directorySites",
          response = {
            ["$ref"] = "DirectorySitesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    dynamicTargetingKeys = {
      methods = {
        delete = {
          description = "Deletes an existing dynamic targeting key.",
          flatPath = "userprofiles/{profileId}/dynamicTargetingKeys/{objectId}",
          httpMethod = "DELETE",
          id = "dfareporting.dynamicTargetingKeys.delete",
          parameterOrder = {
            "profileId",
            "objectId",
            "name",
            "objectType",
          },
          parameters = {
            name = {
              description = "Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and cannot contain commas. All characters are converted to lowercase.",
              location = "query",
              required = true,
              type = "string",
            },
            objectId = {
              description = "ID of the object of this dynamic targeting key. This is a required field.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            objectType = {
              description = "Type of the object of this dynamic targeting key. This is a required field.",
              enum = {
                "OBJECT_ADVERTISER",
                "OBJECT_AD",
                "OBJECT_CREATIVE",
                "OBJECT_PLACEMENT",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/dynamicTargetingKeys/{objectId}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new dynamic targeting key. Keys must be created at the advertiser level before being assigned to the advertiser's ads, creatives, or placements. There is a maximum of 1000 keys per advertiser, out of which a maximum of 20 keys can be assigned per ad, creative, or placement.",
          flatPath = "userprofiles/{profileId}/dynamicTargetingKeys",
          httpMethod = "POST",
          id = "dfareporting.dynamicTargetingKeys.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/dynamicTargetingKeys",
          request = {
            ["$ref"] = "DynamicTargetingKey",
          },
          response = {
            ["$ref"] = "DynamicTargetingKey",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of dynamic targeting keys.",
          flatPath = "userprofiles/{profileId}/dynamicTargetingKeys",
          httpMethod = "GET",
          id = "dfareporting.dynamicTargetingKeys.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserId = {
              description = "Select only dynamic targeting keys whose object has this advertiser ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            names = {
              description = "Select only dynamic targeting keys exactly matching these names.",
              location = "query",
              repeated = true,
              type = "string",
            },
            objectId = {
              description = "Select only dynamic targeting keys with this object ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            objectType = {
              description = "Select only dynamic targeting keys with this object type.",
              enum = {
                "OBJECT_ADVERTISER",
                "OBJECT_AD",
                "OBJECT_CREATIVE",
                "OBJECT_PLACEMENT",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/dynamicTargetingKeys",
          response = {
            ["$ref"] = "DynamicTargetingKeysListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    eventTags = {
      methods = {
        delete = {
          description = "Deletes an existing event tag.",
          flatPath = "userprofiles/{profileId}/eventTags/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.eventTags.delete",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Event tag ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/eventTags/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one event tag by ID.",
          flatPath = "userprofiles/{profileId}/eventTags/{id}",
          httpMethod = "GET",
          id = "dfareporting.eventTags.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Event tag ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/eventTags/{id}",
          response = {
            ["$ref"] = "EventTag",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new event tag.",
          flatPath = "userprofiles/{profileId}/eventTags",
          httpMethod = "POST",
          id = "dfareporting.eventTags.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/eventTags",
          request = {
            ["$ref"] = "EventTag",
          },
          response = {
            ["$ref"] = "EventTag",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of event tags, possibly filtered.",
          flatPath = "userprofiles/{profileId}/eventTags",
          httpMethod = "GET",
          id = "dfareporting.eventTags.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            adId = {
              description = "Select only event tags that belong to this ad.",
              format = "int64",
              location = "query",
              type = "string",
            },
            advertiserId = {
              description = "Select only event tags that belong to this advertiser.",
              format = "int64",
              location = "query",
              type = "string",
            },
            campaignId = {
              description = "Select only event tags that belong to this campaign.",
              format = "int64",
              location = "query",
              type = "string",
            },
            definitionsOnly = {
              description = "Examine only the specified campaign or advertiser's event tags for matching selector criteria. When set to false, the parent advertiser and parent campaign of the specified ad or campaign is examined as well. In addition, when set to false, the status field is examined as well, along with the enabledByDefault field. This parameter can not be set to true when adId is specified as ads do not define their own even tags.",
              location = "query",
              type = "boolean",
            },
            enabled = {
              description = "Select only enabled event tags. What is considered enabled or disabled depends on the definitionsOnly parameter. When definitionsOnly is set to true, only the specified advertiser or campaign's event tags' enabledByDefault field is examined. When definitionsOnly is set to false, the specified ad or specified campaign's parent advertiser's or parent campaign's event tags' enabledByDefault and status fields are examined as well.",
              location = "query",
              type = "boolean",
            },
            eventTagTypes = {
              description = "Select only event tags with the specified event tag types. Event tag types can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking.",
              enum = {
                "IMPRESSION_IMAGE_EVENT_TAG",
                "IMPRESSION_JAVASCRIPT_EVENT_TAG",
                "CLICK_THROUGH_EVENT_TAG",
              },
              enumDescriptions = {
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only event tags with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"eventtag*2015\" will return objects with names like \"eventtag June 2015\", \"eventtag April 2015\", or simply \"eventtag 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"eventtag\" will match objects with name \"my eventtag\", \"eventtag 2015\", or simply \"eventtag\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/eventTags",
          response = {
            ["$ref"] = "EventTagsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing event tag. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/eventTags",
          httpMethod = "PATCH",
          id = "dfareporting.eventTags.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "EventTag ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/eventTags",
          request = {
            ["$ref"] = "EventTag",
          },
          response = {
            ["$ref"] = "EventTag",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing event tag.",
          flatPath = "userprofiles/{profileId}/eventTags",
          httpMethod = "PUT",
          id = "dfareporting.eventTags.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/eventTags",
          request = {
            ["$ref"] = "EventTag",
          },
          response = {
            ["$ref"] = "EventTag",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    files = {
      methods = {
        get = {
          description = "Retrieves a report file by its report ID and file ID. This method supports media download.",
          flatPath = "reports/{reportId}/files/{fileId}",
          httpMethod = "GET",
          id = "dfareporting.files.get",
          parameterOrder = {
            "reportId",
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the report file.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            reportId = {
              description = "The ID of the report.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "reports/{reportId}/files/{fileId}",
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
          supportsMediaDownload = true,
        },
        list = {
          description = "Lists files for a user profile.",
          flatPath = "userprofiles/{profileId}/files",
          httpMethod = "GET",
          id = "dfareporting.files.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            maxResults = {
              default = "10",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "10",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "The value of the nextToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            scope = {
              default = "MINE",
              description = "The scope that defines which results are returned.",
              enum = {
                "ALL",
                "MINE",
                "SHARED_WITH_ME",
              },
              enumDescriptions = {
                "All files in account.",
                "My files.",
                "Files shared with me.",
              },
              location = "query",
              type = "string",
            },
            sortField = {
              default = "LAST_MODIFIED_TIME",
              description = "The field by which to sort the list.",
              enum = {
                "ID",
                "LAST_MODIFIED_TIME",
              },
              enumDescriptions = {
                "Sort by file ID.",
                "Sort by 'lastmodifiedAt' field.",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "DESCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "Ascending order.",
                "Descending order.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/files",
          response = {
            ["$ref"] = "FileList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
      },
    },
    floodlightActivities = {
      methods = {
        delete = {
          description = "Deletes an existing floodlight activity.",
          flatPath = "userprofiles/{profileId}/floodlightActivities/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.floodlightActivities.delete",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Floodlight activity ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivities/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        generatetag = {
          description = "Generates a tag for a floodlight activity.",
          flatPath = "userprofiles/{profileId}/floodlightActivities/generatetag",
          httpMethod = "POST",
          id = "dfareporting.floodlightActivities.generatetag",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            floodlightActivityId = {
              description = "Floodlight activity ID for which we want to generate a tag.",
              format = "int64",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivities/generatetag",
          response = {
            ["$ref"] = "FloodlightActivitiesGenerateTagResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one floodlight activity by ID.",
          flatPath = "userprofiles/{profileId}/floodlightActivities/{id}",
          httpMethod = "GET",
          id = "dfareporting.floodlightActivities.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Floodlight activity ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivities/{id}",
          response = {
            ["$ref"] = "FloodlightActivity",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new floodlight activity.",
          flatPath = "userprofiles/{profileId}/floodlightActivities",
          httpMethod = "POST",
          id = "dfareporting.floodlightActivities.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivities",
          request = {
            ["$ref"] = "FloodlightActivity",
          },
          response = {
            ["$ref"] = "FloodlightActivity",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of floodlight activities, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/floodlightActivities",
          httpMethod = "GET",
          id = "dfareporting.floodlightActivities.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserId = {
              description = "Select only floodlight activities for the specified advertiser ID. Must specify either ids, advertiserId, or floodlightConfigurationId for a non-empty result.",
              format = "int64",
              location = "query",
              type = "string",
            },
            floodlightActivityGroupIds = {
              description = "Select only floodlight activities with the specified floodlight activity group IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            floodlightActivityGroupName = {
              description = "Select only floodlight activities with the specified floodlight activity group name.",
              location = "query",
              type = "string",
            },
            floodlightActivityGroupTagString = {
              description = "Select only floodlight activities with the specified floodlight activity group tag string.",
              location = "query",
              type = "string",
            },
            floodlightActivityGroupType = {
              description = "Select only floodlight activities with the specified floodlight activity group type.",
              enum = {
                "COUNTER",
                "SALE",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            floodlightConfigurationId = {
              description = "Select only floodlight activities for the specified floodlight configuration ID. Must specify either ids, advertiserId, or floodlightConfigurationId for a non-empty result.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ids = {
              description = "Select only floodlight activities with the specified IDs. Must specify either ids, advertiserId, or floodlightConfigurationId for a non-empty result.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"floodlightactivity*2015\" will return objects with names like \"floodlightactivity June 2015\", \"floodlightactivity April 2015\", or simply \"floodlightactivity 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"floodlightactivity\" will match objects with name \"my floodlightactivity activity\", \"floodlightactivity 2015\", or simply \"floodlightactivity\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            tagString = {
              description = "Select only floodlight activities with the specified tag string.",
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivities",
          response = {
            ["$ref"] = "FloodlightActivitiesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing floodlight activity. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/floodlightActivities",
          httpMethod = "PATCH",
          id = "dfareporting.floodlightActivities.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "FloodlightActivity ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivities",
          request = {
            ["$ref"] = "FloodlightActivity",
          },
          response = {
            ["$ref"] = "FloodlightActivity",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing floodlight activity.",
          flatPath = "userprofiles/{profileId}/floodlightActivities",
          httpMethod = "PUT",
          id = "dfareporting.floodlightActivities.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivities",
          request = {
            ["$ref"] = "FloodlightActivity",
          },
          response = {
            ["$ref"] = "FloodlightActivity",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    floodlightActivityGroups = {
      methods = {
        get = {
          description = "Gets one floodlight activity group by ID.",
          flatPath = "userprofiles/{profileId}/floodlightActivityGroups/{id}",
          httpMethod = "GET",
          id = "dfareporting.floodlightActivityGroups.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Floodlight activity Group ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivityGroups/{id}",
          response = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new floodlight activity group.",
          flatPath = "userprofiles/{profileId}/floodlightActivityGroups",
          httpMethod = "POST",
          id = "dfareporting.floodlightActivityGroups.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivityGroups",
          request = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          response = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of floodlight activity groups, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/floodlightActivityGroups",
          httpMethod = "GET",
          id = "dfareporting.floodlightActivityGroups.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserId = {
              description = "Select only floodlight activity groups with the specified advertiser ID. Must specify either advertiserId or floodlightConfigurationId for a non-empty result.",
              format = "int64",
              location = "query",
              type = "string",
            },
            floodlightConfigurationId = {
              description = "Select only floodlight activity groups with the specified floodlight configuration ID. Must specify either advertiserId, or floodlightConfigurationId for a non-empty result.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ids = {
              description = "Select only floodlight activity groups with the specified IDs. Must specify either advertiserId or floodlightConfigurationId for a non-empty result.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"floodlightactivitygroup*2015\" will return objects with names like \"floodlightactivitygroup June 2015\", \"floodlightactivitygroup April 2015\", or simply \"floodlightactivitygroup 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"floodlightactivitygroup\" will match objects with name \"my floodlightactivitygroup activity\", \"floodlightactivitygroup 2015\", or simply \"floodlightactivitygroup\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            type = {
              description = "Select only floodlight activity groups with the specified floodlight activity group type.",
              enum = {
                "COUNTER",
                "SALE",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivityGroups",
          response = {
            ["$ref"] = "FloodlightActivityGroupsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing floodlight activity group. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/floodlightActivityGroups",
          httpMethod = "PATCH",
          id = "dfareporting.floodlightActivityGroups.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "FloodlightActivityGroup ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivityGroups",
          request = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          response = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing floodlight activity group.",
          flatPath = "userprofiles/{profileId}/floodlightActivityGroups",
          httpMethod = "PUT",
          id = "dfareporting.floodlightActivityGroups.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightActivityGroups",
          request = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          response = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    floodlightConfigurations = {
      methods = {
        get = {
          description = "Gets one floodlight configuration by ID.",
          flatPath = "userprofiles/{profileId}/floodlightConfigurations/{id}",
          httpMethod = "GET",
          id = "dfareporting.floodlightConfigurations.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Floodlight configuration ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightConfigurations/{id}",
          response = {
            ["$ref"] = "FloodlightConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of floodlight configurations, possibly filtered.",
          flatPath = "userprofiles/{profileId}/floodlightConfigurations",
          httpMethod = "GET",
          id = "dfareporting.floodlightConfigurations.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            ids = {
              description = "Set of IDs of floodlight configurations to retrieve. Required field; otherwise an empty list will be returned.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightConfigurations",
          response = {
            ["$ref"] = "FloodlightConfigurationsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing floodlight configuration. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/floodlightConfigurations",
          httpMethod = "PATCH",
          id = "dfareporting.floodlightConfigurations.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "FloodlightConfiguration ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightConfigurations",
          request = {
            ["$ref"] = "FloodlightConfiguration",
          },
          response = {
            ["$ref"] = "FloodlightConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing floodlight configuration.",
          flatPath = "userprofiles/{profileId}/floodlightConfigurations",
          httpMethod = "PUT",
          id = "dfareporting.floodlightConfigurations.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/floodlightConfigurations",
          request = {
            ["$ref"] = "FloodlightConfiguration",
          },
          response = {
            ["$ref"] = "FloodlightConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    inventoryItems = {
      methods = {
        get = {
          description = "Gets one inventory item by ID.",
          flatPath = "userprofiles/{profileId}/projects/{projectId}/inventoryItems/{id}",
          httpMethod = "GET",
          id = "dfareporting.inventoryItems.get",
          parameterOrder = {
            "profileId",
            "projectId",
            "id",
          },
          parameters = {
            id = {
              description = "Inventory item ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID for order documents.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects/{projectId}/inventoryItems/{id}",
          response = {
            ["$ref"] = "InventoryItem",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of inventory items, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/projects/{projectId}/inventoryItems",
          httpMethod = "GET",
          id = "dfareporting.inventoryItems.list",
          parameterOrder = {
            "profileId",
            "projectId",
          },
          parameters = {
            ids = {
              description = "Select only inventory items with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            inPlan = {
              description = "Select only inventory items that are in plan.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            orderId = {
              description = "Select only inventory items that belong to specified orders.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID for order documents.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            siteId = {
              description = "Select only inventory items that are associated with these sites.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            type = {
              description = "Select only inventory items with this type.",
              enum = {
                "PLANNING_PLACEMENT_TYPE_REGULAR",
                "PLANNING_PLACEMENT_TYPE_CREDIT",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects/{projectId}/inventoryItems",
          response = {
            ["$ref"] = "InventoryItemsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    languages = {
      methods = {
        list = {
          description = "Retrieves a list of languages.",
          flatPath = "userprofiles/{profileId}/languages",
          httpMethod = "GET",
          id = "dfareporting.languages.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/languages",
          response = {
            ["$ref"] = "LanguagesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    metros = {
      methods = {
        list = {
          description = "Retrieves a list of metros.",
          flatPath = "userprofiles/{profileId}/metros",
          httpMethod = "GET",
          id = "dfareporting.metros.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/metros",
          response = {
            ["$ref"] = "MetrosListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    mobileApps = {
      methods = {
        get = {
          description = "Gets one mobile app by ID.",
          flatPath = "userprofiles/{profileId}/mobileApps/{id}",
          httpMethod = "GET",
          id = "dfareporting.mobileApps.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Mobile app ID.",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/mobileApps/{id}",
          response = {
            ["$ref"] = "MobileApp",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves list of available mobile apps.",
          flatPath = "userprofiles/{profileId}/mobileApps",
          httpMethod = "GET",
          id = "dfareporting.mobileApps.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            directories = {
              description = "Select only apps from these directories.",
              enum = {
                "UNKNOWN",
                "APPLE_APP_STORE",
                "GOOGLE_PLAY_STORE",
                "ROKU_APP_STORE",
                "AMAZON_FIRETV_APP_STORE",
                "PLAYSTATION_APP_STORE",
                "APPLE_TV_APP_STORE",
                "XBOX_APP_STORE",
                "SAMSUNG_TV_APP_STORE",
                "ANDROID_TV_APP_STORE",
                "GENERIC_CTV_APP_STORE",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only apps with these IDs.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"app*2015\" will return objects with names like \"app Jan 2018\", \"app Jan 2018\", or simply \"app 2018\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"app\" will match objects with name \"my app\", \"app 2018\", or simply \"app\".",
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/mobileApps",
          response = {
            ["$ref"] = "MobileAppsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    mobileCarriers = {
      methods = {
        get = {
          description = "Gets one mobile carrier by ID.",
          flatPath = "userprofiles/{profileId}/mobileCarriers/{id}",
          httpMethod = "GET",
          id = "dfareporting.mobileCarriers.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Mobile carrier ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/mobileCarriers/{id}",
          response = {
            ["$ref"] = "MobileCarrier",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of mobile carriers.",
          flatPath = "userprofiles/{profileId}/mobileCarriers",
          httpMethod = "GET",
          id = "dfareporting.mobileCarriers.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/mobileCarriers",
          response = {
            ["$ref"] = "MobileCarriersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    operatingSystemVersions = {
      methods = {
        get = {
          description = "Gets one operating system version by ID.",
          flatPath = "userprofiles/{profileId}/operatingSystemVersions/{id}",
          httpMethod = "GET",
          id = "dfareporting.operatingSystemVersions.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Operating system version ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/operatingSystemVersions/{id}",
          response = {
            ["$ref"] = "OperatingSystemVersion",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of operating system versions.",
          flatPath = "userprofiles/{profileId}/operatingSystemVersions",
          httpMethod = "GET",
          id = "dfareporting.operatingSystemVersions.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/operatingSystemVersions",
          response = {
            ["$ref"] = "OperatingSystemVersionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    operatingSystems = {
      methods = {
        get = {
          description = "Gets one operating system by DART ID.",
          flatPath = "userprofiles/{profileId}/operatingSystems/{dartId}",
          httpMethod = "GET",
          id = "dfareporting.operatingSystems.get",
          parameterOrder = {
            "profileId",
            "dartId",
          },
          parameters = {
            dartId = {
              description = "Operating system DART ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/operatingSystems/{dartId}",
          response = {
            ["$ref"] = "OperatingSystem",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of operating systems.",
          flatPath = "userprofiles/{profileId}/operatingSystems",
          httpMethod = "GET",
          id = "dfareporting.operatingSystems.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/operatingSystems",
          response = {
            ["$ref"] = "OperatingSystemsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    orderDocuments = {
      methods = {
        get = {
          description = "Gets one order document by ID.",
          flatPath = "userprofiles/{profileId}/projects/{projectId}/orderDocuments/{id}",
          httpMethod = "GET",
          id = "dfareporting.orderDocuments.get",
          parameterOrder = {
            "profileId",
            "projectId",
            "id",
          },
          parameters = {
            id = {
              description = "Order document ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID for order documents.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects/{projectId}/orderDocuments/{id}",
          response = {
            ["$ref"] = "OrderDocument",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of order documents, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/projects/{projectId}/orderDocuments",
          httpMethod = "GET",
          id = "dfareporting.orderDocuments.list",
          parameterOrder = {
            "profileId",
            "projectId",
          },
          parameters = {
            approved = {
              description = "Select only order documents that have been approved by at least one user.",
              location = "query",
              type = "boolean",
            },
            ids = {
              description = "Select only order documents with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            orderId = {
              description = "Select only order documents for specified orders.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID for order documents.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for order documents by name or ID. Wildcards (*) are allowed. For example, \"orderdocument*2015\" will return order documents with names like \"orderdocument June 2015\", \"orderdocument April 2015\", or simply \"orderdocument 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"orderdocument\" will match order documents with name \"my orderdocument\", \"orderdocument 2015\", or simply \"orderdocument\".",
              location = "query",
              type = "string",
            },
            siteId = {
              description = "Select only order documents that are associated with these sites.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects/{projectId}/orderDocuments",
          response = {
            ["$ref"] = "OrderDocumentsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    orders = {
      methods = {
        get = {
          description = "Gets one order by ID.",
          flatPath = "userprofiles/{profileId}/projects/{projectId}/orders/{id}",
          httpMethod = "GET",
          id = "dfareporting.orders.get",
          parameterOrder = {
            "profileId",
            "projectId",
            "id",
          },
          parameters = {
            id = {
              description = "Order ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID for orders.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects/{projectId}/orders/{id}",
          response = {
            ["$ref"] = "Order",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of orders, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/projects/{projectId}/orders",
          httpMethod = "GET",
          id = "dfareporting.orders.list",
          parameterOrder = {
            "profileId",
            "projectId",
          },
          parameters = {
            ids = {
              description = "Select only orders with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "Project ID for orders.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for orders by name or ID. Wildcards (*) are allowed. For example, \"order*2015\" will return orders with names like \"order June 2015\", \"order April 2015\", or simply \"order 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"order\" will match orders with name \"my order\", \"order 2015\", or simply \"order\".",
              location = "query",
              type = "string",
            },
            siteId = {
              description = "Select only orders that are associated with these site IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects/{projectId}/orders",
          response = {
            ["$ref"] = "OrdersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    placementGroups = {
      methods = {
        get = {
          description = "Gets one placement group by ID.",
          flatPath = "userprofiles/{profileId}/placementGroups/{id}",
          httpMethod = "GET",
          id = "dfareporting.placementGroups.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Placement group ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementGroups/{id}",
          response = {
            ["$ref"] = "PlacementGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new placement group.",
          flatPath = "userprofiles/{profileId}/placementGroups",
          httpMethod = "POST",
          id = "dfareporting.placementGroups.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementGroups",
          request = {
            ["$ref"] = "PlacementGroup",
          },
          response = {
            ["$ref"] = "PlacementGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of placement groups, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/placementGroups",
          httpMethod = "GET",
          id = "dfareporting.placementGroups.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserIds = {
              description = "Select only placement groups that belong to these advertisers.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            archived = {
              description = "Select only archived placements. Don't set this field to select both archived and non-archived placements.",
              location = "query",
              type = "boolean",
            },
            campaignIds = {
              description = "Select only placement groups that belong to these campaigns.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            contentCategoryIds = {
              description = "Select only placement groups that are associated with these content categories.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            directorySiteIds = {
              description = "Select only placement groups that are associated with these directory sites.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only placement groups with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxEndDate = {
              description = "Select only placements or placement groups whose end date is on or before the specified maxEndDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "800",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "800",
              minimum = "0",
              type = "integer",
            },
            maxStartDate = {
              description = "Select only placements or placement groups whose start date is on or before the specified maxStartDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            minEndDate = {
              description = "Select only placements or placement groups whose end date is on or after the specified minEndDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            minStartDate = {
              description = "Select only placements or placement groups whose start date is on or after the specified minStartDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            placementGroupType = {
              description = "Select only placement groups belonging with this group type. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting.",
              enum = {
                "PLACEMENT_PACKAGE",
                "PLACEMENT_ROADBLOCK",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            placementStrategyIds = {
              description = "Select only placement groups that are associated with these placement strategies.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            pricingTypes = {
              description = "Select only placement groups with these pricing types.",
              enum = {
                "PRICING_TYPE_CPM",
                "PRICING_TYPE_CPC",
                "PRICING_TYPE_CPA",
                "PRICING_TYPE_FLAT_RATE_IMPRESSIONS",
                "PRICING_TYPE_FLAT_RATE_CLICKS",
                "PRICING_TYPE_CPM_ACTIVEVIEW",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for placement groups by name or ID. Wildcards (*) are allowed. For example, \"placement*2015\" will return placement groups with names like \"placement group June 2015\", \"placement group May 2015\", or simply \"placements 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"placementgroup\" will match placement groups with name \"my placementgroup\", \"placementgroup 2015\", or simply \"placementgroup\".",
              location = "query",
              type = "string",
            },
            siteIds = {
              description = "Select only placement groups that are associated with these sites.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementGroups",
          response = {
            ["$ref"] = "PlacementGroupsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing placement group. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/placementGroups",
          httpMethod = "PATCH",
          id = "dfareporting.placementGroups.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "PlacementGroup ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementGroups",
          request = {
            ["$ref"] = "PlacementGroup",
          },
          response = {
            ["$ref"] = "PlacementGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing placement group.",
          flatPath = "userprofiles/{profileId}/placementGroups",
          httpMethod = "PUT",
          id = "dfareporting.placementGroups.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementGroups",
          request = {
            ["$ref"] = "PlacementGroup",
          },
          response = {
            ["$ref"] = "PlacementGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    placementStrategies = {
      methods = {
        delete = {
          description = "Deletes an existing placement strategy.",
          flatPath = "userprofiles/{profileId}/placementStrategies/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.placementStrategies.delete",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Placement strategy ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementStrategies/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one placement strategy by ID.",
          flatPath = "userprofiles/{profileId}/placementStrategies/{id}",
          httpMethod = "GET",
          id = "dfareporting.placementStrategies.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Placement strategy ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementStrategies/{id}",
          response = {
            ["$ref"] = "PlacementStrategy",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new placement strategy.",
          flatPath = "userprofiles/{profileId}/placementStrategies",
          httpMethod = "POST",
          id = "dfareporting.placementStrategies.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementStrategies",
          request = {
            ["$ref"] = "PlacementStrategy",
          },
          response = {
            ["$ref"] = "PlacementStrategy",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of placement strategies, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/placementStrategies",
          httpMethod = "GET",
          id = "dfareporting.placementStrategies.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            ids = {
              description = "Select only placement strategies with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"placementstrategy*2015\" will return objects with names like \"placementstrategy June 2015\", \"placementstrategy April 2015\", or simply \"placementstrategy 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"placementstrategy\" will match objects with name \"my placementstrategy\", \"placementstrategy 2015\", or simply \"placementstrategy\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementStrategies",
          response = {
            ["$ref"] = "PlacementStrategiesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing placement strategy. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/placementStrategies",
          httpMethod = "PATCH",
          id = "dfareporting.placementStrategies.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "PlacementStrategy ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementStrategies",
          request = {
            ["$ref"] = "PlacementStrategy",
          },
          response = {
            ["$ref"] = "PlacementStrategy",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing placement strategy.",
          flatPath = "userprofiles/{profileId}/placementStrategies",
          httpMethod = "PUT",
          id = "dfareporting.placementStrategies.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placementStrategies",
          request = {
            ["$ref"] = "PlacementStrategy",
          },
          response = {
            ["$ref"] = "PlacementStrategy",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    placements = {
      methods = {
        generatetags = {
          description = "Generates tags for a placement.",
          flatPath = "userprofiles/{profileId}/placements/generatetags",
          httpMethod = "POST",
          id = "dfareporting.placements.generatetags",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            campaignId = {
              description = "Generate placements belonging to this campaign. This is a required field.",
              format = "int64",
              location = "query",
              type = "string",
            },
            placementIds = {
              description = "Generate tags for these placements.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            tagFormats = {
              description = "Tag formats to generate for these placements. *Note:* PLACEMENT_TAG_STANDARD can only be generated for 1x1 placements.",
              enum = {
                "PLACEMENT_TAG_STANDARD",
                "PLACEMENT_TAG_IFRAME_JAVASCRIPT",
                "PLACEMENT_TAG_IFRAME_ILAYER",
                "PLACEMENT_TAG_INTERNAL_REDIRECT",
                "PLACEMENT_TAG_JAVASCRIPT",
                "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT",
                "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT",
                "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT",
                "PLACEMENT_TAG_CLICK_COMMANDS",
                "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH",
                "PLACEMENT_TAG_TRACKING",
                "PLACEMENT_TAG_TRACKING_IFRAME",
                "PLACEMENT_TAG_TRACKING_JAVASCRIPT",
                "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3",
                "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY",
                "PLACEMENT_TAG_JAVASCRIPT_LEGACY",
                "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY",
                "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY",
                "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4",
                "PLACEMENT_TAG_TRACKING_THIRD_PARTY_MEASUREMENT",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placements/generatetags",
          response = {
            ["$ref"] = "PlacementsGenerateTagsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one placement by ID.",
          flatPath = "userprofiles/{profileId}/placements/{id}",
          httpMethod = "GET",
          id = "dfareporting.placements.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Placement ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placements/{id}",
          response = {
            ["$ref"] = "Placement",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new placement.",
          flatPath = "userprofiles/{profileId}/placements",
          httpMethod = "POST",
          id = "dfareporting.placements.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placements",
          request = {
            ["$ref"] = "Placement",
          },
          response = {
            ["$ref"] = "Placement",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of placements, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/placements",
          httpMethod = "GET",
          id = "dfareporting.placements.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserIds = {
              description = "Select only placements that belong to these advertisers.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            archived = {
              description = "Select only archived placements. Don't set this field to select both archived and non-archived placements.",
              location = "query",
              type = "boolean",
            },
            campaignIds = {
              description = "Select only placements that belong to these campaigns.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            compatibilities = {
              description = "Select only placements that are associated with these compatibilities. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop or on mobile devices for regular or interstitial ads respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard.",
              enum = {
                "DISPLAY",
                "DISPLAY_INTERSTITIAL",
                "APP",
                "APP_INTERSTITIAL",
                "IN_STREAM_VIDEO",
                "IN_STREAM_AUDIO",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            contentCategoryIds = {
              description = "Select only placements that are associated with these content categories.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            directorySiteIds = {
              description = "Select only placements that are associated with these directory sites.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            groupIds = {
              description = "Select only placements that belong to these placement groups.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only placements with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxEndDate = {
              description = "Select only placements or placement groups whose end date is on or before the specified maxEndDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            maxStartDate = {
              description = "Select only placements or placement groups whose start date is on or before the specified maxStartDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            minEndDate = {
              description = "Select only placements or placement groups whose end date is on or after the specified minEndDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            minStartDate = {
              description = "Select only placements or placement groups whose start date is on or after the specified minStartDate. The date should be formatted as \"yyyy-MM-dd\".",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            paymentSource = {
              description = "Select only placements with this payment source.",
              enum = {
                "PLACEMENT_AGENCY_PAID",
                "PLACEMENT_PUBLISHER_PAID",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            placementStrategyIds = {
              description = "Select only placements that are associated with these placement strategies.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            pricingTypes = {
              description = "Select only placements with these pricing types.",
              enum = {
                "PRICING_TYPE_CPM",
                "PRICING_TYPE_CPC",
                "PRICING_TYPE_CPA",
                "PRICING_TYPE_FLAT_RATE_IMPRESSIONS",
                "PRICING_TYPE_FLAT_RATE_CLICKS",
                "PRICING_TYPE_CPM_ACTIVEVIEW",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
                "",
                "",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for placements by name or ID. Wildcards (*) are allowed. For example, \"placement*2015\" will return placements with names like \"placement June 2015\", \"placement May 2015\", or simply \"placements 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"placement\" will match placements with name \"my placement\", \"placement 2015\", or simply \"placement\" .",
              location = "query",
              type = "string",
            },
            siteIds = {
              description = "Select only placements that are associated with these sites.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sizeIds = {
              description = "Select only placements that are associated with these sizes.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placements",
          response = {
            ["$ref"] = "PlacementsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing placement. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/placements",
          httpMethod = "PATCH",
          id = "dfareporting.placements.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Placement ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placements",
          request = {
            ["$ref"] = "Placement",
          },
          response = {
            ["$ref"] = "Placement",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing placement.",
          flatPath = "userprofiles/{profileId}/placements",
          httpMethod = "PUT",
          id = "dfareporting.placements.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/placements",
          request = {
            ["$ref"] = "Placement",
          },
          response = {
            ["$ref"] = "Placement",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    platformTypes = {
      methods = {
        get = {
          description = "Gets one platform type by ID.",
          flatPath = "userprofiles/{profileId}/platformTypes/{id}",
          httpMethod = "GET",
          id = "dfareporting.platformTypes.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Platform type ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/platformTypes/{id}",
          response = {
            ["$ref"] = "PlatformType",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of platform types.",
          flatPath = "userprofiles/{profileId}/platformTypes",
          httpMethod = "GET",
          id = "dfareporting.platformTypes.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/platformTypes",
          response = {
            ["$ref"] = "PlatformTypesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    postalCodes = {
      methods = {
        get = {
          description = "Gets one postal code by ID.",
          flatPath = "userprofiles/{profileId}/postalCodes/{code}",
          httpMethod = "GET",
          id = "dfareporting.postalCodes.get",
          parameterOrder = {
            "profileId",
            "code",
          },
          parameters = {
            code = {
              description = "Postal code ID.",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/postalCodes/{code}",
          response = {
            ["$ref"] = "PostalCode",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of postal codes.",
          flatPath = "userprofiles/{profileId}/postalCodes",
          httpMethod = "GET",
          id = "dfareporting.postalCodes.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/postalCodes",
          response = {
            ["$ref"] = "PostalCodesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    projects = {
      methods = {
        get = {
          description = "Gets one project by ID.",
          flatPath = "userprofiles/{profileId}/projects/{id}",
          httpMethod = "GET",
          id = "dfareporting.projects.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Project ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects/{id}",
          response = {
            ["$ref"] = "Project",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of projects, possibly filtered. This method supports paging .",
          flatPath = "userprofiles/{profileId}/projects",
          httpMethod = "GET",
          id = "dfareporting.projects.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserIds = {
              description = "Select only projects with these advertiser IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only projects with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for projects by name or ID. Wildcards (*) are allowed. For example, \"project*2015\" will return projects with names like \"project June 2015\", \"project April 2015\", or simply \"project 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"project\" will match projects with name \"my project\", \"project 2015\", or simply \"project\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/projects",
          response = {
            ["$ref"] = "ProjectsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    regions = {
      methods = {
        list = {
          description = "Retrieves a list of regions.",
          flatPath = "userprofiles/{profileId}/regions",
          httpMethod = "GET",
          id = "dfareporting.regions.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/regions",
          response = {
            ["$ref"] = "RegionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    remarketingListShares = {
      methods = {
        get = {
          description = "Gets one remarketing list share by remarketing list ID.",
          flatPath = "userprofiles/{profileId}/remarketingListShares/{remarketingListId}",
          httpMethod = "GET",
          id = "dfareporting.remarketingListShares.get",
          parameterOrder = {
            "profileId",
            "remarketingListId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            remarketingListId = {
              description = "Remarketing list ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingListShares/{remarketingListId}",
          response = {
            ["$ref"] = "RemarketingListShare",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing remarketing list share. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/remarketingListShares",
          httpMethod = "PATCH",
          id = "dfareporting.remarketingListShares.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "RemarketingList ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingListShares",
          request = {
            ["$ref"] = "RemarketingListShare",
          },
          response = {
            ["$ref"] = "RemarketingListShare",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing remarketing list share.",
          flatPath = "userprofiles/{profileId}/remarketingListShares",
          httpMethod = "PUT",
          id = "dfareporting.remarketingListShares.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingListShares",
          request = {
            ["$ref"] = "RemarketingListShare",
          },
          response = {
            ["$ref"] = "RemarketingListShare",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    remarketingLists = {
      methods = {
        get = {
          description = "Gets one remarketing list by ID.",
          flatPath = "userprofiles/{profileId}/remarketingLists/{id}",
          httpMethod = "GET",
          id = "dfareporting.remarketingLists.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Remarketing list ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingLists/{id}",
          response = {
            ["$ref"] = "RemarketingList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new remarketing list.",
          flatPath = "userprofiles/{profileId}/remarketingLists",
          httpMethod = "POST",
          id = "dfareporting.remarketingLists.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingLists",
          request = {
            ["$ref"] = "RemarketingList",
          },
          response = {
            ["$ref"] = "RemarketingList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of remarketing lists, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/remarketingLists",
          httpMethod = "GET",
          id = "dfareporting.remarketingLists.list",
          parameterOrder = {
            "profileId",
            "advertiserId",
          },
          parameters = {
            active = {
              description = "Select only active or only inactive remarketing lists.",
              location = "query",
              type = "boolean",
            },
            advertiserId = {
              description = "Select only remarketing lists owned by this advertiser.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            floodlightActivityId = {
              description = "Select only remarketing lists that have this floodlight activity ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            name = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"remarketing list*2015\" will return objects with names like \"remarketing list June 2015\", \"remarketing list April 2015\", or simply \"remarketing list 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"remarketing list\" will match objects with name \"my remarketing list\", \"remarketing list 2015\", or simply \"remarketing list\".",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingLists",
          response = {
            ["$ref"] = "RemarketingListsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing remarketing list. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/remarketingLists",
          httpMethod = "PATCH",
          id = "dfareporting.remarketingLists.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "RemarketingList ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingLists",
          request = {
            ["$ref"] = "RemarketingList",
          },
          response = {
            ["$ref"] = "RemarketingList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing remarketing list.",
          flatPath = "userprofiles/{profileId}/remarketingLists",
          httpMethod = "PUT",
          id = "dfareporting.remarketingLists.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/remarketingLists",
          request = {
            ["$ref"] = "RemarketingList",
          },
          response = {
            ["$ref"] = "RemarketingList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    reports = {
      methods = {
        delete = {
          description = "Deletes a report by its ID.",
          flatPath = "userprofiles/{profileId}/reports/{reportId}",
          httpMethod = "DELETE",
          id = "dfareporting.reports.delete",
          parameterOrder = {
            "profileId",
            "reportId",
          },
          parameters = {
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            reportId = {
              description = "The ID of the report.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/reports/{reportId}",
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
        get = {
          description = "Retrieves a report by its ID.",
          flatPath = "userprofiles/{profileId}/reports/{reportId}",
          httpMethod = "GET",
          id = "dfareporting.reports.get",
          parameterOrder = {
            "profileId",
            "reportId",
          },
          parameters = {
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            reportId = {
              description = "The ID of the report.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/reports/{reportId}",
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
        insert = {
          description = "Creates a report.",
          flatPath = "userprofiles/{profileId}/reports",
          httpMethod = "POST",
          id = "dfareporting.reports.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/reports",
          request = {
            ["$ref"] = "Report",
          },
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
        list = {
          description = "Retrieves list of reports.",
          flatPath = "userprofiles/{profileId}/reports",
          httpMethod = "GET",
          id = "dfareporting.reports.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            maxResults = {
              default = "10",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "10",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "The value of the nextToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            scope = {
              default = "MINE",
              description = "The scope that defines which results are returned.",
              enum = {
                "ALL",
                "MINE",
              },
              enumDescriptions = {
                "All reports in account.",
                "My reports.",
              },
              location = "query",
              type = "string",
            },
            sortField = {
              default = "LAST_MODIFIED_TIME",
              description = "The field by which to sort the list.",
              enum = {
                "ID",
                "LAST_MODIFIED_TIME",
                "NAME",
              },
              enumDescriptions = {
                "Sort by report ID.",
                "Sort by 'lastModifiedTime' field.",
                "Sort by name of reports.",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "DESCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "Ascending order.",
                "Descending order.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/reports",
          response = {
            ["$ref"] = "ReportList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
        patch = {
          description = "Updates an existing report. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/reports/{reportId}",
          httpMethod = "PATCH",
          id = "dfareporting.reports.patch",
          parameterOrder = {
            "profileId",
            "reportId",
          },
          parameters = {
            profileId = {
              description = "The DFA user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            reportId = {
              description = "The ID of the report.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/reports/{reportId}",
          request = {
            ["$ref"] = "Report",
          },
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
        run = {
          description = "Runs a report.",
          flatPath = "userprofiles/{profileId}/reports/{reportId}/run",
          httpMethod = "POST",
          id = "dfareporting.reports.run",
          parameterOrder = {
            "profileId",
            "reportId",
          },
          parameters = {
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            reportId = {
              description = "The ID of the report.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            synchronous = {
              default = "false",
              description = "If set and true, tries to run the report synchronously.",
              location = "query",
              type = "boolean",
            },
          },
          path = "userprofiles/{profileId}/reports/{reportId}/run",
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
        update = {
          description = "Updates a report.",
          flatPath = "userprofiles/{profileId}/reports/{reportId}",
          httpMethod = "PUT",
          id = "dfareporting.reports.update",
          parameterOrder = {
            "profileId",
            "reportId",
          },
          parameters = {
            profileId = {
              description = "The Campaign Manager 360 user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            reportId = {
              description = "The ID of the report.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/reports/{reportId}",
          request = {
            ["$ref"] = "Report",
          },
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfareporting",
          },
        },
      },
      resources = {
        compatibleFields = {
          methods = {
            query = {
              description = "Returns the fields that are compatible to be selected in the respective sections of a report criteria, given the fields already selected in the input report and user permissions.",
              flatPath = "userprofiles/{profileId}/reports/compatiblefields/query",
              httpMethod = "POST",
              id = "dfareporting.reports.compatibleFields.query",
              parameterOrder = {
                "profileId",
              },
              parameters = {
                profileId = {
                  description = "The Campaign Manager 360 user profile ID.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "userprofiles/{profileId}/reports/compatiblefields/query",
              request = {
                ["$ref"] = "Report",
              },
              response = {
                ["$ref"] = "CompatibleFields",
              },
              scopes = {
                "https://www.googleapis.com/auth/dfareporting",
              },
            },
          },
        },
        files = {
          methods = {
            get = {
              description = "Retrieves a report file by its report ID and file ID. This method supports media download.",
              flatPath = "userprofiles/{profileId}/reports/{reportId}/files/{fileId}",
              httpMethod = "GET",
              id = "dfareporting.reports.files.get",
              parameterOrder = {
                "profileId",
                "reportId",
                "fileId",
              },
              parameters = {
                fileId = {
                  description = "The ID of the report file.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                profileId = {
                  description = "The Campaign Manager 360 user profile ID.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                reportId = {
                  description = "The ID of the report.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "userprofiles/{profileId}/reports/{reportId}/files/{fileId}",
              response = {
                ["$ref"] = "File",
              },
              scopes = {
                "https://www.googleapis.com/auth/dfareporting",
              },
              supportsMediaDownload = true,
            },
            list = {
              description = "Lists files for a report.",
              flatPath = "userprofiles/{profileId}/reports/{reportId}/files",
              httpMethod = "GET",
              id = "dfareporting.reports.files.list",
              parameterOrder = {
                "profileId",
                "reportId",
              },
              parameters = {
                maxResults = {
                  default = "10",
                  description = "Maximum number of results to return.",
                  format = "int32",
                  location = "query",
                  maximum = "10",
                  minimum = "0",
                  type = "integer",
                },
                pageToken = {
                  description = "The value of the nextToken from the previous result page.",
                  location = "query",
                  type = "string",
                },
                profileId = {
                  description = "The Campaign Manager 360 user profile ID.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                reportId = {
                  description = "The ID of the parent report.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                sortField = {
                  default = "LAST_MODIFIED_TIME",
                  description = "The field by which to sort the list.",
                  enum = {
                    "ID",
                    "LAST_MODIFIED_TIME",
                  },
                  enumDescriptions = {
                    "",
                    "",
                  },
                  location = "query",
                  type = "string",
                },
                sortOrder = {
                  default = "DESCENDING",
                  description = "Order of sorted results.",
                  enum = {
                    "ASCENDING",
                    "DESCENDING",
                  },
                  enumDescriptions = {
                    "",
                    "",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "userprofiles/{profileId}/reports/{reportId}/files",
              response = {
                ["$ref"] = "FileList",
              },
              scopes = {
                "https://www.googleapis.com/auth/dfareporting",
              },
            },
          },
        },
      },
    },
    sites = {
      methods = {
        get = {
          description = "Gets one site by ID.",
          flatPath = "userprofiles/{profileId}/sites/{id}",
          httpMethod = "GET",
          id = "dfareporting.sites.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Site ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/sites/{id}",
          response = {
            ["$ref"] = "Site",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new site.",
          flatPath = "userprofiles/{profileId}/sites",
          httpMethod = "POST",
          id = "dfareporting.sites.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/sites",
          request = {
            ["$ref"] = "Site",
          },
          response = {
            ["$ref"] = "Site",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of sites, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/sites",
          httpMethod = "GET",
          id = "dfareporting.sites.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            acceptsInStreamVideoPlacements = {
              description = "This search filter is no longer supported and will have no effect on the results returned.",
              location = "query",
              type = "boolean",
            },
            acceptsInterstitialPlacements = {
              description = "This search filter is no longer supported and will have no effect on the results returned.",
              location = "query",
              type = "boolean",
            },
            acceptsPublisherPaidPlacements = {
              description = "Select only sites that accept publisher paid placements.",
              location = "query",
              type = "boolean",
            },
            adWordsSite = {
              description = "Select only AdWords sites.",
              location = "query",
              type = "boolean",
            },
            approved = {
              description = "Select only approved sites.",
              location = "query",
              type = "boolean",
            },
            campaignIds = {
              description = "Select only sites with these campaign IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            directorySiteIds = {
              description = "Select only sites with these directory site IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            ids = {
              description = "Select only sites with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name, ID or keyName. Wildcards (*) are allowed. For example, \"site*2015\" will return objects with names like \"site June 2015\", \"site April 2015\", or simply \"site 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"site\" will match objects with name \"my site\", \"site 2015\", or simply \"site\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            subaccountId = {
              description = "Select only sites with this subaccount ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            unmappedSite = {
              description = "Select only sites that have not been mapped to a directory site.",
              location = "query",
              type = "boolean",
            },
          },
          path = "userprofiles/{profileId}/sites",
          response = {
            ["$ref"] = "SitesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing site. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/sites",
          httpMethod = "PATCH",
          id = "dfareporting.sites.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Site ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/sites",
          request = {
            ["$ref"] = "Site",
          },
          response = {
            ["$ref"] = "Site",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing site.",
          flatPath = "userprofiles/{profileId}/sites",
          httpMethod = "PUT",
          id = "dfareporting.sites.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/sites",
          request = {
            ["$ref"] = "Site",
          },
          response = {
            ["$ref"] = "Site",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    sizes = {
      methods = {
        get = {
          description = "Gets one size by ID.",
          flatPath = "userprofiles/{profileId}/sizes/{id}",
          httpMethod = "GET",
          id = "dfareporting.sizes.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Size ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/sizes/{id}",
          response = {
            ["$ref"] = "Size",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new size.",
          flatPath = "userprofiles/{profileId}/sizes",
          httpMethod = "POST",
          id = "dfareporting.sizes.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/sizes",
          request = {
            ["$ref"] = "Size",
          },
          response = {
            ["$ref"] = "Size",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of sizes, possibly filtered. Retrieved sizes are globally unique and may include values not currently in use by your account. Due to this, the list of sizes returned by this method may differ from the list seen in the Trafficking UI.",
          flatPath = "userprofiles/{profileId}/sizes",
          httpMethod = "GET",
          id = "dfareporting.sizes.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            height = {
              description = "Select only sizes with this height.",
              format = "int32",
              location = "query",
              maximum = "32767",
              minimum = "0",
              type = "integer",
            },
            iabStandard = {
              description = "Select only IAB standard sizes.",
              location = "query",
              type = "boolean",
            },
            ids = {
              description = "Select only sizes with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            width = {
              description = "Select only sizes with this width.",
              format = "int32",
              location = "query",
              maximum = "32767",
              minimum = "0",
              type = "integer",
            },
          },
          path = "userprofiles/{profileId}/sizes",
          response = {
            ["$ref"] = "SizesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    subaccounts = {
      methods = {
        get = {
          description = "Gets one subaccount by ID.",
          flatPath = "userprofiles/{profileId}/subaccounts/{id}",
          httpMethod = "GET",
          id = "dfareporting.subaccounts.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Subaccount ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/subaccounts/{id}",
          response = {
            ["$ref"] = "Subaccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new subaccount.",
          flatPath = "userprofiles/{profileId}/subaccounts",
          httpMethod = "POST",
          id = "dfareporting.subaccounts.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/subaccounts",
          request = {
            ["$ref"] = "Subaccount",
          },
          response = {
            ["$ref"] = "Subaccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Gets a list of subaccounts, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/subaccounts",
          httpMethod = "GET",
          id = "dfareporting.subaccounts.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            ids = {
              description = "Select only subaccounts with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"subaccount*2015\" will return objects with names like \"subaccount June 2015\", \"subaccount April 2015\", or simply \"subaccount 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"subaccount\" will match objects with name \"my subaccount\", \"subaccount 2015\", or simply \"subaccount\" .",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/subaccounts",
          response = {
            ["$ref"] = "SubaccountsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing subaccount. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/subaccounts",
          httpMethod = "PATCH",
          id = "dfareporting.subaccounts.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Subaccount ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/subaccounts",
          request = {
            ["$ref"] = "Subaccount",
          },
          response = {
            ["$ref"] = "Subaccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing subaccount.",
          flatPath = "userprofiles/{profileId}/subaccounts",
          httpMethod = "PUT",
          id = "dfareporting.subaccounts.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/subaccounts",
          request = {
            ["$ref"] = "Subaccount",
          },
          response = {
            ["$ref"] = "Subaccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    targetableRemarketingLists = {
      methods = {
        get = {
          description = "Gets one remarketing list by ID.",
          flatPath = "userprofiles/{profileId}/targetableRemarketingLists/{id}",
          httpMethod = "GET",
          id = "dfareporting.targetableRemarketingLists.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Remarketing list ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/targetableRemarketingLists/{id}",
          response = {
            ["$ref"] = "TargetableRemarketingList",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of targetable remarketing lists, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/targetableRemarketingLists",
          httpMethod = "GET",
          id = "dfareporting.targetableRemarketingLists.list",
          parameterOrder = {
            "profileId",
            "advertiserId",
          },
          parameters = {
            active = {
              description = "Select only active or only inactive targetable remarketing lists.",
              location = "query",
              type = "boolean",
            },
            advertiserId = {
              description = "Select only targetable remarketing lists targetable by these advertisers.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            name = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"remarketing list*2015\" will return objects with names like \"remarketing list June 2015\", \"remarketing list April 2015\", or simply \"remarketing list 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"remarketing list\" will match objects with name \"my remarketing list\", \"remarketing list 2015\", or simply \"remarketing list\".",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/targetableRemarketingLists",
          response = {
            ["$ref"] = "TargetableRemarketingListsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    targetingTemplates = {
      methods = {
        get = {
          description = "Gets one targeting template by ID.",
          flatPath = "userprofiles/{profileId}/targetingTemplates/{id}",
          httpMethod = "GET",
          id = "dfareporting.targetingTemplates.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Targeting template ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/targetingTemplates/{id}",
          response = {
            ["$ref"] = "TargetingTemplate",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new targeting template.",
          flatPath = "userprofiles/{profileId}/targetingTemplates",
          httpMethod = "POST",
          id = "dfareporting.targetingTemplates.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/targetingTemplates",
          request = {
            ["$ref"] = "TargetingTemplate",
          },
          response = {
            ["$ref"] = "TargetingTemplate",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of targeting templates, optionally filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/targetingTemplates",
          httpMethod = "GET",
          id = "dfareporting.targetingTemplates.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            advertiserId = {
              description = "Select only targeting templates with this advertiser ID.",
              format = "int64",
              location = "query",
              type = "string",
            },
            ids = {
              description = "Select only targeting templates with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"template*2015\" will return objects with names like \"template June 2015\", \"template April 2015\", or simply \"template 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"template\" will match objects with name \"my template\", \"template 2015\", or simply \"template\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/targetingTemplates",
          response = {
            ["$ref"] = "TargetingTemplatesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing targeting template. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/targetingTemplates",
          httpMethod = "PATCH",
          id = "dfareporting.targetingTemplates.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "TargetingTemplate ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/targetingTemplates",
          request = {
            ["$ref"] = "TargetingTemplate",
          },
          response = {
            ["$ref"] = "TargetingTemplate",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing targeting template.",
          flatPath = "userprofiles/{profileId}/targetingTemplates",
          httpMethod = "PUT",
          id = "dfareporting.targetingTemplates.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/targetingTemplates",
          request = {
            ["$ref"] = "TargetingTemplate",
          },
          response = {
            ["$ref"] = "TargetingTemplate",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    userProfiles = {
      methods = {
        get = {
          description = "Gets one user profile by ID.",
          flatPath = "userprofiles/{profileId}",
          httpMethod = "GET",
          id = "dfareporting.userProfiles.get",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "The user profile ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}",
          response = {
            ["$ref"] = "UserProfile",
          },
          scopes = {
            "https://www.googleapis.com/auth/ddmconversions",
            "https://www.googleapis.com/auth/dfareporting",
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves list of user profiles for a user.",
          flatPath = "userprofiles",
          httpMethod = "GET",
          id = "dfareporting.userProfiles.list",
          parameterOrder = {},
          parameters = {},
          path = "userprofiles",
          response = {
            ["$ref"] = "UserProfileList",
          },
          scopes = {
            "https://www.googleapis.com/auth/ddmconversions",
            "https://www.googleapis.com/auth/dfareporting",
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    userRolePermissionGroups = {
      methods = {
        get = {
          description = "Gets one user role permission group by ID.",
          flatPath = "userprofiles/{profileId}/userRolePermissionGroups/{id}",
          httpMethod = "GET",
          id = "dfareporting.userRolePermissionGroups.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "User role permission group ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRolePermissionGroups/{id}",
          response = {
            ["$ref"] = "UserRolePermissionGroup",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Gets a list of all supported user role permission groups.",
          flatPath = "userprofiles/{profileId}/userRolePermissionGroups",
          httpMethod = "GET",
          id = "dfareporting.userRolePermissionGroups.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRolePermissionGroups",
          response = {
            ["$ref"] = "UserRolePermissionGroupsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    userRolePermissions = {
      methods = {
        get = {
          description = "Gets one user role permission by ID.",
          flatPath = "userprofiles/{profileId}/userRolePermissions/{id}",
          httpMethod = "GET",
          id = "dfareporting.userRolePermissions.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "User role permission ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRolePermissions/{id}",
          response = {
            ["$ref"] = "UserRolePermission",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Gets a list of user role permissions, possibly filtered.",
          flatPath = "userprofiles/{profileId}/userRolePermissions",
          httpMethod = "GET",
          id = "dfareporting.userRolePermissions.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            ids = {
              description = "Select only user role permissions with these IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRolePermissions",
          response = {
            ["$ref"] = "UserRolePermissionsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    userRoles = {
      methods = {
        delete = {
          description = "Deletes an existing user role.",
          flatPath = "userprofiles/{profileId}/userRoles/{id}",
          httpMethod = "DELETE",
          id = "dfareporting.userRoles.delete",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "User role ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRoles/{id}",
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        get = {
          description = "Gets one user role by ID.",
          flatPath = "userprofiles/{profileId}/userRoles/{id}",
          httpMethod = "GET",
          id = "dfareporting.userRoles.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "User role ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRoles/{id}",
          response = {
            ["$ref"] = "UserRole",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        insert = {
          description = "Inserts a new user role.",
          flatPath = "userprofiles/{profileId}/userRoles",
          httpMethod = "POST",
          id = "dfareporting.userRoles.insert",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRoles",
          request = {
            ["$ref"] = "UserRole",
          },
          response = {
            ["$ref"] = "UserRole",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Retrieves a list of user roles, possibly filtered. This method supports paging.",
          flatPath = "userprofiles/{profileId}/userRoles",
          httpMethod = "GET",
          id = "dfareporting.userRoles.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            accountUserRoleOnly = {
              description = "Select only account level user roles not associated with any specific subaccount.",
              location = "query",
              type = "boolean",
            },
            ids = {
              description = "Select only user roles with the specified IDs.",
              format = "int64",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "Value of the nextPageToken from the previous result page.",
              location = "query",
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            searchString = {
              description = "Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, \"userrole*2015\" will return objects with names like \"userrole June 2015\", \"userrole April 2015\", or simply \"userrole 2015\". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of \"userrole\" will match objects with name \"my userrole\", \"userrole 2015\", or simply \"userrole\".",
              location = "query",
              type = "string",
            },
            sortField = {
              default = "ID",
              description = "Field by which to sort the list.",
              enum = {
                "ID",
                "NAME",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              default = "ASCENDING",
              description = "Order of sorted results.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
            subaccountId = {
              description = "Select only user roles that belong to this subaccount.",
              format = "int64",
              location = "query",
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRoles",
          response = {
            ["$ref"] = "UserRolesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        patch = {
          description = "Updates an existing user role. This method supports patch semantics.",
          flatPath = "userprofiles/{profileId}/userRoles",
          httpMethod = "PATCH",
          id = "dfareporting.userRoles.patch",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "UserRole ID.",
              format = "int64",
              location = "query",
              required = true,
              type = "string",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRoles",
          request = {
            ["$ref"] = "UserRole",
          },
          response = {
            ["$ref"] = "UserRole",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        update = {
          description = "Updates an existing user role.",
          flatPath = "userprofiles/{profileId}/userRoles",
          httpMethod = "PUT",
          id = "dfareporting.userRoles.update",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/userRoles",
          request = {
            ["$ref"] = "UserRole",
          },
          response = {
            ["$ref"] = "UserRole",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
    videoFormats = {
      methods = {
        get = {
          description = "Gets one video format by ID.",
          flatPath = "userprofiles/{profileId}/videoFormats/{id}",
          httpMethod = "GET",
          id = "dfareporting.videoFormats.get",
          parameterOrder = {
            "profileId",
            "id",
          },
          parameters = {
            id = {
              description = "Video format ID.",
              format = "int32",
              location = "path",
              required = true,
              type = "integer",
            },
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/videoFormats/{id}",
          response = {
            ["$ref"] = "VideoFormat",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
        list = {
          description = "Lists available video formats.",
          flatPath = "userprofiles/{profileId}/videoFormats",
          httpMethod = "GET",
          id = "dfareporting.videoFormats.list",
          parameterOrder = {
            "profileId",
          },
          parameters = {
            profileId = {
              description = "User profile ID associated with this request.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "userprofiles/{profileId}/videoFormats",
          response = {
            ["$ref"] = "VideoFormatsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/dfatrafficking",
          },
        },
      },
    },
  },
  revision = "20230103",
  rootUrl = "https://dfareporting.googleapis.com/",
  schemas = {
    Account = {
      description = "Contains properties of a Campaign Manager account.",
      id = "Account",
      properties = {
        accountPermissionIds = {
          description = "Account permissions assigned to this account.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        accountProfile = {
          description = "Profile for this account. This is a read-only field that can be left blank.",
          enum = {
            "ACCOUNT_PROFILE_BASIC",
            "ACCOUNT_PROFILE_STANDARD",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        active = {
          description = "Whether this account is active.",
          type = "boolean",
        },
        activeAdsLimitTier = {
          description = "Maximum number of active ads allowed for this account.",
          enum = {
            "ACTIVE_ADS_TIER_40K",
            "ACTIVE_ADS_TIER_75K",
            "ACTIVE_ADS_TIER_100K",
            "ACTIVE_ADS_TIER_200K",
            "ACTIVE_ADS_TIER_300K",
            "ACTIVE_ADS_TIER_500K",
            "ACTIVE_ADS_TIER_750K",
            "ACTIVE_ADS_TIER_1M",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        activeViewOptOut = {
          description = "Whether to serve creatives with Active View tags. If disabled, viewability data will not be available for any impressions.",
          type = "boolean",
        },
        availablePermissionIds = {
          description = "User role permissions available to the user roles of this account.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        countryId = {
          description = "ID of the country associated with this account.",
          format = "int64",
          type = "string",
        },
        currencyId = {
          description = "ID of currency associated with this account. This is a required field. Acceptable values are: - \"1\" for USD - \"2\" for GBP - \"3\" for ESP - \"4\" for SEK - \"5\" for CAD - \"6\" for JPY - \"7\" for DEM - \"8\" for AUD - \"9\" for FRF - \"10\" for ITL - \"11\" for DKK - \"12\" for NOK - \"13\" for FIM - \"14\" for ZAR - \"15\" for IEP - \"16\" for NLG - \"17\" for EUR - \"18\" for KRW - \"19\" for TWD - \"20\" for SGD - \"21\" for CNY - \"22\" for HKD - \"23\" for NZD - \"24\" for MYR - \"25\" for BRL - \"26\" for PTE - \"28\" for CLP - \"29\" for TRY - \"30\" for ARS - \"31\" for PEN - \"32\" for ILS - \"33\" for CHF - \"34\" for VEF - \"35\" for COP - \"36\" for GTQ - \"37\" for PLN - \"39\" for INR - \"40\" for THB - \"41\" for IDR - \"42\" for CZK - \"43\" for RON - \"44\" for HUF - \"45\" for RUB - \"46\" for AED - \"47\" for BGN - \"48\" for HRK - \"49\" for MXN - \"50\" for NGN - \"51\" for EGP ",
          format = "int64",
          type = "string",
        },
        defaultCreativeSizeId = {
          description = "Default placement dimensions for this account.",
          format = "int64",
          type = "string",
        },
        description = {
          description = "Description of this account.",
          type = "string",
        },
        id = {
          description = "ID of this account. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#account\".",
          type = "string",
        },
        locale = {
          description = "Locale of this account. Acceptable values are: - \"cs\" (Czech) - \"de\" (German) - \"en\" (English) - \"en-GB\" (English United Kingdom) - \"es\" (Spanish) - \"fr\" (French) - \"it\" (Italian) - \"ja\" (Japanese) - \"ko\" (Korean) - \"pl\" (Polish) - \"pt-BR\" (Portuguese Brazil) - \"ru\" (Russian) - \"sv\" (Swedish) - \"tr\" (Turkish) - \"zh-CN\" (Chinese Simplified) - \"zh-TW\" (Chinese Traditional) ",
          type = "string",
        },
        maximumImageSize = {
          description = "Maximum image size allowed for this account, in kilobytes. Value must be greater than or equal to 1.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of this account. This is a required field, and must be less than 128 characters long and be globally unique.",
          type = "string",
        },
        nielsenOcrEnabled = {
          description = "Whether campaigns created in this account will be enabled for Nielsen OCR reach ratings by default.",
          type = "boolean",
        },
        reportsConfiguration = {
          ["$ref"] = "ReportsConfiguration",
          description = "Reporting configuration of this account.",
        },
        shareReportsWithTwitter = {
          description = "Share Path to Conversion reports with Twitter.",
          type = "boolean",
        },
        teaserSizeLimit = {
          description = "File size limit in kilobytes of Rich Media teaser creatives. Acceptable values are 1 to 10240, inclusive.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AccountActiveAdSummary = {
      description = "Gets a summary of active ads in an account.",
      id = "AccountActiveAdSummary",
      properties = {
        accountId = {
          description = "ID of the account.",
          format = "int64",
          type = "string",
        },
        activeAds = {
          description = "Ads that have been activated for the account",
          format = "int64",
          type = "string",
        },
        activeAdsLimitTier = {
          description = "Maximum number of active ads allowed for the account.",
          enum = {
            "ACTIVE_ADS_TIER_40K",
            "ACTIVE_ADS_TIER_75K",
            "ACTIVE_ADS_TIER_100K",
            "ACTIVE_ADS_TIER_200K",
            "ACTIVE_ADS_TIER_300K",
            "ACTIVE_ADS_TIER_500K",
            "ACTIVE_ADS_TIER_750K",
            "ACTIVE_ADS_TIER_1M",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        availableAds = {
          description = "Ads that can be activated for the account.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountActiveAdSummary\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountPermission = {
      description = "AccountPermissions contains information about a particular account permission. Some features of Campaign Manager require an account permission to be present in the account.",
      id = "AccountPermission",
      properties = {
        accountProfiles = {
          description = "Account profiles associated with this account permission. Possible values are: - \"ACCOUNT_PROFILE_BASIC\" - \"ACCOUNT_PROFILE_STANDARD\" ",
          items = {
            enum = {
              "ACCOUNT_PROFILE_BASIC",
              "ACCOUNT_PROFILE_STANDARD",
            },
            enumDescriptions = {
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "ID of this account permission.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermission\".",
          type = "string",
        },
        level = {
          description = "Administrative level required to enable this account permission.",
          enum = {
            "USER",
            "ADMINISTRATOR",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        name = {
          description = "Name of this account permission.",
          type = "string",
        },
        permissionGroupId = {
          description = "Permission group of this account permission.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AccountPermissionGroup = {
      description = "AccountPermissionGroups contains a mapping of permission group IDs to names. A permission group is a grouping of account permissions.",
      id = "AccountPermissionGroup",
      properties = {
        id = {
          description = "ID of this account permission group.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermissionGroup\".",
          type = "string",
        },
        name = {
          description = "Name of this account permission group.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountPermissionGroupsListResponse = {
      description = "Account Permission Group List Response",
      id = "AccountPermissionGroupsListResponse",
      properties = {
        accountPermissionGroups = {
          description = "Account permission group collection.",
          items = {
            ["$ref"] = "AccountPermissionGroup",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermissionGroupsListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountPermissionsListResponse = {
      description = "Account Permission List Response",
      id = "AccountPermissionsListResponse",
      properties = {
        accountPermissions = {
          description = "Account permission collection.",
          items = {
            ["$ref"] = "AccountPermission",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountPermissionsListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    AccountUserProfile = {
      description = "AccountUserProfiles contains properties of a Campaign Manager user profile. This resource is specifically for managing user profiles, whereas UserProfiles is for accessing the API.",
      id = "AccountUserProfile",
      properties = {
        accountId = {
          description = "Account ID of the user profile. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        active = {
          description = "Whether this user profile is active. This defaults to false, and must be set true on insert for the user profile to be usable.",
          type = "boolean",
        },
        advertiserFilter = {
          ["$ref"] = "ObjectFilter",
          description = "Filter that describes which advertisers are visible to the user profile.",
        },
        campaignFilter = {
          ["$ref"] = "ObjectFilter",
          description = "Filter that describes which campaigns are visible to the user profile.",
        },
        comments = {
          description = "Comments for this user profile.",
          type = "string",
        },
        email = {
          description = "Email of the user profile. The email addresss must be linked to a Google Account. This field is required on insertion and is read-only after insertion.",
          type = "string",
        },
        id = {
          description = "ID of the user profile. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountUserProfile\".",
          type = "string",
        },
        locale = {
          description = "Locale of the user profile. This is a required field. Acceptable values are: - \"cs\" (Czech) - \"de\" (German) - \"en\" (English) - \"en-GB\" (English United Kingdom) - \"es\" (Spanish) - \"fr\" (French) - \"it\" (Italian) - \"ja\" (Japanese) - \"ko\" (Korean) - \"pl\" (Polish) - \"pt-BR\" (Portuguese Brazil) - \"ru\" (Russian) - \"sv\" (Swedish) - \"tr\" (Turkish) - \"zh-CN\" (Chinese Simplified) - \"zh-TW\" (Chinese Traditional) ",
          type = "string",
        },
        name = {
          description = "Name of the user profile. This is a required field. Must be less than 64 characters long, must be globally unique, and cannot contain whitespace or any of the following characters: \"&;<>\"#%,\".",
          type = "string",
        },
        siteFilter = {
          ["$ref"] = "ObjectFilter",
          description = "Filter that describes which sites are visible to the user profile.",
        },
        subaccountId = {
          description = "Subaccount ID of the user profile. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        traffickerType = {
          description = "Trafficker type of this user profile. This is a read-only field.",
          enum = {
            "INTERNAL_NON_TRAFFICKER",
            "INTERNAL_TRAFFICKER",
            "EXTERNAL_TRAFFICKER",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        userAccessType = {
          description = "User type of the user profile. This is a read-only field that can be left blank.",
          enum = {
            "NORMAL_USER",
            "SUPER_USER",
            "INTERNAL_ADMINISTRATOR",
            "READ_ONLY_SUPER_USER",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        userRoleFilter = {
          ["$ref"] = "ObjectFilter",
          description = "Filter that describes which user roles are visible to the user profile.",
        },
        userRoleId = {
          description = "User role ID of the user profile. This is a required field.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AccountUserProfilesListResponse = {
      description = "Account User Profile List Response",
      id = "AccountUserProfilesListResponse",
      properties = {
        accountUserProfiles = {
          description = "Account user profile collection.",
          items = {
            ["$ref"] = "AccountUserProfile",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountUserProfilesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    AccountsListResponse = {
      description = "Account List Response",
      id = "AccountsListResponse",
      properties = {
        accounts = {
          description = "Account collection.",
          items = {
            ["$ref"] = "Account",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#accountsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    Activities = {
      description = "Represents an activity group.",
      id = "Activities",
      properties = {
        filters = {
          description = "List of activity filters. The dimension values need to be all either of type \"dfa:activity\" or \"dfa:activityGroup\".",
          items = {
            ["$ref"] = "DimensionValue",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#activities.",
          type = "string",
        },
        metricNames = {
          description = "List of names of floodlight activity metrics.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Ad = {
      description = "Contains properties of a Campaign Manager ad.",
      id = "Ad",
      properties = {
        accountId = {
          description = "Account ID of this ad. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        active = {
          description = "Whether this ad is active. When true, archived must be false.",
          type = "boolean",
        },
        advertiserId = {
          description = "Advertiser ID of this ad. This is a required field on insertion.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        archived = {
          description = "Whether this ad is archived. When true, active must be false.",
          type = "boolean",
        },
        audienceSegmentId = {
          description = "Audience segment ID that is being targeted for this ad. Applicable when type is AD_SERVING_STANDARD_AD.",
          format = "int64",
          type = "string",
        },
        campaignId = {
          description = "Campaign ID of this ad. This is a required field on insertion.",
          format = "int64",
          type = "string",
        },
        campaignIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the campaign. This is a read-only, auto-generated field.",
        },
        clickThroughUrl = {
          ["$ref"] = "ClickThroughUrl",
          description = "Click-through URL for this ad. This is a required field on insertion. Applicable when type is AD_SERVING_CLICK_TRACKER.",
        },
        clickThroughUrlSuffixProperties = {
          ["$ref"] = "ClickThroughUrlSuffixProperties",
          description = "Click-through URL suffix properties for this ad. Applies to the URL in the ad or (if overriding ad properties) the URL in the creative.",
        },
        comments = {
          description = "Comments for this ad.",
          type = "string",
        },
        compatibility = {
          description = "Compatibility of this ad. Applicable when type is AD_SERVING_DEFAULT_AD. DISPLAY and DISPLAY_INTERSTITIAL refer to either rendering on desktop or on mobile devices or in mobile apps for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are only used for existing default ads. New mobile placements must be assigned DISPLAY or DISPLAY_INTERSTITIAL and default ads created for those placements will be limited to those compatibility types. IN_STREAM_VIDEO refers to rendering in-stream video ads developed with the VAST standard.",
          enum = {
            "DISPLAY",
            "DISPLAY_INTERSTITIAL",
            "APP",
            "APP_INTERSTITIAL",
            "IN_STREAM_VIDEO",
            "IN_STREAM_AUDIO",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        createInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the creation of this ad. This is a read-only field.",
        },
        creativeGroupAssignments = {
          description = "Creative group assignments for this ad. Applicable when type is AD_SERVING_CLICK_TRACKER. Only one assignment per creative group number is allowed for a maximum of two assignments.",
          items = {
            ["$ref"] = "CreativeGroupAssignment",
          },
          type = "array",
        },
        creativeRotation = {
          ["$ref"] = "CreativeRotation",
          description = "Creative rotation for this ad. Applicable when type is AD_SERVING_DEFAULT_AD, AD_SERVING_STANDARD_AD, or AD_SERVING_TRACKING. When type is AD_SERVING_DEFAULT_AD, this field should have exactly one creativeAssignment .",
        },
        dayPartTargeting = {
          ["$ref"] = "DayPartTargeting",
          description = "Time and day targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.",
        },
        defaultClickThroughEventTagProperties = {
          ["$ref"] = "DefaultClickThroughEventTagProperties",
          description = "Default click-through event tag properties for this ad.",
        },
        deliverySchedule = {
          ["$ref"] = "DeliverySchedule",
          description = "Delivery schedule information for this ad. Applicable when type is AD_SERVING_STANDARD_AD or AD_SERVING_TRACKING. This field along with subfields priority and impressionRatio are required on insertion when type is AD_SERVING_STANDARD_AD.",
        },
        dynamicClickTracker = {
          description = "Whether this ad is a dynamic click tracker. Applicable when type is AD_SERVING_CLICK_TRACKER. This is a required field on insert, and is read-only after insert.",
          type = "boolean",
        },
        endTime = {
          format = "date-time",
          type = "string",
        },
        eventTagOverrides = {
          description = "Event tag overrides for this ad.",
          items = {
            ["$ref"] = "EventTagOverride",
          },
          type = "array",
        },
        geoTargeting = {
          ["$ref"] = "GeoTargeting",
          description = "Geographical targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.",
        },
        id = {
          description = "ID of this ad. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this ad. This is a read-only, auto-generated field.",
        },
        keyValueTargetingExpression = {
          ["$ref"] = "KeyValueTargetingExpression",
          description = "Key-value targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#ad\".",
          type = "string",
        },
        languageTargeting = {
          ["$ref"] = "LanguageTargeting",
          description = "Language targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the most recent modification of this ad. This is a read-only field.",
        },
        name = {
          description = "Name of this ad. This is a required field and must be less than 256 characters long.",
          type = "string",
        },
        placementAssignments = {
          description = "Placement assignments for this ad.",
          items = {
            ["$ref"] = "PlacementAssignment",
          },
          type = "array",
        },
        remarketingListExpression = {
          ["$ref"] = "ListTargetingExpression",
          description = "Remarketing list targeting expression for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.",
        },
        size = {
          ["$ref"] = "Size",
          description = "Size of this ad. Applicable when type is AD_SERVING_DEFAULT_AD.",
        },
        sslCompliant = {
          description = "Whether this ad is ssl compliant. This is a read-only field that is auto-generated when the ad is inserted or updated.",
          type = "boolean",
        },
        sslRequired = {
          description = "Whether this ad requires ssl. This is a read-only field that is auto-generated when the ad is inserted or updated.",
          type = "boolean",
        },
        startTime = {
          format = "date-time",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this ad. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        targetingTemplateId = {
          description = "Targeting template ID, used to apply preconfigured targeting information to this ad. This cannot be set while any of dayPartTargeting, geoTargeting, keyValueTargetingExpression, languageTargeting, remarketingListExpression, or technologyTargeting are set. Applicable when type is AD_SERVING_STANDARD_AD.",
          format = "int64",
          type = "string",
        },
        technologyTargeting = {
          ["$ref"] = "TechnologyTargeting",
          description = "Technology platform targeting information for this ad. This field must be left blank if the ad is using a targeting template. Applicable when type is AD_SERVING_STANDARD_AD.",
        },
        type = {
          description = "Type of ad. This is a required field on insertion. Note that default ads ( AD_SERVING_DEFAULT_AD) cannot be created directly (see Creative resource).",
          enum = {
            "AD_SERVING_STANDARD_AD",
            "AD_SERVING_DEFAULT_AD",
            "AD_SERVING_CLICK_TRACKER",
            "AD_SERVING_TRACKING",
            "AD_SERVING_BRAND_SAFE_AD",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AdBlockingConfiguration = {
      description = "Campaign ad blocking settings.",
      id = "AdBlockingConfiguration",
      properties = {
        enabled = {
          description = "Whether this campaign has enabled ad blocking. When true, ad blocking is enabled for placements in the campaign, but this may be overridden by site and placement settings. When false, ad blocking is disabled for all placements under the campaign, regardless of site and placement settings.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdSlot = {
      description = "Ad Slot",
      id = "AdSlot",
      properties = {
        comment = {
          description = "Comment for this ad slot.",
          type = "string",
        },
        compatibility = {
          description = "Ad slot compatibility. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop, mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard.",
          enum = {
            "DISPLAY",
            "DISPLAY_INTERSTITIAL",
            "APP",
            "APP_INTERSTITIAL",
            "IN_STREAM_VIDEO",
            "IN_STREAM_AUDIO",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        height = {
          description = "Height of this ad slot.",
          format = "int64",
          type = "string",
        },
        linkedPlacementId = {
          description = "ID of the placement from an external platform that is linked to this ad slot.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of this ad slot.",
          type = "string",
        },
        paymentSourceType = {
          description = "Payment source type of this ad slot.",
          enum = {
            "PLANNING_PAYMENT_SOURCE_TYPE_AGENCY_PAID",
            "PLANNING_PAYMENT_SOURCE_TYPE_PUBLISHER_PAID",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        primary = {
          description = "Primary ad slot of a roadblock inventory item.",
          type = "boolean",
        },
        width = {
          description = "Width of this ad slot.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AdsListResponse = {
      description = "Ad List Response",
      id = "AdsListResponse",
      properties = {
        ads = {
          description = "Ad collection.",
          items = {
            ["$ref"] = "Ad",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#adsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    Advertiser = {
      description = "Contains properties of a Campaign Manager advertiser.",
      id = "Advertiser",
      properties = {
        accountId = {
          description = "Account ID of this advertiser.This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserGroupId = {
          description = "ID of the advertiser group this advertiser belongs to. You can group advertisers for reporting purposes, allowing you to see aggregated information for all advertisers in each group.",
          format = "int64",
          type = "string",
        },
        clickThroughUrlSuffix = {
          description = "Suffix added to click-through URL of ad creative associations under this advertiser. Must be less than 129 characters long.",
          type = "string",
        },
        defaultClickThroughEventTagId = {
          description = "ID of the click-through event tag to apply by default to the landing pages of this advertiser's campaigns.",
          format = "int64",
          type = "string",
        },
        defaultEmail = {
          description = "Default email address used in sender field for tag emails.",
          type = "string",
        },
        floodlightConfigurationId = {
          description = "Floodlight configuration ID of this advertiser. The floodlight configuration ID will be created automatically, so on insert this field should be left blank. This field can be set to another advertiser's floodlight configuration ID in order to share that advertiser's floodlight configuration with this advertiser, so long as: - This advertiser's original floodlight configuration is not already associated with floodlight activities or floodlight activity groups. - This advertiser's original floodlight configuration is not already shared with another advertiser. ",
          format = "int64",
          type = "string",
        },
        floodlightConfigurationIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field.",
        },
        id = {
          description = "ID of this advertiser. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this advertiser. This is a read-only, auto-generated field.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiser\".",
          type = "string",
        },
        measurementPartnerLink = {
          ["$ref"] = "MeasurementPartnerAdvertiserLink",
          description = "Measurement partner advertiser link for tag wrapping.",
        },
        name = {
          description = "Name of this advertiser. This is a required field and must be less than 256 characters long and unique among advertisers of the same account.",
          type = "string",
        },
        originalFloodlightConfigurationId = {
          description = "Original floodlight configuration before any sharing occurred. Set the floodlightConfigurationId of this advertiser to originalFloodlightConfigurationId to unshare the advertiser's current floodlight configuration. You cannot unshare an advertiser's floodlight configuration if the shared configuration has activities associated with any campaign or placement.",
          format = "int64",
          type = "string",
        },
        status = {
          description = "Status of this advertiser.",
          enum = {
            "APPROVED",
            "ON_HOLD",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this advertiser.This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        suspended = {
          description = "Suspension status of this advertiser.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdvertiserGroup = {
      description = "Groups advertisers together so that reports can be generated for the entire group at once.",
      id = "AdvertiserGroup",
      properties = {
        accountId = {
          description = "Account ID of this advertiser group. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "ID of this advertiser group. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiserGroup\".",
          type = "string",
        },
        name = {
          description = "Name of this advertiser group. This is a required field and must be less than 256 characters long and unique among advertiser groups of the same account.",
          type = "string",
        },
      },
      type = "object",
    },
    AdvertiserGroupsListResponse = {
      description = "Advertiser Group List Response",
      id = "AdvertiserGroupsListResponse",
      properties = {
        advertiserGroups = {
          description = "Advertiser group collection.",
          items = {
            ["$ref"] = "AdvertiserGroup",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiserGroupsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    AdvertiserLandingPagesListResponse = {
      description = "Landing Page List Response",
      id = "AdvertiserLandingPagesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertiserLandingPagesListResponse\".",
          type = "string",
        },
        landingPages = {
          description = "Landing page collection",
          items = {
            ["$ref"] = "LandingPage",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    AdvertisersListResponse = {
      description = "Advertiser List Response",
      id = "AdvertisersListResponse",
      properties = {
        advertisers = {
          description = "Advertiser collection.",
          items = {
            ["$ref"] = "Advertiser",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#advertisersListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    AudienceSegment = {
      description = "Audience Segment.",
      id = "AudienceSegment",
      properties = {
        allocation = {
          description = "Weight allocated to this segment. The weight assigned will be understood in proportion to the weights assigned to other segments in the same segment group. Acceptable values are 1 to 1000, inclusive.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "ID of this audience segment. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of this audience segment. This is a required field and must be less than 65 characters long.",
          type = "string",
        },
      },
      type = "object",
    },
    AudienceSegmentGroup = {
      description = "Audience Segment Group.",
      id = "AudienceSegmentGroup",
      properties = {
        audienceSegments = {
          description = "Audience segments assigned to this group. The number of segments must be between 2 and 100.",
          items = {
            ["$ref"] = "AudienceSegment",
          },
          type = "array",
        },
        id = {
          description = "ID of this audience segment group. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of this audience segment group. This is a required field and must be less than 65 characters long.",
          type = "string",
        },
      },
      type = "object",
    },
    Browser = {
      description = "Contains information about a browser that can be targeted by ads.",
      id = "Browser",
      properties = {
        browserVersionId = {
          description = "ID referring to this grouping of browser and version numbers. This is the ID used for targeting.",
          format = "int64",
          type = "string",
        },
        dartId = {
          description = "DART ID of this browser. This is the ID used when generating reports.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#browser\".",
          type = "string",
        },
        majorVersion = {
          description = "Major version number (leftmost number) of this browser. For example, for Chrome 5.0.376.86 beta, this field should be set to 5. An asterisk (*) may be used to target any version number, and a question mark (?) may be used to target cases where the version number cannot be identified. For example, Chrome *.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases where the ad server knows the browser is Firefox but can't tell which version it is.",
          type = "string",
        },
        minorVersion = {
          description = "Minor version number (number after first dot on left) of this browser. For example, for Chrome 5.0.375.86 beta, this field should be set to 0. An asterisk (*) may be used to target any version number, and a question mark (?) may be used to target cases where the version number cannot be identified. For example, Chrome *.* targets any version of Chrome: 1.2, 2.5, 3.5, and so on. Chrome 3.* targets Chrome 3.1, 3.5, but not 4.0. Firefox ?.? targets cases where the ad server knows the browser is Firefox but can't tell which version it is.",
          type = "string",
        },
        name = {
          description = "Name of this browser.",
          type = "string",
        },
      },
      type = "object",
    },
    BrowsersListResponse = {
      description = "Browser List Response",
      id = "BrowsersListResponse",
      properties = {
        browsers = {
          description = "Browser collection.",
          items = {
            ["$ref"] = "Browser",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#browsersListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    Campaign = {
      description = "Contains properties of a Campaign Manager campaign.",
      id = "Campaign",
      properties = {
        accountId = {
          description = "Account ID of this campaign. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        adBlockingConfiguration = {
          ["$ref"] = "AdBlockingConfiguration",
          description = "Ad blocking settings for this campaign.",
        },
        additionalCreativeOptimizationConfigurations = {
          description = "Additional creative optimization configurations for the campaign.",
          items = {
            ["$ref"] = "CreativeOptimizationConfiguration",
          },
          type = "array",
        },
        advertiserGroupId = {
          description = "Advertiser group ID of the associated advertiser.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this campaign. This is a required field.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the advertiser ID of this campaign. This is a read-only, auto-generated field.",
        },
        archived = {
          description = "Whether this campaign has been archived.",
          type = "boolean",
        },
        audienceSegmentGroups = {
          description = "Audience segment groups assigned to this campaign. Cannot have more than 300 segment groups.",
          items = {
            ["$ref"] = "AudienceSegmentGroup",
          },
          type = "array",
        },
        billingInvoiceCode = {
          description = "Billing invoice code included in the Campaign Manager client billing invoices associated with the campaign.",
          type = "string",
        },
        clickThroughUrlSuffixProperties = {
          ["$ref"] = "ClickThroughUrlSuffixProperties",
          description = "Click-through URL suffix override properties for this campaign.",
        },
        comment = {
          description = "Arbitrary comments about this campaign. Must be less than 256 characters long.",
          type = "string",
        },
        createInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the creation of this campaign. This is a read-only field.",
        },
        creativeGroupIds = {
          description = "List of creative group IDs that are assigned to the campaign.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        creativeOptimizationConfiguration = {
          ["$ref"] = "CreativeOptimizationConfiguration",
          description = "Creative optimization configuration for the campaign.",
        },
        defaultClickThroughEventTagProperties = {
          ["$ref"] = "DefaultClickThroughEventTagProperties",
          description = "Click-through event tag ID override properties for this campaign.",
        },
        defaultLandingPageId = {
          description = "The default landing page ID for this campaign.",
          format = "int64",
          type = "string",
        },
        endDate = {
          format = "date",
          type = "string",
        },
        eventTagOverrides = {
          description = "Overrides that can be used to activate or deactivate advertiser event tags.",
          items = {
            ["$ref"] = "EventTagOverride",
          },
          type = "array",
        },
        externalId = {
          description = "External ID for this campaign.",
          type = "string",
        },
        id = {
          description = "ID of this campaign. This is a read-only auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this campaign. This is a read-only, auto-generated field.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaign\".",
          type = "string",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the most recent modification of this campaign. This is a read-only field.",
        },
        measurementPartnerLink = {
          ["$ref"] = "MeasurementPartnerCampaignLink",
          description = "Measurement partner campaign link for tag wrapping.",
        },
        name = {
          description = "Name of this campaign. This is a required field and must be less than 512 characters long and unique among campaigns of the same advertiser.",
          type = "string",
        },
        nielsenOcrEnabled = {
          description = "Whether Nielsen reports are enabled for this campaign.",
          type = "boolean",
        },
        startDate = {
          format = "date",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this campaign. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        traffickerEmails = {
          description = "Campaign trafficker contact emails.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CampaignCreativeAssociation = {
      description = "Identifies a creative which has been associated with a given campaign.",
      id = "CampaignCreativeAssociation",
      properties = {
        creativeId = {
          description = "ID of the creative associated with the campaign. This is a required field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaignCreativeAssociation\".",
          type = "string",
        },
      },
      type = "object",
    },
    CampaignCreativeAssociationsListResponse = {
      description = "Campaign Creative Association List Response",
      id = "CampaignCreativeAssociationsListResponse",
      properties = {
        campaignCreativeAssociations = {
          description = "Campaign creative association collection",
          items = {
            ["$ref"] = "CampaignCreativeAssociation",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaignCreativeAssociationsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    CampaignsListResponse = {
      description = "Campaign List Response",
      id = "CampaignsListResponse",
      properties = {
        campaigns = {
          description = "Campaign collection.",
          items = {
            ["$ref"] = "Campaign",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#campaignsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    ChangeLog = {
      description = "Describes a change that a user has made to a resource.",
      id = "ChangeLog",
      properties = {
        accountId = {
          description = "Account ID of the modified object.",
          format = "int64",
          type = "string",
        },
        action = {
          description = "Action which caused the change.",
          type = "string",
        },
        changeTime = {
          format = "date-time",
          type = "string",
        },
        fieldName = {
          description = "Field name of the object which changed.",
          type = "string",
        },
        id = {
          description = "ID of this change log.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#changeLog\".",
          type = "string",
        },
        newValue = {
          description = "New value of the object field.",
          type = "string",
        },
        objectId = {
          description = "ID of the object of this change log. The object could be a campaign, placement, ad, or other type.",
          format = "int64",
          type = "string",
        },
        objectType = {
          description = "Object type of the change log.",
          type = "string",
        },
        oldValue = {
          description = "Old value of the object field.",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of the modified object.",
          format = "int64",
          type = "string",
        },
        transactionId = {
          description = "Transaction ID of this change log. When a single API call results in many changes, each change will have a separate ID in the change log but will share the same transactionId.",
          format = "int64",
          type = "string",
        },
        userProfileId = {
          description = "ID of the user who modified the object.",
          format = "int64",
          type = "string",
        },
        userProfileName = {
          description = "User profile name of the user who modified the object.",
          type = "string",
        },
      },
      type = "object",
    },
    ChangeLogsListResponse = {
      description = "Change Log List Response",
      id = "ChangeLogsListResponse",
      properties = {
        changeLogs = {
          description = "Change log collection.",
          items = {
            ["$ref"] = "ChangeLog",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#changeLogsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelGrouping = {
      description = "Represents a DfaReporting channel grouping.",
      id = "ChannelGrouping",
      properties = {
        fallbackName = {
          description = "ChannelGrouping fallback name.",
          type = "string",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#channelGrouping.",
          type = "string",
        },
        name = {
          description = "ChannelGrouping name.",
          type = "string",
        },
        rules = {
          description = "The rules contained within this channel grouping.",
          items = {
            ["$ref"] = "ChannelGroupingRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ChannelGroupingRule = {
      description = "Represents a DfaReporting channel grouping rule.",
      id = "ChannelGroupingRule",
      properties = {
        disjunctiveMatchStatements = {
          description = "The disjunctive match statements contained within this rule.",
          items = {
            ["$ref"] = "DisjunctiveMatchStatement",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#channelGroupingRule.",
          type = "string",
        },
        name = {
          description = "Rule name.",
          type = "string",
        },
      },
      type = "object",
    },
    CitiesListResponse = {
      description = "City List Response",
      id = "CitiesListResponse",
      properties = {
        cities = {
          description = "City collection.",
          items = {
            ["$ref"] = "City",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#citiesListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    City = {
      description = "Contains information about a city that can be targeted by ads.",
      id = "City",
      properties = {
        countryCode = {
          description = "Country code of the country to which this city belongs.",
          type = "string",
        },
        countryDartId = {
          description = "DART ID of the country to which this city belongs.",
          format = "int64",
          type = "string",
        },
        dartId = {
          description = "DART ID of this city. This is the ID used for targeting and generating reports.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#city\".",
          type = "string",
        },
        metroCode = {
          description = "Metro region code of the metro region (DMA) to which this city belongs.",
          type = "string",
        },
        metroDmaId = {
          description = "ID of the metro region (DMA) to which this city belongs.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of this city.",
          type = "string",
        },
        regionCode = {
          description = "Region code of the region to which this city belongs.",
          type = "string",
        },
        regionDartId = {
          description = "DART ID of the region to which this city belongs.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ClickTag = {
      description = "Creative Click Tag.",
      id = "ClickTag",
      properties = {
        clickThroughUrl = {
          ["$ref"] = "CreativeClickThroughUrl",
          description = "Parameter value for the specified click tag. This field contains a click-through url.",
        },
        eventName = {
          description = "Advertiser event name associated with the click tag. This field is used by DISPLAY_IMAGE_GALLERY and HTML5_BANNER creatives. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          type = "string",
        },
        name = {
          description = "Parameter name for the specified click tag. For DISPLAY_IMAGE_GALLERY creative assets, this field must match the value of the creative asset's creativeAssetId.name field.",
          type = "string",
        },
      },
      type = "object",
    },
    ClickThroughUrl = {
      description = "Click-through URL",
      id = "ClickThroughUrl",
      properties = {
        computedClickThroughUrl = {
          description = "Read-only convenience field representing the actual URL that will be used for this click-through. The URL is computed as follows: - If defaultLandingPage is enabled then the campaign's default landing page URL is assigned to this field. - If defaultLandingPage is not enabled and a landingPageId is specified then that landing page's URL is assigned to this field. - If neither of the above cases apply, then the customClickThroughUrl is assigned to this field. ",
          type = "string",
        },
        customClickThroughUrl = {
          description = "Custom click-through URL. Applicable if the defaultLandingPage field is set to false and the landingPageId field is left unset.",
          type = "string",
        },
        defaultLandingPage = {
          description = "Whether the campaign default landing page is used.",
          type = "boolean",
        },
        landingPageId = {
          description = "ID of the landing page for the click-through URL. Applicable if the defaultLandingPage field is set to false.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ClickThroughUrlSuffixProperties = {
      description = "Click Through URL Suffix settings.",
      id = "ClickThroughUrlSuffixProperties",
      properties = {
        clickThroughUrlSuffix = {
          description = "Click-through URL suffix to apply to all ads in this entity's scope. Must be less than 128 characters long.",
          type = "string",
        },
        overrideInheritedSuffix = {
          description = "Whether this entity should override the inherited click-through URL suffix with its own defined value.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CompanionClickThroughOverride = {
      description = "Companion Click-through override.",
      id = "CompanionClickThroughOverride",
      properties = {
        clickThroughUrl = {
          ["$ref"] = "ClickThroughUrl",
          description = "Click-through URL of this companion click-through override.",
        },
        creativeId = {
          description = "ID of the creative for this companion click-through override.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CompanionSetting = {
      description = "Companion Settings",
      id = "CompanionSetting",
      properties = {
        companionsDisabled = {
          description = "Whether companions are disabled for this placement.",
          type = "boolean",
        },
        enabledSizes = {
          description = "Allowlist of companion sizes to be served to this placement. Set this list to null or empty to serve all companion sizes.",
          items = {
            ["$ref"] = "Size",
          },
          type = "array",
        },
        imageOnly = {
          description = "Whether to serve only static images as companions.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#companionSetting\".",
          type = "string",
        },
      },
      type = "object",
    },
    CompatibleFields = {
      description = "Represents a response to the queryCompatibleFields method.",
      id = "CompatibleFields",
      properties = {
        crossDimensionReachReportCompatibleFields = {
          ["$ref"] = "CrossDimensionReachReportCompatibleFields",
          description = "Contains items that are compatible to be selected for a report of type \"CROSS_DIMENSION_REACH\".",
        },
        floodlightReportCompatibleFields = {
          ["$ref"] = "FloodlightReportCompatibleFields",
          description = "Contains items that are compatible to be selected for a report of type \"FLOODLIGHT\".",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#compatibleFields.",
          type = "string",
        },
        pathAttributionReportCompatibleFields = {
          ["$ref"] = "PathReportCompatibleFields",
          description = "Contains items that are compatible to be selected for a report of type \"PATH_ATTRIBUTION\".",
        },
        pathReportCompatibleFields = {
          ["$ref"] = "PathReportCompatibleFields",
          description = "Contains items that are compatible to be selected for a report of type \"PATH\".",
        },
        pathToConversionReportCompatibleFields = {
          ["$ref"] = "PathToConversionReportCompatibleFields",
          description = "Contains items that are compatible to be selected for a report of type \"PATH_TO_CONVERSION\".",
        },
        reachReportCompatibleFields = {
          ["$ref"] = "ReachReportCompatibleFields",
          description = "Contains items that are compatible to be selected for a report of type \"REACH\".",
        },
        reportCompatibleFields = {
          ["$ref"] = "ReportCompatibleFields",
          description = "Contains items that are compatible to be selected for a report of type \"STANDARD\".",
        },
      },
      type = "object",
    },
    ConnectionType = {
      description = "Contains information about an internet connection type that can be targeted by ads. Clients can use the connection type to target mobile vs. broadband users.",
      id = "ConnectionType",
      properties = {
        id = {
          description = "ID of this connection type.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#connectionType\".",
          type = "string",
        },
        name = {
          description = "Name of this connection type.",
          type = "string",
        },
      },
      type = "object",
    },
    ConnectionTypesListResponse = {
      description = "Connection Type List Response",
      id = "ConnectionTypesListResponse",
      properties = {
        connectionTypes = {
          description = "Collection of connection types such as broadband and mobile.",
          items = {
            ["$ref"] = "ConnectionType",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#connectionTypesListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    ContentCategoriesListResponse = {
      description = "Content Category List Response",
      id = "ContentCategoriesListResponse",
      properties = {
        contentCategories = {
          description = "Content category collection.",
          items = {
            ["$ref"] = "ContentCategory",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#contentCategoriesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    ContentCategory = {
      description = "Organizes placements according to the contents of their associated webpages.",
      id = "ContentCategory",
      properties = {
        accountId = {
          description = "Account ID of this content category. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "ID of this content category. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#contentCategory\".",
          type = "string",
        },
        name = {
          description = "Name of this content category. This is a required field and must be less than 256 characters long and unique among content categories of the same account.",
          type = "string",
        },
      },
      type = "object",
    },
    Conversion = {
      description = "A Conversion represents when a user successfully performs a desired action after seeing an ad.",
      id = "Conversion",
      properties = {
        childDirectedTreatment = {
          description = "Whether this particular request may come from a user under the age of 13, under COPPA compliance.",
          type = "boolean",
        },
        customVariables = {
          description = "Custom floodlight variables. This field may only be used when calling batchinsert; it is not supported by batchupdate.",
          items = {
            ["$ref"] = "CustomFloodlightVariable",
          },
          type = "array",
        },
        dclid = {
          description = "The display click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId, mobileDeviceId and gclid. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or mobileDeviceId or gclid is a required field.",
          type = "string",
        },
        encryptedUserId = {
          description = "The alphanumeric encrypted user ID. When set, encryptionInfo should also be specified. This field is mutually exclusive with encryptedUserIdCandidates[], matchId, mobileDeviceId, gclid and dclid. This or encryptedUserIdCandidates[] or matchId or mobileDeviceId or gclid or dclid is a required field.",
          type = "string",
        },
        encryptedUserIdCandidates = {
          description = "A list of the alphanumeric encrypted user IDs. Any user ID with exposure prior to the conversion timestamp will be used in the inserted conversion. If no such user ID is found then the conversion will be rejected with INVALID_ARGUMENT error. When set, encryptionInfo should also be specified. This field may only be used when calling batchinsert; it is not supported by batchupdate. This field is mutually exclusive with encryptedUserId, matchId, mobileDeviceId, gclid and dclid. This or encryptedUserId or matchId or mobileDeviceId or gclid or dclid is a required field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        floodlightActivityId = {
          description = "Floodlight Activity ID of this conversion. This is a required field.",
          format = "int64",
          type = "string",
        },
        floodlightConfigurationId = {
          description = "Floodlight Configuration ID of this conversion. This is a required field.",
          format = "int64",
          type = "string",
        },
        gclid = {
          description = "The Google click ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId, mobileDeviceId and dclid. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or mobileDeviceId or dclid is a required field.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversion\".",
          type = "string",
        },
        limitAdTracking = {
          description = "Whether Limit Ad Tracking is enabled. When set to true, the conversion will be used for reporting but not targeting. This will prevent remarketing.",
          type = "boolean",
        },
        matchId = {
          description = "The match ID field. A match ID is your own first-party identifier that has been synced with Google using the match ID feature in Floodlight. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[],mobileDeviceId, gclid and dclid. This or encryptedUserId or encryptedUserIdCandidates[] or mobileDeviceId or gclid or dclid is a required field.",
          type = "string",
        },
        mobileDeviceId = {
          description = "The mobile device ID. This field is mutually exclusive with encryptedUserId, encryptedUserIdCandidates[], matchId, gclid and dclid. This or encryptedUserId or encryptedUserIdCandidates[] or matchId or gclid or dclid is a required field.",
          type = "string",
        },
        nonPersonalizedAd = {
          description = "Whether the conversion was for a non personalized ad.",
          type = "boolean",
        },
        ordinal = {
          description = "The ordinal of the conversion. Use this field to control how conversions of the same user and day are de-duplicated. This is a required field.",
          type = "string",
        },
        quantity = {
          description = "The quantity of the conversion.",
          format = "int64",
          type = "string",
        },
        timestampMicros = {
          description = "The timestamp of conversion, in Unix epoch micros. This is a required field.",
          format = "int64",
          type = "string",
        },
        treatmentForUnderage = {
          description = "Whether this particular request may come from a user under the age of 16 (may differ by country), under compliance with the European Union's General Data Protection Regulation (GDPR).",
          type = "boolean",
        },
        value = {
          description = "The value of the conversion.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ConversionError = {
      description = "The error code and description for a conversion that failed to insert or update.",
      id = "ConversionError",
      properties = {
        code = {
          description = "The error code.",
          enum = {
            "INVALID_ARGUMENT",
            "INTERNAL",
            "PERMISSION_DENIED",
            "NOT_FOUND",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionError\".",
          type = "string",
        },
        message = {
          description = "A description of the error.",
          type = "string",
        },
      },
      type = "object",
    },
    ConversionStatus = {
      description = "The original conversion that was inserted or updated and whether there were any errors.",
      id = "ConversionStatus",
      properties = {
        conversion = {
          ["$ref"] = "Conversion",
          description = "The original conversion that was inserted or updated.",
        },
        errors = {
          description = "A list of errors related to this conversion.",
          items = {
            ["$ref"] = "ConversionError",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionStatus\".",
          type = "string",
        },
      },
      type = "object",
    },
    ConversionsBatchInsertRequest = {
      description = "Insert Conversions Request.",
      id = "ConversionsBatchInsertRequest",
      properties = {
        conversions = {
          description = "The set of conversions to insert.",
          items = {
            ["$ref"] = "Conversion",
          },
          type = "array",
        },
        encryptionInfo = {
          ["$ref"] = "EncryptionInfo",
          description = "Describes how encryptedUserId or encryptedUserIdCandidates[] is encrypted. This is a required field if encryptedUserId or encryptedUserIdCandidates[] is used.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchInsertRequest\".",
          type = "string",
        },
      },
      type = "object",
    },
    ConversionsBatchInsertResponse = {
      description = "Insert Conversions Response.",
      id = "ConversionsBatchInsertResponse",
      properties = {
        hasFailures = {
          description = "Indicates that some or all conversions failed to insert.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchInsertResponse\".",
          type = "string",
        },
        status = {
          description = "The insert status of each conversion. Statuses are returned in the same order that conversions are inserted.",
          items = {
            ["$ref"] = "ConversionStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ConversionsBatchUpdateRequest = {
      description = "Update Conversions Request.",
      id = "ConversionsBatchUpdateRequest",
      properties = {
        conversions = {
          description = "The set of conversions to update.",
          items = {
            ["$ref"] = "Conversion",
          },
          type = "array",
        },
        encryptionInfo = {
          ["$ref"] = "EncryptionInfo",
          description = "Describes how encryptedUserId is encrypted. This is a required field if encryptedUserId is used.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchUpdateRequest\".",
          type = "string",
        },
      },
      type = "object",
    },
    ConversionsBatchUpdateResponse = {
      description = "Update Conversions Response.",
      id = "ConversionsBatchUpdateResponse",
      properties = {
        hasFailures = {
          description = "Indicates that some or all conversions failed to update.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#conversionsBatchUpdateResponse\".",
          type = "string",
        },
        status = {
          description = "The update status of each conversion. Statuses are returned in the same order that conversions are updated.",
          items = {
            ["$ref"] = "ConversionStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CountriesListResponse = {
      description = "Country List Response",
      id = "CountriesListResponse",
      properties = {
        countries = {
          description = "Country collection.",
          items = {
            ["$ref"] = "Country",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#countriesListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    Country = {
      description = "Contains information about a country that can be targeted by ads.",
      id = "Country",
      properties = {
        countryCode = {
          description = "Country code.",
          type = "string",
        },
        dartId = {
          description = "DART ID of this country. This is the ID used for targeting and generating reports.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#country\".",
          type = "string",
        },
        name = {
          description = "Name of this country.",
          type = "string",
        },
        sslEnabled = {
          description = "Whether ad serving supports secure servers in this country.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Creative = {
      description = "Contains properties of a Creative.",
      id = "Creative",
      properties = {
        accountId = {
          description = "Account ID of this creative. This field, if left unset, will be auto-generated for both insert and update operations. Applicable to all creative types.",
          format = "int64",
          type = "string",
        },
        active = {
          description = "Whether the creative is active. Applicable to all creative types.",
          type = "boolean",
        },
        adParameters = {
          description = "Ad parameters user for VPAID creative. This is a read-only field. Applicable to the following creative types: all VPAID.",
          type = "string",
        },
        adTagKeys = {
          description = "Keywords for a Rich Media creative. Keywords let you customize the creative settings of a Rich Media ad running on your site without having to contact the advertiser. You can use keywords to dynamically change the look or functionality of a creative. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          items = {
            type = "string",
          },
          type = "array",
        },
        additionalSizes = {
          description = "Additional sizes associated with a responsive creative. When inserting or updating a creative either the size ID field or size width and height fields can be used. Applicable to DISPLAY creatives when the primary asset type is HTML_IMAGE.",
          items = {
            ["$ref"] = "Size",
          },
          type = "array",
        },
        advertiserId = {
          description = "Advertiser ID of this creative. This is a required field. Applicable to all creative types.",
          format = "int64",
          type = "string",
        },
        allowScriptAccess = {
          description = "Whether script access is allowed for this creative. This is a read-only and deprecated field which will automatically be set to true on update. Applicable to the following creative types: FLASH_INPAGE.",
          type = "boolean",
        },
        archived = {
          description = "Whether the creative is archived. Applicable to all creative types.",
          type = "boolean",
        },
        artworkType = {
          description = "Type of artwork used for the creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          enum = {
            "ARTWORK_TYPE_FLASH",
            "ARTWORK_TYPE_HTML5",
            "ARTWORK_TYPE_MIXED",
            "ARTWORK_TYPE_IMAGE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        authoringSource = {
          description = "Source application where creative was authored. Presently, only DBM authored creatives will have this field set. Applicable to all creative types.",
          enum = {
            "CREATIVE_AUTHORING_SOURCE_DCM",
            "CREATIVE_AUTHORING_SOURCE_DBM",
            "CREATIVE_AUTHORING_SOURCE_STUDIO",
            "CREATIVE_AUTHORING_SOURCE_GWD",
            "CREATIVE_AUTHORING_SOURCE_ACS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        authoringTool = {
          description = "Authoring tool for HTML5 banner creatives. This is a read-only field. Applicable to the following creative types: HTML5_BANNER.",
          enum = {
            "NINJA",
            "SWIFFY",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        autoAdvanceImages = {
          description = "Whether images are automatically advanced for image gallery creatives. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY.",
          type = "boolean",
        },
        backgroundColor = {
          description = "The 6-character HTML color code, beginning with #, for the background of the window area where the Flash file is displayed. Default is white. Applicable to the following creative types: FLASH_INPAGE.",
          type = "string",
        },
        backupImageClickThroughUrl = {
          ["$ref"] = "CreativeClickThroughUrl",
          description = "Click-through URL for backup image. Applicable to ENHANCED_BANNER when the primary asset type is not HTML_IMAGE.",
        },
        backupImageFeatures = {
          description = "List of feature dependencies that will cause a backup image to be served if the browser that serves the ad does not support them. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative asset correctly. This field is initially auto-generated to contain all features detected by Campaign Manager for all the assets of this creative and can then be modified by the client. To reset this field, copy over all the creativeAssets' detected features. Applicable to the following creative types: HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          items = {
            enum = {
              "CSS_FONT_FACE",
              "CSS_BACKGROUND_SIZE",
              "CSS_BORDER_IMAGE",
              "CSS_BORDER_RADIUS",
              "CSS_BOX_SHADOW",
              "CSS_FLEX_BOX",
              "CSS_HSLA",
              "CSS_MULTIPLE_BGS",
              "CSS_OPACITY",
              "CSS_RGBA",
              "CSS_TEXT_SHADOW",
              "CSS_ANIMATIONS",
              "CSS_COLUMNS",
              "CSS_GENERATED_CONTENT",
              "CSS_GRADIENTS",
              "CSS_REFLECTIONS",
              "CSS_TRANSFORMS",
              "CSS_TRANSFORMS3D",
              "CSS_TRANSITIONS",
              "APPLICATION_CACHE",
              "CANVAS",
              "CANVAS_TEXT",
              "DRAG_AND_DROP",
              "HASH_CHANGE",
              "HISTORY",
              "AUDIO",
              "VIDEO",
              "INDEXED_DB",
              "INPUT_ATTR_AUTOCOMPLETE",
              "INPUT_ATTR_AUTOFOCUS",
              "INPUT_ATTR_LIST",
              "INPUT_ATTR_PLACEHOLDER",
              "INPUT_ATTR_MAX",
              "INPUT_ATTR_MIN",
              "INPUT_ATTR_MULTIPLE",
              "INPUT_ATTR_PATTERN",
              "INPUT_ATTR_REQUIRED",
              "INPUT_ATTR_STEP",
              "INPUT_TYPE_SEARCH",
              "INPUT_TYPE_TEL",
              "INPUT_TYPE_URL",
              "INPUT_TYPE_EMAIL",
              "INPUT_TYPE_DATETIME",
              "INPUT_TYPE_DATE",
              "INPUT_TYPE_MONTH",
              "INPUT_TYPE_WEEK",
              "INPUT_TYPE_TIME",
              "INPUT_TYPE_DATETIME_LOCAL",
              "INPUT_TYPE_NUMBER",
              "INPUT_TYPE_RANGE",
              "INPUT_TYPE_COLOR",
              "LOCAL_STORAGE",
              "POST_MESSAGE",
              "SESSION_STORAGE",
              "WEB_SOCKETS",
              "WEB_SQL_DATABASE",
              "WEB_WORKERS",
              "GEO_LOCATION",
              "INLINE_SVG",
              "SMIL",
              "SVG_HREF",
              "SVG_CLIP_PATHS",
              "TOUCH",
              "WEBGL",
              "SVG_FILTERS",
              "SVG_FE_IMAGE",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        backupImageReportingLabel = {
          description = "Reporting label used for HTML5 banner backup image. Applicable to the following creative types: DISPLAY when the primary asset type is not HTML_IMAGE.",
          type = "string",
        },
        backupImageTargetWindow = {
          ["$ref"] = "TargetWindow",
          description = "Target window for backup image. Applicable to the following creative types: FLASH_INPAGE and HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
        },
        clickTags = {
          description = "Click tags of the creative. For DISPLAY, FLASH_INPAGE, and HTML5_BANNER creatives, this is a subset of detected click tags for the assets associated with this creative. After creating a flash asset, detected click tags will be returned in the creativeAssetMetadata. When inserting the creative, populate the creative clickTags field using the creativeAssetMetadata.clickTags field. For DISPLAY_IMAGE_GALLERY creatives, there should be exactly one entry in this list for each image creative asset. A click tag is matched with a corresponding creative asset by matching the clickTag.name field with the creativeAsset.assetIdentifier.name field. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, FLASH_INPAGE, HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          items = {
            ["$ref"] = "ClickTag",
          },
          type = "array",
        },
        commercialId = {
          description = "Industry standard ID assigned to creative for reach and frequency. Applicable to INSTREAM_VIDEO_REDIRECT creatives.",
          type = "string",
        },
        companionCreatives = {
          description = "List of companion creatives assigned to an in-Stream video creative. Acceptable values include IDs of existing flash and image creatives. Applicable to the following creative types: all VPAID, all INSTREAM_AUDIO and all INSTREAM_VIDEO with dynamicAssetSelection set to false.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        compatibility = {
          description = "Compatibilities associated with this creative. This is a read-only field. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering either on desktop or on mobile devices or in mobile apps for regular or interstitial ads, respectively. APP and APP_INTERSTITIAL are for rendering in mobile apps. Only pre-existing creatives may have these compatibilities since new creatives will either be assigned DISPLAY or DISPLAY_INTERSTITIAL instead. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard. IN_STREAM_AUDIO refers to rendering in in-stream audio ads developed with the VAST standard. Applicable to all creative types. Acceptable values are: - \"APP\" - \"APP_INTERSTITIAL\" - \"IN_STREAM_VIDEO\" - \"IN_STREAM_AUDIO\" - \"DISPLAY\" - \"DISPLAY_INTERSTITIAL\" ",
          items = {
            enum = {
              "DISPLAY",
              "DISPLAY_INTERSTITIAL",
              "APP",
              "APP_INTERSTITIAL",
              "IN_STREAM_VIDEO",
              "IN_STREAM_AUDIO",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        convertFlashToHtml5 = {
          description = "Whether Flash assets associated with the creative need to be automatically converted to HTML5. This flag is enabled by default and users can choose to disable it if they don't want the system to generate and use HTML5 asset for this creative. Applicable to the following creative type: FLASH_INPAGE. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          type = "boolean",
        },
        counterCustomEvents = {
          description = "List of counter events configured for the creative. For DISPLAY_IMAGE_GALLERY creatives, these are read-only and auto-generated from clickTags. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID.",
          items = {
            ["$ref"] = "CreativeCustomEvent",
          },
          type = "array",
        },
        creativeAssetSelection = {
          ["$ref"] = "CreativeAssetSelection",
          description = "Required if dynamicAssetSelection is true.",
        },
        creativeAssets = {
          description = "Assets associated with a creative. Applicable to all but the following creative types: INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and REDIRECT",
          items = {
            ["$ref"] = "CreativeAsset",
          },
          type = "array",
        },
        creativeFieldAssignments = {
          description = "Creative field assignments for this creative. Applicable to all creative types.",
          items = {
            ["$ref"] = "CreativeFieldAssignment",
          },
          type = "array",
        },
        customKeyValues = {
          description = "Custom key-values for a Rich Media creative. Key-values let you customize the creative settings of a Rich Media ad running on your site without having to contact the advertiser. You can use key-values to dynamically change the look or functionality of a creative. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dynamicAssetSelection = {
          description = "Set this to true to enable the use of rules to target individual assets in this creative. When set to true creativeAssetSelection must be set. This also controls asset-level companions. When this is true, companion creatives should be assigned to creative assets. Learn more. Applicable to INSTREAM_VIDEO creatives.",
          type = "boolean",
        },
        exitCustomEvents = {
          description = "List of exit events configured for the creative. For DISPLAY and DISPLAY_IMAGE_GALLERY creatives, these are read-only and auto-generated from clickTags, For DISPLAY, an event is also created from the backupImageReportingLabel. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          items = {
            ["$ref"] = "CreativeCustomEvent",
          },
          type = "array",
        },
        fsCommand = {
          ["$ref"] = "FsCommand",
          description = "OpenWindow FSCommand of this creative. This lets the SWF file communicate with either Flash Player or the program hosting Flash Player, such as a web browser. This is only triggered if allowScriptAccess field is true. Applicable to the following creative types: FLASH_INPAGE.",
        },
        htmlCode = {
          description = "HTML code for the creative. This is a required field when applicable. This field is ignored if htmlCodeLocked is true. Applicable to the following creative types: all CUSTOM, FLASH_INPAGE, and HTML5_BANNER, and all RICH_MEDIA.",
          type = "string",
        },
        htmlCodeLocked = {
          description = "Whether HTML code is generated by Campaign Manager or manually entered. Set to true to ignore changes to htmlCode. Applicable to the following creative types: FLASH_INPAGE and HTML5_BANNER.",
          type = "boolean",
        },
        id = {
          description = "ID of this creative. This is a read-only, auto-generated field. Applicable to all creative types.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this creative. This is a read-only field. Applicable to all creative types.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creative\".",
          type = "string",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Creative last modification information. This is a read-only field. Applicable to all creative types.",
        },
        latestTraffickedCreativeId = {
          description = "Latest Studio trafficked creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          format = "int64",
          type = "string",
        },
        mediaDescription = {
          description = "Description of the audio or video ad. Applicable to the following creative types: all INSTREAM_VIDEO, INSTREAM_AUDIO, and all VPAID.",
          type = "string",
        },
        mediaDuration = {
          description = "Creative audio or video duration in seconds. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO, INSTREAM_AUDIO, all RICH_MEDIA, and all VPAID.",
          format = "float",
          type = "number",
        },
        name = {
          description = "Name of the creative. This is a required field and must be less than 256 characters long. Applicable to all creative types.",
          type = "string",
        },
        obaIcon = {
          ["$ref"] = "ObaIcon",
          description = "Online behavioral advertising icon to be added to the creative. Applicable to the following creative types: all INSTREAM_VIDEO.",
        },
        overrideCss = {
          description = "Override CSS value for rich media creatives. Applicable to the following creative types: all RICH_MEDIA.",
          type = "string",
        },
        progressOffset = {
          ["$ref"] = "VideoOffset",
          description = "Amount of time to play the video before counting a view. Applicable to the following creative types: all INSTREAM_VIDEO.",
        },
        redirectUrl = {
          description = "URL of hosted image or hosted video or another ad tag. For INSTREAM_VIDEO_REDIRECT creatives this is the in-stream video redirect URL. The standard for a VAST (Video Ad Serving Template) ad response allows for a redirect link to another VAST 2.0 or 3.0 call. This is a required field when applicable. Applicable to the following creative types: DISPLAY_REDIRECT, INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO_REDIRECT",
          type = "string",
        },
        renderingId = {
          description = "ID of current rendering version. This is a read-only field. Applicable to all creative types.",
          format = "int64",
          type = "string",
        },
        renderingIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the rendering ID of this creative. This is a read-only field. Applicable to all creative types.",
        },
        requiredFlashPluginVersion = {
          description = "The minimum required Flash plugin version for this creative. For example, 11.2.202.235. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          type = "string",
        },
        requiredFlashVersion = {
          description = "The internal Flash version for this creative as calculated by Studio. This is a read-only field. Applicable to the following creative types: FLASH_INPAGE all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          format = "int32",
          type = "integer",
        },
        size = {
          ["$ref"] = "Size",
          description = "Size associated with this creative. When inserting or updating a creative either the size ID field or size width and height fields can be used. This is a required field when applicable; however for IMAGE, FLASH_INPAGE creatives, and for DISPLAY creatives with a primary asset of type HTML_IMAGE, if left blank, this field will be automatically set using the actual size of the associated image assets. Applicable to the following creative types: DISPLAY, DISPLAY_IMAGE_GALLERY, FLASH_INPAGE, HTML5_BANNER, IMAGE, and all RICH_MEDIA.",
        },
        skipOffset = {
          ["$ref"] = "VideoOffset",
          description = "Amount of time to play the video before the skip button appears. Applicable to the following creative types: all INSTREAM_VIDEO.",
        },
        skippable = {
          description = "Whether the user can choose to skip the creative. Applicable to the following creative types: all INSTREAM_VIDEO and all VPAID.",
          type = "boolean",
        },
        sslCompliant = {
          description = "Whether the creative is SSL-compliant. This is a read-only field. Applicable to all creative types.",
          type = "boolean",
        },
        sslOverride = {
          description = "Whether creative should be treated as SSL compliant even if the system scan shows it's not. Applicable to all creative types.",
          type = "boolean",
        },
        studioAdvertiserId = {
          description = "Studio advertiser ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          format = "int64",
          type = "string",
        },
        studioCreativeId = {
          description = "Studio creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          format = "int64",
          type = "string",
        },
        studioTraffickedCreativeId = {
          description = "Studio trafficked creative ID associated with rich media and VPAID creatives. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          format = "int64",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this creative. This field, if left unset, will be auto-generated for both insert and update operations. Applicable to all creative types.",
          format = "int64",
          type = "string",
        },
        thirdPartyBackupImageImpressionsUrl = {
          description = "Third-party URL used to record backup image impressions. Applicable to the following creative types: all RICH_MEDIA.",
          type = "string",
        },
        thirdPartyRichMediaImpressionsUrl = {
          description = "Third-party URL used to record rich media impressions. Applicable to the following creative types: all RICH_MEDIA.",
          type = "string",
        },
        thirdPartyUrls = {
          description = "Third-party URLs for tracking in-stream creative events. Applicable to the following creative types: all INSTREAM_VIDEO, all INSTREAM_AUDIO, and all VPAID.",
          items = {
            ["$ref"] = "ThirdPartyTrackingUrl",
          },
          type = "array",
        },
        timerCustomEvents = {
          description = "List of timer events configured for the creative. For DISPLAY_IMAGE_GALLERY creatives, these are read-only and auto-generated from clickTags. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset is not HTML_IMAGE.",
          items = {
            ["$ref"] = "CreativeCustomEvent",
          },
          type = "array",
        },
        totalFileSize = {
          description = "Combined size of all creative assets. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA, and all VPAID.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Type of this creative. This is a required field. Applicable to all creative types. *Note:* FLASH_INPAGE, HTML5_BANNER, and IMAGE are only used for existing creatives. New creatives should use DISPLAY as a replacement for these types.",
          enum = {
            "IMAGE",
            "DISPLAY_REDIRECT",
            "CUSTOM_DISPLAY",
            "INTERNAL_REDIRECT",
            "CUSTOM_DISPLAY_INTERSTITIAL",
            "INTERSTITIAL_INTERNAL_REDIRECT",
            "TRACKING_TEXT",
            "RICH_MEDIA_DISPLAY_BANNER",
            "RICH_MEDIA_INPAGE_FLOATING",
            "RICH_MEDIA_IM_EXPAND",
            "RICH_MEDIA_DISPLAY_EXPANDING",
            "RICH_MEDIA_DISPLAY_INTERSTITIAL",
            "RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL",
            "RICH_MEDIA_MOBILE_IN_APP",
            "FLASH_INPAGE",
            "INSTREAM_VIDEO",
            "VPAID_LINEAR_VIDEO",
            "VPAID_NON_LINEAR_VIDEO",
            "INSTREAM_VIDEO_REDIRECT",
            "RICH_MEDIA_PEEL_DOWN",
            "HTML5_BANNER",
            "DISPLAY",
            "DISPLAY_IMAGE_GALLERY",
            "BRAND_SAFE_DEFAULT_INSTREAM_VIDEO",
            "INSTREAM_AUDIO",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        universalAdId = {
          ["$ref"] = "UniversalAdId",
          description = "A Universal Ad ID as per the VAST 4.0 spec. Applicable to the following creative types: INSTREAM_AUDIO and INSTREAM_VIDEO and VPAID.",
        },
        version = {
          description = "The version number helps you keep track of multiple versions of your creative in your reports. The version number will always be auto-generated during insert operations to start at 1. For tracking creatives the version cannot be incremented and will always remain at 1. For all other creative types the version can be incremented only by 1 during update operations. In addition, the version will be automatically incremented by 1 when undergoing Rich Media creative merging. Applicable to all creative types.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CreativeAsset = {
      description = "Creative Asset.",
      id = "CreativeAsset",
      properties = {
        actionScript3 = {
          description = "Whether ActionScript3 is enabled for the flash asset. This is a read-only field. Applicable to the following creative type: FLASH_INPAGE. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          type = "boolean",
        },
        active = {
          description = "Whether the video or audio asset is active. This is a read-only field for VPAID_NON_LINEAR_VIDEO assets. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.",
          type = "boolean",
        },
        additionalSizes = {
          description = "Additional sizes associated with this creative asset. HTML5 asset generated by compatible software such as GWD will be able to support more sizes this creative asset can render.",
          items = {
            ["$ref"] = "Size",
          },
          type = "array",
        },
        alignment = {
          description = "Possible alignments for an asset. This is a read-only field. Applicable to the following creative types: RICH_MEDIA_DISPLAY_MULTI_FLOATING_INTERSTITIAL .",
          enum = {
            "ALIGNMENT_TOP",
            "ALIGNMENT_RIGHT",
            "ALIGNMENT_BOTTOM",
            "ALIGNMENT_LEFT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        artworkType = {
          description = "Artwork type of rich media creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.",
          enum = {
            "ARTWORK_TYPE_FLASH",
            "ARTWORK_TYPE_HTML5",
            "ARTWORK_TYPE_MIXED",
            "ARTWORK_TYPE_IMAGE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        assetIdentifier = {
          ["$ref"] = "CreativeAssetId",
          description = "Identifier of this asset. This is the same identifier returned during creative asset insert operation. This is a required field. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.",
        },
        audioBitRate = {
          description = "Audio stream bit rate in kbps. This is a read-only field. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.",
          format = "int32",
          type = "integer",
        },
        audioSampleRate = {
          description = "Audio sample bit rate in hertz. This is a read-only field. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.",
          format = "int32",
          type = "integer",
        },
        backupImageExit = {
          ["$ref"] = "CreativeCustomEvent",
          description = "Exit event configured for the backup image. Applicable to the following creative types: all RICH_MEDIA.",
        },
        bitRate = {
          description = "Detected bit-rate for audio or video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.",
          format = "int32",
          type = "integer",
        },
        childAssetType = {
          description = "Rich media child asset type. This is a read-only field. Applicable to the following creative types: all VPAID.",
          enum = {
            "CHILD_ASSET_TYPE_FLASH",
            "CHILD_ASSET_TYPE_VIDEO",
            "CHILD_ASSET_TYPE_IMAGE",
            "CHILD_ASSET_TYPE_DATA",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        collapsedSize = {
          ["$ref"] = "Size",
          description = "Size of an asset when collapsed. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA and all VPAID. Additionally, applicable to assets whose displayType is ASSET_DISPLAY_TYPE_EXPANDING or ASSET_DISPLAY_TYPE_PEEL_DOWN.",
        },
        companionCreativeIds = {
          description = "List of companion creatives assigned to an in-stream video creative asset. Acceptable values include IDs of existing flash and image creatives. Applicable to INSTREAM_VIDEO creative type with dynamicAssetSelection set to true.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        customStartTimeValue = {
          description = "Custom start time in seconds for making the asset visible. Applicable to the following creative types: all RICH_MEDIA. Value must be greater than or equal to 0.",
          format = "int32",
          type = "integer",
        },
        detectedFeatures = {
          description = "List of feature dependencies for the creative asset that are detected by Campaign Manager. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative correctly. This is a read-only, auto-generated field. Applicable to the following creative types: HTML5_BANNER. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          items = {
            enum = {
              "CSS_FONT_FACE",
              "CSS_BACKGROUND_SIZE",
              "CSS_BORDER_IMAGE",
              "CSS_BORDER_RADIUS",
              "CSS_BOX_SHADOW",
              "CSS_FLEX_BOX",
              "CSS_HSLA",
              "CSS_MULTIPLE_BGS",
              "CSS_OPACITY",
              "CSS_RGBA",
              "CSS_TEXT_SHADOW",
              "CSS_ANIMATIONS",
              "CSS_COLUMNS",
              "CSS_GENERATED_CONTENT",
              "CSS_GRADIENTS",
              "CSS_REFLECTIONS",
              "CSS_TRANSFORMS",
              "CSS_TRANSFORMS3D",
              "CSS_TRANSITIONS",
              "APPLICATION_CACHE",
              "CANVAS",
              "CANVAS_TEXT",
              "DRAG_AND_DROP",
              "HASH_CHANGE",
              "HISTORY",
              "AUDIO",
              "VIDEO",
              "INDEXED_DB",
              "INPUT_ATTR_AUTOCOMPLETE",
              "INPUT_ATTR_AUTOFOCUS",
              "INPUT_ATTR_LIST",
              "INPUT_ATTR_PLACEHOLDER",
              "INPUT_ATTR_MAX",
              "INPUT_ATTR_MIN",
              "INPUT_ATTR_MULTIPLE",
              "INPUT_ATTR_PATTERN",
              "INPUT_ATTR_REQUIRED",
              "INPUT_ATTR_STEP",
              "INPUT_TYPE_SEARCH",
              "INPUT_TYPE_TEL",
              "INPUT_TYPE_URL",
              "INPUT_TYPE_EMAIL",
              "INPUT_TYPE_DATETIME",
              "INPUT_TYPE_DATE",
              "INPUT_TYPE_MONTH",
              "INPUT_TYPE_WEEK",
              "INPUT_TYPE_TIME",
              "INPUT_TYPE_DATETIME_LOCAL",
              "INPUT_TYPE_NUMBER",
              "INPUT_TYPE_RANGE",
              "INPUT_TYPE_COLOR",
              "LOCAL_STORAGE",
              "POST_MESSAGE",
              "SESSION_STORAGE",
              "WEB_SOCKETS",
              "WEB_SQL_DATABASE",
              "WEB_WORKERS",
              "GEO_LOCATION",
              "INLINE_SVG",
              "SMIL",
              "SVG_HREF",
              "SVG_CLIP_PATHS",
              "TOUCH",
              "WEBGL",
              "SVG_FILTERS",
              "SVG_FE_IMAGE",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        displayType = {
          description = "Type of rich media asset. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.",
          enum = {
            "ASSET_DISPLAY_TYPE_INPAGE",
            "ASSET_DISPLAY_TYPE_FLOATING",
            "ASSET_DISPLAY_TYPE_OVERLAY",
            "ASSET_DISPLAY_TYPE_EXPANDING",
            "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH",
            "ASSET_DISPLAY_TYPE_FLASH_IN_FLASH_EXPANDING",
            "ASSET_DISPLAY_TYPE_PEEL_DOWN",
            "ASSET_DISPLAY_TYPE_VPAID_LINEAR",
            "ASSET_DISPLAY_TYPE_VPAID_NON_LINEAR",
            "ASSET_DISPLAY_TYPE_BACKDROP",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        duration = {
          description = "Duration in seconds for which an asset will be displayed. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and VPAID_LINEAR_VIDEO. Value must be greater than or equal to 1.",
          format = "int32",
          type = "integer",
        },
        durationType = {
          description = "Duration type for which an asset will be displayed. Applicable to the following creative types: all RICH_MEDIA.",
          enum = {
            "ASSET_DURATION_TYPE_AUTO",
            "ASSET_DURATION_TYPE_NONE",
            "ASSET_DURATION_TYPE_CUSTOM",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        expandedDimension = {
          ["$ref"] = "Size",
          description = "Detected expanded dimension for video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.",
        },
        fileSize = {
          description = "File size associated with this creative asset. This is a read-only field. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.",
          format = "int64",
          type = "string",
        },
        flashVersion = {
          description = "Flash version of the asset. This is a read-only field. Applicable to the following creative types: FLASH_INPAGE, all RICH_MEDIA, and all VPAID. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
          format = "int32",
          type = "integer",
        },
        frameRate = {
          description = "Video frame rate for video asset in frames per second. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.",
          format = "float",
          type = "number",
        },
        hideFlashObjects = {
          description = "Whether to hide Flash objects flag for an asset. Applicable to the following creative types: all RICH_MEDIA.",
          type = "boolean",
        },
        hideSelectionBoxes = {
          description = "Whether to hide selection boxes flag for an asset. Applicable to the following creative types: all RICH_MEDIA.",
          type = "boolean",
        },
        horizontallyLocked = {
          description = "Whether the asset is horizontally locked. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.",
          type = "boolean",
        },
        id = {
          description = "Numeric ID of this creative asset. This is a required field and should not be modified. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the asset. This is a read-only, auto-generated field.",
        },
        mediaDuration = {
          description = "Detected duration for audio or video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.",
          format = "float",
          type = "number",
        },
        mimeType = {
          description = "Detected MIME type for audio or video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and all VPAID.",
          type = "string",
        },
        offset = {
          ["$ref"] = "OffsetPosition",
          description = "Offset position for an asset in collapsed mode. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA and all VPAID. Additionally, only applicable to assets whose displayType is ASSET_DISPLAY_TYPE_EXPANDING or ASSET_DISPLAY_TYPE_PEEL_DOWN.",
        },
        orientation = {
          description = "Orientation of video asset. This is a read-only, auto-generated field.",
          enum = {
            "LANDSCAPE",
            "PORTRAIT",
            "SQUARE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        originalBackup = {
          description = "Whether the backup asset is original or changed by the user in Campaign Manager. Applicable to the following creative types: all RICH_MEDIA.",
          type = "boolean",
        },
        politeLoad = {
          description = "Whether this asset is used as a polite load asset.",
          type = "boolean",
        },
        position = {
          ["$ref"] = "OffsetPosition",
          description = "Offset position for an asset. Applicable to the following creative types: all RICH_MEDIA.",
        },
        positionLeftUnit = {
          description = "Offset left unit for an asset. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.",
          enum = {
            "OFFSET_UNIT_PIXEL",
            "OFFSET_UNIT_PERCENT",
            "OFFSET_UNIT_PIXEL_FROM_CENTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        positionTopUnit = {
          description = "Offset top unit for an asset. This is a read-only field if the asset displayType is ASSET_DISPLAY_TYPE_OVERLAY. Applicable to the following creative types: all RICH_MEDIA.",
          enum = {
            "OFFSET_UNIT_PIXEL",
            "OFFSET_UNIT_PERCENT",
            "OFFSET_UNIT_PIXEL_FROM_CENTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        progressiveServingUrl = {
          description = "Progressive URL for video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.",
          type = "string",
        },
        pushdown = {
          description = "Whether the asset pushes down other content. Applicable to the following creative types: all RICH_MEDIA. Additionally, only applicable when the asset offsets are 0, the collapsedSize.width matches size.width, and the collapsedSize.height is less than size.height.",
          type = "boolean",
        },
        pushdownDuration = {
          description = "Pushdown duration in seconds for an asset. Applicable to the following creative types: all RICH_MEDIA.Additionally, only applicable when the asset pushdown field is true, the offsets are 0, the collapsedSize.width matches size.width, and the collapsedSize.height is less than size.height. Acceptable values are 0 to 9.99, inclusive.",
          format = "float",
          type = "number",
        },
        role = {
          description = "Role of the asset in relation to creative. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT. This is a required field. PRIMARY applies to DISPLAY, FLASH_INPAGE, HTML5_BANNER, IMAGE, DISPLAY_IMAGE_GALLERY, all RICH_MEDIA (which may contain multiple primary assets), and all VPAID creatives. BACKUP_IMAGE applies to FLASH_INPAGE, HTML5_BANNER, all RICH_MEDIA, and all VPAID creatives. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE. ADDITIONAL_IMAGE and ADDITIONAL_FLASH apply to FLASH_INPAGE creatives. OTHER refers to assets from sources other than Campaign Manager, such as Studio uploaded assets, applicable to all RICH_MEDIA and all VPAID creatives. PARENT_VIDEO refers to videos uploaded by the user in Campaign Manager and is applicable to INSTREAM_VIDEO and VPAID_LINEAR_VIDEO creatives. TRANSCODED_VIDEO refers to videos transcoded by Campaign Manager from PARENT_VIDEO assets and is applicable to INSTREAM_VIDEO and VPAID_LINEAR_VIDEO creatives. ALTERNATE_VIDEO refers to the Campaign Manager representation of child asset videos from Studio, and is applicable to VPAID_LINEAR_VIDEO creatives. These cannot be added or removed within Campaign Manager. For VPAID_LINEAR_VIDEO creatives, PARENT_VIDEO, TRANSCODED_VIDEO and ALTERNATE_VIDEO assets that are marked active serve as backup in case the VPAID creative cannot be served. Only PARENT_VIDEO assets can be added or removed for an INSTREAM_VIDEO or VPAID_LINEAR_VIDEO creative. PARENT_AUDIO refers to audios uploaded by the user in Campaign Manager and is applicable to INSTREAM_AUDIO creatives. TRANSCODED_AUDIO refers to audios transcoded by Campaign Manager from PARENT_AUDIO assets and is applicable to INSTREAM_AUDIO creatives. ",
          enum = {
            "PRIMARY",
            "BACKUP_IMAGE",
            "ADDITIONAL_IMAGE",
            "ADDITIONAL_FLASH",
            "PARENT_VIDEO",
            "TRANSCODED_VIDEO",
            "OTHER",
            "ALTERNATE_VIDEO",
            "PARENT_AUDIO",
            "TRANSCODED_AUDIO",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        size = {
          ["$ref"] = "Size",
          description = "Size associated with this creative asset. This is a required field when applicable; however for IMAGE and FLASH_INPAGE, creatives if left blank, this field will be automatically set using the actual size of the associated image asset. Applicable to the following creative types: DISPLAY_IMAGE_GALLERY, FLASH_INPAGE, HTML5_BANNER, IMAGE, and all RICH_MEDIA. Applicable to DISPLAY when the primary asset type is not HTML_IMAGE.",
        },
        sslCompliant = {
          description = "Whether the asset is SSL-compliant. This is a read-only field. Applicable to all but the following creative types: all REDIRECT and TRACKING_TEXT.",
          type = "boolean",
        },
        startTimeType = {
          description = "Initial wait time type before making the asset visible. Applicable to the following creative types: all RICH_MEDIA.",
          enum = {
            "ASSET_START_TIME_TYPE_NONE",
            "ASSET_START_TIME_TYPE_CUSTOM",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        streamingServingUrl = {
          description = "Streaming URL for video asset. This is a read-only field. Applicable to the following creative types: INSTREAM_VIDEO and all VPAID.",
          type = "string",
        },
        transparency = {
          description = "Whether the asset is transparent. Applicable to the following creative types: all RICH_MEDIA. Additionally, only applicable to HTML5 assets.",
          type = "boolean",
        },
        verticallyLocked = {
          description = "Whether the asset is vertically locked. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA.",
          type = "boolean",
        },
        windowMode = {
          description = "Window mode options for flash assets. Applicable to the following creative types: FLASH_INPAGE, RICH_MEDIA_DISPLAY_EXPANDING, RICH_MEDIA_IM_EXPAND, RICH_MEDIA_DISPLAY_BANNER, and RICH_MEDIA_INPAGE_FLOATING.",
          enum = {
            "OPAQUE",
            "WINDOW",
            "TRANSPARENT",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        zIndex = {
          description = "zIndex value of an asset. Applicable to the following creative types: all RICH_MEDIA.Additionally, only applicable to assets whose displayType is NOT one of the following types: ASSET_DISPLAY_TYPE_INPAGE or ASSET_DISPLAY_TYPE_OVERLAY. Acceptable values are -999999999 to 999999999, inclusive.",
          format = "int32",
          type = "integer",
        },
        zipFilename = {
          description = "File name of zip file. This is a read-only field. Applicable to the following creative types: HTML5_BANNER.",
          type = "string",
        },
        zipFilesize = {
          description = "Size of zip file. This is a read-only field. Applicable to the following creative types: HTML5_BANNER.",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeAssetId = {
      description = "Creative Asset ID.",
      id = "CreativeAssetId",
      properties = {
        name = {
          description = "Name of the creative asset. This is a required field while inserting an asset. After insertion, this assetIdentifier is used to identify the uploaded asset. Characters in the name must be alphanumeric or one of the following: \".-_ \". Spaces are allowed.",
          type = "string",
        },
        type = {
          description = "Type of asset to upload. This is a required field. FLASH and IMAGE are no longer supported for new uploads. All image assets should use HTML_IMAGE.",
          enum = {
            "IMAGE",
            "FLASH",
            "VIDEO",
            "HTML",
            "HTML_IMAGE",
            "AUDIO",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreativeAssetMetadata = {
      description = "CreativeAssets contains properties of a creative asset file which will be uploaded or has already been uploaded. Refer to the creative sample code for how to upload assets and insert a creative.",
      id = "CreativeAssetMetadata",
      properties = {
        assetIdentifier = {
          ["$ref"] = "CreativeAssetId",
          description = "ID of the creative asset. This is a required field.",
        },
        clickTags = {
          description = "List of detected click tags for assets. This is a read-only, auto-generated field. This field is empty for a rich media asset.",
          items = {
            ["$ref"] = "ClickTag",
          },
          type = "array",
        },
        counterCustomEvents = {
          description = "List of counter events configured for the asset. This is a read-only, auto-generated field and only applicable to a rich media asset.",
          items = {
            ["$ref"] = "CreativeCustomEvent",
          },
          type = "array",
        },
        detectedFeatures = {
          description = "List of feature dependencies for the creative asset that are detected by Campaign Manager. Feature dependencies are features that a browser must be able to support in order to render your HTML5 creative correctly. This is a read-only, auto-generated field.",
          items = {
            enum = {
              "CSS_FONT_FACE",
              "CSS_BACKGROUND_SIZE",
              "CSS_BORDER_IMAGE",
              "CSS_BORDER_RADIUS",
              "CSS_BOX_SHADOW",
              "CSS_FLEX_BOX",
              "CSS_HSLA",
              "CSS_MULTIPLE_BGS",
              "CSS_OPACITY",
              "CSS_RGBA",
              "CSS_TEXT_SHADOW",
              "CSS_ANIMATIONS",
              "CSS_COLUMNS",
              "CSS_GENERATED_CONTENT",
              "CSS_GRADIENTS",
              "CSS_REFLECTIONS",
              "CSS_TRANSFORMS",
              "CSS_TRANSFORMS3D",
              "CSS_TRANSITIONS",
              "APPLICATION_CACHE",
              "CANVAS",
              "CANVAS_TEXT",
              "DRAG_AND_DROP",
              "HASH_CHANGE",
              "HISTORY",
              "AUDIO",
              "VIDEO",
              "INDEXED_DB",
              "INPUT_ATTR_AUTOCOMPLETE",
              "INPUT_ATTR_AUTOFOCUS",
              "INPUT_ATTR_LIST",
              "INPUT_ATTR_PLACEHOLDER",
              "INPUT_ATTR_MAX",
              "INPUT_ATTR_MIN",
              "INPUT_ATTR_MULTIPLE",
              "INPUT_ATTR_PATTERN",
              "INPUT_ATTR_REQUIRED",
              "INPUT_ATTR_STEP",
              "INPUT_TYPE_SEARCH",
              "INPUT_TYPE_TEL",
              "INPUT_TYPE_URL",
              "INPUT_TYPE_EMAIL",
              "INPUT_TYPE_DATETIME",
              "INPUT_TYPE_DATE",
              "INPUT_TYPE_MONTH",
              "INPUT_TYPE_WEEK",
              "INPUT_TYPE_TIME",
              "INPUT_TYPE_DATETIME_LOCAL",
              "INPUT_TYPE_NUMBER",
              "INPUT_TYPE_RANGE",
              "INPUT_TYPE_COLOR",
              "LOCAL_STORAGE",
              "POST_MESSAGE",
              "SESSION_STORAGE",
              "WEB_SOCKETS",
              "WEB_SQL_DATABASE",
              "WEB_WORKERS",
              "GEO_LOCATION",
              "INLINE_SVG",
              "SMIL",
              "SVG_HREF",
              "SVG_CLIP_PATHS",
              "TOUCH",
              "WEBGL",
              "SVG_FILTERS",
              "SVG_FE_IMAGE",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        exitCustomEvents = {
          description = "List of exit events configured for the asset. This is a read-only, auto-generated field and only applicable to a rich media asset.",
          items = {
            ["$ref"] = "CreativeCustomEvent",
          },
          type = "array",
        },
        id = {
          description = "Numeric ID of the asset. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the numeric ID of the asset. This is a read-only, auto-generated field.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeAssetMetadata\".",
          type = "string",
        },
        richMedia = {
          description = "True if the uploaded asset is a rich media asset. This is a read-only, auto-generated field.",
          type = "boolean",
        },
        timerCustomEvents = {
          description = "List of timer events configured for the asset. This is a read-only, auto-generated field and only applicable to a rich media asset.",
          items = {
            ["$ref"] = "CreativeCustomEvent",
          },
          type = "array",
        },
        warnedValidationRules = {
          description = "Rules validated during code generation that generated a warning. This is a read-only, auto-generated field. Possible values are: - \"ADMOB_REFERENCED\" - \"ASSET_FORMAT_UNSUPPORTED_DCM\" - \"ASSET_INVALID\" - \"CLICK_TAG_HARD_CODED\" - \"CLICK_TAG_INVALID\" - \"CLICK_TAG_IN_GWD\" - \"CLICK_TAG_MISSING\" - \"CLICK_TAG_MORE_THAN_ONE\" - \"CLICK_TAG_NON_TOP_LEVEL\" - \"COMPONENT_UNSUPPORTED_DCM\" - \"ENABLER_UNSUPPORTED_METHOD_DCM\" - \"EXTERNAL_FILE_REFERENCED\" - \"FILE_DETAIL_EMPTY\" - \"FILE_TYPE_INVALID\" - \"GWD_PROPERTIES_INVALID\" - \"HTML5_FEATURE_UNSUPPORTED\" - \"LINKED_FILE_NOT_FOUND\" - \"MAX_FLASH_VERSION_11\" - \"MRAID_REFERENCED\" - \"NOT_SSL_COMPLIANT\" - \"ORPHANED_ASSET\" - \"PRIMARY_HTML_MISSING\" - \"SVG_INVALID\" - \"ZIP_INVALID\" ",
          items = {
            enum = {
              "CLICK_TAG_NON_TOP_LEVEL",
              "CLICK_TAG_MISSING",
              "CLICK_TAG_MORE_THAN_ONE",
              "CLICK_TAG_INVALID",
              "ORPHANED_ASSET",
              "PRIMARY_HTML_MISSING",
              "EXTERNAL_FILE_REFERENCED",
              "MRAID_REFERENCED",
              "ADMOB_REFERENCED",
              "FILE_TYPE_INVALID",
              "ZIP_INVALID",
              "LINKED_FILE_NOT_FOUND",
              "MAX_FLASH_VERSION_11",
              "NOT_SSL_COMPLIANT",
              "FILE_DETAIL_EMPTY",
              "ASSET_INVALID",
              "GWD_PROPERTIES_INVALID",
              "ENABLER_UNSUPPORTED_METHOD_DCM",
              "ASSET_FORMAT_UNSUPPORTED_DCM",
              "COMPONENT_UNSUPPORTED_DCM",
              "HTML5_FEATURE_UNSUPPORTED",
              "CLICK_TAG_IN_GWD",
              "CLICK_TAG_HARD_CODED",
              "SVG_INVALID",
              "CLICK_TAG_IN_RICH_MEDIA",
              "MISSING_ENABLER_REFERENCE",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreativeAssetSelection = {
      description = "Encapsulates the list of rules for asset selection and a default asset in case none of the rules match. Applicable to INSTREAM_VIDEO creatives.",
      id = "CreativeAssetSelection",
      properties = {
        defaultAssetId = {
          description = "A creativeAssets[].id. This should refer to one of the parent assets in this creative, and will be served if none of the rules match. This is a required field.",
          format = "int64",
          type = "string",
        },
        rules = {
          description = "Rules determine which asset will be served to a viewer. Rules will be evaluated in the order in which they are stored in this list. This list must contain at least one rule. Applicable to INSTREAM_VIDEO creatives.",
          items = {
            ["$ref"] = "Rule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreativeAssignment = {
      description = "Creative Assignment.",
      id = "CreativeAssignment",
      properties = {
        active = {
          description = "Whether this creative assignment is active. When true, the creative will be included in the ad's rotation.",
          type = "boolean",
        },
        applyEventTags = {
          description = "Whether applicable event tags should fire when this creative assignment is rendered. If this value is unset when the ad is inserted or updated, it will default to true for all creative types EXCEPT for INTERNAL_REDIRECT, INTERSTITIAL_INTERNAL_REDIRECT, and INSTREAM_VIDEO.",
          type = "boolean",
        },
        clickThroughUrl = {
          ["$ref"] = "ClickThroughUrl",
          description = "Click-through URL of the creative assignment.",
        },
        companionCreativeOverrides = {
          description = "Companion creative overrides for this creative assignment. Applicable to video ads.",
          items = {
            ["$ref"] = "CompanionClickThroughOverride",
          },
          type = "array",
        },
        creativeGroupAssignments = {
          description = "Creative group assignments for this creative assignment. Only one assignment per creative group number is allowed for a maximum of two assignments.",
          items = {
            ["$ref"] = "CreativeGroupAssignment",
          },
          type = "array",
        },
        creativeId = {
          description = "ID of the creative to be assigned. This is a required field.",
          format = "int64",
          type = "string",
        },
        creativeIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the creative. This is a read-only, auto-generated field.",
        },
        endTime = {
          format = "date-time",
          type = "string",
        },
        richMediaExitOverrides = {
          description = "Rich media exit overrides for this creative assignment. Applicable when the creative type is any of the following: - DISPLAY - RICH_MEDIA_INPAGE - RICH_MEDIA_INPAGE_FLOATING - RICH_MEDIA_IM_EXPAND - RICH_MEDIA_EXPANDING - RICH_MEDIA_INTERSTITIAL_FLOAT - RICH_MEDIA_MOBILE_IN_APP - RICH_MEDIA_MULTI_FLOATING - RICH_MEDIA_PEEL_DOWN - VPAID_LINEAR - VPAID_NON_LINEAR ",
          items = {
            ["$ref"] = "RichMediaExitOverride",
          },
          type = "array",
        },
        sequence = {
          description = "Sequence number of the creative assignment, applicable when the rotation type is CREATIVE_ROTATION_TYPE_SEQUENTIAL. Acceptable values are 1 to 65535, inclusive.",
          format = "int32",
          type = "integer",
        },
        sslCompliant = {
          description = "Whether the creative to be assigned is SSL-compliant. This is a read-only field that is auto-generated when the ad is inserted or updated.",
          type = "boolean",
        },
        startTime = {
          format = "date-time",
          type = "string",
        },
        weight = {
          description = "Weight of the creative assignment, applicable when the rotation type is CREATIVE_ROTATION_TYPE_RANDOM. Value must be greater than or equal to 1.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    CreativeClickThroughUrl = {
      description = "Click-through URL",
      id = "CreativeClickThroughUrl",
      properties = {
        computedClickThroughUrl = {
          description = "Read-only convenience field representing the actual URL that will be used for this click-through. The URL is computed as follows: - If landingPageId is specified then that landing page's URL is assigned to this field. - Otherwise, the customClickThroughUrl is assigned to this field. ",
          type = "string",
        },
        customClickThroughUrl = {
          description = "Custom click-through URL. Applicable if the landingPageId field is left unset.",
          type = "string",
        },
        landingPageId = {
          description = "ID of the landing page for the click-through URL.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeCustomEvent = {
      description = "Creative Custom Event.",
      id = "CreativeCustomEvent",
      properties = {
        advertiserCustomEventId = {
          description = "Unique ID of this event used by Reporting and Data Transfer. This is a read-only field.",
          format = "int64",
          type = "string",
        },
        advertiserCustomEventName = {
          description = "User-entered name for the event.",
          type = "string",
        },
        advertiserCustomEventType = {
          description = "Type of the event. This is a read-only field.",
          enum = {
            "ADVERTISER_EVENT_TIMER",
            "ADVERTISER_EVENT_EXIT",
            "ADVERTISER_EVENT_COUNTER",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        artworkLabel = {
          description = "Artwork label column, used to link events in Campaign Manager back to events in Studio. This is a required field and should not be modified after insertion.",
          type = "string",
        },
        artworkType = {
          description = "Artwork type used by the creative.This is a read-only field.",
          enum = {
            "ARTWORK_TYPE_FLASH",
            "ARTWORK_TYPE_HTML5",
            "ARTWORK_TYPE_MIXED",
            "ARTWORK_TYPE_IMAGE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        exitClickThroughUrl = {
          ["$ref"] = "CreativeClickThroughUrl",
          description = "Exit click-through URL for the event. This field is used only for exit events.",
        },
        id = {
          description = "ID of this event. This is a required field and should not be modified after insertion.",
          format = "int64",
          type = "string",
        },
        popupWindowProperties = {
          ["$ref"] = "PopupWindowProperties",
          description = "Properties for rich media popup windows. This field is used only for exit events.",
        },
        targetType = {
          description = "Target type used by the event.",
          enum = {
            "TARGET_BLANK",
            "TARGET_TOP",
            "TARGET_SELF",
            "TARGET_PARENT",
            "TARGET_POPUP",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        videoReportingId = {
          description = "Video reporting ID, used to differentiate multiple videos in a single creative. This is a read-only field.",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeField = {
      description = "Contains properties of a creative field.",
      id = "CreativeField",
      properties = {
        accountId = {
          description = "Account ID of this creative field. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this creative field. This is a required field on insertion.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        id = {
          description = "ID of this creative field. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeField\".",
          type = "string",
        },
        name = {
          description = "Name of this creative field. This is a required field and must be less than 256 characters long and unique among creative fields of the same advertiser.",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this creative field. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeFieldAssignment = {
      description = "Creative Field Assignment.",
      id = "CreativeFieldAssignment",
      properties = {
        creativeFieldId = {
          description = "ID of the creative field.",
          format = "int64",
          type = "string",
        },
        creativeFieldValueId = {
          description = "ID of the creative field value.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeFieldValue = {
      description = "Contains properties of a creative field value.",
      id = "CreativeFieldValue",
      properties = {
        id = {
          description = "ID of this creative field value. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeFieldValue\".",
          type = "string",
        },
        value = {
          description = "Value of this creative field value. It needs to be less than 256 characters in length and unique per creative field.",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeFieldValuesListResponse = {
      description = "Creative Field Value List Response",
      id = "CreativeFieldValuesListResponse",
      properties = {
        creativeFieldValues = {
          description = "Creative field value collection.",
          items = {
            ["$ref"] = "CreativeFieldValue",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeFieldValuesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeFieldsListResponse = {
      description = "Creative Field List Response",
      id = "CreativeFieldsListResponse",
      properties = {
        creativeFields = {
          description = "Creative field collection.",
          items = {
            ["$ref"] = "CreativeField",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeFieldsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeGroup = {
      description = "Contains properties of a creative group.",
      id = "CreativeGroup",
      properties = {
        accountId = {
          description = "Account ID of this creative group. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this creative group. This is a required field on insertion.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        groupNumber = {
          description = "Subgroup of the creative group. Assign your creative groups to a subgroup in order to filter or manage them more easily. This field is required on insertion and is read-only after insertion. Acceptable values are 1 to 2, inclusive.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "ID of this creative group. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeGroup\".",
          type = "string",
        },
        name = {
          description = "Name of this creative group. This is a required field and must be less than 256 characters long and unique among creative groups of the same advertiser.",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this creative group. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeGroupAssignment = {
      description = "Creative Group Assignment.",
      id = "CreativeGroupAssignment",
      properties = {
        creativeGroupId = {
          description = "ID of the creative group to be assigned.",
          format = "int64",
          type = "string",
        },
        creativeGroupNumber = {
          description = "Creative group number of the creative group assignment.",
          enum = {
            "CREATIVE_GROUP_ONE",
            "CREATIVE_GROUP_TWO",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreativeGroupsListResponse = {
      description = "Creative Group List Response",
      id = "CreativeGroupsListResponse",
      properties = {
        creativeGroups = {
          description = "Creative group collection.",
          items = {
            ["$ref"] = "CreativeGroup",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativeGroupsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    CreativeOptimizationConfiguration = {
      description = "Creative optimization settings.",
      id = "CreativeOptimizationConfiguration",
      properties = {
        id = {
          description = "ID of this creative optimization config. This field is auto-generated when the campaign is inserted or updated. It can be null for existing campaigns.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of this creative optimization config. This is a required field and must be less than 129 characters long.",
          type = "string",
        },
        optimizationActivitys = {
          description = "List of optimization activities associated with this configuration.",
          items = {
            ["$ref"] = "OptimizationActivity",
          },
          type = "array",
        },
        optimizationModel = {
          description = "Optimization model for this configuration.",
          enum = {
            "CLICK",
            "POST_CLICK",
            "POST_IMPRESSION",
            "POST_CLICK_AND_IMPRESSION",
            "VIDEO_COMPLETION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreativeRotation = {
      description = "Creative Rotation.",
      id = "CreativeRotation",
      properties = {
        creativeAssignments = {
          description = "Creative assignments in this creative rotation.",
          items = {
            ["$ref"] = "CreativeAssignment",
          },
          type = "array",
        },
        creativeOptimizationConfigurationId = {
          description = "Creative optimization configuration that is used by this ad. It should refer to one of the existing optimization configurations in the ad's campaign. If it is unset or set to 0, then the campaign's default optimization configuration will be used for this ad.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Type of creative rotation. Can be used to specify whether to use sequential or random rotation.",
          enum = {
            "CREATIVE_ROTATION_TYPE_SEQUENTIAL",
            "CREATIVE_ROTATION_TYPE_RANDOM",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        weightCalculationStrategy = {
          description = "Strategy for calculating weights. Used with CREATIVE_ROTATION_TYPE_RANDOM.",
          enum = {
            "WEIGHT_STRATEGY_EQUAL",
            "WEIGHT_STRATEGY_CUSTOM",
            "WEIGHT_STRATEGY_HIGHEST_CTR",
            "WEIGHT_STRATEGY_OPTIMIZED",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreativesListResponse = {
      description = "Creative List Response",
      id = "CreativesListResponse",
      properties = {
        creatives = {
          description = "Creative collection.",
          items = {
            ["$ref"] = "Creative",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#creativesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    CrossDimensionReachReportCompatibleFields = {
      description = "Represents fields that are compatible to be selected for a report of type \"CROSS_DIMENSION_REACH\".",
      id = "CrossDimensionReachReportCompatibleFields",
      properties = {
        breakdown = {
          description = "Dimensions which are compatible to be selected in the \"breakdown\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        dimensionFilters = {
          description = "Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#crossDimensionReachReportCompatibleFields.",
          type = "string",
        },
        metrics = {
          description = "Metrics which are compatible to be selected in the \"metricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        overlapMetrics = {
          description = "Metrics which are compatible to be selected in the \"overlapMetricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomFloodlightVariable = {
      description = "A custom floodlight variable. This field may only be used when calling batchinsert; it is not supported by batchupdate.",
      id = "CustomFloodlightVariable",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#customFloodlightVariable\".",
          type = "string",
        },
        type = {
          description = "The type of custom floodlight variable to supply a value for. These map to the \"u[1-20]=\" in the tags.",
          enum = {
            "U1",
            "U2",
            "U3",
            "U4",
            "U5",
            "U6",
            "U7",
            "U8",
            "U9",
            "U10",
            "U11",
            "U12",
            "U13",
            "U14",
            "U15",
            "U16",
            "U17",
            "U18",
            "U19",
            "U20",
            "U21",
            "U22",
            "U23",
            "U24",
            "U25",
            "U26",
            "U27",
            "U28",
            "U29",
            "U30",
            "U31",
            "U32",
            "U33",
            "U34",
            "U35",
            "U36",
            "U37",
            "U38",
            "U39",
            "U40",
            "U41",
            "U42",
            "U43",
            "U44",
            "U45",
            "U46",
            "U47",
            "U48",
            "U49",
            "U50",
            "U51",
            "U52",
            "U53",
            "U54",
            "U55",
            "U56",
            "U57",
            "U58",
            "U59",
            "U60",
            "U61",
            "U62",
            "U63",
            "U64",
            "U65",
            "U66",
            "U67",
            "U68",
            "U69",
            "U70",
            "U71",
            "U72",
            "U73",
            "U74",
            "U75",
            "U76",
            "U77",
            "U78",
            "U79",
            "U80",
            "U81",
            "U82",
            "U83",
            "U84",
            "U85",
            "U86",
            "U87",
            "U88",
            "U89",
            "U90",
            "U91",
            "U92",
            "U93",
            "U94",
            "U95",
            "U96",
            "U97",
            "U98",
            "U99",
            "U100",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          description = "The value of the custom floodlight variable. The length of string must not exceed 100 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomRichMediaEvents = {
      description = "Represents a Custom Rich Media Events group.",
      id = "CustomRichMediaEvents",
      properties = {
        filteredEventIds = {
          description = "List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeIdAndName.",
          items = {
            ["$ref"] = "DimensionValue",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#customRichMediaEvents.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomViewabilityMetric = {
      description = "Custom Viewability Metric",
      id = "CustomViewabilityMetric",
      properties = {
        configuration = {
          ["$ref"] = "CustomViewabilityMetricConfiguration",
          description = "Configuration of the custom viewability metric.",
        },
        id = {
          description = "ID of the custom viewability metric.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of the custom viewability metric.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomViewabilityMetricConfiguration = {
      description = "The attributes, like playtime and percent onscreen, that define the Custom Viewability Metric.",
      id = "CustomViewabilityMetricConfiguration",
      properties = {
        audible = {
          description = "Whether the video must be audible to count an impression.",
          type = "boolean",
        },
        timeMillis = {
          description = "The time in milliseconds the video must play for the Custom Viewability Metric to count an impression. If both this and timePercent are specified, the earlier of the two will be used.",
          format = "int32",
          type = "integer",
        },
        timePercent = {
          description = "The percentage of video that must play for the Custom Viewability Metric to count an impression. If both this and timeMillis are specified, the earlier of the two will be used.",
          format = "int32",
          type = "integer",
        },
        viewabilityPercent = {
          description = "The percentage of video that must be on screen for the Custom Viewability Metric to count an impression.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DateRange = {
      description = "Represents a date range.",
      id = "DateRange",
      properties = {
        endDate = {
          format = "date",
          type = "string",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#dateRange.",
          type = "string",
        },
        relativeDateRange = {
          description = "The date range relative to the date of when the report is run.",
          enum = {
            "TODAY",
            "YESTERDAY",
            "WEEK_TO_DATE",
            "MONTH_TO_DATE",
            "QUARTER_TO_DATE",
            "YEAR_TO_DATE",
            "PREVIOUS_WEEK",
            "PREVIOUS_MONTH",
            "PREVIOUS_QUARTER",
            "PREVIOUS_YEAR",
            "LAST_7_DAYS",
            "LAST_30_DAYS",
            "LAST_90_DAYS",
            "LAST_365_DAYS",
            "LAST_24_MONTHS",
            "LAST_14_DAYS",
            "LAST_60_DAYS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        startDate = {
          format = "date",
          type = "string",
        },
      },
      type = "object",
    },
    DayPartTargeting = {
      description = "Day Part Targeting.",
      id = "DayPartTargeting",
      properties = {
        daysOfWeek = {
          description = "Days of the week when the ad will serve. Acceptable values are: - \"SUNDAY\" - \"MONDAY\" - \"TUESDAY\" - \"WEDNESDAY\" - \"THURSDAY\" - \"FRIDAY\" - \"SATURDAY\" ",
          items = {
            enum = {
              "MONDAY",
              "TUESDAY",
              "WEDNESDAY",
              "THURSDAY",
              "FRIDAY",
              "SATURDAY",
              "SUNDAY",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        hoursOfDay = {
          description = "Hours of the day when the ad will serve, where 0 is midnight to 1 AM and 23 is 11 PM to midnight. Can be specified with days of week, in which case the ad would serve during these hours on the specified days. For example if Monday, Wednesday, Friday are the days of week specified and 9-10am, 3-5pm (hours 9, 15, and 16) is specified, the ad would serve Monday, Wednesdays, and Fridays at 9-10am and 3-5pm. Acceptable values are 0 to 23, inclusive.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        userLocalTime = {
          description = "Whether or not to use the user's local time. If false, the America/New York time zone applies.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeepLink = {
      description = "Contains information about a landing page deep link.",
      id = "DeepLink",
      properties = {
        appUrl = {
          description = "The URL of the mobile app being linked to.",
          type = "string",
        },
        fallbackUrl = {
          description = "The fallback URL. This URL will be served to users who do not have the mobile app installed.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#deepLink\".",
          type = "string",
        },
        mobileApp = {
          ["$ref"] = "MobileApp",
          description = "The mobile app targeted by this deep link.",
        },
        remarketingListIds = {
          description = "Ads served to users on these remarketing lists will use this deep link. Applicable when mobileApp.directory is APPLE_APP_STORE.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DefaultClickThroughEventTagProperties = {
      description = "Properties of inheriting and overriding the default click-through event tag. A campaign may override the event tag defined at the advertiser level, and an ad may also override the campaign's setting further.",
      id = "DefaultClickThroughEventTagProperties",
      properties = {
        defaultClickThroughEventTagId = {
          description = "ID of the click-through event tag to apply to all ads in this entity's scope.",
          format = "int64",
          type = "string",
        },
        overrideInheritedEventTag = {
          description = "Whether this entity should override the inherited default click-through event tag with its own defined value.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeliverySchedule = {
      description = "Delivery Schedule.",
      id = "DeliverySchedule",
      properties = {
        frequencyCap = {
          ["$ref"] = "FrequencyCap",
          description = "Limit on the number of times an individual user can be served the ad within a specified period of time.",
        },
        hardCutoff = {
          description = "Whether or not hard cutoff is enabled. If true, the ad will not serve after the end date and time. Otherwise the ad will continue to be served until it has reached its delivery goals.",
          type = "boolean",
        },
        impressionRatio = {
          description = "Impression ratio for this ad. This ratio determines how often each ad is served relative to the others. For example, if ad A has an impression ratio of 1 and ad B has an impression ratio of 3, then Campaign Manager will serve ad B three times as often as ad A. Acceptable values are 1 to 10, inclusive.",
          format = "int64",
          type = "string",
        },
        priority = {
          description = "Serving priority of an ad, with respect to other ads. The lower the priority number, the greater the priority with which it is served.",
          enum = {
            "AD_PRIORITY_01",
            "AD_PRIORITY_02",
            "AD_PRIORITY_03",
            "AD_PRIORITY_04",
            "AD_PRIORITY_05",
            "AD_PRIORITY_06",
            "AD_PRIORITY_07",
            "AD_PRIORITY_08",
            "AD_PRIORITY_09",
            "AD_PRIORITY_10",
            "AD_PRIORITY_11",
            "AD_PRIORITY_12",
            "AD_PRIORITY_13",
            "AD_PRIORITY_14",
            "AD_PRIORITY_15",
            "AD_PRIORITY_16",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DfpSettings = {
      description = "Google Ad Manager Settings",
      id = "DfpSettings",
      properties = {
        dfpNetworkCode = {
          description = "Ad Manager network code for this directory site.",
          type = "string",
        },
        dfpNetworkName = {
          description = "Ad Manager network name for this directory site.",
          type = "string",
        },
        programmaticPlacementAccepted = {
          description = "Whether this directory site accepts programmatic placements.",
          type = "boolean",
        },
        pubPaidPlacementAccepted = {
          description = "Whether this directory site accepts publisher-paid tags.",
          type = "boolean",
        },
        publisherPortalOnly = {
          description = "Whether this directory site is available only via Publisher Portal.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Dimension = {
      description = "Represents a dimension.",
      id = "Dimension",
      properties = {
        kind = {
          description = "The kind of resource this is, in this case dfareporting#dimension.",
          type = "string",
        },
        name = {
          description = "The dimension name, e.g. dfa:advertiser",
          type = "string",
        },
      },
      type = "object",
    },
    DimensionFilter = {
      description = "Represents a dimension filter.",
      id = "DimensionFilter",
      properties = {
        dimensionName = {
          description = "The name of the dimension to filter.",
          type = "string",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#dimensionFilter.",
          type = "string",
        },
        value = {
          description = "The value of the dimension to filter.",
          type = "string",
        },
      },
      type = "object",
    },
    DimensionValue = {
      description = "Represents a DimensionValue resource.",
      id = "DimensionValue",
      properties = {
        dimensionName = {
          description = "The name of the dimension.",
          type = "string",
        },
        etag = {
          description = "The eTag of this response for caching purposes.",
          type = "string",
        },
        id = {
          description = "The ID associated with the value if available.",
          type = "string",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#dimensionValue.",
          type = "string",
        },
        matchType = {
          description = "Determines how the 'value' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions ('dfa:paidSearch*') allow a matchType other than EXACT.",
          enum = {
            "EXACT",
            "BEGINS_WITH",
            "CONTAINS",
            "WILDCARD_EXPRESSION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          description = "The value of the dimension.",
          type = "string",
        },
      },
      type = "object",
    },
    DimensionValueList = {
      description = "Represents the list of DimensionValue resources.",
      id = "DimensionValueList",
      properties = {
        etag = {
          description = "The eTag of this response for caching purposes.",
          type = "string",
        },
        items = {
          description = "The dimension values returned in this response.",
          items = {
            ["$ref"] = "DimensionValue",
          },
          type = "array",
        },
        kind = {
          description = "The kind of list this is, in this case dfareporting#dimensionValueList.",
          type = "string",
        },
        nextPageToken = {
          description = "Continuation token used to page through dimension values. To retrieve the next page of results, set the next request's \"pageToken\" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.",
          type = "string",
        },
      },
      type = "object",
    },
    DimensionValueRequest = {
      description = "Represents a DimensionValuesRequest.",
      id = "DimensionValueRequest",
      properties = {
        dimensionName = {
          annotations = {
            required = {
              "dfareporting.dimensionValues.query",
            },
          },
          description = "The name of the dimension for which values should be requested.",
          type = "string",
        },
        endDate = {
          format = "date",
          type = "string",
        },
        filters = {
          description = "The list of filters by which to filter values. The filters are ANDed.",
          items = {
            ["$ref"] = "DimensionFilter",
          },
          type = "array",
        },
        kind = {
          description = "The kind of request this is, in this case dfareporting#dimensionValueRequest .",
          type = "string",
        },
        startDate = {
          format = "date",
          type = "string",
        },
      },
      type = "object",
    },
    DirectorySite = {
      description = "DirectorySites contains properties of a website from the Site Directory. Sites need to be added to an account via the Sites resource before they can be assigned to a placement.",
      id = "DirectorySite",
      properties = {
        id = {
          description = "ID of this directory site. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this directory site. This is a read-only, auto-generated field.",
        },
        inpageTagFormats = {
          description = "Tag types for regular placements. Acceptable values are: - \"STANDARD\" - \"IFRAME_JAVASCRIPT_INPAGE\" - \"INTERNAL_REDIRECT_INPAGE\" - \"JAVASCRIPT_INPAGE\" ",
          items = {
            enum = {
              "STANDARD",
              "IFRAME_JAVASCRIPT_INPAGE",
              "INTERNAL_REDIRECT_INPAGE",
              "JAVASCRIPT_INPAGE",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        interstitialTagFormats = {
          description = "Tag types for interstitial placements. Acceptable values are: - \"IFRAME_JAVASCRIPT_INTERSTITIAL\" - \"INTERNAL_REDIRECT_INTERSTITIAL\" - \"JAVASCRIPT_INTERSTITIAL\" ",
          items = {
            enum = {
              "IFRAME_JAVASCRIPT_INTERSTITIAL",
              "INTERNAL_REDIRECT_INTERSTITIAL",
              "JAVASCRIPT_INTERSTITIAL",
            },
            enumDescriptions = {
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#directorySite\".",
          type = "string",
        },
        name = {
          description = "Name of this directory site.",
          type = "string",
        },
        settings = {
          ["$ref"] = "DirectorySiteSettings",
          description = "Directory site settings.",
        },
        url = {
          description = "URL of this directory site.",
          type = "string",
        },
      },
      type = "object",
    },
    DirectorySiteSettings = {
      description = "Directory Site Settings",
      id = "DirectorySiteSettings",
      properties = {
        activeViewOptOut = {
          description = "Whether this directory site has disabled active view creatives.",
          type = "boolean",
        },
        dfpSettings = {
          ["$ref"] = "DfpSettings",
          description = "Directory site Ad Manager settings.",
        },
        instreamVideoPlacementAccepted = {
          description = "Whether this site accepts in-stream video ads.",
          type = "boolean",
        },
        interstitialPlacementAccepted = {
          description = "Whether this site accepts interstitial ads.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DirectorySitesListResponse = {
      description = "Directory Site List Response",
      id = "DirectorySitesListResponse",
      properties = {
        directorySites = {
          description = "Directory site collection.",
          items = {
            ["$ref"] = "DirectorySite",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#directorySitesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    DisjunctiveMatchStatement = {
      description = "Represents a Disjunctive Match Statement resource, which is a conjunction (and) of disjunctive (or) boolean statements.",
      id = "DisjunctiveMatchStatement",
      properties = {
        eventFilters = {
          description = "The event filters contained within this disjunctive match statement.",
          items = {
            ["$ref"] = "EventFilter",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#disjunctiveMatchStatement.",
          type = "string",
        },
      },
      type = "object",
    },
    DynamicTargetingKey = {
      description = "Contains properties of a dynamic targeting key. Dynamic targeting keys are unique, user-friendly labels, created at the advertiser level in DCM, that can be assigned to ads, creatives, and placements and used for targeting with Studio dynamic creatives. Use these labels instead of numeric Campaign Manager IDs (such as placement IDs) to save time and avoid errors in your dynamic feeds.",
      id = "DynamicTargetingKey",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#dynamicTargetingKey\".",
          type = "string",
        },
        name = {
          description = "Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and cannot contain commas. All characters are converted to lowercase.",
          type = "string",
        },
        objectId = {
          description = "ID of the object of this dynamic targeting key. This is a required field.",
          format = "int64",
          type = "string",
        },
        objectType = {
          description = "Type of the object of this dynamic targeting key. This is a required field.",
          enum = {
            "OBJECT_ADVERTISER",
            "OBJECT_AD",
            "OBJECT_CREATIVE",
            "OBJECT_PLACEMENT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DynamicTargetingKeysListResponse = {
      description = "Dynamic Targeting Key List Response",
      id = "DynamicTargetingKeysListResponse",
      properties = {
        dynamicTargetingKeys = {
          description = "Dynamic targeting key collection.",
          items = {
            ["$ref"] = "DynamicTargetingKey",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#dynamicTargetingKeysListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    EncryptionInfo = {
      description = "A description of how user IDs are encrypted.",
      id = "EncryptionInfo",
      properties = {
        encryptionEntityId = {
          description = "The encryption entity ID. This should match the encryption configuration for ad serving or Data Transfer.",
          format = "int64",
          type = "string",
        },
        encryptionEntityType = {
          description = "The encryption entity type. This should match the encryption configuration for ad serving or Data Transfer.",
          enum = {
            "ENCRYPTION_ENTITY_TYPE_UNKNOWN",
            "DCM_ACCOUNT",
            "DCM_ADVERTISER",
            "DBM_PARTNER",
            "DBM_ADVERTISER",
            "ADWORDS_CUSTOMER",
            "DFP_NETWORK_CODE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        encryptionSource = {
          description = "Describes whether the encrypted cookie was received from ad serving (the %m macro) or from Data Transfer.",
          enum = {
            "ENCRYPTION_SCOPE_UNKNOWN",
            "AD_SERVING",
            "DATA_TRANSFER",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#encryptionInfo\".",
          type = "string",
        },
      },
      type = "object",
    },
    EventFilter = {
      description = "Represents a DfaReporting event filter.",
      id = "EventFilter",
      properties = {
        dimensionFilter = {
          ["$ref"] = "PathReportDimensionValue",
          description = "The dimension filter contained within this EventFilter.",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#eventFilter.",
          type = "string",
        },
      },
      type = "object",
    },
    EventTag = {
      description = "Contains properties of an event tag.",
      id = "EventTag",
      properties = {
        accountId = {
          description = "Account ID of this event tag. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this event tag. This field or the campaignId field is required on insertion.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        campaignId = {
          description = "Campaign ID of this event tag. This field or the advertiserId field is required on insertion.",
          format = "int64",
          type = "string",
        },
        campaignIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the campaign. This is a read-only, auto-generated field.",
        },
        enabledByDefault = {
          description = "Whether this event tag should be automatically enabled for all of the advertiser's campaigns and ads.",
          type = "boolean",
        },
        excludeFromAdxRequests = {
          description = "Whether to remove this event tag from ads that are trafficked through Display & Video 360 to Ad Exchange. This may be useful if the event tag uses a pixel that is unapproved for Ad Exchange bids on one or more networks, such as the Google Display Network.",
          type = "boolean",
        },
        id = {
          description = "ID of this event tag. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#eventTag\".",
          type = "string",
        },
        name = {
          description = "Name of this event tag. This is a required field and must be less than 256 characters long.",
          type = "string",
        },
        siteFilterType = {
          description = "Site filter type for this event tag. If no type is specified then the event tag will be applied to all sites.",
          enum = {
            "ALLOWLIST",
            "BLOCKLIST",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        siteIds = {
          description = "Filter list of site IDs associated with this event tag. The siteFilterType determines whether this is a allowlist or blocklist filter.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        sslCompliant = {
          description = "Whether this tag is SSL-compliant or not. This is a read-only field.",
          type = "boolean",
        },
        status = {
          description = "Status of this event tag. Must be ENABLED for this event tag to fire. This is a required field.",
          enum = {
            "ENABLED",
            "DISABLED",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this event tag. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Event tag type. Can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking. This is a required field.",
          enum = {
            "IMPRESSION_IMAGE_EVENT_TAG",
            "IMPRESSION_JAVASCRIPT_EVENT_TAG",
            "CLICK_THROUGH_EVENT_TAG",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        url = {
          description = "Payload URL for this event tag. The URL on a click-through event tag should have a landing page URL appended to the end of it. This field is required on insertion.",
          type = "string",
        },
        urlEscapeLevels = {
          description = "Number of times the landing page URL should be URL-escaped before being appended to the click-through event tag URL. Only applies to click-through event tags as specified by the event tag type.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    EventTagOverride = {
      description = "Event tag override information.",
      id = "EventTagOverride",
      properties = {
        enabled = {
          description = "Whether this override is enabled.",
          type = "boolean",
        },
        id = {
          description = "ID of this event tag override. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    EventTagsListResponse = {
      description = "Event Tag List Response",
      id = "EventTagsListResponse",
      properties = {
        eventTags = {
          description = "Event tag collection.",
          items = {
            ["$ref"] = "EventTag",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#eventTagsListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    File = {
      description = "Represents a File resource. A file contains the metadata for a report run. It shows the status of the run and holds the URLs to the generated report data if the run is finished and the status is \"REPORT_AVAILABLE\".",
      id = "File",
      properties = {
        dateRange = {
          ["$ref"] = "DateRange",
          description = "The date range for which the file has report data. The date range will always be the absolute date range for which the report is run.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        fileName = {
          description = "The filename of the file.",
          type = "string",
        },
        format = {
          description = "The output format of the report. Only available once the file is available.",
          enum = {
            "CSV",
            "EXCEL",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        id = {
          description = "The unique ID of this report file.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#file\".",
          type = "string",
        },
        lastModifiedTime = {
          description = "The timestamp in milliseconds since epoch when this file was last modified.",
          format = "int64",
          type = "string",
        },
        reportId = {
          description = "The ID of the report this file was generated from.",
          format = "int64",
          type = "string",
        },
        status = {
          description = "The status of the report file.",
          enum = {
            "PROCESSING",
            "REPORT_AVAILABLE",
            "FAILED",
            "CANCELLED",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        urls = {
          description = "The URLs where the completed report file can be downloaded.",
          properties = {
            apiUrl = {
              description = "The URL for downloading the report data through the API.",
              type = "string",
            },
            browserUrl = {
              description = "The URL for downloading the report data through a browser.",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    FileList = {
      description = "List of files for a report.",
      id = "FileList",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        items = {
          description = "The files returned in this response.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#fileList\".",
          type = "string",
        },
        nextPageToken = {
          description = "Continuation token used to page through files. To retrieve the next page of results, set the next request's \"pageToken\" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.",
          type = "string",
        },
      },
      type = "object",
    },
    Flight = {
      description = "Flight",
      id = "Flight",
      properties = {
        endDate = {
          format = "date",
          type = "string",
        },
        rateOrCost = {
          description = "Rate or cost of this flight.",
          format = "int64",
          type = "string",
        },
        startDate = {
          format = "date",
          type = "string",
        },
        units = {
          description = "Units of this flight.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    FloodlightActivitiesGenerateTagResponse = {
      description = "Floodlight Activity GenerateTag Response",
      id = "FloodlightActivitiesGenerateTagResponse",
      properties = {
        floodlightActivityTag = {
          description = "Generated tag for this Floodlight activity. For global site tags, this is the event snippet.",
          type = "string",
        },
        globalSiteTagGlobalSnippet = {
          description = "The global snippet section of a global site tag. The global site tag sets new cookies on your domain, which will store a unique identifier for a user or the ad click that brought the user to your site. Learn more.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivitiesGenerateTagResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    FloodlightActivitiesListResponse = {
      description = "Floodlight Activity List Response",
      id = "FloodlightActivitiesListResponse",
      properties = {
        floodlightActivities = {
          description = "Floodlight activity collection.",
          items = {
            ["$ref"] = "FloodlightActivity",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivitiesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    FloodlightActivity = {
      description = "Contains properties of a Floodlight activity.",
      id = "FloodlightActivity",
      properties = {
        accountId = {
          description = "Account ID of this floodlight activity. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this floodlight activity. If this field is left blank, the value will be copied over either from the activity group's advertiser or the existing activity's advertiser.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        attributionEnabled = {
          description = "Whether the activity is enabled for attribution.",
          type = "boolean",
        },
        cacheBustingType = {
          description = "Code type used for cache busting in the generated tag. Applicable only when floodlightActivityGroupType is COUNTER and countingMethod is STANDARD_COUNTING or UNIQUE_COUNTING.",
          enum = {
            "JAVASCRIPT",
            "ACTIVE_SERVER_PAGE",
            "JSP",
            "PHP",
            "COLD_FUSION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        countingMethod = {
          description = "Counting method for conversions for this floodlight activity. This is a required field.",
          enum = {
            "STANDARD_COUNTING",
            "UNIQUE_COUNTING",
            "SESSION_COUNTING",
            "TRANSACTIONS_COUNTING",
            "ITEMS_SOLD_COUNTING",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        defaultTags = {
          description = "Dynamic floodlight tags.",
          items = {
            ["$ref"] = "FloodlightActivityDynamicTag",
          },
          type = "array",
        },
        expectedUrl = {
          description = "URL where this tag will be deployed. If specified, must be less than 256 characters long.",
          type = "string",
        },
        floodlightActivityGroupId = {
          description = "Floodlight activity group ID of this floodlight activity. This is a required field.",
          format = "int64",
          type = "string",
        },
        floodlightActivityGroupName = {
          description = "Name of the associated floodlight activity group. This is a read-only field.",
          type = "string",
        },
        floodlightActivityGroupTagString = {
          description = "Tag string of the associated floodlight activity group. This is a read-only field.",
          type = "string",
        },
        floodlightActivityGroupType = {
          description = "Type of the associated floodlight activity group. This is a read-only field.",
          enum = {
            "COUNTER",
            "SALE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        floodlightConfigurationId = {
          description = "Floodlight configuration ID of this floodlight activity. If this field is left blank, the value will be copied over either from the activity group's floodlight configuration or from the existing activity's floodlight configuration.",
          format = "int64",
          type = "string",
        },
        floodlightConfigurationIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field.",
        },
        floodlightTagType = {
          description = "The type of Floodlight tag this activity will generate. This is a required field.",
          enum = {
            "IFRAME",
            "IMAGE",
            "GLOBAL_SITE_TAG",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        id = {
          description = "ID of this floodlight activity. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this floodlight activity. This is a read-only, auto-generated field.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivity\".",
          type = "string",
        },
        name = {
          description = "Name of this floodlight activity. This is a required field. Must be less than 129 characters long and cannot contain quotes.",
          type = "string",
        },
        notes = {
          description = "General notes or implementation instructions for the tag.",
          type = "string",
        },
        publisherTags = {
          description = "Publisher dynamic floodlight tags.",
          items = {
            ["$ref"] = "FloodlightActivityPublisherDynamicTag",
          },
          type = "array",
        },
        secure = {
          description = "Whether this tag should use SSL.",
          type = "boolean",
        },
        sslCompliant = {
          description = "Whether the floodlight activity is SSL-compliant. This is a read-only field, its value detected by the system from the floodlight tags.",
          type = "boolean",
        },
        sslRequired = {
          description = "Whether this floodlight activity must be SSL-compliant.",
          type = "boolean",
        },
        status = {
          description = "The status of the activity. This can only be set to ACTIVE or ARCHIVED_AND_DISABLED. The ARCHIVED status is no longer supported and cannot be set for Floodlight activities. The DISABLED_POLICY status indicates that a Floodlight activity is violating Google policy. Contact your account manager for more information.",
          enum = {
            "ACTIVE",
            "ARCHIVED_AND_DISABLED",
            "ARCHIVED",
            "DISABLED_POLICY",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this floodlight activity. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        tagFormat = {
          description = "Tag format type for the floodlight activity. If left blank, the tag format will default to HTML.",
          enum = {
            "HTML",
            "XHTML",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        tagString = {
          description = "Value of the cat= parameter in the floodlight tag, which the ad servers use to identify the activity. This is optional: if empty, a new tag string will be generated for you. This string must be 1 to 8 characters long, with valid characters being a-z0-9[ _ ]. This tag string must also be unique among activities of the same activity group. This field is read-only after insertion.",
          type = "string",
        },
        userDefinedVariableTypes = {
          description = "List of the user-defined variables used by this conversion tag. These map to the \"u[1-100]=\" in the tags. Each of these can have a user defined type. Acceptable values are U1 to U100, inclusive. ",
          items = {
            enum = {
              "U1",
              "U2",
              "U3",
              "U4",
              "U5",
              "U6",
              "U7",
              "U8",
              "U9",
              "U10",
              "U11",
              "U12",
              "U13",
              "U14",
              "U15",
              "U16",
              "U17",
              "U18",
              "U19",
              "U20",
              "U21",
              "U22",
              "U23",
              "U24",
              "U25",
              "U26",
              "U27",
              "U28",
              "U29",
              "U30",
              "U31",
              "U32",
              "U33",
              "U34",
              "U35",
              "U36",
              "U37",
              "U38",
              "U39",
              "U40",
              "U41",
              "U42",
              "U43",
              "U44",
              "U45",
              "U46",
              "U47",
              "U48",
              "U49",
              "U50",
              "U51",
              "U52",
              "U53",
              "U54",
              "U55",
              "U56",
              "U57",
              "U58",
              "U59",
              "U60",
              "U61",
              "U62",
              "U63",
              "U64",
              "U65",
              "U66",
              "U67",
              "U68",
              "U69",
              "U70",
              "U71",
              "U72",
              "U73",
              "U74",
              "U75",
              "U76",
              "U77",
              "U78",
              "U79",
              "U80",
              "U81",
              "U82",
              "U83",
              "U84",
              "U85",
              "U86",
              "U87",
              "U88",
              "U89",
              "U90",
              "U91",
              "U92",
              "U93",
              "U94",
              "U95",
              "U96",
              "U97",
              "U98",
              "U99",
              "U100",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FloodlightActivityDynamicTag = {
      description = "Dynamic Tag",
      id = "FloodlightActivityDynamicTag",
      properties = {
        id = {
          description = "ID of this dynamic tag. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of this tag.",
          type = "string",
        },
        tag = {
          description = "Tag code.",
          type = "string",
        },
      },
      type = "object",
    },
    FloodlightActivityGroup = {
      description = "Contains properties of a Floodlight activity group.",
      id = "FloodlightActivityGroup",
      properties = {
        accountId = {
          description = "Account ID of this floodlight activity group. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this floodlight activity group. If this field is left blank, the value will be copied over either from the floodlight configuration's advertiser or from the existing activity group's advertiser.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        floodlightConfigurationId = {
          description = "Floodlight configuration ID of this floodlight activity group. This is a required field.",
          format = "int64",
          type = "string",
        },
        floodlightConfigurationIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the floodlight configuration. This is a read-only, auto-generated field.",
        },
        id = {
          description = "ID of this floodlight activity group. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this floodlight activity group. This is a read-only, auto-generated field.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivityGroup\".",
          type = "string",
        },
        name = {
          description = "Name of this floodlight activity group. This is a required field. Must be less than 65 characters long and cannot contain quotes.",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this floodlight activity group. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        tagString = {
          description = "Value of the type= parameter in the floodlight tag, which the ad servers use to identify the activity group that the activity belongs to. This is optional: if empty, a new tag string will be generated for you. This string must be 1 to 8 characters long, with valid characters being a-z0-9[ _ ]. This tag string must also be unique among activity groups of the same floodlight configuration. This field is read-only after insertion.",
          type = "string",
        },
        type = {
          description = "Type of the floodlight activity group. This is a required field that is read-only after insertion.",
          enum = {
            "COUNTER",
            "SALE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    FloodlightActivityGroupsListResponse = {
      description = "Floodlight Activity Group List Response",
      id = "FloodlightActivityGroupsListResponse",
      properties = {
        floodlightActivityGroups = {
          description = "Floodlight activity group collection.",
          items = {
            ["$ref"] = "FloodlightActivityGroup",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightActivityGroupsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    FloodlightActivityPublisherDynamicTag = {
      description = "Publisher Dynamic Tag",
      id = "FloodlightActivityPublisherDynamicTag",
      properties = {
        clickThrough = {
          description = "Whether this tag is applicable only for click-throughs.",
          type = "boolean",
        },
        directorySiteId = {
          description = "Directory site ID of this dynamic tag. This is a write-only field that can be used as an alternative to the siteId field. When this resource is retrieved, only the siteId field will be populated.",
          format = "int64",
          type = "string",
        },
        dynamicTag = {
          ["$ref"] = "FloodlightActivityDynamicTag",
          description = "Dynamic floodlight tag.",
        },
        siteId = {
          description = "Site ID of this dynamic tag.",
          format = "int64",
          type = "string",
        },
        siteIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the site. This is a read-only, auto-generated field.",
        },
        viewThrough = {
          description = "Whether this tag is applicable only for view-throughs.",
          type = "boolean",
        },
      },
      type = "object",
    },
    FloodlightConfiguration = {
      description = "Contains properties of a Floodlight configuration.",
      id = "FloodlightConfiguration",
      properties = {
        accountId = {
          description = "Account ID of this floodlight configuration. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of the parent advertiser of this floodlight configuration.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        analyticsDataSharingEnabled = {
          description = "Whether advertiser data is shared with Google Analytics.",
          type = "boolean",
        },
        customViewabilityMetric = {
          ["$ref"] = "CustomViewabilityMetric",
          description = "Custom Viewability metric for the floodlight configuration.",
        },
        exposureToConversionEnabled = {
          description = "Whether the exposure-to-conversion report is enabled. This report shows detailed pathway information on up to 10 of the most recent ad exposures seen by a user before converting.",
          type = "boolean",
        },
        firstDayOfWeek = {
          description = "Day that will be counted as the first day of the week in reports. This is a required field.",
          enum = {
            "MONDAY",
            "SUNDAY",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        id = {
          description = "ID of this floodlight configuration. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this floodlight configuration. This is a read-only, auto-generated field.",
        },
        inAppAttributionTrackingEnabled = {
          description = "Whether in-app attribution tracking is enabled.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightConfiguration\".",
          type = "string",
        },
        lookbackConfiguration = {
          ["$ref"] = "LookbackConfiguration",
          description = "Lookback window settings for this floodlight configuration.",
        },
        naturalSearchConversionAttributionOption = {
          description = "Types of attribution options for natural search conversions.",
          enum = {
            "EXCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION",
            "INCLUDE_NATURAL_SEARCH_CONVERSION_ATTRIBUTION",
            "INCLUDE_NATURAL_SEARCH_TIERED_CONVERSION_ATTRIBUTION",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        omnitureSettings = {
          ["$ref"] = "OmnitureSettings",
          description = "Settings for Campaign Manager Omniture integration.",
        },
        subaccountId = {
          description = "Subaccount ID of this floodlight configuration. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        tagSettings = {
          ["$ref"] = "TagSettings",
          description = "Configuration settings for dynamic and image floodlight tags.",
        },
        thirdPartyAuthenticationTokens = {
          description = "List of third-party authentication tokens enabled for this configuration.",
          items = {
            ["$ref"] = "ThirdPartyAuthenticationToken",
          },
          type = "array",
        },
        userDefinedVariableConfigurations = {
          description = "List of user defined variables enabled for this configuration.",
          items = {
            ["$ref"] = "UserDefinedVariableConfiguration",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FloodlightConfigurationsListResponse = {
      description = "Floodlight Configuration List Response",
      id = "FloodlightConfigurationsListResponse",
      properties = {
        floodlightConfigurations = {
          description = "Floodlight configuration collection.",
          items = {
            ["$ref"] = "FloodlightConfiguration",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#floodlightConfigurationsListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    FloodlightReportCompatibleFields = {
      description = "Represents fields that are compatible to be selected for a report of type \"FlOODLIGHT\".",
      id = "FloodlightReportCompatibleFields",
      properties = {
        dimensionFilters = {
          description = "Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        dimensions = {
          description = "Dimensions which are compatible to be selected in the \"dimensions\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#floodlightReportCompatibleFields.",
          type = "string",
        },
        metrics = {
          description = "Metrics which are compatible to be selected in the \"metricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FrequencyCap = {
      description = "Frequency Cap.",
      id = "FrequencyCap",
      properties = {
        duration = {
          description = "Duration of time, in seconds, for this frequency cap. The maximum duration is 90 days. Acceptable values are 1 to 7776000, inclusive.",
          format = "int64",
          type = "string",
        },
        impressions = {
          description = "Number of times an individual user can be served the ad within the specified duration. Acceptable values are 1 to 15, inclusive.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    FsCommand = {
      description = "FsCommand.",
      id = "FsCommand",
      properties = {
        left = {
          description = "Distance from the left of the browser.Applicable when positionOption is DISTANCE_FROM_TOP_LEFT_CORNER.",
          format = "int32",
          type = "integer",
        },
        positionOption = {
          description = "Position in the browser where the window will open.",
          enum = {
            "CENTERED",
            "DISTANCE_FROM_TOP_LEFT_CORNER",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        top = {
          description = "Distance from the top of the browser. Applicable when positionOption is DISTANCE_FROM_TOP_LEFT_CORNER.",
          format = "int32",
          type = "integer",
        },
        windowHeight = {
          description = "Height of the window.",
          format = "int32",
          type = "integer",
        },
        windowWidth = {
          description = "Width of the window.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GeoTargeting = {
      description = "Geographical Targeting.",
      id = "GeoTargeting",
      properties = {
        cities = {
          description = "Cities to be targeted. For each city only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a city, do not target or exclude the country of the city, and do not target the metro or region of the city.",
          items = {
            ["$ref"] = "City",
          },
          type = "array",
        },
        countries = {
          description = "Countries to be targeted or excluded from targeting, depending on the setting of the excludeCountries field. For each country only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting or excluding a country, do not target regions, cities, metros, or postal codes in the same country.",
          items = {
            ["$ref"] = "Country",
          },
          type = "array",
        },
        excludeCountries = {
          description = "Whether or not to exclude the countries in the countries field from targeting. If false, the countries field refers to countries which will be targeted by the ad.",
          type = "boolean",
        },
        metros = {
          description = "Metros to be targeted. For each metro only dmaId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a metro, do not target or exclude the country of the metro.",
          items = {
            ["$ref"] = "Metro",
          },
          type = "array",
        },
        postalCodes = {
          description = "Postal codes to be targeted. For each postal code only id is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a postal code, do not target or exclude the country of the postal code.",
          items = {
            ["$ref"] = "PostalCode",
          },
          type = "array",
        },
        regions = {
          description = "Regions to be targeted. For each region only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting a region, do not target or exclude the country of the region.",
          items = {
            ["$ref"] = "Region",
          },
          type = "array",
        },
      },
      type = "object",
    },
    InventoryItem = {
      description = "Represents a buy from the Planning inventory store.",
      id = "InventoryItem",
      properties = {
        accountId = {
          description = "Account ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        adSlots = {
          description = "Ad slots of this inventory item. If this inventory item represents a standalone placement, there will be exactly one ad slot. If this inventory item represents a placement group, there will be more than one ad slot, each representing one child placement in that placement group.",
          items = {
            ["$ref"] = "AdSlot",
          },
          type = "array",
        },
        advertiserId = {
          description = "Advertiser ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        contentCategoryId = {
          description = "Content category ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        estimatedClickThroughRate = {
          description = "Estimated click-through rate of this inventory item.",
          format = "int64",
          type = "string",
        },
        estimatedConversionRate = {
          description = "Estimated conversion rate of this inventory item.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        inPlan = {
          description = "Whether this inventory item is in plan.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#inventoryItem\".",
          type = "string",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the most recent modification of this inventory item.",
        },
        name = {
          description = "Name of this inventory item. For standalone inventory items, this is the same name as that of its only ad slot. For group inventory items, this can differ from the name of any of its ad slots.",
          type = "string",
        },
        negotiationChannelId = {
          description = "Negotiation channel ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        orderId = {
          description = "Order ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        placementStrategyId = {
          description = "Placement strategy ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        pricing = {
          ["$ref"] = "Pricing",
          description = "Pricing of this inventory item.",
        },
        projectId = {
          description = "Project ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        rfpId = {
          description = "RFP ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        siteId = {
          description = "ID of the site this inventory item is associated with.",
          format = "int64",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this inventory item.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "Type of inventory item.",
          enum = {
            "PLANNING_PLACEMENT_TYPE_REGULAR",
            "PLANNING_PLACEMENT_TYPE_CREDIT",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InventoryItemsListResponse = {
      description = "Inventory item List Response",
      id = "InventoryItemsListResponse",
      properties = {
        inventoryItems = {
          description = "Inventory item collection",
          items = {
            ["$ref"] = "InventoryItem",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#inventoryItemsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    KeyValueTargetingExpression = {
      description = "Key Value Targeting Expression.",
      id = "KeyValueTargetingExpression",
      properties = {
        expression = {
          description = "Keyword expression being targeted by the ad.",
          type = "string",
        },
      },
      type = "object",
    },
    LandingPage = {
      description = "Contains information about where a user's browser is taken after the user clicks an ad.",
      id = "LandingPage",
      properties = {
        advertiserId = {
          description = "Advertiser ID of this landing page. This is a required field.",
          format = "int64",
          type = "string",
        },
        archived = {
          description = "Whether this landing page has been archived.",
          type = "boolean",
        },
        deepLinks = {
          description = "Links that will direct the user to a mobile app, if installed.",
          items = {
            ["$ref"] = "DeepLink",
          },
          type = "array",
        },
        id = {
          description = "ID of this landing page. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#landingPage\".",
          type = "string",
        },
        name = {
          description = "Name of this landing page. This is a required field. It must be less than 256 characters long.",
          type = "string",
        },
        url = {
          description = "URL of this landing page. This is a required field.",
          type = "string",
        },
      },
      type = "object",
    },
    Language = {
      description = "Contains information about a language that can be targeted by ads.",
      id = "Language",
      properties = {
        id = {
          description = "Language ID of this language. This is the ID used for targeting and generating reports.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#language\".",
          type = "string",
        },
        languageCode = {
          description = "Format of language code is an ISO 639 two-letter language code optionally followed by an underscore followed by an ISO 3166 code. Examples are \"en\" for English or \"zh_CN\" for Simplified Chinese.",
          type = "string",
        },
        name = {
          description = "Name of this language.",
          type = "string",
        },
      },
      type = "object",
    },
    LanguageTargeting = {
      description = "Language Targeting.",
      id = "LanguageTargeting",
      properties = {
        languages = {
          description = "Languages that this ad targets. For each language only languageId is required. The other fields are populated automatically when the ad is inserted or updated.",
          items = {
            ["$ref"] = "Language",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LanguagesListResponse = {
      description = "Language List Response",
      id = "LanguagesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#languagesListResponse\".",
          type = "string",
        },
        languages = {
          description = "Language collection.",
          items = {
            ["$ref"] = "Language",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LastModifiedInfo = {
      description = "Modification timestamp.",
      id = "LastModifiedInfo",
      properties = {
        time = {
          description = "Timestamp of the last change in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ListPopulationClause = {
      description = "A group clause made up of list population terms representing constraints joined by ORs.",
      id = "ListPopulationClause",
      properties = {
        terms = {
          description = "Terms of this list population clause. Each clause is made up of list population terms representing constraints and are joined by ORs.",
          items = {
            ["$ref"] = "ListPopulationTerm",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPopulationRule = {
      description = "Remarketing List Population Rule.",
      id = "ListPopulationRule",
      properties = {
        floodlightActivityId = {
          description = "Floodlight activity ID associated with this rule. This field can be left blank.",
          format = "int64",
          type = "string",
        },
        floodlightActivityName = {
          description = "Name of floodlight activity associated with this rule. This is a read-only, auto-generated field.",
          type = "string",
        },
        listPopulationClauses = {
          description = "Clauses that make up this list population rule. Clauses are joined by ANDs, and the clauses themselves are made up of list population terms which are joined by ORs.",
          items = {
            ["$ref"] = "ListPopulationClause",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPopulationTerm = {
      description = "Remarketing List Population Rule Term.",
      id = "ListPopulationTerm",
      properties = {
        contains = {
          description = "Will be true if the term should check if the user is in the list and false if the term should check if the user is not in the list. This field is only relevant when type is set to LIST_MEMBERSHIP_TERM. False by default.",
          type = "boolean",
        },
        negation = {
          description = "Whether to negate the comparison result of this term during rule evaluation. This field is only relevant when type is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.",
          type = "boolean",
        },
        operator = {
          description = "Comparison operator of this term. This field is only relevant when type is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.",
          enum = {
            "NUM_EQUALS",
            "NUM_LESS_THAN",
            "NUM_LESS_THAN_EQUAL",
            "NUM_GREATER_THAN",
            "NUM_GREATER_THAN_EQUAL",
            "STRING_EQUALS",
            "STRING_CONTAINS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        remarketingListId = {
          description = "ID of the list in question. This field is only relevant when type is set to LIST_MEMBERSHIP_TERM.",
          format = "int64",
          type = "string",
        },
        type = {
          description = "List population term type determines the applicable fields in this object. If left unset or set to CUSTOM_VARIABLE_TERM, then variableName, variableFriendlyName, operator, value, and negation are applicable. If set to LIST_MEMBERSHIP_TERM then remarketingListId and contains are applicable. If set to REFERRER_TERM then operator, value, and negation are applicable.",
          enum = {
            "CUSTOM_VARIABLE_TERM",
            "LIST_MEMBERSHIP_TERM",
            "REFERRER_TERM",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          description = "Literal to compare the variable to. This field is only relevant when type is left unset or set to CUSTOM_VARIABLE_TERM or REFERRER_TERM.",
          type = "string",
        },
        variableFriendlyName = {
          description = "Friendly name of this term's variable. This is a read-only, auto-generated field. This field is only relevant when type is left unset or set to CUSTOM_VARIABLE_TERM.",
          type = "string",
        },
        variableName = {
          description = "Name of the variable (U1, U2, etc.) being compared in this term. This field is only relevant when type is set to null, CUSTOM_VARIABLE_TERM or REFERRER_TERM.",
          type = "string",
        },
      },
      type = "object",
    },
    ListTargetingExpression = {
      description = "Remarketing List Targeting Expression.",
      id = "ListTargetingExpression",
      properties = {
        expression = {
          description = "Expression describing which lists are being targeted by the ad.",
          type = "string",
        },
      },
      type = "object",
    },
    LookbackConfiguration = {
      description = "Lookback configuration settings.",
      id = "LookbackConfiguration",
      properties = {
        clickDuration = {
          description = "Lookback window, in days, from the last time a given user clicked on one of your ads. If you enter 0, clicks will not be considered as triggering events for floodlight tracking. If you leave this field blank, the default value for your account will be used. Acceptable values are 0 to 90, inclusive.",
          format = "int32",
          type = "integer",
        },
        postImpressionActivitiesDuration = {
          description = "Lookback window, in days, from the last time a given user viewed one of your ads. If you enter 0, impressions will not be considered as triggering events for floodlight tracking. If you leave this field blank, the default value for your account will be used. Acceptable values are 0 to 90, inclusive.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MeasurementPartnerAdvertiserLink = {
      id = "MeasurementPartnerAdvertiserLink",
      properties = {
        linkStatus = {
          description = ".",
          enum = {
            "MEASUREMENT_PARTNER_UNLINKED",
            "MEASUREMENT_PARTNER_LINKED",
            "MEASUREMENT_PARTNER_LINK_PENDING",
            "MEASUREMENT_PARTNER_LINK_FAILURE",
            "MEASUREMENT_PARTNER_LINK_OPT_OUT",
            "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING",
            "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING",
            "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        measurementPartner = {
          description = "Measurement partner used for tag wrapping.",
          enum = {
            "NONE",
            "INTEGRAL_AD_SCIENCE",
            "DOUBLE_VERIFY",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        partnerAdvertiserId = {
          description = ".",
          type = "string",
        },
      },
      type = "object",
    },
    MeasurementPartnerCampaignLink = {
      id = "MeasurementPartnerCampaignLink",
      properties = {
        linkStatus = {
          description = ".",
          enum = {
            "MEASUREMENT_PARTNER_UNLINKED",
            "MEASUREMENT_PARTNER_LINKED",
            "MEASUREMENT_PARTNER_LINK_PENDING",
            "MEASUREMENT_PARTNER_LINK_FAILURE",
            "MEASUREMENT_PARTNER_LINK_OPT_OUT",
            "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING",
            "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING",
            "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        measurementPartner = {
          description = "Measurement partner used for tag wrapping.",
          enum = {
            "NONE",
            "INTEGRAL_AD_SCIENCE",
            "DOUBLE_VERIFY",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        partnerCampaignId = {
          description = "Partner campaign ID needed for establishing linking with Measurement partner.",
          type = "string",
        },
      },
      type = "object",
    },
    MeasurementPartnerWrappingData = {
      description = "Placement tag wrapping",
      id = "MeasurementPartnerWrappingData",
      properties = {
        linkStatus = {
          description = "Placement wrapping status.",
          enum = {
            "MEASUREMENT_PARTNER_UNLINKED",
            "MEASUREMENT_PARTNER_LINKED",
            "MEASUREMENT_PARTNER_LINK_PENDING",
            "MEASUREMENT_PARTNER_LINK_FAILURE",
            "MEASUREMENT_PARTNER_LINK_OPT_OUT",
            "MEASUREMENT_PARTNER_LINK_OPT_OUT_PENDING",
            "MEASUREMENT_PARTNER_LINK_WRAPPING_PENDING",
            "MEASUREMENT_PARTNER_MODE_CHANGE_PENDING",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        measurementPartner = {
          description = "Measurement partner used for wrapping the placement.",
          enum = {
            "NONE",
            "INTEGRAL_AD_SCIENCE",
            "DOUBLE_VERIFY",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        tagWrappingMode = {
          description = "Measurement mode for the wrapped placement.",
          enum = {
            "NONE",
            "BLOCKING",
            "MONITORING",
            "MONITORING_ONLY",
            "VIDEO_PIXEL_MONITORING",
            "TRACKING",
            "VPAID_MONITORING",
            "VPAID_BLOCKING",
            "NON_VPAID_MONITORING",
            "VPAID_ONLY_MONITORING",
            "VPAID_ONLY_BLOCKING",
            "VPAID_ONLY_FILTERING",
            "VPAID_FILTERING",
            "NON_VPAID_FILTERING",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        wrappedTag = {
          description = "Tag provided by the measurement partner during wrapping.",
          type = "string",
        },
      },
      type = "object",
    },
    Metric = {
      description = "Represents a metric.",
      id = "Metric",
      properties = {
        kind = {
          description = "The kind of resource this is, in this case dfareporting#metric.",
          type = "string",
        },
        name = {
          description = "The metric name, e.g. dfa:impressions",
          type = "string",
        },
      },
      type = "object",
    },
    Metro = {
      description = "Contains information about a metro region that can be targeted by ads.",
      id = "Metro",
      properties = {
        countryCode = {
          description = "Country code of the country to which this metro region belongs.",
          type = "string",
        },
        countryDartId = {
          description = "DART ID of the country to which this metro region belongs.",
          format = "int64",
          type = "string",
        },
        dartId = {
          description = "DART ID of this metro region.",
          format = "int64",
          type = "string",
        },
        dmaId = {
          description = "DMA ID of this metro region. This is the ID used for targeting and generating reports, and is equivalent to metro_code.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#metro\".",
          type = "string",
        },
        metroCode = {
          description = "Metro code of this metro region. This is equivalent to dma_id.",
          type = "string",
        },
        name = {
          description = "Name of this metro region.",
          type = "string",
        },
      },
      type = "object",
    },
    MetrosListResponse = {
      description = "Metro List Response",
      id = "MetrosListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#metrosListResponse\".",
          type = "string",
        },
        metros = {
          description = "Metro collection.",
          items = {
            ["$ref"] = "Metro",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MobileApp = {
      description = "Contains information about a mobile app. Used as a landing page deep link.",
      id = "MobileApp",
      properties = {
        directory = {
          description = "Mobile app directory.",
          enum = {
            "UNKNOWN",
            "APPLE_APP_STORE",
            "GOOGLE_PLAY_STORE",
            "ROKU_APP_STORE",
            "AMAZON_FIRETV_APP_STORE",
            "PLAYSTATION_APP_STORE",
            "APPLE_TV_APP_STORE",
            "XBOX_APP_STORE",
            "SAMSUNG_TV_APP_STORE",
            "ANDROID_TV_APP_STORE",
            "GENERIC_CTV_APP_STORE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        id = {
          description = "ID of this mobile app.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileApp\".",
          type = "string",
        },
        publisherName = {
          description = "Publisher name.",
          type = "string",
        },
        title = {
          description = "Title of this mobile app.",
          type = "string",
        },
      },
      type = "object",
    },
    MobileAppsListResponse = {
      description = "Mobile app List Response",
      id = "MobileAppsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileAppsListResponse\".",
          type = "string",
        },
        mobileApps = {
          description = "Mobile apps collection.",
          items = {
            ["$ref"] = "MobileApp",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
      },
      type = "object",
    },
    MobileCarrier = {
      description = "Contains information about a mobile carrier that can be targeted by ads.",
      id = "MobileCarrier",
      properties = {
        countryCode = {
          description = "Country code of the country to which this mobile carrier belongs.",
          type = "string",
        },
        countryDartId = {
          description = "DART ID of the country to which this mobile carrier belongs.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "ID of this mobile carrier.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileCarrier\".",
          type = "string",
        },
        name = {
          description = "Name of this mobile carrier.",
          type = "string",
        },
      },
      type = "object",
    },
    MobileCarriersListResponse = {
      description = "Mobile Carrier List Response",
      id = "MobileCarriersListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#mobileCarriersListResponse\".",
          type = "string",
        },
        mobileCarriers = {
          description = "Mobile carrier collection.",
          items = {
            ["$ref"] = "MobileCarrier",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ObaIcon = {
      description = "Online Behavioral Advertiser icon.",
      id = "ObaIcon",
      properties = {
        iconClickThroughUrl = {
          description = "URL to redirect to when an OBA icon is clicked.",
          type = "string",
        },
        iconClickTrackingUrl = {
          description = "URL to track click when an OBA icon is clicked.",
          type = "string",
        },
        iconViewTrackingUrl = {
          description = "URL to track view when an OBA icon is clicked.",
          type = "string",
        },
        program = {
          description = "Identifies the industry initiative that the icon supports. For example, AdChoices.",
          type = "string",
        },
        resourceUrl = {
          description = "OBA icon resource URL. Campaign Manager only supports image and JavaScript icons. Learn more",
          type = "string",
        },
        size = {
          ["$ref"] = "Size",
          description = "OBA icon size.",
        },
        xPosition = {
          description = "OBA icon x coordinate position. Accepted values are left or right.",
          type = "string",
        },
        yPosition = {
          description = "OBA icon y coordinate position. Accepted values are top or bottom.",
          type = "string",
        },
      },
      type = "object",
    },
    ObjectFilter = {
      description = "Object Filter.",
      id = "ObjectFilter",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#objectFilter\".",
          type = "string",
        },
        objectIds = {
          description = "Applicable when status is ASSIGNED. The user has access to objects with these object IDs.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Status of the filter. NONE means the user has access to none of the objects. ALL means the user has access to all objects. ASSIGNED means the user has access to the objects with IDs in the objectIds list.",
          enum = {
            "NONE",
            "ASSIGNED",
            "ALL",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OffsetPosition = {
      description = "Offset Position.",
      id = "OffsetPosition",
      properties = {
        left = {
          description = "Offset distance from left side of an asset or a window.",
          format = "int32",
          type = "integer",
        },
        top = {
          description = "Offset distance from top side of an asset or a window.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    OmnitureSettings = {
      description = "Omniture Integration Settings.",
      id = "OmnitureSettings",
      properties = {
        omnitureCostDataEnabled = {
          description = "Whether placement cost data will be sent to Omniture. This property can be enabled only if omnitureIntegrationEnabled is true.",
          type = "boolean",
        },
        omnitureIntegrationEnabled = {
          description = "Whether Omniture integration is enabled. This property can be enabled only when the \"Advanced Ad Serving\" account setting is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    OperatingSystem = {
      description = "Contains information about an operating system that can be targeted by ads.",
      id = "OperatingSystem",
      properties = {
        dartId = {
          description = "DART ID of this operating system. This is the ID used for targeting.",
          format = "int64",
          type = "string",
        },
        desktop = {
          description = "Whether this operating system is for desktop.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystem\".",
          type = "string",
        },
        mobile = {
          description = "Whether this operating system is for mobile.",
          type = "boolean",
        },
        name = {
          description = "Name of this operating system.",
          type = "string",
        },
      },
      type = "object",
    },
    OperatingSystemVersion = {
      description = "Contains information about a particular version of an operating system that can be targeted by ads.",
      id = "OperatingSystemVersion",
      properties = {
        id = {
          description = "ID of this operating system version.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystemVersion\".",
          type = "string",
        },
        majorVersion = {
          description = "Major version (leftmost number) of this operating system version.",
          type = "string",
        },
        minorVersion = {
          description = "Minor version (number after the first dot) of this operating system version.",
          type = "string",
        },
        name = {
          description = "Name of this operating system version.",
          type = "string",
        },
        operatingSystem = {
          ["$ref"] = "OperatingSystem",
          description = "Operating system of this operating system version.",
        },
      },
      type = "object",
    },
    OperatingSystemVersionsListResponse = {
      description = "Operating System Version List Response",
      id = "OperatingSystemVersionsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystemVersionsListResponse\".",
          type = "string",
        },
        operatingSystemVersions = {
          description = "Operating system version collection.",
          items = {
            ["$ref"] = "OperatingSystemVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OperatingSystemsListResponse = {
      description = "Operating System List Response",
      id = "OperatingSystemsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#operatingSystemsListResponse\".",
          type = "string",
        },
        operatingSystems = {
          description = "Operating system collection.",
          items = {
            ["$ref"] = "OperatingSystem",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OptimizationActivity = {
      description = "Creative optimization activity.",
      id = "OptimizationActivity",
      properties = {
        floodlightActivityId = {
          description = "Floodlight activity ID of this optimization activity. This is a required field.",
          format = "int64",
          type = "string",
        },
        floodlightActivityIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the floodlight activity. This is a read-only, auto-generated field.",
        },
        weight = {
          description = "Weight associated with this optimization. The weight assigned will be understood in proportion to the weights assigned to the other optimization activities. Value must be greater than or equal to 1.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Order = {
      description = "Describes properties of a Planning order.",
      id = "Order",
      properties = {
        accountId = {
          description = "Account ID of this order.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this order.",
          format = "int64",
          type = "string",
        },
        approverUserProfileIds = {
          description = "IDs for users that have to approve documents created for this order.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        buyerInvoiceId = {
          description = "Buyer invoice ID associated with this order.",
          type = "string",
        },
        buyerOrganizationName = {
          description = "Name of the buyer organization.",
          type = "string",
        },
        comments = {
          description = "Comments in this order.",
          type = "string",
        },
        contacts = {
          description = "Contacts for this order.",
          items = {
            ["$ref"] = "OrderContact",
          },
          type = "array",
        },
        id = {
          description = "ID of this order. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#order\".",
          type = "string",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the most recent modification of this order.",
        },
        name = {
          description = "Name of this order.",
          type = "string",
        },
        notes = {
          description = "Notes of this order.",
          type = "string",
        },
        planningTermId = {
          description = "ID of the terms and conditions template used in this order.",
          format = "int64",
          type = "string",
        },
        projectId = {
          description = "Project ID of this order.",
          format = "int64",
          type = "string",
        },
        sellerOrderId = {
          description = "Seller order ID associated with this order.",
          type = "string",
        },
        sellerOrganizationName = {
          description = "Name of the seller organization.",
          type = "string",
        },
        siteId = {
          description = "Site IDs this order is associated with.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        siteNames = {
          description = "Free-form site names this order is associated with.",
          items = {
            type = "string",
          },
          type = "array",
        },
        subaccountId = {
          description = "Subaccount ID of this order.",
          format = "int64",
          type = "string",
        },
        termsAndConditions = {
          description = "Terms and conditions of this order.",
          type = "string",
        },
      },
      type = "object",
    },
    OrderContact = {
      description = "Contact of an order.",
      id = "OrderContact",
      properties = {
        contactInfo = {
          description = "Free-form information about this contact. It could be any information related to this contact in addition to type, title, name, and signature user profile ID.",
          type = "string",
        },
        contactName = {
          description = "Name of this contact.",
          type = "string",
        },
        contactTitle = {
          description = "Title of this contact.",
          type = "string",
        },
        contactType = {
          description = "Type of this contact.",
          enum = {
            "PLANNING_ORDER_CONTACT_BUYER_CONTACT",
            "PLANNING_ORDER_CONTACT_BUYER_BILLING_CONTACT",
            "PLANNING_ORDER_CONTACT_SELLER_CONTACT",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        signatureUserProfileId = {
          description = "ID of the user profile containing the signature that will be embedded into order documents.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    OrderDocument = {
      description = "Contains properties of a Planning order document.",
      id = "OrderDocument",
      properties = {
        accountId = {
          description = "Account ID of this order document.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this order document.",
          format = "int64",
          type = "string",
        },
        amendedOrderDocumentId = {
          description = "The amended order document ID of this order document. An order document can be created by optionally amending another order document so that the change history can be preserved.",
          format = "int64",
          type = "string",
        },
        approvedByUserProfileIds = {
          description = "IDs of users who have approved this order document.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        cancelled = {
          description = "Whether this order document is cancelled.",
          type = "boolean",
        },
        createdInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the creation of this order document.",
        },
        effectiveDate = {
          format = "date",
          type = "string",
        },
        id = {
          description = "ID of this order document.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#orderDocument\".",
          type = "string",
        },
        lastSentRecipients = {
          description = "List of email addresses that received the last sent document.",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastSentTime = {
          format = "date-time",
          type = "string",
        },
        orderId = {
          description = "ID of the order from which this order document is created.",
          format = "int64",
          type = "string",
        },
        projectId = {
          description = "Project ID of this order document.",
          format = "int64",
          type = "string",
        },
        signed = {
          description = "Whether this order document has been signed.",
          type = "boolean",
        },
        subaccountId = {
          description = "Subaccount ID of this order document.",
          format = "int64",
          type = "string",
        },
        title = {
          description = "Title of this order document.",
          type = "string",
        },
        type = {
          description = "Type of this order document",
          enum = {
            "PLANNING_ORDER_TYPE_INSERTION_ORDER",
            "PLANNING_ORDER_TYPE_CHANGE_ORDER",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    OrderDocumentsListResponse = {
      description = "Order document List Response",
      id = "OrderDocumentsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#orderDocumentsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        orderDocuments = {
          description = "Order document collection",
          items = {
            ["$ref"] = "OrderDocument",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrdersListResponse = {
      description = "Order List Response",
      id = "OrdersListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#ordersListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        orders = {
          description = "Order collection.",
          items = {
            ["$ref"] = "Order",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PathFilter = {
      description = "Represents a DfaReporting path filter.",
      id = "PathFilter",
      properties = {
        eventFilters = {
          description = "Event filters in path report.",
          items = {
            ["$ref"] = "EventFilter",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#pathFilter.",
          type = "string",
        },
        pathMatchPosition = {
          description = "Determines how the 'value' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions ('dfa:paidSearch*') allow a matchType other than EXACT.",
          enum = {
            "PATH_MATCH_POSITION_UNSPECIFIED",
            "ANY",
            "FIRST",
            "LAST",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PathReportCompatibleFields = {
      description = "Represents fields that are compatible to be selected for a report of type \"PATH\".",
      id = "PathReportCompatibleFields",
      properties = {
        channelGroupings = {
          description = "Dimensions which are compatible to be selected in the \"channelGroupings\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        dimensions = {
          description = "Dimensions which are compatible to be selected in the \"dimensions\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#pathReportCompatibleFields.",
          type = "string",
        },
        metrics = {
          description = "Metrics which are compatible to be selected in the \"metricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        pathFilters = {
          description = "Dimensions which are compatible to be selected in the \"pathFilters\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PathReportDimensionValue = {
      description = "Represents a PathReportDimensionValue resource.",
      id = "PathReportDimensionValue",
      properties = {
        dimensionName = {
          description = "The name of the dimension.",
          type = "string",
        },
        ids = {
          description = "The possible ID's associated with the value if available.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#pathReportDimensionValue.",
          type = "string",
        },
        matchType = {
          description = "Determines how the 'value' field is matched when filtering. If not specified, defaults to EXACT. If set to WILDCARD_EXPRESSION, '*' is allowed as a placeholder for variable length character sequences, and it can be escaped with a backslash. Note, only paid search dimensions ('dfa:paidSearch*') allow a matchType other than EXACT.",
          enum = {
            "EXACT",
            "BEGINS_WITH",
            "CONTAINS",
            "WILDCARD_EXPRESSION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        values = {
          description = "The possible values of the dimension.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PathToConversionReportCompatibleFields = {
      description = "Represents fields that are compatible to be selected for a report of type \"PATH_TO_CONVERSION\".",
      id = "PathToConversionReportCompatibleFields",
      properties = {
        conversionDimensions = {
          description = "Conversion dimensions which are compatible to be selected in the \"conversionDimensions\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        customFloodlightVariables = {
          description = "Custom floodlight variables which are compatible to be selected in the \"customFloodlightVariables\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#pathToConversionReportCompatibleFields.",
          type = "string",
        },
        metrics = {
          description = "Metrics which are compatible to be selected in the \"metricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        perInteractionDimensions = {
          description = "Per-interaction dimensions which are compatible to be selected in the \"perInteractionDimensions\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Placement = {
      description = "Contains properties of a placement.",
      id = "Placement",
      properties = {
        accountId = {
          description = "Account ID of this placement. This field can be left blank.",
          format = "int64",
          type = "string",
        },
        adBlockingOptOut = {
          description = "Whether this placement opts out of ad blocking. When true, ad blocking is disabled for this placement. When false, the campaign and site settings take effect.",
          type = "boolean",
        },
        additionalSizes = {
          description = "Additional sizes associated with this placement. When inserting or updating a placement, only the size ID field is used.",
          items = {
            ["$ref"] = "Size",
          },
          type = "array",
        },
        advertiserId = {
          description = "Advertiser ID of this placement. This field can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        archived = {
          description = "Whether this placement is archived.",
          type = "boolean",
        },
        campaignId = {
          description = "Campaign ID of this placement. This field is a required field on insertion.",
          format = "int64",
          type = "string",
        },
        campaignIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the campaign. This is a read-only, auto-generated field.",
        },
        comment = {
          description = "Comments for this placement.",
          type = "string",
        },
        compatibility = {
          description = "Placement compatibility. DISPLAY and DISPLAY_INTERSTITIAL refer to rendering on desktop, on mobile devices or in mobile apps for regular or interstitial ads respectively. APP and APP_INTERSTITIAL are no longer allowed for new placement insertions. Instead, use DISPLAY or DISPLAY_INTERSTITIAL. IN_STREAM_VIDEO refers to rendering in in-stream video ads developed with the VAST standard. This field is required on insertion.",
          enum = {
            "DISPLAY",
            "DISPLAY_INTERSTITIAL",
            "APP",
            "APP_INTERSTITIAL",
            "IN_STREAM_VIDEO",
            "IN_STREAM_AUDIO",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        contentCategoryId = {
          description = "ID of the content category assigned to this placement.",
          format = "int64",
          type = "string",
        },
        createInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the creation of this placement. This is a read-only field.",
        },
        directorySiteId = {
          description = "Directory site ID of this placement. On insert, you must set either this field or the siteId field to specify the site associated with this placement. This is a required field that is read-only after insertion.",
          format = "int64",
          type = "string",
        },
        directorySiteIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the directory site. This is a read-only, auto-generated field.",
        },
        externalId = {
          description = "External ID for this placement.",
          type = "string",
        },
        id = {
          description = "ID of this placement. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this placement. This is a read-only, auto-generated field.",
        },
        keyName = {
          description = "Key name of this placement. This is a read-only, auto-generated field.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placement\".",
          type = "string",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the most recent modification of this placement. This is a read-only field.",
        },
        lookbackConfiguration = {
          ["$ref"] = "LookbackConfiguration",
          description = "Lookback window settings for this placement.",
        },
        name = {
          description = "Name of this placement.This is a required field and must be less than or equal to 512 characters long.",
          type = "string",
        },
        partnerWrappingData = {
          ["$ref"] = "MeasurementPartnerWrappingData",
          description = "Measurement partner provided settings for a wrapped placement.",
        },
        paymentApproved = {
          description = "Whether payment was approved for this placement. This is a read-only field relevant only to publisher-paid placements.",
          type = "boolean",
        },
        paymentSource = {
          description = "Payment source for this placement. This is a required field that is read-only after insertion.",
          enum = {
            "PLACEMENT_AGENCY_PAID",
            "PLACEMENT_PUBLISHER_PAID",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        placementGroupId = {
          description = "ID of this placement's group, if applicable.",
          format = "int64",
          type = "string",
        },
        placementGroupIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the placement group. This is a read-only, auto-generated field.",
        },
        placementStrategyId = {
          description = "ID of the placement strategy assigned to this placement.",
          format = "int64",
          type = "string",
        },
        pricingSchedule = {
          ["$ref"] = "PricingSchedule",
          description = "Pricing schedule of this placement. This field is required on insertion, specifically subfields startDate, endDate and pricingType.",
        },
        primary = {
          description = "Whether this placement is the primary placement of a roadblock (placement group). You cannot change this field from true to false. Setting this field to true will automatically set the primary field on the original primary placement of the roadblock to false, and it will automatically set the roadblock's primaryPlacementId field to the ID of this placement.",
          type = "boolean",
        },
        publisherUpdateInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the last publisher update. This is a read-only field.",
        },
        siteId = {
          description = "Site ID associated with this placement. On insert, you must set either this field or the directorySiteId field to specify the site associated with this placement. This is a required field that is read-only after insertion.",
          format = "int64",
          type = "string",
        },
        siteIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the site. This is a read-only, auto-generated field.",
        },
        size = {
          ["$ref"] = "Size",
          description = "Size associated with this placement. When inserting or updating a placement, only the size ID field is used. This field is required on insertion.",
        },
        sslRequired = {
          description = "Whether creatives assigned to this placement must be SSL-compliant.",
          type = "boolean",
        },
        status = {
          description = "Third-party placement status.",
          enum = {
            "PENDING_REVIEW",
            "PAYMENT_ACCEPTED",
            "PAYMENT_REJECTED",
            "ACKNOWLEDGE_REJECTION",
            "ACKNOWLEDGE_ACCEPTANCE",
            "DRAFT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this placement. This field can be left blank.",
          format = "int64",
          type = "string",
        },
        tagFormats = {
          description = "Tag formats to generate for this placement. This field is required on insertion. Acceptable values are: - \"PLACEMENT_TAG_STANDARD\" - \"PLACEMENT_TAG_IFRAME_JAVASCRIPT\" - \"PLACEMENT_TAG_IFRAME_ILAYER\" - \"PLACEMENT_TAG_INTERNAL_REDIRECT\" - \"PLACEMENT_TAG_JAVASCRIPT\" - \"PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT\" - \"PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT\" - \"PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT\" - \"PLACEMENT_TAG_CLICK_COMMANDS\" - \"PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH\" - \"PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3\" - \"PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4\" - \"PLACEMENT_TAG_TRACKING\" - \"PLACEMENT_TAG_TRACKING_IFRAME\" - \"PLACEMENT_TAG_TRACKING_JAVASCRIPT\" ",
          items = {
            enum = {
              "PLACEMENT_TAG_STANDARD",
              "PLACEMENT_TAG_IFRAME_JAVASCRIPT",
              "PLACEMENT_TAG_IFRAME_ILAYER",
              "PLACEMENT_TAG_INTERNAL_REDIRECT",
              "PLACEMENT_TAG_JAVASCRIPT",
              "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT",
              "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT",
              "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT",
              "PLACEMENT_TAG_CLICK_COMMANDS",
              "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH",
              "PLACEMENT_TAG_TRACKING",
              "PLACEMENT_TAG_TRACKING_IFRAME",
              "PLACEMENT_TAG_TRACKING_JAVASCRIPT",
              "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3",
              "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY",
              "PLACEMENT_TAG_JAVASCRIPT_LEGACY",
              "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY",
              "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY",
              "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4",
              "PLACEMENT_TAG_TRACKING_THIRD_PARTY_MEASUREMENT",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        tagSetting = {
          ["$ref"] = "TagSetting",
          description = "Tag settings for this placement.",
        },
        videoActiveViewOptOut = {
          description = "Whether Verification and ActiveView are disabled for in-stream video creatives for this placement. The same setting videoActiveViewOptOut exists on the site level -- the opt out occurs if either of these settings are true. These settings are distinct from DirectorySites.settings.activeViewOptOut or Sites.siteSettings.activeViewOptOut which only apply to display ads. However, Accounts.activeViewOptOut opts out both video traffic, as well as display ads, from Verification and ActiveView.",
          type = "boolean",
        },
        videoSettings = {
          ["$ref"] = "VideoSettings",
          description = "A collection of settings which affect video creatives served through this placement. Applicable to placements with IN_STREAM_VIDEO compatibility.",
        },
        vpaidAdapterChoice = {
          description = "VPAID adapter setting for this placement. Controls which VPAID format the measurement adapter will use for in-stream video creatives assigned to this placement. *Note:* Flash is no longer supported. This field now defaults to HTML5 when the following values are provided: FLASH, BOTH.",
          enum = {
            "DEFAULT",
            "FLASH",
            "HTML5",
            "BOTH",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        wrappingOptOut = {
          description = "Whether this placement opts out of tag wrapping.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PlacementAssignment = {
      description = "Placement Assignment.",
      id = "PlacementAssignment",
      properties = {
        active = {
          description = "Whether this placement assignment is active. When true, the placement will be included in the ad's rotation.",
          type = "boolean",
        },
        placementId = {
          description = "ID of the placement to be assigned. This is a required field.",
          format = "int64",
          type = "string",
        },
        placementIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the placement. This is a read-only, auto-generated field.",
        },
        sslRequired = {
          description = "Whether the placement to be assigned requires SSL. This is a read-only field that is auto-generated when the ad is inserted or updated.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PlacementGroup = {
      description = "Contains properties of a package or roadblock.",
      id = "PlacementGroup",
      properties = {
        accountId = {
          description = "Account ID of this placement group. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this placement group. This is a required field on insertion.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        archived = {
          description = "Whether this placement group is archived.",
          type = "boolean",
        },
        campaignId = {
          description = "Campaign ID of this placement group. This field is required on insertion.",
          format = "int64",
          type = "string",
        },
        campaignIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the campaign. This is a read-only, auto-generated field.",
        },
        childPlacementIds = {
          description = "IDs of placements which are assigned to this placement group. This is a read-only, auto-generated field.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        comment = {
          description = "Comments for this placement group.",
          type = "string",
        },
        contentCategoryId = {
          description = "ID of the content category assigned to this placement group.",
          format = "int64",
          type = "string",
        },
        createInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the creation of this placement group. This is a read-only field.",
        },
        directorySiteId = {
          description = "Directory site ID associated with this placement group. On insert, you must set either this field or the site_id field to specify the site associated with this placement group. This is a required field that is read-only after insertion.",
          format = "int64",
          type = "string",
        },
        directorySiteIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the directory site. This is a read-only, auto-generated field.",
        },
        externalId = {
          description = "External ID for this placement.",
          type = "string",
        },
        id = {
          description = "ID of this placement group. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this placement group. This is a read-only, auto-generated field.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementGroup\".",
          type = "string",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the most recent modification of this placement group. This is a read-only field.",
        },
        name = {
          description = "Name of this placement group. This is a required field and must be less than 256 characters long.",
          type = "string",
        },
        placementGroupType = {
          description = "Type of this placement group. A package is a simple group of placements that acts as a single pricing point for a group of tags. A roadblock is a group of placements that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned placements to be marked as primary for reporting. This field is required on insertion.",
          enum = {
            "PLACEMENT_PACKAGE",
            "PLACEMENT_ROADBLOCK",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        placementStrategyId = {
          description = "ID of the placement strategy assigned to this placement group.",
          format = "int64",
          type = "string",
        },
        pricingSchedule = {
          ["$ref"] = "PricingSchedule",
          description = "Pricing schedule of this placement group. This field is required on insertion.",
        },
        primaryPlacementId = {
          description = "ID of the primary placement, used to calculate the media cost of a roadblock (placement group). Modifying this field will automatically modify the primary field on all affected roadblock child placements.",
          format = "int64",
          type = "string",
        },
        primaryPlacementIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the primary placement. This is a read-only, auto-generated field.",
        },
        siteId = {
          description = "Site ID associated with this placement group. On insert, you must set either this field or the directorySiteId field to specify the site associated with this placement group. This is a required field that is read-only after insertion.",
          format = "int64",
          type = "string",
        },
        siteIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the site. This is a read-only, auto-generated field.",
        },
        subaccountId = {
          description = "Subaccount ID of this placement group. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    PlacementGroupsListResponse = {
      description = "Placement Group List Response",
      id = "PlacementGroupsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementGroupsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        placementGroups = {
          description = "Placement group collection.",
          items = {
            ["$ref"] = "PlacementGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlacementStrategiesListResponse = {
      description = "Placement Strategy List Response",
      id = "PlacementStrategiesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementStrategiesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        placementStrategies = {
          description = "Placement strategy collection.",
          items = {
            ["$ref"] = "PlacementStrategy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlacementStrategy = {
      description = "Contains properties of a placement strategy.",
      id = "PlacementStrategy",
      properties = {
        accountId = {
          description = "Account ID of this placement strategy.This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "ID of this placement strategy. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementStrategy\".",
          type = "string",
        },
        name = {
          description = "Name of this placement strategy. This is a required field. It must be less than 256 characters long and unique among placement strategies of the same account.",
          type = "string",
        },
      },
      type = "object",
    },
    PlacementTag = {
      description = "Placement Tag",
      id = "PlacementTag",
      properties = {
        placementId = {
          description = "Placement ID",
          format = "int64",
          type = "string",
        },
        tagDatas = {
          description = "Tags generated for this placement.",
          items = {
            ["$ref"] = "TagData",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlacementsGenerateTagsResponse = {
      description = "Placement GenerateTags Response",
      id = "PlacementsGenerateTagsResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementsGenerateTagsResponse\".",
          type = "string",
        },
        placementTags = {
          description = "Set of generated tags for the specified placements.",
          items = {
            ["$ref"] = "PlacementTag",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlacementsListResponse = {
      description = "Placement List Response",
      id = "PlacementsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#placementsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        placements = {
          description = "Placement collection.",
          items = {
            ["$ref"] = "Placement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PlatformType = {
      description = "Contains information about a platform type that can be targeted by ads.",
      id = "PlatformType",
      properties = {
        id = {
          description = "ID of this platform type.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#platformType\".",
          type = "string",
        },
        name = {
          description = "Name of this platform type.",
          type = "string",
        },
      },
      type = "object",
    },
    PlatformTypesListResponse = {
      description = "Platform Type List Response",
      id = "PlatformTypesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#platformTypesListResponse\".",
          type = "string",
        },
        platformTypes = {
          description = "Platform type collection.",
          items = {
            ["$ref"] = "PlatformType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PopupWindowProperties = {
      description = "Popup Window Properties.",
      id = "PopupWindowProperties",
      properties = {
        dimension = {
          ["$ref"] = "Size",
          description = "Popup dimension for a creative. This is a read-only field. Applicable to the following creative types: all RICH_MEDIA and all VPAID",
        },
        offset = {
          ["$ref"] = "OffsetPosition",
          description = "Upper-left corner coordinates of the popup window. Applicable if positionType is COORDINATES.",
        },
        positionType = {
          description = "Popup window position either centered or at specific coordinate.",
          enum = {
            "CENTER",
            "COORDINATES",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        showAddressBar = {
          description = "Whether to display the browser address bar.",
          type = "boolean",
        },
        showMenuBar = {
          description = "Whether to display the browser menu bar.",
          type = "boolean",
        },
        showScrollBar = {
          description = "Whether to display the browser scroll bar.",
          type = "boolean",
        },
        showStatusBar = {
          description = "Whether to display the browser status bar.",
          type = "boolean",
        },
        showToolBar = {
          description = "Whether to display the browser tool bar.",
          type = "boolean",
        },
        title = {
          description = "Title of popup window.",
          type = "string",
        },
      },
      type = "object",
    },
    PostalCode = {
      description = "Contains information about a postal code that can be targeted by ads.",
      id = "PostalCode",
      properties = {
        code = {
          description = "Postal code. This is equivalent to the id field.",
          type = "string",
        },
        countryCode = {
          description = "Country code of the country to which this postal code belongs.",
          type = "string",
        },
        countryDartId = {
          description = "DART ID of the country to which this postal code belongs.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "ID of this postal code.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#postalCode\".",
          type = "string",
        },
      },
      type = "object",
    },
    PostalCodesListResponse = {
      description = "Postal Code List Response",
      id = "PostalCodesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#postalCodesListResponse\".",
          type = "string",
        },
        postalCodes = {
          description = "Postal code collection.",
          items = {
            ["$ref"] = "PostalCode",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Pricing = {
      description = "Pricing Information",
      id = "Pricing",
      properties = {
        capCostType = {
          description = "Cap cost type of this inventory item.",
          enum = {
            "PLANNING_PLACEMENT_CAP_COST_TYPE_NONE",
            "PLANNING_PLACEMENT_CAP_COST_TYPE_MONTHLY",
            "PLANNING_PLACEMENT_CAP_COST_TYPE_CUMULATIVE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        endDate = {
          format = "date",
          type = "string",
        },
        flights = {
          description = "Flights of this inventory item. A flight (a.k.a. pricing period) represents the inventory item pricing information for a specific period of time.",
          items = {
            ["$ref"] = "Flight",
          },
          type = "array",
        },
        groupType = {
          description = "Group type of this inventory item if it represents a placement group. Is null otherwise. There are two type of placement groups: PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE is a simple group of inventory items that acts as a single pricing point for a group of tags. PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK is a group of inventory items that not only acts as a single pricing point, but also assumes that all the tags in it will be served at the same time. A roadblock requires one of its assigned inventory items to be marked as primary.",
          enum = {
            "PLANNING_PLACEMENT_GROUP_TYPE_PACKAGE",
            "PLANNING_PLACEMENT_GROUP_TYPE_ROADBLOCK",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        pricingType = {
          description = "Pricing type of this inventory item.",
          enum = {
            "PLANNING_PLACEMENT_PRICING_TYPE_IMPRESSIONS",
            "PLANNING_PLACEMENT_PRICING_TYPE_CPM",
            "PLANNING_PLACEMENT_PRICING_TYPE_CLICKS",
            "PLANNING_PLACEMENT_PRICING_TYPE_CPC",
            "PLANNING_PLACEMENT_PRICING_TYPE_CPA",
            "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_IMPRESSIONS",
            "PLANNING_PLACEMENT_PRICING_TYPE_FLAT_RATE_CLICKS",
            "PLANNING_PLACEMENT_PRICING_TYPE_CPM_ACTIVEVIEW",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        startDate = {
          format = "date",
          type = "string",
        },
      },
      type = "object",
    },
    PricingSchedule = {
      description = "Pricing Schedule",
      id = "PricingSchedule",
      properties = {
        capCostOption = {
          description = "Placement cap cost option.",
          enum = {
            "CAP_COST_NONE",
            "CAP_COST_MONTHLY",
            "CAP_COST_CUMULATIVE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        endDate = {
          format = "date",
          type = "string",
        },
        flighted = {
          description = "Whether this placement is flighted. If true, pricing periods will be computed automatically.",
          type = "boolean",
        },
        floodlightActivityId = {
          description = "Floodlight activity ID associated with this placement. This field should be set when placement pricing type is set to PRICING_TYPE_CPA.",
          format = "int64",
          type = "string",
        },
        pricingPeriods = {
          description = "Pricing periods for this placement.",
          items = {
            ["$ref"] = "PricingSchedulePricingPeriod",
          },
          type = "array",
        },
        pricingType = {
          description = "Placement pricing type. This field is required on insertion.",
          enum = {
            "PRICING_TYPE_CPM",
            "PRICING_TYPE_CPC",
            "PRICING_TYPE_CPA",
            "PRICING_TYPE_FLAT_RATE_IMPRESSIONS",
            "PRICING_TYPE_FLAT_RATE_CLICKS",
            "PRICING_TYPE_CPM_ACTIVEVIEW",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        startDate = {
          format = "date",
          type = "string",
        },
        testingStartDate = {
          format = "date",
          type = "string",
        },
      },
      type = "object",
    },
    PricingSchedulePricingPeriod = {
      description = "Pricing Period",
      id = "PricingSchedulePricingPeriod",
      properties = {
        endDate = {
          format = "date",
          type = "string",
        },
        pricingComment = {
          description = "Comments for this pricing period.",
          type = "string",
        },
        rateOrCostNanos = {
          description = "Rate or cost of this pricing period in nanos (i.e., multipled by 1000000000). Acceptable values are 0 to 1000000000000000000, inclusive.",
          format = "int64",
          type = "string",
        },
        startDate = {
          format = "date",
          type = "string",
        },
        units = {
          description = "Units of this pricing period. Acceptable values are 0 to 10000000000, inclusive.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Project = {
      description = "Contains properties of a Planning project.",
      id = "Project",
      properties = {
        accountId = {
          description = "Account ID of this project.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this project.",
          format = "int64",
          type = "string",
        },
        audienceAgeGroup = {
          description = "Audience age group of this project.",
          enum = {
            "PLANNING_AUDIENCE_AGE_18_24",
            "PLANNING_AUDIENCE_AGE_25_34",
            "PLANNING_AUDIENCE_AGE_35_44",
            "PLANNING_AUDIENCE_AGE_45_54",
            "PLANNING_AUDIENCE_AGE_55_64",
            "PLANNING_AUDIENCE_AGE_65_OR_MORE",
            "PLANNING_AUDIENCE_AGE_UNKNOWN",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        audienceGender = {
          description = "Audience gender of this project.",
          enum = {
            "PLANNING_AUDIENCE_GENDER_MALE",
            "PLANNING_AUDIENCE_GENDER_FEMALE",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        budget = {
          description = "Budget of this project in the currency specified by the current account. The value stored in this field represents only the non-fractional amount. For example, for USD, the smallest value that can be represented by this field is 1 US dollar.",
          format = "int64",
          type = "string",
        },
        clientBillingCode = {
          description = "Client billing code of this project.",
          type = "string",
        },
        clientName = {
          description = "Name of the project client.",
          type = "string",
        },
        endDate = {
          format = "date",
          type = "string",
        },
        id = {
          description = "ID of this project. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#project\".",
          type = "string",
        },
        lastModifiedInfo = {
          ["$ref"] = "LastModifiedInfo",
          description = "Information about the most recent modification of this project.",
        },
        name = {
          description = "Name of this project.",
          type = "string",
        },
        overview = {
          description = "Overview of this project.",
          type = "string",
        },
        startDate = {
          format = "date",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this project.",
          format = "int64",
          type = "string",
        },
        targetClicks = {
          description = "Number of clicks that the advertiser is targeting.",
          format = "int64",
          type = "string",
        },
        targetConversions = {
          description = "Number of conversions that the advertiser is targeting.",
          format = "int64",
          type = "string",
        },
        targetCpaNanos = {
          description = "CPA that the advertiser is targeting.",
          format = "int64",
          type = "string",
        },
        targetCpcNanos = {
          description = "CPC that the advertiser is targeting.",
          format = "int64",
          type = "string",
        },
        targetCpmActiveViewNanos = {
          description = "vCPM from Active View that the advertiser is targeting.",
          format = "int64",
          type = "string",
        },
        targetCpmNanos = {
          description = "CPM that the advertiser is targeting.",
          format = "int64",
          type = "string",
        },
        targetImpressions = {
          description = "Number of impressions that the advertiser is targeting.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ProjectsListResponse = {
      description = "Project List Response",
      id = "ProjectsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#projectsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        projects = {
          description = "Project collection.",
          items = {
            ["$ref"] = "Project",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReachReportCompatibleFields = {
      description = "Represents fields that are compatible to be selected for a report of type \"REACH\".",
      id = "ReachReportCompatibleFields",
      properties = {
        dimensionFilters = {
          description = "Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        dimensions = {
          description = "Dimensions which are compatible to be selected in the \"dimensions\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#reachReportCompatibleFields.",
          type = "string",
        },
        metrics = {
          description = "Metrics which are compatible to be selected in the \"metricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        pivotedActivityMetrics = {
          description = "Metrics which are compatible to be selected as activity metrics to pivot on in the \"activities\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        reachByFrequencyMetrics = {
          description = "Metrics which are compatible to be selected in the \"reachByFrequencyMetricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Recipient = {
      description = "Represents a recipient.",
      id = "Recipient",
      properties = {
        deliveryType = {
          annotations = {
            required = {
              "dfareporting.reports.insert",
              "dfareporting.reports.update",
            },
          },
          description = "The delivery type for the recipient.",
          enum = {
            "LINK",
            "ATTACHMENT",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        email = {
          annotations = {
            required = {
              "dfareporting.reports.insert",
              "dfareporting.reports.update",
            },
          },
          description = "The email address of the recipient.",
          type = "string",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#recipient.",
          type = "string",
        },
      },
      type = "object",
    },
    Region = {
      description = "Contains information about a region that can be targeted by ads.",
      id = "Region",
      properties = {
        countryCode = {
          description = "Country code of the country to which this region belongs.",
          type = "string",
        },
        countryDartId = {
          description = "DART ID of the country to which this region belongs.",
          format = "int64",
          type = "string",
        },
        dartId = {
          description = "DART ID of this region.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#region\".",
          type = "string",
        },
        name = {
          description = "Name of this region.",
          type = "string",
        },
        regionCode = {
          description = "Region code.",
          type = "string",
        },
      },
      type = "object",
    },
    RegionsListResponse = {
      description = "Region List Response",
      id = "RegionsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#regionsListResponse\".",
          type = "string",
        },
        regions = {
          description = "Region collection.",
          items = {
            ["$ref"] = "Region",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RemarketingList = {
      description = "Contains properties of a remarketing list. Remarketing enables you to create lists of users who have performed specific actions on a site, then target ads to members of those lists. This resource can be used to manage remarketing lists that are owned by your advertisers. To see all remarketing lists that are visible to your advertisers, including those that are shared to your advertiser or account, use the TargetableRemarketingLists resource.",
      id = "RemarketingList",
      properties = {
        accountId = {
          description = "Account ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.",
          format = "int64",
          type = "string",
        },
        active = {
          description = "Whether this remarketing list is active.",
          type = "boolean",
        },
        advertiserId = {
          description = "Dimension value for the advertiser ID that owns this remarketing list. This is a required field.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        description = {
          description = "Remarketing list description.",
          type = "string",
        },
        id = {
          description = "Remarketing list ID. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#remarketingList\".",
          type = "string",
        },
        lifeSpan = {
          description = "Number of days that a user should remain in the remarketing list without an impression. Acceptable values are 1 to 540, inclusive.",
          format = "int64",
          type = "string",
        },
        listPopulationRule = {
          ["$ref"] = "ListPopulationRule",
          description = "Rule used to populate the remarketing list with users.",
        },
        listSize = {
          description = "Number of users currently in the list. This is a read-only field.",
          format = "int64",
          type = "string",
        },
        listSource = {
          description = "Product from which this remarketing list was originated.",
          enum = {
            "REMARKETING_LIST_SOURCE_OTHER",
            "REMARKETING_LIST_SOURCE_ADX",
            "REMARKETING_LIST_SOURCE_DFP",
            "REMARKETING_LIST_SOURCE_XFP",
            "REMARKETING_LIST_SOURCE_DFA",
            "REMARKETING_LIST_SOURCE_GA",
            "REMARKETING_LIST_SOURCE_YOUTUBE",
            "REMARKETING_LIST_SOURCE_DBM",
            "REMARKETING_LIST_SOURCE_GPLUS",
            "REMARKETING_LIST_SOURCE_DMP",
            "REMARKETING_LIST_SOURCE_PLAY_STORE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        name = {
          description = "Name of the remarketing list. This is a required field. Must be no greater than 128 characters long.",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RemarketingListShare = {
      description = "Contains properties of a remarketing list's sharing information. Sharing allows other accounts or advertisers to target to your remarketing lists. This resource can be used to manage remarketing list sharing to other accounts and advertisers.",
      id = "RemarketingListShare",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#remarketingListShare\".",
          type = "string",
        },
        remarketingListId = {
          description = "Remarketing list ID. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        sharedAccountIds = {
          description = "Accounts that the remarketing list is shared with.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        sharedAdvertiserIds = {
          description = "Advertisers that the remarketing list is shared with.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RemarketingListsListResponse = {
      description = "Remarketing list response",
      id = "RemarketingListsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#remarketingListsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        remarketingLists = {
          description = "Remarketing list collection.",
          items = {
            ["$ref"] = "RemarketingList",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Report = {
      description = "Represents a Report resource.",
      id = "Report",
      properties = {
        accountId = {
          annotations = {
            required = {
              "dfareporting.reports.update",
            },
          },
          description = "The account ID to which this report belongs.",
          format = "int64",
          type = "string",
        },
        criteria = {
          description = "The report criteria for a report of type \"STANDARD\".",
          properties = {
            activities = {
              ["$ref"] = "Activities",
              description = "Activity group.",
            },
            customRichMediaEvents = {
              ["$ref"] = "CustomRichMediaEvents",
              description = "Custom Rich Media Events group.",
            },
            dateRange = {
              ["$ref"] = "DateRange",
              description = "The date range for which this report should be run.",
            },
            dimensionFilters = {
              description = "The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            dimensions = {
              description = "The list of standard dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            metricNames = {
              description = "The list of names of metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        crossDimensionReachCriteria = {
          description = "The report criteria for a report of type \"CROSS_DIMENSION_REACH\".",
          properties = {
            breakdown = {
              description = "The list of dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            dateRange = {
              ["$ref"] = "DateRange",
              description = "The date range this report should be run for.",
            },
            dimension = {
              description = "The dimension option.",
              enum = {
                "ADVERTISER",
                "CAMPAIGN",
                "SITE_BY_ADVERTISER",
                "SITE_BY_CAMPAIGN",
              },
              enumDescriptions = {
                "",
                "",
                "",
                "",
              },
              type = "string",
            },
            dimensionFilters = {
              description = "The list of filters on which dimensions are filtered.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            metricNames = {
              description = "The list of names of metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
            overlapMetricNames = {
              description = "The list of names of overlap metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
            pivoted = {
              description = "Whether the report is pivoted or not. Defaults to true.",
              type = "boolean",
            },
          },
          type = "object",
        },
        delivery = {
          description = "The report's email delivery settings.",
          properties = {
            emailOwner = {
              description = "Whether the report should be emailed to the report owner.",
              type = "boolean",
            },
            emailOwnerDeliveryType = {
              description = "The type of delivery for the owner to receive, if enabled.",
              enum = {
                "LINK",
                "ATTACHMENT",
              },
              enumDescriptions = {
                "",
                "",
              },
              type = "string",
            },
            message = {
              description = "The message to be sent with each email.",
              type = "string",
            },
            recipients = {
              description = "The list of recipients to which to email the report.",
              items = {
                ["$ref"] = "Recipient",
              },
              type = "array",
            },
          },
          type = "object",
        },
        etag = {
          description = "The eTag of this response for caching purposes.",
          type = "string",
        },
        fileName = {
          description = "The filename used when generating report files for this report.",
          type = "string",
        },
        floodlightCriteria = {
          description = "The report criteria for a report of type \"FLOODLIGHT\".",
          properties = {
            customRichMediaEvents = {
              description = "The list of custom rich media events to include.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            dateRange = {
              ["$ref"] = "DateRange",
              description = "The date range this report should be run for.",
            },
            dimensionFilters = {
              description = "The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            dimensions = {
              description = "The list of dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            floodlightConfigId = {
              ["$ref"] = "DimensionValue",
              description = "The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'.",
            },
            metricNames = {
              description = "The list of names of metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
            reportProperties = {
              description = "The properties of the report.",
              properties = {
                includeAttributedIPConversions = {
                  description = "Include conversions that have no cookie, but do have an exposure path.",
                  type = "boolean",
                },
                includeUnattributedCookieConversions = {
                  description = "Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window.",
                  type = "boolean",
                },
                includeUnattributedIPConversions = {
                  description = "Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion.",
                  type = "boolean",
                },
              },
              type = "object",
            },
          },
          type = "object",
        },
        format = {
          description = "The output format of the report. If not specified, default format is \"CSV\". Note that the actual format in the completed report file might differ if for instance the report's size exceeds the format's capabilities. \"CSV\" will then be the fallback format.",
          enum = {
            "CSV",
            "EXCEL",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        id = {
          annotations = {
            required = {
              "dfareporting.reports.update",
            },
          },
          description = "The unique ID identifying this report resource.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#report.",
          type = "string",
        },
        lastModifiedTime = {
          annotations = {
            required = {
              "dfareporting.reports.update",
            },
          },
          description = "The timestamp (in milliseconds since epoch) of when this report was last modified.",
          format = "uint64",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "dfareporting.reports.insert",
              "dfareporting.reports.update",
            },
          },
          description = "The name of the report.",
          type = "string",
        },
        ownerProfileId = {
          annotations = {
            required = {
              "dfareporting.reports.update",
            },
          },
          description = "The user profile id of the owner of this report.",
          format = "int64",
          type = "string",
        },
        pathAttributionCriteria = {
          description = "The report criteria for a report of type \"PATH_ATTRIBUTION\".",
          properties = {
            activityFilters = {
              description = "The list of 'dfa:activity' values to filter on.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            customChannelGrouping = {
              ["$ref"] = "ChannelGrouping",
              description = "Channel Grouping.",
            },
            dateRange = {
              ["$ref"] = "DateRange",
              description = "The date range this report should be run for.",
            },
            dimensions = {
              description = "The list of dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            floodlightConfigId = {
              ["$ref"] = "DimensionValue",
              description = "The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'.",
            },
            metricNames = {
              description = "The list of names of metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
            pathFilters = {
              description = "Path Filters.",
              items = {
                ["$ref"] = "PathFilter",
              },
              type = "array",
            },
          },
          type = "object",
        },
        pathCriteria = {
          description = "The report criteria for a report of type \"PATH\".",
          properties = {
            activityFilters = {
              description = "The list of 'dfa:activity' values to filter on.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            customChannelGrouping = {
              ["$ref"] = "ChannelGrouping",
              description = "Channel Grouping.",
            },
            dateRange = {
              ["$ref"] = "DateRange",
              description = "The date range this report should be run for.",
            },
            dimensions = {
              description = "The list of dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            floodlightConfigId = {
              ["$ref"] = "DimensionValue",
              description = "The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'.",
            },
            metricNames = {
              description = "The list of names of metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
            pathFilters = {
              description = "Path Filters.",
              items = {
                ["$ref"] = "PathFilter",
              },
              type = "array",
            },
          },
          type = "object",
        },
        pathToConversionCriteria = {
          description = "The report criteria for a report of type \"PATH_TO_CONVERSION\".",
          properties = {
            activityFilters = {
              description = "The list of 'dfa:activity' values to filter on.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            conversionDimensions = {
              description = "The list of conversion dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            customFloodlightVariables = {
              description = "The list of custom floodlight variables the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            customRichMediaEvents = {
              description = "The list of custom rich media events to include.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            dateRange = {
              ["$ref"] = "DateRange",
              description = "The date range this report should be run for.",
            },
            floodlightConfigId = {
              ["$ref"] = "DimensionValue",
              description = "The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'.",
            },
            metricNames = {
              description = "The list of names of metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
            perInteractionDimensions = {
              description = "The list of per interaction dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            reportProperties = {
              description = "The properties of the report.",
              properties = {
                clicksLookbackWindow = {
                  description = "CM360 checks to see if a click interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90.",
                  format = "int32",
                  type = "integer",
                },
                impressionsLookbackWindow = {
                  description = "CM360 checks to see if an impression interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90.",
                  format = "int32",
                  type = "integer",
                },
                includeAttributedIPConversions = {
                  description = "Deprecated: has no effect.",
                  type = "boolean",
                },
                includeUnattributedCookieConversions = {
                  description = "Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window.",
                  type = "boolean",
                },
                includeUnattributedIPConversions = {
                  description = "Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion.",
                  type = "boolean",
                },
                maximumClickInteractions = {
                  description = "The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report.",
                  format = "int32",
                  type = "integer",
                },
                maximumImpressionInteractions = {
                  description = "The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report.",
                  format = "int32",
                  type = "integer",
                },
                maximumInteractionGap = {
                  description = "The maximum amount of time that can take place between interactions (clicks or impressions) by the same user. Valid values: 1-90.",
                  format = "int32",
                  type = "integer",
                },
                pivotOnInteractionPath = {
                  description = "Enable pivoting on interaction path.",
                  type = "boolean",
                },
              },
              type = "object",
            },
          },
          type = "object",
        },
        reachCriteria = {
          description = "The report criteria for a report of type \"REACH\".",
          properties = {
            activities = {
              ["$ref"] = "Activities",
              description = "Activity group.",
            },
            customRichMediaEvents = {
              ["$ref"] = "CustomRichMediaEvents",
              description = "Custom Rich Media Events group.",
            },
            dateRange = {
              ["$ref"] = "DateRange",
              description = "The date range this report should be run for.",
            },
            dimensionFilters = {
              description = "The list of filters on which dimensions are filtered. Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.",
              items = {
                ["$ref"] = "DimensionValue",
              },
              type = "array",
            },
            dimensions = {
              description = "The list of dimensions the report should include.",
              items = {
                ["$ref"] = "SortedDimension",
              },
              type = "array",
            },
            enableAllDimensionCombinations = {
              description = "Whether to enable all reach dimension combinations in the report. Defaults to false. If enabled, the date range of the report should be within the last 42 days.",
              type = "boolean",
            },
            metricNames = {
              description = "The list of names of metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
            reachByFrequencyMetricNames = {
              description = "The list of names of Reach By Frequency metrics the report should include.",
              items = {
                type = "string",
              },
              type = "array",
            },
          },
          type = "object",
        },
        schedule = {
          description = "The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not \"TODAY\".",
          properties = {
            active = {
              annotations = {
                required = {
                  "dfareporting.reports.insert",
                  "dfareporting.reports.update",
                },
              },
              description = "Whether the schedule is active or not. Must be set to either true or false.",
              type = "boolean",
            },
            every = {
              description = "Defines every how many days, weeks or months the report should be run. Needs to be set when \"repeats\" is either \"DAILY\", \"WEEKLY\" or \"MONTHLY\".",
              format = "int32",
              type = "integer",
            },
            expirationDate = {
              format = "date",
              type = "string",
            },
            repeats = {
              annotations = {
                required = {
                  "dfareporting.reports.insert",
                  "dfareporting.reports.update",
                },
              },
              description = "The interval for which the report is repeated. Note: - \"DAILY\" also requires field \"every\" to be set. - \"WEEKLY\" also requires fields \"every\" and \"repeatsOnWeekDays\" to be set. - \"MONTHLY\" also requires fields \"every\" and \"runsOnDayOfMonth\" to be set. ",
              type = "string",
            },
            repeatsOnWeekDays = {
              description = "List of week days \"WEEKLY\" on which scheduled reports should run.",
              items = {
                enum = {
                  "SUNDAY",
                  "MONDAY",
                  "TUESDAY",
                  "WEDNESDAY",
                  "THURSDAY",
                  "FRIDAY",
                  "SATURDAY",
                },
                enumDescriptions = {
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                  "",
                },
                type = "string",
              },
              type = "array",
            },
            runsOnDayOfMonth = {
              description = "Enum to define for \"MONTHLY\" scheduled reports whether reports should be repeated on the same day of the month as \"startDate\" or the same day of the week of the month. Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02), \"DAY_OF_MONTH\" would run subsequent reports on the 2nd of every Month, and \"WEEK_OF_MONTH\" would run subsequent reports on the first Monday of the month.",
              enum = {
                "DAY_OF_MONTH",
                "WEEK_OF_MONTH",
              },
              enumDescriptions = {
                "",
                "",
              },
              type = "string",
            },
            startDate = {
              format = "date",
              type = "string",
            },
          },
          type = "object",
        },
        subAccountId = {
          description = "The subaccount ID to which this report belongs if applicable.",
          format = "int64",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "dfareporting.reports.insert",
              "dfareporting.reports.update",
            },
          },
          description = "The type of the report.",
          enum = {
            "STANDARD",
            "REACH",
            "PATH_TO_CONVERSION",
            "CROSS_DIMENSION_REACH",
            "FLOODLIGHT",
            "PATH",
            "PATH_ATTRIBUTION",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ReportCompatibleFields = {
      description = "Represents fields that are compatible to be selected for a report of type \"STANDARD\".",
      id = "ReportCompatibleFields",
      properties = {
        dimensionFilters = {
          description = "Dimensions which are compatible to be selected in the \"dimensionFilters\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        dimensions = {
          description = "Dimensions which are compatible to be selected in the \"dimensions\" section of the report.",
          items = {
            ["$ref"] = "Dimension",
          },
          type = "array",
        },
        kind = {
          description = "The kind of resource this is, in this case dfareporting#reportCompatibleFields.",
          type = "string",
        },
        metrics = {
          description = "Metrics which are compatible to be selected in the \"metricNames\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
        pivotedActivityMetrics = {
          description = "Metrics which are compatible to be selected as activity metrics to pivot on in the \"activities\" section of the report.",
          items = {
            ["$ref"] = "Metric",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReportList = {
      description = "Represents the list of reports.",
      id = "ReportList",
      properties = {
        etag = {
          description = "The eTag of this response for caching purposes.",
          type = "string",
        },
        items = {
          description = "The reports returned in this response.",
          items = {
            ["$ref"] = "Report",
          },
          type = "array",
        },
        kind = {
          description = "The kind of list this is, in this case dfareporting#reportList.",
          type = "string",
        },
        nextPageToken = {
          description = "Continuation token used to page through reports. To retrieve the next page of results, set the next request's \"pageToken\" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportsConfiguration = {
      description = "Reporting Configuration",
      id = "ReportsConfiguration",
      properties = {
        exposureToConversionEnabled = {
          description = "Whether the exposure to conversion report is enabled. This report shows detailed pathway information on up to 10 of the most recent ad exposures seen by a user before converting.",
          type = "boolean",
        },
        lookbackConfiguration = {
          ["$ref"] = "LookbackConfiguration",
          description = "Default lookback windows for new advertisers in this account.",
        },
        reportGenerationTimeZoneId = {
          description = "Report generation time zone ID of this account. This is a required field that can only be changed by a superuser. Acceptable values are: - \"1\" for \"America/New_York\" - \"2\" for \"Europe/London\" - \"3\" for \"Europe/Paris\" - \"4\" for \"Africa/Johannesburg\" - \"5\" for \"Asia/Jerusalem\" - \"6\" for \"Asia/Shanghai\" - \"7\" for \"Asia/Hong_Kong\" - \"8\" for \"Asia/Tokyo\" - \"9\" for \"Australia/Sydney\" - \"10\" for \"Asia/Dubai\" - \"11\" for \"America/Los_Angeles\" - \"12\" for \"Pacific/Auckland\" - \"13\" for \"America/Sao_Paulo\" - \"16\" for \"America/Asuncion\" - \"17\" for \"America/Chicago\" - \"18\" for \"America/Denver\" - \"19\" for \"America/St_Johns\" - \"20\" for \"Asia/Dhaka\" - \"21\" for \"Asia/Jakarta\" - \"22\" for \"Asia/Kabul\" - \"23\" for \"Asia/Karachi\" - \"24\" for \"Asia/Calcutta\" - \"25\" for \"Asia/Pyongyang\" - \"26\" for \"Asia/Rangoon\" - \"27\" for \"Atlantic/Cape_Verde\" - \"28\" for \"Atlantic/South_Georgia\" - \"29\" for \"Australia/Adelaide\" - \"30\" for \"Australia/Lord_Howe\" - \"31\" for \"Europe/Moscow\" - \"32\" for \"Pacific/Kiritimati\" - \"35\" for \"Pacific/Norfolk\" - \"36\" for \"Pacific/Tongatapu\" ",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RichMediaExitOverride = {
      description = "Rich Media Exit Override.",
      id = "RichMediaExitOverride",
      properties = {
        clickThroughUrl = {
          ["$ref"] = "ClickThroughUrl",
          description = "Click-through URL of this rich media exit override. Applicable if the enabled field is set to true.",
        },
        enabled = {
          description = "Whether to use the clickThroughUrl. If false, the creative-level exit will be used.",
          type = "boolean",
        },
        exitId = {
          description = "ID for the override to refer to a specific exit in the creative.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Rule = {
      description = "A rule associates an asset with a targeting template for asset-level targeting. Applicable to INSTREAM_VIDEO creatives.",
      id = "Rule",
      properties = {
        assetId = {
          description = "A creativeAssets[].id. This should refer to one of the parent assets in this creative. This is a required field.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "A user-friendly name for this rule. This is a required field.",
          type = "string",
        },
        targetingTemplateId = {
          description = "A targeting template ID. The targeting from the targeting template will be used to determine whether this asset should be served. This is a required field.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    Site = {
      description = "Contains properties of a site.",
      id = "Site",
      properties = {
        accountId = {
          description = "Account ID of this site. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        approved = {
          description = "Whether this site is approved.",
          type = "boolean",
        },
        directorySiteId = {
          description = "Directory site associated with this site. This is a required field that is read-only after insertion.",
          format = "int64",
          type = "string",
        },
        directorySiteIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the directory site. This is a read-only, auto-generated field.",
        },
        id = {
          description = "ID of this site. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        idDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of this site. This is a read-only, auto-generated field.",
        },
        keyName = {
          description = "Key name of this site. This is a read-only, auto-generated field.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#site\".",
          type = "string",
        },
        name = {
          description = "Name of this site.This is a required field. Must be less than 128 characters long. If this site is under a subaccount, the name must be unique among sites of the same subaccount. Otherwise, this site is a top-level site, and the name must be unique among top-level sites of the same account.",
          type = "string",
        },
        siteContacts = {
          description = "Site contacts.",
          items = {
            ["$ref"] = "SiteContact",
          },
          type = "array",
        },
        siteSettings = {
          ["$ref"] = "SiteSettings",
          description = "Site-wide settings.",
        },
        subaccountId = {
          description = "Subaccount ID of this site. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        videoSettings = {
          ["$ref"] = "SiteVideoSettings",
          description = "Default video settings for new placements created under this site. This value will be used to populate the placements.videoSettings field, when no value is specified for the new placement.",
        },
      },
      type = "object",
    },
    SiteCompanionSetting = {
      description = "Companion Settings",
      id = "SiteCompanionSetting",
      properties = {
        companionsDisabled = {
          description = "Whether companions are disabled for this site template.",
          type = "boolean",
        },
        enabledSizes = {
          description = "Allowlist of companion sizes to be served via this site template. Set this list to null or empty to serve all companion sizes.",
          items = {
            ["$ref"] = "Size",
          },
          type = "array",
        },
        imageOnly = {
          description = "Whether to serve only static images as companions.",
          type = "boolean",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteCompanionSetting\".",
          type = "string",
        },
      },
      type = "object",
    },
    SiteContact = {
      description = "Site Contact",
      id = "SiteContact",
      properties = {
        address = {
          description = "Address of this site contact.",
          type = "string",
        },
        contactType = {
          description = "Site contact type.",
          enum = {
            "SALES_PERSON",
            "TRAFFICKER",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        email = {
          description = "Email address of this site contact. This is a required field.",
          type = "string",
        },
        firstName = {
          description = "First name of this site contact.",
          type = "string",
        },
        id = {
          description = "ID of this site contact. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        lastName = {
          description = "Last name of this site contact.",
          type = "string",
        },
        phone = {
          description = "Primary phone number of this site contact.",
          type = "string",
        },
        title = {
          description = "Title or designation of this site contact.",
          type = "string",
        },
      },
      type = "object",
    },
    SiteSettings = {
      description = "Site Settings",
      id = "SiteSettings",
      properties = {
        activeViewOptOut = {
          description = "Whether active view creatives are disabled for this site.",
          type = "boolean",
        },
        adBlockingOptOut = {
          description = "Whether this site opts out of ad blocking. When true, ad blocking is disabled for all placements under the site, regardless of the individual placement settings. When false, the campaign and placement settings take effect.",
          type = "boolean",
        },
        disableNewCookie = {
          description = "Whether new cookies are disabled for this site.",
          type = "boolean",
        },
        tagSetting = {
          ["$ref"] = "TagSetting",
          description = "Configuration settings for dynamic and image floodlight tags.",
        },
        videoActiveViewOptOutTemplate = {
          description = "Whether Verification and ActiveView for in-stream video creatives are disabled by default for new placements created under this site. This value will be used to populate the placement.videoActiveViewOptOut field, when no value is specified for the new placement.",
          type = "boolean",
        },
        vpaidAdapterChoiceTemplate = {
          description = "Default VPAID adapter setting for new placements created under this site. This value will be used to populate the placements.vpaidAdapterChoice field, when no value is specified for the new placement. Controls which VPAID format the measurement adapter will use for in-stream video creatives assigned to the placement. The publisher's specifications will typically determine this setting. For VPAID creatives, the adapter format will match the VPAID format (HTML5 VPAID creatives use the HTML5 adapter). *Note:* Flash is no longer supported. This field now defaults to HTML5 when the following values are provided: FLASH, BOTH.",
          enum = {
            "DEFAULT",
            "FLASH",
            "HTML5",
            "BOTH",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SiteSkippableSetting = {
      description = "Skippable Settings",
      id = "SiteSkippableSetting",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteSkippableSetting\".",
          type = "string",
        },
        progressOffset = {
          ["$ref"] = "VideoOffset",
          description = "Amount of time to play videos served to this site template before counting a view. Applicable when skippable is true.",
        },
        skipOffset = {
          ["$ref"] = "VideoOffset",
          description = "Amount of time to play videos served to this site before the skip button should appear. Applicable when skippable is true.",
        },
        skippable = {
          description = "Whether the user can skip creatives served to this site. This will act as default for new placements created under this site.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SiteTranscodeSetting = {
      description = "Transcode Settings",
      id = "SiteTranscodeSetting",
      properties = {
        enabledVideoFormats = {
          description = "Allowlist of video formats to be served to this site template. Set this list to null or empty to serve all video formats.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteTranscodeSetting\".",
          type = "string",
        },
      },
      type = "object",
    },
    SiteVideoSettings = {
      description = "Video Settings",
      id = "SiteVideoSettings",
      properties = {
        companionSettings = {
          ["$ref"] = "SiteCompanionSetting",
          description = "Settings for the companion creatives of video creatives served to this site.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#siteVideoSettings\".",
          type = "string",
        },
        obaEnabled = {
          description = "Whether OBA icons are enabled for this placement.",
          type = "boolean",
        },
        obaSettings = {
          ["$ref"] = "ObaIcon",
          description = "Settings for the OBA icon of video creatives served to this site. This will act as default for new placements created under this site.",
        },
        orientation = {
          description = "Orientation of a site template used for video. This will act as default for new placements created under this site.",
          enum = {
            "ANY",
            "LANDSCAPE",
            "PORTRAIT",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        skippableSettings = {
          ["$ref"] = "SiteSkippableSetting",
          description = "Settings for the skippability of video creatives served to this site. This will act as default for new placements created under this site.",
        },
        transcodeSettings = {
          ["$ref"] = "SiteTranscodeSetting",
          description = "Settings for the transcodes of video creatives served to this site. This will act as default for new placements created under this site.",
        },
      },
      type = "object",
    },
    SitesListResponse = {
      description = "Site List Response",
      id = "SitesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#sitesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        sites = {
          description = "Site collection.",
          items = {
            ["$ref"] = "Site",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Size = {
      description = "Represents the dimensions of ads, placements, creatives, or creative assets.",
      id = "Size",
      properties = {
        height = {
          description = "Height of this size. Acceptable values are 0 to 32767, inclusive.",
          format = "int32",
          type = "integer",
        },
        iab = {
          description = "IAB standard size. This is a read-only, auto-generated field.",
          type = "boolean",
        },
        id = {
          description = "ID of this size. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#size\".",
          type = "string",
        },
        width = {
          description = "Width of this size. Acceptable values are 0 to 32767, inclusive.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SizesListResponse = {
      description = "Size List Response",
      id = "SizesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#sizesListResponse\".",
          type = "string",
        },
        sizes = {
          description = "Size collection.",
          items = {
            ["$ref"] = "Size",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SkippableSetting = {
      description = "Skippable Settings",
      id = "SkippableSetting",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#skippableSetting\".",
          type = "string",
        },
        progressOffset = {
          ["$ref"] = "VideoOffset",
          description = "Amount of time to play videos served to this placement before counting a view. Applicable when skippable is true.",
        },
        skipOffset = {
          ["$ref"] = "VideoOffset",
          description = "Amount of time to play videos served to this placement before the skip button should appear. Applicable when skippable is true.",
        },
        skippable = {
          description = "Whether the user can skip creatives served to this placement.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SortedDimension = {
      description = "Represents a sorted dimension.",
      id = "SortedDimension",
      properties = {
        kind = {
          description = "The kind of resource this is, in this case dfareporting#sortedDimension.",
          type = "string",
        },
        name = {
          description = "The name of the dimension.",
          type = "string",
        },
        sortOrder = {
          description = "An optional sort order for the dimension column.",
          enum = {
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Subaccount = {
      description = "Contains properties of a Campaign Manager subaccount.",
      id = "Subaccount",
      properties = {
        accountId = {
          description = "ID of the account that contains this subaccount. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        availablePermissionIds = {
          description = "IDs of the available user role permissions for this subaccount.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "ID of this subaccount. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#subaccount\".",
          type = "string",
        },
        name = {
          description = "Name of this subaccount. This is a required field. Must be less than 128 characters long and be unique among subaccounts of the same account.",
          type = "string",
        },
      },
      type = "object",
    },
    SubaccountsListResponse = {
      description = "Subaccount List Response",
      id = "SubaccountsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#subaccountsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        subaccounts = {
          description = "Subaccount collection.",
          items = {
            ["$ref"] = "Subaccount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TagData = {
      description = "Placement Tag Data",
      id = "TagData",
      properties = {
        adId = {
          description = "Ad associated with this placement tag. Applicable only when format is PLACEMENT_TAG_TRACKING.",
          format = "int64",
          type = "string",
        },
        clickTag = {
          description = "Tag string to record a click.",
          type = "string",
        },
        creativeId = {
          description = "Creative associated with this placement tag. Applicable only when format is PLACEMENT_TAG_TRACKING.",
          format = "int64",
          type = "string",
        },
        format = {
          description = "TagData tag format of this tag.",
          enum = {
            "PLACEMENT_TAG_STANDARD",
            "PLACEMENT_TAG_IFRAME_JAVASCRIPT",
            "PLACEMENT_TAG_IFRAME_ILAYER",
            "PLACEMENT_TAG_INTERNAL_REDIRECT",
            "PLACEMENT_TAG_JAVASCRIPT",
            "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT",
            "PLACEMENT_TAG_INTERSTITIAL_INTERNAL_REDIRECT",
            "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT",
            "PLACEMENT_TAG_CLICK_COMMANDS",
            "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH",
            "PLACEMENT_TAG_TRACKING",
            "PLACEMENT_TAG_TRACKING_IFRAME",
            "PLACEMENT_TAG_TRACKING_JAVASCRIPT",
            "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_3",
            "PLACEMENT_TAG_IFRAME_JAVASCRIPT_LEGACY",
            "PLACEMENT_TAG_JAVASCRIPT_LEGACY",
            "PLACEMENT_TAG_INTERSTITIAL_IFRAME_JAVASCRIPT_LEGACY",
            "PLACEMENT_TAG_INTERSTITIAL_JAVASCRIPT_LEGACY",
            "PLACEMENT_TAG_INSTREAM_VIDEO_PREFETCH_VAST_4",
            "PLACEMENT_TAG_TRACKING_THIRD_PARTY_MEASUREMENT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        impressionTag = {
          description = "Tag string for serving an ad.",
          type = "string",
        },
      },
      type = "object",
    },
    TagSetting = {
      description = "Tag Settings",
      id = "TagSetting",
      properties = {
        additionalKeyValues = {
          description = "Additional key-values to be included in tags. Each key-value pair must be of the form key=value, and pairs must be separated by a semicolon (;). Keys and values must not contain commas. For example, id=2;color=red is a valid value for this field.",
          type = "string",
        },
        includeClickThroughUrls = {
          description = "Whether static landing page URLs should be included in the tags. This setting applies only to placements.",
          type = "boolean",
        },
        includeClickTracking = {
          description = "Whether click-tracking string should be included in the tags.",
          type = "boolean",
        },
        keywordOption = {
          description = "Option specifying how keywords are embedded in ad tags. This setting can be used to specify whether keyword placeholders are inserted in placement tags for this site. Publishers can then add keywords to those placeholders.",
          enum = {
            "PLACEHOLDER_WITH_LIST_OF_KEYWORDS",
            "IGNORE",
            "GENERATE_SEPARATE_TAG_FOR_EACH_KEYWORD",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TagSettings = {
      description = "Dynamic and Image Tag Settings.",
      id = "TagSettings",
      properties = {
        dynamicTagEnabled = {
          description = "Whether dynamic floodlight tags are enabled.",
          type = "boolean",
        },
        imageTagEnabled = {
          description = "Whether image tags are enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TargetWindow = {
      description = "Target Window.",
      id = "TargetWindow",
      properties = {
        customHtml = {
          description = "User-entered value.",
          type = "string",
        },
        targetWindowOption = {
          description = "Type of browser window for which the backup image of the flash creative can be displayed.",
          enum = {
            "NEW_WINDOW",
            "CURRENT_WINDOW",
            "CUSTOM",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    TargetableRemarketingList = {
      description = "Contains properties of a targetable remarketing list. Remarketing enables you to create lists of users who have performed specific actions on a site, then target ads to members of those lists. This resource is a read-only view of a remarketing list to be used to faciliate targeting ads to specific lists. Remarketing lists that are owned by your advertisers and those that are shared to your advertisers or account are accessible via this resource. To manage remarketing lists that are owned by your advertisers, use the RemarketingLists resource.",
      id = "TargetableRemarketingList",
      properties = {
        accountId = {
          description = "Account ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.",
          format = "int64",
          type = "string",
        },
        active = {
          description = "Whether this targetable remarketing list is active.",
          type = "boolean",
        },
        advertiserId = {
          description = "Dimension value for the advertiser ID that owns this targetable remarketing list.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser.",
        },
        description = {
          description = "Targetable remarketing list description.",
          type = "string",
        },
        id = {
          description = "Targetable remarketing list ID.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetableRemarketingList\".",
          type = "string",
        },
        lifeSpan = {
          description = "Number of days that a user should remain in the targetable remarketing list without an impression.",
          format = "int64",
          type = "string",
        },
        listSize = {
          description = "Number of users currently in the list. This is a read-only field.",
          format = "int64",
          type = "string",
        },
        listSource = {
          description = "Product from which this targetable remarketing list was originated.",
          enum = {
            "REMARKETING_LIST_SOURCE_OTHER",
            "REMARKETING_LIST_SOURCE_ADX",
            "REMARKETING_LIST_SOURCE_DFP",
            "REMARKETING_LIST_SOURCE_XFP",
            "REMARKETING_LIST_SOURCE_DFA",
            "REMARKETING_LIST_SOURCE_GA",
            "REMARKETING_LIST_SOURCE_YOUTUBE",
            "REMARKETING_LIST_SOURCE_DBM",
            "REMARKETING_LIST_SOURCE_GPLUS",
            "REMARKETING_LIST_SOURCE_DMP",
            "REMARKETING_LIST_SOURCE_PLAY_STORE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        name = {
          description = "Name of the targetable remarketing list. Is no greater than 128 characters long.",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this remarketing list. This is a read-only, auto-generated field that is only returned in GET requests.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    TargetableRemarketingListsListResponse = {
      description = "Targetable remarketing list response",
      id = "TargetableRemarketingListsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetableRemarketingListsListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        targetableRemarketingLists = {
          description = "Targetable remarketing list collection.",
          items = {
            ["$ref"] = "TargetableRemarketingList",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TargetingTemplate = {
      description = "Contains properties of a targeting template. A targeting template encapsulates targeting information which can be reused across multiple ads.",
      id = "TargetingTemplate",
      properties = {
        accountId = {
          description = "Account ID of this targeting template. This field, if left unset, will be auto-generated on insert and is read-only after insert.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "Advertiser ID of this targeting template. This is a required field on insert and is read-only after insert.",
          format = "int64",
          type = "string",
        },
        advertiserIdDimensionValue = {
          ["$ref"] = "DimensionValue",
          description = "Dimension value for the ID of the advertiser. This is a read-only, auto-generated field.",
        },
        dayPartTargeting = {
          ["$ref"] = "DayPartTargeting",
          description = "Time and day targeting criteria.",
        },
        geoTargeting = {
          ["$ref"] = "GeoTargeting",
          description = "Geographical targeting criteria.",
        },
        id = {
          description = "ID of this targeting template. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        keyValueTargetingExpression = {
          ["$ref"] = "KeyValueTargetingExpression",
          description = "Key-value targeting criteria.",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetingTemplate\".",
          type = "string",
        },
        languageTargeting = {
          ["$ref"] = "LanguageTargeting",
          description = "Language targeting criteria.",
        },
        listTargetingExpression = {
          ["$ref"] = "ListTargetingExpression",
          description = "Remarketing list targeting criteria.",
        },
        name = {
          description = "Name of this targeting template. This field is required. It must be less than 256 characters long and unique within an advertiser.",
          type = "string",
        },
        subaccountId = {
          description = "Subaccount ID of this targeting template. This field, if left unset, will be auto-generated on insert and is read-only after insert.",
          format = "int64",
          type = "string",
        },
        technologyTargeting = {
          ["$ref"] = "TechnologyTargeting",
          description = "Technology platform targeting criteria.",
        },
      },
      type = "object",
    },
    TargetingTemplatesListResponse = {
      description = "Targeting Template List Response",
      id = "TargetingTemplatesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#targetingTemplatesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        targetingTemplates = {
          description = "Targeting template collection.",
          items = {
            ["$ref"] = "TargetingTemplate",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TechnologyTargeting = {
      description = "Technology Targeting.",
      id = "TechnologyTargeting",
      properties = {
        browsers = {
          description = "Browsers that this ad targets. For each browser either set browserVersionId or dartId along with the version numbers. If both are specified, only browserVersionId will be used. The other fields are populated automatically when the ad is inserted or updated.",
          items = {
            ["$ref"] = "Browser",
          },
          type = "array",
        },
        connectionTypes = {
          description = "Connection types that this ad targets. For each connection type only id is required. The other fields are populated automatically when the ad is inserted or updated.",
          items = {
            ["$ref"] = "ConnectionType",
          },
          type = "array",
        },
        mobileCarriers = {
          description = "Mobile carriers that this ad targets. For each mobile carrier only id is required, and the other fields are populated automatically when the ad is inserted or updated. If targeting a mobile carrier, do not set targeting for any zip codes.",
          items = {
            ["$ref"] = "MobileCarrier",
          },
          type = "array",
        },
        operatingSystemVersions = {
          description = "Operating system versions that this ad targets. To target all versions, use operatingSystems. For each operating system version, only id is required. The other fields are populated automatically when the ad is inserted or updated. If targeting an operating system version, do not set targeting for the corresponding operating system in operatingSystems.",
          items = {
            ["$ref"] = "OperatingSystemVersion",
          },
          type = "array",
        },
        operatingSystems = {
          description = "Operating systems that this ad targets. To target specific versions, use operatingSystemVersions. For each operating system only dartId is required. The other fields are populated automatically when the ad is inserted or updated. If targeting an operating system, do not set targeting for operating system versions for the same operating system.",
          items = {
            ["$ref"] = "OperatingSystem",
          },
          type = "array",
        },
        platformTypes = {
          description = "Platform types that this ad targets. For example, desktop, mobile, or tablet. For each platform type, only id is required, and the other fields are populated automatically when the ad is inserted or updated.",
          items = {
            ["$ref"] = "PlatformType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ThirdPartyAuthenticationToken = {
      description = "Third Party Authentication Token",
      id = "ThirdPartyAuthenticationToken",
      properties = {
        name = {
          description = "Name of the third-party authentication token.",
          type = "string",
        },
        value = {
          description = "Value of the third-party authentication token. This is a read-only, auto-generated field.",
          type = "string",
        },
      },
      type = "object",
    },
    ThirdPartyTrackingUrl = {
      description = "Third-party Tracking URL.",
      id = "ThirdPartyTrackingUrl",
      properties = {
        thirdPartyUrlType = {
          description = "Third-party URL type for in-stream video and in-stream audio creatives.",
          enum = {
            "IMPRESSION",
            "CLICK_TRACKING",
            "VIDEO_START",
            "VIDEO_FIRST_QUARTILE",
            "VIDEO_MIDPOINT",
            "VIDEO_THIRD_QUARTILE",
            "VIDEO_COMPLETE",
            "VIDEO_MUTE",
            "VIDEO_PAUSE",
            "VIDEO_REWIND",
            "VIDEO_FULLSCREEN",
            "VIDEO_STOP",
            "VIDEO_CUSTOM",
            "SURVEY",
            "RICH_MEDIA_IMPRESSION",
            "RICH_MEDIA_RM_IMPRESSION",
            "RICH_MEDIA_BACKUP_IMPRESSION",
            "VIDEO_SKIP",
            "VIDEO_PROGRESS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        url = {
          description = "URL for the specified third-party URL type.",
          type = "string",
        },
      },
      type = "object",
    },
    TranscodeSetting = {
      description = "Transcode Settings",
      id = "TranscodeSetting",
      properties = {
        enabledVideoFormats = {
          description = "Allowlist of video formats to be served to this placement. Set this list to null or empty to serve all video formats.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#transcodeSetting\".",
          type = "string",
        },
      },
      type = "object",
    },
    UniversalAdId = {
      description = "A Universal Ad ID as per the VAST 4.0 spec. Applicable to the following creative types: INSTREAM_AUDIO, INSTREAM_VIDEO and VPAID.",
      id = "UniversalAdId",
      properties = {
        registry = {
          description = "Registry used for the Ad ID value.",
          enum = {
            "OTHER",
            "AD_ID_OFFICIAL",
            "CLEARCAST",
            "DCM",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        value = {
          description = "ID value for this creative. Only alphanumeric characters and the following symbols are valid: \"_/\\-\". Maximum length is 64 characters. Read only when registry is DCM.",
          type = "string",
        },
      },
      type = "object",
    },
    UserDefinedVariableConfiguration = {
      description = "User Defined Variable configuration.",
      id = "UserDefinedVariableConfiguration",
      properties = {
        dataType = {
          description = "Data type for the variable. This is a required field.",
          enum = {
            "STRING",
            "NUMBER",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        reportName = {
          description = "User-friendly name for the variable which will appear in reports. This is a required field, must be less than 64 characters long, and cannot contain the following characters: \"\"<>\".",
          type = "string",
        },
        variableType = {
          description = "Variable name in the tag. This is a required field.",
          enum = {
            "U1",
            "U2",
            "U3",
            "U4",
            "U5",
            "U6",
            "U7",
            "U8",
            "U9",
            "U10",
            "U11",
            "U12",
            "U13",
            "U14",
            "U15",
            "U16",
            "U17",
            "U18",
            "U19",
            "U20",
            "U21",
            "U22",
            "U23",
            "U24",
            "U25",
            "U26",
            "U27",
            "U28",
            "U29",
            "U30",
            "U31",
            "U32",
            "U33",
            "U34",
            "U35",
            "U36",
            "U37",
            "U38",
            "U39",
            "U40",
            "U41",
            "U42",
            "U43",
            "U44",
            "U45",
            "U46",
            "U47",
            "U48",
            "U49",
            "U50",
            "U51",
            "U52",
            "U53",
            "U54",
            "U55",
            "U56",
            "U57",
            "U58",
            "U59",
            "U60",
            "U61",
            "U62",
            "U63",
            "U64",
            "U65",
            "U66",
            "U67",
            "U68",
            "U69",
            "U70",
            "U71",
            "U72",
            "U73",
            "U74",
            "U75",
            "U76",
            "U77",
            "U78",
            "U79",
            "U80",
            "U81",
            "U82",
            "U83",
            "U84",
            "U85",
            "U86",
            "U87",
            "U88",
            "U89",
            "U90",
            "U91",
            "U92",
            "U93",
            "U94",
            "U95",
            "U96",
            "U97",
            "U98",
            "U99",
            "U100",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UserProfile = {
      description = "A UserProfile resource lets you list all DFA user profiles that are associated with a Google user account. The profile_id needs to be specified in other API requests. ",
      id = "UserProfile",
      properties = {
        accountId = {
          description = "The account ID to which this profile belongs.",
          format = "int64",
          type = "string",
        },
        accountName = {
          description = "The account name this profile belongs to.",
          type = "string",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userProfile\".",
          type = "string",
        },
        profileId = {
          description = "The unique ID of the user profile.",
          format = "int64",
          type = "string",
        },
        subAccountId = {
          description = "The sub account ID this profile belongs to if applicable.",
          format = "int64",
          type = "string",
        },
        subAccountName = {
          description = "The sub account name this profile belongs to if applicable.",
          type = "string",
        },
        userName = {
          description = "The user name.",
          type = "string",
        },
      },
      type = "object",
    },
    UserProfileList = {
      description = "Represents the list of user profiles.",
      id = "UserProfileList",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        items = {
          description = "The user profiles returned in this response.",
          items = {
            ["$ref"] = "UserProfile",
          },
          type = "array",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userProfileList\".",
          type = "string",
        },
      },
      type = "object",
    },
    UserRole = {
      description = "Contains properties of auser role, which is used to manage user access.",
      id = "UserRole",
      properties = {
        accountId = {
          description = "Account ID of this user role. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
        defaultUserRole = {
          description = "Whether this is a default user role. Default user roles are created by the system for the account/subaccount and cannot be modified or deleted. Each default user role comes with a basic set of preassigned permissions.",
          type = "boolean",
        },
        id = {
          description = "ID of this user role. This is a read-only, auto-generated field.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRole\".",
          type = "string",
        },
        name = {
          description = "Name of this user role. This is a required field. Must be less than 256 characters long. If this user role is under a subaccount, the name must be unique among sites of the same subaccount. Otherwise, this user role is a top-level user role, and the name must be unique among top-level user roles of the same account.",
          type = "string",
        },
        parentUserRoleId = {
          description = "ID of the user role that this user role is based on or copied from. This is a required field.",
          format = "int64",
          type = "string",
        },
        permissions = {
          description = "List of permissions associated with this user role.",
          items = {
            ["$ref"] = "UserRolePermission",
          },
          type = "array",
        },
        subaccountId = {
          description = "Subaccount ID of this user role. This is a read-only field that can be left blank.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    UserRolePermission = {
      description = "Contains properties of a user role permission.",
      id = "UserRolePermission",
      properties = {
        availability = {
          description = "Levels of availability for a user role permission.",
          enum = {
            "NOT_AVAILABLE_BY_DEFAULT",
            "ACCOUNT_BY_DEFAULT",
            "SUBACCOUNT_AND_ACCOUNT_BY_DEFAULT",
            "ACCOUNT_ALWAYS",
            "SUBACCOUNT_AND_ACCOUNT_ALWAYS",
            "USER_PROFILE_ONLY",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        id = {
          description = "ID of this user role permission.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermission\".",
          type = "string",
        },
        name = {
          description = "Name of this user role permission.",
          type = "string",
        },
        permissionGroupId = {
          description = "ID of the permission group that this user role permission belongs to.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    UserRolePermissionGroup = {
      description = "Represents a grouping of related user role permissions.",
      id = "UserRolePermissionGroup",
      properties = {
        id = {
          description = "ID of this user role permission.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermissionGroup\".",
          type = "string",
        },
        name = {
          description = "Name of this user role permission group.",
          type = "string",
        },
      },
      type = "object",
    },
    UserRolePermissionGroupsListResponse = {
      description = "User Role Permission Group List Response",
      id = "UserRolePermissionGroupsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermissionGroupsListResponse\".",
          type = "string",
        },
        userRolePermissionGroups = {
          description = "User role permission group collection.",
          items = {
            ["$ref"] = "UserRolePermissionGroup",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UserRolePermissionsListResponse = {
      description = "User Role Permission List Response",
      id = "UserRolePermissionsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolePermissionsListResponse\".",
          type = "string",
        },
        userRolePermissions = {
          description = "User role permission collection.",
          items = {
            ["$ref"] = "UserRolePermission",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UserRolesListResponse = {
      description = "User Role List Response",
      id = "UserRolesListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#userRolesListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "Pagination token to be used for the next list operation.",
          type = "string",
        },
        userRoles = {
          description = "User role collection.",
          items = {
            ["$ref"] = "UserRole",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoFormat = {
      description = "Contains information about supported video formats.",
      id = "VideoFormat",
      properties = {
        fileType = {
          description = "File type of the video format.",
          enum = {
            "FLV",
            "THREEGPP",
            "MP4",
            "WEBM",
            "M3U8",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        id = {
          description = "ID of the video format.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#videoFormat\".",
          type = "string",
        },
        resolution = {
          ["$ref"] = "Size",
          description = "The resolution of this video format.",
        },
        targetBitRate = {
          description = "The target bit rate of this video format.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    VideoFormatsListResponse = {
      description = "Video Format List Response",
      id = "VideoFormatsListResponse",
      properties = {
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#videoFormatsListResponse\".",
          type = "string",
        },
        videoFormats = {
          description = "Video format collection.",
          items = {
            ["$ref"] = "VideoFormat",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoOffset = {
      description = "Video Offset",
      id = "VideoOffset",
      properties = {
        offsetPercentage = {
          description = "Duration, as a percentage of video duration. Do not set when offsetSeconds is set. Acceptable values are 0 to 100, inclusive.",
          format = "int32",
          type = "integer",
        },
        offsetSeconds = {
          description = "Duration, in seconds. Do not set when offsetPercentage is set. Acceptable values are 0 to 86399, inclusive.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    VideoSettings = {
      description = "Video Settings",
      id = "VideoSettings",
      properties = {
        companionSettings = {
          ["$ref"] = "CompanionSetting",
          description = "Settings for the companion creatives of video creatives served to this placement.",
        },
        durationSeconds = {
          description = "Duration of a video placement in seconds.",
          format = "int32",
          type = "integer",
        },
        kind = {
          description = "Identifies what kind of resource this is. Value: the fixed string \"dfareporting#videoSettings\".",
          type = "string",
        },
        obaEnabled = {
          description = "Whether OBA icons are enabled for this placement.",
          type = "boolean",
        },
        obaSettings = {
          ["$ref"] = "ObaIcon",
          description = "Settings for the OBA icon of video creatives served to this placement. If this object is provided, the creative-level OBA settings will be overridden.",
        },
        orientation = {
          description = "Orientation of a video placement. If this value is set, placement will return assets matching the specified orientation.",
          enum = {
            "ANY",
            "LANDSCAPE",
            "PORTRAIT",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        skippableSettings = {
          ["$ref"] = "SkippableSetting",
          description = "Settings for the skippability of video creatives served to this placement. If this object is provided, the creative-level skippable settings will be overridden.",
        },
        transcodeSettings = {
          ["$ref"] = "TranscodeSetting",
          description = "Settings for the transcodes of video creatives served to this placement. If this object is provided, the creative-level transcode settings will be overridden.",
        },
      },
      type = "object",
    },
  },
  servicePath = "dfareporting/v3.5/",
  title = "Campaign Manager 360 API",
  version = "v3.5",
}