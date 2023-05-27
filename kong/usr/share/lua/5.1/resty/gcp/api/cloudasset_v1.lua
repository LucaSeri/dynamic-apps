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
  baseUrl = "https://cloudasset.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Asset",
  description = "The Cloud Asset API manages the history and inventory of Google Cloud resources.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/asset-inventory/docs/quickstart",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudasset:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudasset.mtls.googleapis.com/",
  name = "cloudasset",
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
    assets = {
      methods = {
        list = {
          description = "Lists assets with time and resource types and returns paged results in response.",
          flatPath = "v1/{v1Id}/{v1Id1}/assets",
          httpMethod = "GET",
          id = "cloudasset.assets.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            assetTypes = {
              description = "A list of asset types to take a snapshot for. For example: \"compute.googleapis.com/Disk\". Regular expression is also supported. For example: * \"compute.googleapis.com.*\" snapshots resources whose asset type starts with \"compute.googleapis.com\". * \".*Instance\" snapshots resources whose asset type ends with \"Instance\". * \".*Instance.*\" snapshots resources whose asset type contains \"Instance\". See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular expression syntax. If the regular expression does not match any supported asset type, an INVALID_ARGUMENT error will be returned. If specified, only matching assets will be returned, otherwise, it will snapshot all asset types. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types.",
              location = "query",
              repeated = true,
              type = "string",
            },
            contentType = {
              description = "Asset content type. If not specified, no content but the asset name will be returned.",
              enum = {
                "CONTENT_TYPE_UNSPECIFIED",
                "RESOURCE",
                "IAM_POLICY",
                "ORG_POLICY",
                "ACCESS_POLICY",
                "OS_INVENTORY",
                "RELATIONSHIP",
              },
              enumDescriptions = {
                "Unspecified content type.",
                "Resource metadata.",
                "The actual IAM policy set on a resource.",
                "The organization policy set on an asset.",
                "The Access Context Manager policy set on an asset.",
                "The runtime OS Inventory information.",
                "The related resources.",
              },
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of assets to be returned in a single response. Default is 100, minimum is 1, and maximum is 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The `next_page_token` returned from the previous `ListAssetsResponse`, or unspecified for the first `ListAssetsRequest`. It is a continuation of a prior `ListAssets` call, and the API should return the next page of assets.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. Name of the organization, folder, or project the assets belong to. Format: \"organizations/[organization-number]\" (such as \"organizations/123\"), \"projects/[project-id]\" (such as \"projects/my-project-id\"), \"projects/[project-number]\" (such as \"projects/12345\"), or \"folders/[folder-number]\" (such as \"folders/12345\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            readTime = {
              description = "Timestamp to take an asset snapshot. This can only be set to a timestamp between the current time and the current time minus 35 days (inclusive). If not specified, the current time will be used. Due to delays in resource data collection and indexing, there is a volatile window during which running the same query may get different results.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            relationshipTypes = {
              description = "A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if content_type=RELATIONSHIP. * If specified: it snapshots specified relationships. It returns an error if any of the [relationship_types] doesn't belong to the supported relationship types of the [asset_types] or if any of the [asset_types] doesn't belong to the source types of the [relationship_types]. * Otherwise: it snapshots the supported relationships for all [asset_types] or returns an error if any of the [asset_types] has no relationship support. An unspecified asset types field means all supported asset_types. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types and relationship types.",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/{+parent}/assets",
          response = {
            ["$ref"] = "ListAssetsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    effectiveIamPolicies = {
      methods = {
        batchGet = {
          description = "Gets effective IAM policies for a batch of resources.",
          flatPath = "v1/{v1Id}/{v1Id1}/effectiveIamPolicies:batchGet",
          httpMethod = "GET",
          id = "cloudasset.effectiveIamPolicies.batchGet",
          parameterOrder = {
            "scope",
          },
          parameters = {
            names = {
              description = "Required. The names refer to the [full_resource_names] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of [searchable asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types). A maximum of 20 resources' effective policies can be retrieved in a batch.",
              location = "query",
              repeated = true,
              type = "string",
            },
            scope = {
              description = "Required. Only IAM policies on or below the scope will be returned. This can only be an organization number (such as \"organizations/123\"), a folder number (such as \"folders/123\"), a project ID (such as \"projects/my-project-id\"), or a project number (such as \"projects/12345\"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}/effectiveIamPolicies:batchGet",
          response = {
            ["$ref"] = "BatchGetEffectiveIamPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    feeds = {
      methods = {
        create = {
          description = "Creates a feed in a parent project/folder/organization to listen to its asset updates.",
          flatPath = "v1/{v1Id}/{v1Id1}/feeds",
          httpMethod = "POST",
          id = "cloudasset.feeds.create",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The name of the project/folder/organization where this feed should be created in. It can only be an organization number (such as \"organizations/123\"), a folder number (such as \"folders/123\"), a project ID (such as \"projects/my-project-id\")\", or a project number (such as \"projects/12345\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}/feeds",
          request = {
            ["$ref"] = "CreateFeedRequest",
          },
          response = {
            ["$ref"] = "Feed",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes an asset feed.",
          flatPath = "v1/{v1Id}/{v1Id1}/feeds/{feedsId}",
          httpMethod = "DELETE",
          id = "cloudasset.feeds.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the feed and it must be in the format of: projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id organizations/organization_number/feeds/feed_id",
              location = "path",
              pattern = "^[^/]+/[^/]+/feeds/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets details about an asset feed.",
          flatPath = "v1/{v1Id}/{v1Id1}/feeds/{feedsId}",
          httpMethod = "GET",
          id = "cloudasset.feeds.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the Feed and it must be in the format of: projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id organizations/organization_number/feeds/feed_id",
              location = "path",
              pattern = "^[^/]+/[^/]+/feeds/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Feed",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists all asset feeds in a parent project/folder/organization.",
          flatPath = "v1/{v1Id}/{v1Id1}/feeds",
          httpMethod = "GET",
          id = "cloudasset.feeds.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The parent project/folder/organization whose feeds are to be listed. It can only be using project/folder/organization number (such as \"folders/12345\")\", or a project ID (such as \"projects/my-project-id\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}/feeds",
          response = {
            ["$ref"] = "ListFeedsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates an asset feed configuration.",
          flatPath = "v1/{v1Id}/{v1Id1}/feeds/{feedsId}",
          httpMethod = "PATCH",
          id = "cloudasset.feeds.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The format will be projects/{project_number}/feeds/{client-assigned_feed_identifier} or folders/{folder_number}/feeds/{client-assigned_feed_identifier} or organizations/{organization_number}/feeds/{client-assigned_feed_identifier} The client-assigned feed identifier must be unique within the parent project/folder/organization.",
              location = "path",
              pattern = "^[^/]+/[^/]+/feeds/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "UpdateFeedRequest",
          },
          response = {
            ["$ref"] = "Feed",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    operations = {
      methods = {
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/{v1Id}/{v1Id1}/operations/{operationsId}/{operationsId1}",
          httpMethod = "GET",
          id = "cloudasset.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^[^/]+/[^/]+/operations/[^/]+/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    savedQueries = {
      methods = {
        create = {
          description = "Creates a saved query in a parent project/folder/organization.",
          flatPath = "v1/{v1Id}/{v1Id1}/savedQueries",
          httpMethod = "POST",
          id = "cloudasset.savedQueries.create",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The name of the project/folder/organization where this saved_query should be created in. It can only be an organization number (such as \"organizations/123\"), a folder number (such as \"folders/123\"), a project ID (such as \"projects/my-project-id\")\", or a project number (such as \"projects/12345\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            savedQueryId = {
              description = "Required. The ID to use for the saved query, which must be unique in the specified parent. It will become the final component of the saved query's resource name. This value should be 4-63 characters, and valid characters are `a-z-`. Notice that this field is required in the saved query creation, and the `name` field of the `saved_query` will be ignored.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+parent}/savedQueries",
          request = {
            ["$ref"] = "SavedQuery",
          },
          response = {
            ["$ref"] = "SavedQuery",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a saved query.",
          flatPath = "v1/{v1Id}/{v1Id1}/savedQueries/{savedQueriesId}",
          httpMethod = "DELETE",
          id = "cloudasset.savedQueries.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the saved query to delete. It must be in the format of: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id",
              location = "path",
              pattern = "^[^/]+/[^/]+/savedQueries/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets details about a saved query.",
          flatPath = "v1/{v1Id}/{v1Id1}/savedQueries/{savedQueriesId}",
          httpMethod = "GET",
          id = "cloudasset.savedQueries.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the saved query and it must be in the format of: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id",
              location = "path",
              pattern = "^[^/]+/[^/]+/savedQueries/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "SavedQuery",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists all saved queries in a parent project/folder/organization.",
          flatPath = "v1/{v1Id}/{v1Id1}/savedQueries",
          httpMethod = "GET",
          id = "cloudasset.savedQueries.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            filter = {
              description = "Optional. The expression to filter resources. The expression is a list of zero or more restrictions combined via logical operators `AND` and `OR`. When `AND` and `OR` are both used in the expression, parentheses must be appropriately used to group the combinations. The expression may also contain regular expressions. See https://google.aip.dev/160 for more information on the grammar.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The maximum number of saved queries to return per page. The service may return fewer than this value. If unspecified, at most 50 will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A page token, received from a previous `ListSavedQueries` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListSavedQueries` must match the call that provided the page token.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The parent project/folder/organization whose savedQueries are to be listed. It can only be using project/folder/organization number (such as \"folders/12345\")\", or a project ID (such as \"projects/my-project-id\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}/savedQueries",
          response = {
            ["$ref"] = "ListSavedQueriesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates a saved query.",
          flatPath = "v1/{v1Id}/{v1Id1}/savedQueries/{savedQueriesId}",
          httpMethod = "PATCH",
          id = "cloudasset.savedQueries.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id",
              location = "path",
              pattern = "^[^/]+/[^/]+/savedQueries/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. The list of fields to update.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "SavedQuery",
          },
          response = {
            ["$ref"] = "SavedQuery",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    v1 = {
      methods = {
        analyzeIamPolicy = {
          description = "Analyzes IAM policies to answer which identities have what accesses on which resources.",
          flatPath = "v1/{v1Id}/{v1Id1}:analyzeIamPolicy",
          httpMethod = "GET",
          id = "cloudasset.analyzeIamPolicy",
          parameterOrder = {
            "scope",
          },
          parameters = {
            ["analysisQuery.accessSelector.permissions"] = {
              description = "Optional. The permissions to appear in result.",
              location = "query",
              repeated = true,
              type = "string",
            },
            ["analysisQuery.accessSelector.roles"] = {
              description = "Optional. The roles to appear in result.",
              location = "query",
              repeated = true,
              type = "string",
            },
            ["analysisQuery.conditionContext.accessTime"] = {
              description = "The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            ["analysisQuery.identitySelector.identity"] = {
              description = "Required. The identity appear in the form of principals in [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of supported forms are: \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\". Notice that wildcard characters (such as * and ?) are not supported. You must give a specific identity.",
              location = "query",
              type = "string",
            },
            ["analysisQuery.options.analyzeServiceAccountImpersonation"] = {
              description = "Optional. If true, the response will include access analysis from identities to resources via service account impersonation. This is a very expensive operation, because many derived queries will be executed. We highly recommend you use AssetService.AnalyzeIamPolicyLongrunning RPC instead. For example, if the request analyzes for which resources user A has permission P, and there's an IAM policy states user A has iam.serviceAccounts.getAccessToken permission to a service account SA, and there's another IAM policy states service account SA has permission P to a Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another example, if the request analyzes for who has permission P to a Google Cloud folder F, and there's an IAM policy states user A has iam.serviceAccounts.actAs permission to a service account SA, and there's another IAM policy states service account SA has permission P to the Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Only the following permissions are considered in this analysis: * `iam.serviceAccounts.actAs` * `iam.serviceAccounts.signBlob` * `iam.serviceAccounts.signJwt` * `iam.serviceAccounts.getAccessToken` * `iam.serviceAccounts.getOpenIdToken` * `iam.serviceAccounts.implicitDelegation` Default is false.",
              location = "query",
              type = "boolean",
            },
            ["analysisQuery.options.expandGroups"] = {
              description = "Optional. If true, the identities section of the result will expand any Google groups appearing in an IAM policy binding. If IamPolicyAnalysisQuery.identity_selector is specified, the identity in the result will be determined by the selector, and this flag is not allowed to set. If true, the default max expansion per group is 1000 for AssetService.AnalyzeIamPolicy][]. Default is false.",
              location = "query",
              type = "boolean",
            },
            ["analysisQuery.options.expandResources"] = {
              description = "Optional. If true and IamPolicyAnalysisQuery.resource_selector is not specified, the resource section of the result will expand any resource attached to an IAM policy to include resources lower in the resource hierarchy. For example, if the request analyzes for which resources user A has permission P, and the results include an IAM policy with P on a Google Cloud folder, the results will also include resources in that folder with permission P. If true and IamPolicyAnalysisQuery.resource_selector is specified, the resource section of the result will expand the specified resource to include resources lower in the resource hierarchy. Only project or lower resources are supported. Folder and organization resources cannot be used together with this option. For example, if the request analyzes for which users have permission P on a Google Cloud project with this option enabled, the results will include all users who have permission P on that project or any lower resource. If true, the default max expansion per resource is 1000 for AssetService.AnalyzeIamPolicy][] and 100000 for AssetService.AnalyzeIamPolicyLongrunning][]. Default is false.",
              location = "query",
              type = "boolean",
            },
            ["analysisQuery.options.expandRoles"] = {
              description = "Optional. If true, the access section of result will expand any roles appearing in IAM policy bindings to include their permissions. If IamPolicyAnalysisQuery.access_selector is specified, the access section of the result will be determined by the selector, and this flag is not allowed to set. Default is false.",
              location = "query",
              type = "boolean",
            },
            ["analysisQuery.options.outputGroupEdges"] = {
              description = "Optional. If true, the result will output the relevant membership relationships between groups and other groups, and between groups and principals. Default is false.",
              location = "query",
              type = "boolean",
            },
            ["analysisQuery.options.outputResourceEdges"] = {
              description = "Optional. If true, the result will output the relevant parent/child relationships between resources. Default is false.",
              location = "query",
              type = "boolean",
            },
            ["analysisQuery.resourceSelector.fullResourceName"] = {
              description = "Required. The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of a resource of [supported resource types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#analyzable_asset_types).",
              location = "query",
              type = "string",
            },
            executionTimeout = {
              description = "Optional. Amount of time executable has to complete. See JSON representation of [Duration](https://developers.google.com/protocol-buffers/docs/proto3#json). If this field is set with a value less than the RPC deadline, and the execution of your query hasn't finished in the specified execution timeout, you will get a response with partial result. Otherwise, your query's execution will continue until the RPC deadline. If it's not finished until then, you will get a DEADLINE_EXCEEDED error. Default is empty.",
              format = "google-duration",
              location = "query",
              type = "string",
            },
            savedAnalysisQuery = {
              description = "Optional. The name of a saved query, which must be in the format of: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id If both `analysis_query` and `saved_analysis_query` are provided, they will be merged together with the `saved_analysis_query` as base and the `analysis_query` as overrides. For more details of the merge behavior, please refer to the [MergeFrom](https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.message#Message.MergeFrom.details) page. Note that you cannot override primitive fields with default value, such as 0 or empty string, etc., because we use proto3, which doesn't support field presence yet.",
              location = "query",
              type = "string",
            },
            scope = {
              description = "Required. The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as \"organizations/123\"), a folder number (such as \"folders/123\"), a project ID (such as \"projects/my-project-id\"), or a project number (such as \"projects/12345\"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}:analyzeIamPolicy",
          response = {
            ["$ref"] = "AnalyzeIamPolicyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        analyzeIamPolicyLongrunning = {
          description = "Analyzes IAM policies asynchronously to answer which identities have what accesses on which resources, and writes the analysis results to a Google Cloud Storage or a BigQuery destination. For Cloud Storage destination, the output format is the JSON format that represents a AnalyzeIamPolicyResponse. This method implements the google.longrunning.Operation, which allows you to track the operation status. We recommend intervals of at least 2 seconds with exponential backoff retry to poll the operation result. The metadata contains the metadata for the long-running operation.",
          flatPath = "v1/{v1Id}/{v1Id1}:analyzeIamPolicyLongrunning",
          httpMethod = "POST",
          id = "cloudasset.analyzeIamPolicyLongrunning",
          parameterOrder = {
            "scope",
          },
          parameters = {
            scope = {
              description = "Required. The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as \"organizations/123\"), a folder number (such as \"folders/123\"), a project ID (such as \"projects/my-project-id\"), or a project number (such as \"projects/12345\"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}:analyzeIamPolicyLongrunning",
          request = {
            ["$ref"] = "AnalyzeIamPolicyLongrunningRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        analyzeMove = {
          description = "Analyze moving a resource to a specified destination without kicking off the actual move. The analysis is best effort depending on the user's permissions of viewing different hierarchical policies and configurations. The policies and configuration are subject to change before the actual resource migration takes place.",
          flatPath = "v1/{v1Id}/{v1Id1}:analyzeMove",
          httpMethod = "GET",
          id = "cloudasset.analyzeMove",
          parameterOrder = {
            "resource",
          },
          parameters = {
            destinationParent = {
              description = "Required. Name of the Google Cloud folder or organization to reparent the target resource. The analysis will be performed against hypothetically moving the resource to this specified desitination parent. This can only be a folder number (such as \"folders/123\") or an organization number (such as \"organizations/123\").",
              location = "query",
              type = "string",
            },
            resource = {
              description = "Required. Name of the resource to perform the analysis against. Only Google Cloud projects are supported as of today. Hence, this can only be a project ID (such as \"projects/my-project-id\") or a project number (such as \"projects/12345\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            view = {
              description = "Analysis view indicating what information should be included in the analysis response. If unspecified, the default view is FULL.",
              enum = {
                "ANALYSIS_VIEW_UNSPECIFIED",
                "FULL",
                "BASIC",
              },
              enumDescriptions = {
                "The default/unset value. The API will default to the FULL view.",
                "Full analysis including all level of impacts of the specified resource move.",
                "Basic analysis only including blockers which will prevent the specified resource move at runtime.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+resource}:analyzeMove",
          response = {
            ["$ref"] = "AnalyzeMoveResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        analyzeOrgPolicies = {
          description = "Analyzes organization policies under a scope.",
          flatPath = "v1/{v1Id}/{v1Id1}:analyzeOrgPolicies",
          httpMethod = "GET",
          id = "cloudasset.analyzeOrgPolicies",
          parameterOrder = {
            "scope",
          },
          parameters = {
            constraint = {
              description = "Required. The name of the constraint to analyze organization policies for. The response only contains analyzed organization policies for the provided constraint.",
              location = "query",
              type = "string",
            },
            filter = {
              description = "The expression to filter AnalyzeOrgPoliciesResponse.org_policy_results. The only supported field is `consolidated_policy.attached_resource`, and the only supported operator is `=`. Example: consolidated_policy.attached_resource=\"//cloudresourcemanager.googleapis.com/folders/001\" will return the org policy results of\"folders/001\".",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of items to return per page. If unspecified, AnalyzeOrgPoliciesResponse.org_policy_results will contain 20 items with a maximum of 200.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The pagination token to retrieve the next page.",
              location = "query",
              type = "string",
            },
            scope = {
              description = "Required. The organization to scope the request. Only organization policies within the scope will be analyzed. * organizations/{ORGANIZATION_NUMBER} (e.g., \"organizations/123456\")",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}:analyzeOrgPolicies",
          response = {
            ["$ref"] = "AnalyzeOrgPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        analyzeOrgPolicyGovernedAssets = {
          description = "Analyzes organization policies governed assets (Google Cloud resources or policies) under a scope. This RPC supports custom constraints and the following 10 canned constraints: * storage.uniformBucketLevelAccess * iam.disableServiceAccountKeyCreation * iam.allowedPolicyMemberDomains * compute.vmExternalIpAccess * appengine.enforceServiceAccountActAsCheck * gcp.resourceLocations * compute.trustedImageProjects * compute.skipDefaultNetworkCreation * compute.requireOsLogin * compute.disableNestedVirtualization This RPC only returns either resources of types supported by [searchable asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types), or IAM policies.",
          flatPath = "v1/{v1Id}/{v1Id1}:analyzeOrgPolicyGovernedAssets",
          httpMethod = "GET",
          id = "cloudasset.analyzeOrgPolicyGovernedAssets",
          parameterOrder = {
            "scope",
          },
          parameters = {
            constraint = {
              description = "Required. The name of the constraint to analyze governed assets for. The analysis only contains analyzed organization policies for the provided constraint.",
              location = "query",
              type = "string",
            },
            filter = {
              description = "The expression to filter the governed assets in result. The only supported fields for governed resources are `governed_resource.project` and `governed_resource.folders`. The only supported fields for governed iam policies are `governed_iam_policy.project` and `governed_iam_policy.folders`. The only supported operator is `=`. Example 1: governed_resource.project=\"projects/12345678\" filter will return all governed resources under projects/12345678 including the project ifself, if applicable. Example 2: governed_iam_policy.folders=\"folders/12345678\" filter will return all governed iam policies under folders/12345678, if applicable.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of items to return per page. If unspecified, AnalyzeOrgPolicyGovernedAssetsResponse.governed_assets will contain 100 items with a maximum of 200.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The pagination token to retrieve the next page.",
              location = "query",
              type = "string",
            },
            scope = {
              description = "Required. The organization to scope the request. Only organization policies within the scope will be analyzed. The output assets will also be limited to the ones governed by those in-scope organization policies. * organizations/{ORGANIZATION_NUMBER} (e.g., \"organizations/123456\")",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}:analyzeOrgPolicyGovernedAssets",
          response = {
            ["$ref"] = "AnalyzeOrgPolicyGovernedAssetsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        analyzeOrgPolicyGovernedContainers = {
          description = "Analyzes organization policies governed containers (projects, folders or organization) under a scope.",
          flatPath = "v1/{v1Id}/{v1Id1}:analyzeOrgPolicyGovernedContainers",
          httpMethod = "GET",
          id = "cloudasset.analyzeOrgPolicyGovernedContainers",
          parameterOrder = {
            "scope",
          },
          parameters = {
            constraint = {
              description = "Required. The name of the constraint to analyze governed containers for. The analysis only contains organization policies for the provided constraint.",
              location = "query",
              type = "string",
            },
            filter = {
              description = "The expression to filter the governed containers in result. The only supported field is `parent`, and the only supported operator is `=`. Example: parent=\"//cloudresourcemanager.googleapis.com/folders/001\" will return all containers under \"folders/001\".",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The maximum number of items to return per page. If unspecified, AnalyzeOrgPolicyGovernedContainersResponse.governed_containers will contain 100 items with a maximum of 200.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The pagination token to retrieve the next page.",
              location = "query",
              type = "string",
            },
            scope = {
              description = "Required. The organization to scope the request. Only organization policies within the scope will be analyzed. The output containers will also be limited to the ones governed by those in-scope organization policies. * organizations/{ORGANIZATION_NUMBER} (e.g., \"organizations/123456\")",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}:analyzeOrgPolicyGovernedContainers",
          response = {
            ["$ref"] = "AnalyzeOrgPolicyGovernedContainersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        batchGetAssetsHistory = {
          description = "Batch gets the update history of assets that overlap a time window. For IAM_POLICY content, this API outputs history when the asset and its attached IAM POLICY both exist. This can create gaps in the output history. Otherwise, this API outputs history with asset in both non-delete or deleted status. If a specified asset does not exist, this API returns an INVALID_ARGUMENT error.",
          flatPath = "v1/{v1Id}/{v1Id1}:batchGetAssetsHistory",
          httpMethod = "GET",
          id = "cloudasset.batchGetAssetsHistory",
          parameterOrder = {
            "parent",
          },
          parameters = {
            assetNames = {
              description = "A list of the full names of the assets. See: https://cloud.google.com/asset-inventory/docs/resource-name-format Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. The request becomes a no-op if the asset name list is empty, and the max size of the asset name list is 100 in one request.",
              location = "query",
              repeated = true,
              type = "string",
            },
            contentType = {
              description = "Optional. The content type.",
              enum = {
                "CONTENT_TYPE_UNSPECIFIED",
                "RESOURCE",
                "IAM_POLICY",
                "ORG_POLICY",
                "ACCESS_POLICY",
                "OS_INVENTORY",
                "RELATIONSHIP",
              },
              enumDescriptions = {
                "Unspecified content type.",
                "Resource metadata.",
                "The actual IAM policy set on a resource.",
                "The organization policy set on an asset.",
                "The Access Context Manager policy set on an asset.",
                "The runtime OS Inventory information.",
                "The related resources.",
              },
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The relative name of the root asset. It can only be an organization number (such as \"organizations/123\"), a project ID (such as \"projects/my-project-id\")\", or a project number (such as \"projects/12345\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
            ["readTimeWindow.endTime"] = {
              description = "End time of the time window (inclusive). If not specified, the current timestamp is used instead.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            ["readTimeWindow.startTime"] = {
              description = "Start time of the time window (exclusive).",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            relationshipTypes = {
              description = "Optional. A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if content_type=RELATIONSHIP. * If specified: it outputs specified relationships' history on the [asset_names]. It returns an error if any of the [relationship_types] doesn't belong to the supported relationship types of the [asset_names] or if any of the [asset_names]'s types doesn't belong to the source types of the [relationship_types]. * Otherwise: it outputs the supported relationships' history on the [asset_names] or returns an error if any of the [asset_names]'s types has no relationship support. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types and relationship types.",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:batchGetAssetsHistory",
          response = {
            ["$ref"] = "BatchGetAssetsHistoryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        exportAssets = {
          description = "Exports assets with time and resource types to a given Cloud Storage location/BigQuery table. For Cloud Storage location destinations, the output format is newline-delimited JSON. Each line represents a google.cloud.asset.v1.Asset in the JSON format; for BigQuery table destinations, the output table stores the fields in asset Protobuf as columns. This API implements the google.longrunning.Operation API, which allows you to keep track of the export. We recommend intervals of at least 2 seconds with exponential retry to poll the export operation result. For regular-size resource parent, the export operation usually finishes within 5 minutes.",
          flatPath = "v1/{v1Id}/{v1Id1}:exportAssets",
          httpMethod = "POST",
          id = "cloudasset.exportAssets",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The relative name of the root asset. This can only be an organization number (such as \"organizations/123\"), a project ID (such as \"projects/my-project-id\"), or a project number (such as \"projects/12345\"), or a folder number (such as \"folders/123\").",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:exportAssets",
          request = {
            ["$ref"] = "ExportAssetsRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        queryAssets = {
          description = "Issue a job that queries assets using a SQL statement compatible with [BigQuery Standard SQL](http://cloud/bigquery/docs/reference/standard-sql/enabling-standard-sql). If the query execution finishes within timeout and there's no pagination, the full query results will be returned in the `QueryAssetsResponse`. Otherwise, full query results can be obtained by issuing extra requests with the `job_reference` from the a previous `QueryAssets` call. Note, the query result has approximately 10 GB limitation enforced by BigQuery https://cloud.google.com/bigquery/docs/best-practices-performance-output, queries return larger results will result in errors.",
          flatPath = "v1/{v1Id}/{v1Id1}:queryAssets",
          httpMethod = "POST",
          id = "cloudasset.queryAssets",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The relative name of the root asset. This can only be an organization number (such as \"organizations/123\"), a project ID (such as \"projects/my-project-id\"), or a project number (such as \"projects/12345\"), or a folder number (such as \"folders/123\"). Only assets belonging to the `parent` will be returned.",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}:queryAssets",
          request = {
            ["$ref"] = "QueryAssetsRequest",
          },
          response = {
            ["$ref"] = "QueryAssetsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        searchAllIamPolicies = {
          description = "Searches all IAM policies within the specified scope, such as a project, folder, or organization. The caller must be granted the `cloudasset.assets.searchAllIamPolicies` permission on the desired scope, otherwise the request will be rejected.",
          flatPath = "v1/{v1Id}/{v1Id1}:searchAllIamPolicies",
          httpMethod = "GET",
          id = "cloudasset.searchAllIamPolicies",
          parameterOrder = {
            "scope",
          },
          parameters = {
            assetTypes = {
              description = "Optional. A list of asset types that the IAM policies are attached to. If empty, it will search the IAM policies that are attached to all the [searchable asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types). Regular expressions are also supported. For example: * \"compute.googleapis.com.*\" snapshots IAM policies attached to asset type starts with \"compute.googleapis.com\". * \".*Instance\" snapshots IAM policies attached to asset type ends with \"Instance\". * \".*Instance.*\" snapshots IAM policies attached to asset type contains \"Instance\". See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular expression syntax. If the regular expression does not match any supported asset type, an INVALID_ARGUMENT error will be returned.",
              location = "query",
              repeated = true,
              type = "string",
            },
            orderBy = {
              description = "Optional. A comma-separated list of fields specifying the sorting order of the results. The default order is ascending. Add \" DESC\" after the field name to indicate descending order. Redundant space characters are ignored. Example: \"assetType DESC, resource\". Only singular primitive fields in the response are sortable: * resource * assetType * project All the other fields such as repeated fields (e.g., `folders`) and non-primitive fields (e.g., `policy`) are not supported.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The page size for search result pagination. Page size is capped at 500 even if a larger value is given. If set to zero, server will pick an appropriate default. Returned results may be fewer than requested. When this happens, there could be more results as long as `next_page_token` is returned.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If present, retrieve the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of all other method parameters must be identical to those in the previous call.",
              location = "query",
              type = "string",
            },
            query = {
              description = "Optional. The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-iam-policies#how_to_construct_a_query) for more information. If not specified or empty, it will search all the IAM policies within the specified `scope`. Note that the query string is compared against each IAM policy binding, including its principals, roles, and IAM conditions. The returned IAM policies will only contain the bindings that match your query. To learn more about the IAM policy structure, see the [IAM policy documentation](https://cloud.google.com/iam/help/allow-policies/structure). Examples: * `policy:amy@gmail.com` to find IAM policy bindings that specify user \"amy@gmail.com\". * `policy:roles/compute.admin` to find IAM policy bindings that specify the Compute Admin role. * `policy:comp*` to find IAM policy bindings that contain \"comp\" as a prefix of any word in the binding. * `policy.role.permissions:storage.buckets.update` to find IAM policy bindings that specify a role containing \"storage.buckets.update\" permission. Note that if callers don't have `iam.roles.get` access to a role's included permissions, policy bindings that specify this role will be dropped from the search results. * `policy.role.permissions:upd*` to find IAM policy bindings that specify a role containing \"upd\" as a prefix of any word in the role permission. Note that if callers don't have `iam.roles.get` access to a role's included permissions, policy bindings that specify this role will be dropped from the search results. * `resource:organizations/123456` to find IAM policy bindings that are set on \"organizations/123456\". * `resource=//cloudresourcemanager.googleapis.com/projects/myproject` to find IAM policy bindings that are set on the project named \"myproject\". * `Important` to find IAM policy bindings that contain \"Important\" as a word in any of the searchable fields (except for the included permissions). * `resource:(instance1 OR instance2) policy:amy` to find IAM policy bindings that are set on resources \"instance1\" or \"instance2\" and also specify user \"amy\". * `roles:roles/compute.admin` to find IAM policy bindings that specify the Compute Admin role. * `memberTypes:user` to find IAM policy bindings that contain the principal type \"user\".",
              location = "query",
              type = "string",
            },
            scope = {
              description = "Required. A scope can be a project, a folder, or an organization. The search is limited to the IAM policies within the `scope`. The caller must be granted the [`cloudasset.assets.searchAllIamPolicies`](https://cloud.google.com/asset-inventory/docs/access-control#required_permissions) permission on the desired scope. The allowed values are: * projects/{PROJECT_ID} (e.g., \"projects/foo-bar\") * projects/{PROJECT_NUMBER} (e.g., \"projects/12345678\") * folders/{FOLDER_NUMBER} (e.g., \"folders/1234567\") * organizations/{ORGANIZATION_NUMBER} (e.g., \"organizations/123456\")",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}:searchAllIamPolicies",
          response = {
            ["$ref"] = "SearchAllIamPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        searchAllResources = {
          description = "Searches all Google Cloud resources within the specified scope, such as a project, folder, or organization. The caller must be granted the `cloudasset.assets.searchAllResources` permission on the desired scope, otherwise the request will be rejected.",
          flatPath = "v1/{v1Id}/{v1Id1}:searchAllResources",
          httpMethod = "GET",
          id = "cloudasset.searchAllResources",
          parameterOrder = {
            "scope",
          },
          parameters = {
            assetTypes = {
              description = "Optional. A list of asset types that this request searches for. If empty, it will search all the [searchable asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types). Regular expressions are also supported. For example: * \"compute.googleapis.com.*\" snapshots resources whose asset type starts with \"compute.googleapis.com\". * \".*Instance\" snapshots resources whose asset type ends with \"Instance\". * \".*Instance.*\" snapshots resources whose asset type contains \"Instance\". See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular expression syntax. If the regular expression does not match any supported asset type, an INVALID_ARGUMENT error will be returned.",
              location = "query",
              repeated = true,
              type = "string",
            },
            orderBy = {
              description = "Optional. A comma-separated list of fields specifying the sorting order of the results. The default order is ascending. Add \" DESC\" after the field name to indicate descending order. Redundant space characters are ignored. Example: \"location DESC, name\". Only singular primitive fields in the response are sortable: * name * assetType * project * displayName * description * location * createTime * updateTime * state * parentFullResourceName * parentAssetType All the other fields such as repeated fields (e.g., `networkTags`, `kmsKeys`), map fields (e.g., `labels`) and struct fields (e.g., `additionalAttributes`) are not supported.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The page size for search result pagination. Page size is capped at 500 even if a larger value is given. If set to zero, server will pick an appropriate default. Returned results may be fewer than requested. When this happens, there could be more results as long as `next_page_token` is returned.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If present, then retrieve the next batch of results from the preceding call to this method. `page_token` must be the value of `next_page_token` from the previous response. The values of all other method parameters, must be identical to those in the previous call.",
              location = "query",
              type = "string",
            },
            query = {
              description = "Optional. The query statement. See [how to construct a query](https://cloud.google.com/asset-inventory/docs/searching-resources#how_to_construct_a_query) for more information. If not specified or empty, it will search all the resources within the specified `scope`. Examples: * `name:Important` to find Google Cloud resources whose name contains \"Important\" as a word. * `name=Important` to find the Google Cloud resource whose name is exactly \"Important\". * `displayName:Impor*` to find Google Cloud resources whose display name contains \"Impor\" as a prefix of any word in the field. * `location:us-west*` to find Google Cloud resources whose location contains both \"us\" and \"west\" as prefixes. * `labels:prod` to find Google Cloud resources whose labels contain \"prod\" as a key or value. * `labels.env:prod` to find Google Cloud resources that have a label \"env\" and its value is \"prod\". * `labels.env:*` to find Google Cloud resources that have a label \"env\". * `kmsKey:key` to find Google Cloud resources encrypted with a customer-managed encryption key whose name contains \"key\" as a word. This field is deprecated. Please use the `kmsKeys` field to retrieve Cloud KMS key information. * `kmsKeys:key` to find Google Cloud resources encrypted with customer-managed encryption keys whose name contains the word \"key\". * `relationships:instance-group-1` to find Google Cloud resources that have relationships with \"instance-group-1\" in the related resource name. * `relationships:INSTANCE_TO_INSTANCEGROUP` to find Compute Engine instances that have relationships of type \"INSTANCE_TO_INSTANCEGROUP\". * `relationships.INSTANCE_TO_INSTANCEGROUP:instance-group-1` to find Compute Engine instances that have relationships with \"instance-group-1\" in the Compute Engine instance group resource name, for relationship type \"INSTANCE_TO_INSTANCEGROUP\". * `state:ACTIVE` to find Google Cloud resources whose state contains \"ACTIVE\" as a word. * `NOT state:ACTIVE` to find Google Cloud resources whose state doesn't contain \"ACTIVE\" as a word. * `createTime<1609459200` to find Google Cloud resources that were created before \"2021-01-01 00:00:00 UTC\". 1609459200 is the epoch timestamp of \"2021-01-01 00:00:00 UTC\" in seconds. * `updateTime>1609459200` to find Google Cloud resources that were updated after \"2021-01-01 00:00:00 UTC\". 1609459200 is the epoch timestamp of \"2021-01-01 00:00:00 UTC\" in seconds. * `Important` to find Google Cloud resources that contain \"Important\" as a word in any of the searchable fields. * `Impor*` to find Google Cloud resources that contain \"Impor\" as a prefix of any word in any of the searchable fields. * `Important location:(us-west1 OR global)` to find Google Cloud resources that contain \"Important\" as a word in any of the searchable fields and are also located in the \"us-west1\" region or the \"global\" location.",
              location = "query",
              type = "string",
            },
            readMask = {
              description = "Optional. A comma-separated list of fields specifying which fields to be returned in ResourceSearchResult. Only '*' or combination of top level fields can be specified. Field names of both snake_case and camelCase are supported. Examples: `\"*\"`, `\"name,location\"`, `\"name,versionedResources\"`. The read_mask paths must be valid field paths listed but not limited to (both snake_case and camelCase are supported): * name * assetType * project * displayName * description * location * tagKeys * tagValues * tagValueIds * labels * networkTags * kmsKey (This field is deprecated. Please use the `kmsKeys` field to retrieve Cloud KMS key information.) * kmsKeys * createTime * updateTime * state * additionalAttributes * versionedResources If read_mask is not specified, all fields except versionedResources will be returned. If only '*' is specified, all fields including versionedResources will be returned. Any invalid field path will trigger INVALID_ARGUMENT error.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            scope = {
              description = "Required. A scope can be a project, a folder, or an organization. The search is limited to the resources within the `scope`. The caller must be granted the [`cloudasset.assets.searchAllResources`](https://cloud.google.com/asset-inventory/docs/access-control#required_permissions) permission on the desired scope. The allowed values are: * projects/{PROJECT_ID} (e.g., \"projects/foo-bar\") * projects/{PROJECT_NUMBER} (e.g., \"projects/12345678\") * folders/{FOLDER_NUMBER} (e.g., \"folders/1234567\") * organizations/{ORGANIZATION_NUMBER} (e.g., \"organizations/123456\")",
              location = "path",
              pattern = "^[^/]+/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+scope}:searchAllResources",
          response = {
            ["$ref"] = "SearchAllResourcesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230114",
  rootUrl = "https://cloudasset.googleapis.com/",
  schemas = {
    AccessSelector = {
      description = "Specifies roles and/or permissions to analyze, to determine both the identities possessing them and the resources they control. If multiple values are specified, results will include roles or permissions matching any of them. The total number of roles and permissions should be equal or less than 10.",
      id = "AccessSelector",
      properties = {
        permissions = {
          description = "Optional. The permissions to appear in result.",
          items = {
            type = "string",
          },
          type = "array",
        },
        roles = {
          description = "Optional. The roles to appear in result.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnalyzeIamPolicyLongrunningMetadata = {
      description = "Represents the metadata of the longrunning operation for the AnalyzeIamPolicyLongrunning RPC.",
      id = "AnalyzeIamPolicyLongrunningMetadata",
      properties = {
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzeIamPolicyLongrunningRequest = {
      description = "A request message for AssetService.AnalyzeIamPolicyLongrunning.",
      id = "AnalyzeIamPolicyLongrunningRequest",
      properties = {
        analysisQuery = {
          ["$ref"] = "IamPolicyAnalysisQuery",
          description = "Required. The request query.",
        },
        outputConfig = {
          ["$ref"] = "IamPolicyAnalysisOutputConfig",
          description = "Required. Output configuration indicating where the results will be output to.",
        },
        savedAnalysisQuery = {
          description = "Optional. The name of a saved query, which must be in the format of: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id If both `analysis_query` and `saved_analysis_query` are provided, they will be merged together with the `saved_analysis_query` as base and the `analysis_query` as overrides. For more details of the merge behavior, please refer to the [MergeFrom](https://developers.google.com/protocol-buffers/docs/reference/cpp/google.protobuf.message#Message.MergeFrom.details) doc. Note that you cannot override primitive fields with default value, such as 0 or empty string, etc., because we use proto3, which doesn't support field presence yet.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzeIamPolicyLongrunningResponse = {
      description = "A response message for AssetService.AnalyzeIamPolicyLongrunning.",
      id = "AnalyzeIamPolicyLongrunningResponse",
      properties = {},
      type = "object",
    },
    AnalyzeIamPolicyResponse = {
      description = "A response message for AssetService.AnalyzeIamPolicy.",
      id = "AnalyzeIamPolicyResponse",
      properties = {
        fullyExplored = {
          description = "Represents whether all entries in the main_analysis and service_account_impersonation_analysis have been fully explored to answer the query in the request.",
          type = "boolean",
        },
        mainAnalysis = {
          ["$ref"] = "IamPolicyAnalysis",
          description = "The main analysis that matches the original request.",
        },
        serviceAccountImpersonationAnalysis = {
          description = "The service account impersonation analysis if AnalyzeIamPolicyRequest.analyze_service_account_impersonation is enabled.",
          items = {
            ["$ref"] = "IamPolicyAnalysis",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnalyzeMoveResponse = {
      description = "The response message for resource move analysis.",
      id = "AnalyzeMoveResponse",
      properties = {
        moveAnalysis = {
          description = "The list of analyses returned from performing the intended resource move analysis. The analysis is grouped by different Google Cloud services.",
          items = {
            ["$ref"] = "MoveAnalysis",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnalyzeOrgPoliciesResponse = {
      description = "The response message for AssetService.AnalyzeOrgPolicies.",
      id = "AnalyzeOrgPoliciesResponse",
      properties = {
        constraint = {
          ["$ref"] = "AnalyzerOrgPolicyConstraint",
          description = "The definition of the constraint in the request.",
        },
        nextPageToken = {
          description = "The page token to fetch the next page for AnalyzeOrgPoliciesResponse.org_policy_results.",
          type = "string",
        },
        orgPolicyResults = {
          description = "The organization policies under the AnalyzeOrgPoliciesRequest.scope with the AnalyzeOrgPoliciesRequest.constraint.",
          items = {
            ["$ref"] = "OrgPolicyResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnalyzeOrgPolicyGovernedAssetsResponse = {
      description = "The response message for AssetService.AnalyzeOrgPolicyGovernedAssets.",
      id = "AnalyzeOrgPolicyGovernedAssetsResponse",
      properties = {
        constraint = {
          ["$ref"] = "AnalyzerOrgPolicyConstraint",
          description = "The definition of the constraint in the request.",
        },
        governedAssets = {
          description = "The list of the analyzed governed assets.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The page token to fetch the next page for AnalyzeOrgPolicyGovernedAssetsResponse.governed_assets.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzeOrgPolicyGovernedContainersResponse = {
      description = "The response message for AssetService.AnalyzeOrgPolicyGovernedContainers.",
      id = "AnalyzeOrgPolicyGovernedContainersResponse",
      properties = {
        constraint = {
          ["$ref"] = "AnalyzerOrgPolicyConstraint",
          description = "The definition of the constraint in the request.",
        },
        governedContainers = {
          description = "The list of the analyzed governed containers.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1GovernedContainer",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The page token to fetch the next page for AnalyzeOrgPolicyGovernedContainersResponse.governed_containers.",
          type = "string",
        },
      },
      type = "object",
    },
    AnalyzerOrgPolicy = {
      description = "This organization policy message is a modified version of the one defined in the Organization Policy system. This message contains several fields defined in the original organization policy with some new fields for analysis purpose.",
      id = "AnalyzerOrgPolicy",
      properties = {
        appliedResource = {
          description = "The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of an organization/folder/project resource where this organization policy applies to. For any user defined org policies, this field has the same value as the [attached_resource] field. Only for default policy, this field has the different value.",
          type = "string",
        },
        attachedResource = {
          description = "The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of an organization/folder/project resource where this organization policy is set. Notice that some type of constraints are defined with default policy. This field will be empty for them.",
          type = "string",
        },
        inheritFromParent = {
          description = "If `inherit_from_parent` is true, Rules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this policy becomes the effective root for evaluation.",
          type = "boolean",
        },
        reset = {
          description = "Ignores policies set above this resource and restores the default behavior of the constraint at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.",
          type = "boolean",
        },
        rules = {
          description = "List of rules for this organization policy.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1Rule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AnalyzerOrgPolicyConstraint = {
      description = "The organization policy constraint definition.",
      id = "AnalyzerOrgPolicyConstraint",
      properties = {
        customConstraint = {
          ["$ref"] = "GoogleCloudAssetV1CustomConstraint",
          description = "The definition of the custom constraint.",
        },
        googleDefinedConstraint = {
          ["$ref"] = "GoogleCloudAssetV1Constraint",
          description = "The definition of the canned constraint defined by Google.",
        },
      },
      type = "object",
    },
    Asset = {
      description = "An asset in Google Cloud. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy), or a relationship (e.g. an INSTANCE_TO_INSTANCEGROUP relationship). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
      id = "Asset",
      properties = {
        accessLevel = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1AccessLevel",
          description = "Please also refer to the [access level user guide](https://cloud.google.com/access-context-manager/docs/overview#access-levels).",
        },
        accessPolicy = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1AccessPolicy",
          description = "Please also refer to the [access policy user guide](https://cloud.google.com/access-context-manager/docs/overview#access-policies).",
        },
        ancestors = {
          description = "The ancestry path of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), represented as a list of relative resource names. An ancestry path starts with the closest ancestor in the hierarchy and ends at root. If the asset is a project, folder, or organization, the ancestry path starts from the asset itself. Example: `[\"projects/123456789\", \"folders/5432\", \"organizations/1234\"]`",
          items = {
            type = "string",
          },
          type = "array",
        },
        assetType = {
          description = "The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
          type = "string",
        },
        iamPolicy = {
          ["$ref"] = "Policy",
          description = "A representation of the IAM policy set on a Google Cloud resource. There can be a maximum of one IAM policy set on any given resource. In addition, IAM policies inherit their granted access scope from any policies set on parent resources in the resource hierarchy. Therefore, the effectively policy is the union of both the policy set on this resource and each policy set on all of the resource's ancestry resource levels in the hierarchy. See [this topic](https://cloud.google.com/iam/help/allow-policies/inheritance) for more information.",
        },
        name = {
          description = "The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1` See [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.",
          type = "string",
        },
        orgPolicy = {
          description = "A representation of an [organization policy](https://cloud.google.com/resource-manager/docs/organization-policy/overview#organization_policy). There can be more than one organization policy with different constraints set on a given resource.",
          items = {
            ["$ref"] = "GoogleCloudOrgpolicyV1Policy",
          },
          type = "array",
        },
        osInventory = {
          ["$ref"] = "Inventory",
          description = "A representation of runtime OS Inventory information. See [this topic](https://cloud.google.com/compute/docs/instances/os-inventory-management) for more information.",
        },
        relatedAsset = {
          ["$ref"] = "RelatedAsset",
          description = "One related asset of the current asset.",
        },
        relatedAssets = {
          ["$ref"] = "RelatedAssets",
          description = "DEPRECATED. This field only presents for the purpose of backward-compatibility. The server will never generate responses with this field. The related assets of the asset of one relationship type. One asset only represents one type of relationship.",
        },
        resource = {
          ["$ref"] = "Resource",
          description = "A representation of the resource.",
        },
        servicePerimeter = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1ServicePerimeter",
          description = "Please also refer to the [service perimeter user guide](https://cloud.google.com/vpc-service-controls/docs/overview).",
        },
        updateTime = {
          description = "The last update timestamp of an asset. update_time is updated when create/update/delete operation is performed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    AttachedResource = {
      description = "Attached resource representation, which is defined by the corresponding service provider. It represents an attached resource's payload.",
      id = "AttachedResource",
      properties = {
        assetType = {
          description = "The type of this attached resource. Example: `osconfig.googleapis.com/Inventory` You can find the supported attached asset types of each resource in this table: `https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types`",
          type = "string",
        },
        versionedResources = {
          description = "Versioned resource representations of this attached resource. This is repeated because there could be multiple versions of the attached resource representations during version migration.",
          items = {
            ["$ref"] = "VersionedResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "AuditLogConfig",
          },
          type = "array",
        },
        service = {
          description = "Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.",
          type = "string",
        },
      },
      type = "object",
    },
    AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "AuditLogConfig",
      properties = {
        exemptedMembers = {
          description = "Specifies the identities that do not cause logging for this type of permission. Follows the same format of Binding.members.",
          items = {
            type = "string",
          },
          type = "array",
        },
        logType = {
          description = "The log type that this config enables.",
          enum = {
            "LOG_TYPE_UNSPECIFIED",
            "ADMIN_READ",
            "DATA_WRITE",
            "DATA_READ",
          },
          enumDescriptions = {
            "Default case. Should never be this.",
            "Admin reads. Example: CloudIAM getIamPolicy",
            "Data writes. Example: CloudSQL Users create",
            "Data reads. Example: CloudSQL Users list",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BatchGetAssetsHistoryResponse = {
      description = "Batch get assets history response.",
      id = "BatchGetAssetsHistoryResponse",
      properties = {
        assets = {
          description = "A list of assets with valid time windows.",
          items = {
            ["$ref"] = "TemporalAsset",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchGetEffectiveIamPoliciesResponse = {
      description = "A response message for AssetService.BatchGetEffectiveIamPolicies.",
      id = "BatchGetEffectiveIamPoliciesResponse",
      properties = {
        policyResults = {
          description = "The effective policies for a batch of resources. Note that the results order is the same as the order of BatchGetEffectiveIamPoliciesRequest.names. When a resource does not have any effective IAM policies, its corresponding policy_result will contain empty EffectiveIamPolicy.policies.",
          items = {
            ["$ref"] = "EffectiveIamPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BigQueryDestination = {
      description = "A BigQuery destination for exporting assets to.",
      id = "BigQueryDestination",
      properties = {
        dataset = {
          description = "Required. The BigQuery dataset in format \"projects/projectId/datasets/datasetId\", to which the snapshot result should be exported. If this dataset does not exist, the export call returns an INVALID_ARGUMENT error. Setting the `contentType` for `exportAssets` determines the [schema](/asset-inventory/docs/exporting-to-bigquery#bigquery-schema) of the BigQuery table. Setting `separateTablesPerAssetType` to `TRUE` also influences the schema.",
          type = "string",
        },
        force = {
          description = "If the destination table already exists and this flag is `TRUE`, the table will be overwritten by the contents of assets snapshot. If the flag is `FALSE` or unset and the destination table already exists, the export call returns an INVALID_ARGUMEMT error.",
          type = "boolean",
        },
        partitionSpec = {
          ["$ref"] = "PartitionSpec",
          description = "[partition_spec] determines whether to export to partitioned table(s) and how to partition the data. If [partition_spec] is unset or [partition_spec.partition_key] is unset or `PARTITION_KEY_UNSPECIFIED`, the snapshot results will be exported to non-partitioned table(s). [force] will decide whether to overwrite existing table(s). If [partition_spec] is specified. First, the snapshot results will be written to partitioned table(s) with two additional timestamp columns, readTime and requestTime, one of which will be the partition key. Secondly, in the case when any destination table already exists, it will first try to update existing table's schema as necessary by appending additional columns. Then, if [force] is `TRUE`, the corresponding partition will be overwritten by the snapshot results (data in different partitions will remain intact); if [force] is unset or `FALSE`, it will append the data. An error will be returned if the schema update or data appension fails.",
        },
        separateTablesPerAssetType = {
          description = "If this flag is `TRUE`, the snapshot results will be written to one or multiple tables, each of which contains results of one asset type. The [force] and [partition_spec] fields will apply to each of them. Field [table] will be concatenated with \"_\" and the asset type names (see https://cloud.google.com/asset-inventory/docs/supported-asset-types for supported asset types) to construct per-asset-type table names, in which all non-alphanumeric characters like \".\" and \"/\" will be substituted by \"_\". Example: if field [table] is \"mytable\" and snapshot results contain \"storage.googleapis.com/Bucket\" assets, the corresponding table name will be \"mytable_storage_googleapis_com_Bucket\". If any of these tables does not exist, a new table with the concatenated name will be created. When [content_type] in the ExportAssetsRequest is `RESOURCE`, the schema of each table will include RECORD-type columns mapped to the nested fields in the Asset.resource.data field of that asset type (up to the 15 nested level BigQuery supports (https://cloud.google.com/bigquery/docs/nested-repeated#limitations)). The fields in >15 nested levels will be stored in JSON format string as a child column of its parent RECORD column. If error occurs when exporting to any table, the whole export call will return an error but the export results that already succeed will persist. Example: if exporting to table_type_A succeeds when exporting to table_type_B fails during one export call, the results in table_type_A will persist and there will not be partial results persisting in a table.",
          type = "boolean",
        },
        table = {
          description = "Required. The BigQuery table to which the snapshot result should be written. If this table does not exist, a new table with the given name will be created.",
          type = "string",
        },
      },
      type = "object",
    },
    Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "Binding",
      properties = {
        condition = {
          ["$ref"] = "Expr",
          description = "The condition that is associated with this binding. If the condition evaluates to `true`, then this binding applies to the current request. If the condition evaluates to `false`, then this binding does not apply to the current request. However, a different role binding might grant the same role to one or more of the principals in this binding. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
        },
        members = {
          description = "Specifies the principals requesting access for a Google Cloud resource. `members` can have the following values: * `allUsers`: A special identifier that represents anyone who is on the internet; with or without a Google account. * `allAuthenticatedUsers`: A special identifier that represents anyone who is authenticated with a Google account or a service account. Does not include identities that come from external identity providers (IdPs) through identity federation. * `user:{emailid}`: An email address that represents a specific Google account. For example, `alice@example.com` . * `serviceAccount:{emailid}`: An email address that represents a Google service account. For example, `my-other-app@appspot.gserviceaccount.com`. * `serviceAccount:{projectid}.svc.id.goog[{namespace}/{kubernetes-sa}]`: An identifier for a [Kubernetes service account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:{emailid}`: An email address that represents a Google group. For example, `admins@example.com`. * `deleted:user:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a user that has been recently deleted. For example, `alice@example.com?uid=123456789012345678901`. If the user is recovered, this value reverts to `user:{emailid}` and the recovered user retains the role in the binding. * `deleted:serviceAccount:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a service account that has been recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`. If the service account is undeleted, this value reverts to `serviceAccount:{emailid}` and the undeleted service account retains the role in the binding. * `deleted:group:{emailid}?uid={uniqueid}`: An email address (plus unique identifier) representing a Google group that has been recently deleted. For example, `admins@example.com?uid=123456789012345678901`. If the group is recovered, this value reverts to `group:{emailid}` and the recovered group retains the role in the binding. * `domain:{domain}`: The G Suite domain (primary) that represents all the users of that domain. For example, `google.com` or `example.com`. ",
          items = {
            type = "string",
          },
          type = "array",
        },
        role = {
          description = "Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `roles/editor`, or `roles/owner`.",
          type = "string",
        },
      },
      type = "object",
    },
    ConditionContext = {
      description = "The IAM conditions context.",
      id = "ConditionContext",
      properties = {
        accessTime = {
          description = "The hypothetical access timestamp to evaluate IAM conditions. Note that this value must not be earlier than the current time; otherwise, an INVALID_ARGUMENT error will be returned.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ConditionEvaluation = {
      description = "The Condition evaluation.",
      id = "ConditionEvaluation",
      properties = {
        evaluationValue = {
          description = "The evaluation result.",
          enum = {
            "EVALUATION_VALUE_UNSPECIFIED",
            "TRUE",
            "FALSE",
            "CONDITIONAL",
          },
          enumDescriptions = {
            "Reserved for future use.",
            "The evaluation result is `true`.",
            "The evaluation result is `false`.",
            "The evaluation result is `conditional` when the condition expression contains variables that are either missing input values or have not been supported by Analyzer yet.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CreateFeedRequest = {
      description = "Create asset feed request.",
      id = "CreateFeedRequest",
      properties = {
        feed = {
          ["$ref"] = "Feed",
          description = "Required. The feed details. The field `name` must be empty and it will be generated in the format of: projects/project_number/feeds/feed_id folders/folder_number/feeds/feed_id organizations/organization_number/feeds/feed_id",
        },
        feedId = {
          description = "Required. This is the client-assigned asset feed identifier and it needs to be unique under a specific parent project/folder/organization.",
          type = "string",
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
    EffectiveIamPolicy = {
      description = "The effective IAM policies on one resource.",
      id = "EffectiveIamPolicy",
      properties = {
        fullResourceName = {
          description = "The [full_resource_name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) for which the policies are computed. This is one of the BatchGetEffectiveIamPoliciesRequest.names the caller provides in the request.",
          type = "string",
        },
        policies = {
          description = "The effective policies for the full_resource_name. These policies include the policy set on the full_resource_name and those set on its parents and ancestors up to the BatchGetEffectiveIamPoliciesRequest.scope. Note that these policies are not filtered according to the resource type of the full_resource_name. These policies are hierarchically ordered by PolicyInfo.attached_resource starting from full_resource_name itself to its parents and ancestors, such that policies[i]'s PolicyInfo.attached_resource is the child of policies[i+1]'s PolicyInfo.attached_resource, if policies[i+1] exists.",
          items = {
            ["$ref"] = "PolicyInfo",
          },
          type = "array",
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
    Explanation = {
      description = "Explanation about the IAM policy search result.",
      id = "Explanation",
      properties = {
        matchedPermissions = {
          additionalProperties = {
            ["$ref"] = "Permissions",
          },
          description = "The map from roles to their included permissions that match the permission query (i.e., a query containing `policy.role.permissions:`). Example: if query `policy.role.permissions:compute.disk.get` matches a policy binding that contains owner role, the matched_permissions will be `{\"roles/owner\": [\"compute.disk.get\"]}`. The roles can also be found in the returned `policy` bindings. Note that the map is populated only for requests with permission queries.",
          type = "object",
        },
      },
      type = "object",
    },
    ExportAssetsRequest = {
      description = "Export asset request.",
      id = "ExportAssetsRequest",
      properties = {
        assetTypes = {
          description = "A list of asset types to take a snapshot for. For example: \"compute.googleapis.com/Disk\". Regular expressions are also supported. For example: * \"compute.googleapis.com.*\" snapshots resources whose asset type starts with \"compute.googleapis.com\". * \".*Instance\" snapshots resources whose asset type ends with \"Instance\". * \".*Instance.*\" snapshots resources whose asset type contains \"Instance\". See [RE2](https://github.com/google/re2/wiki/Syntax) for all supported regular expression syntax. If the regular expression does not match any supported asset type, an INVALID_ARGUMENT error will be returned. If specified, only matching assets will be returned, otherwise, it will snapshot all asset types. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types.",
          items = {
            type = "string",
          },
          type = "array",
        },
        contentType = {
          description = "Asset content type. If not specified, no content but the asset name will be returned.",
          enum = {
            "CONTENT_TYPE_UNSPECIFIED",
            "RESOURCE",
            "IAM_POLICY",
            "ORG_POLICY",
            "ACCESS_POLICY",
            "OS_INVENTORY",
            "RELATIONSHIP",
          },
          enumDescriptions = {
            "Unspecified content type.",
            "Resource metadata.",
            "The actual IAM policy set on a resource.",
            "The organization policy set on an asset.",
            "The Access Context Manager policy set on an asset.",
            "The runtime OS Inventory information.",
            "The related resources.",
          },
          type = "string",
        },
        outputConfig = {
          ["$ref"] = "OutputConfig",
          description = "Required. Output configuration indicating where the results will be output to.",
        },
        readTime = {
          description = "Timestamp to take an asset snapshot. This can only be set to a timestamp between the current time and the current time minus 35 days (inclusive). If not specified, the current time will be used. Due to delays in resource data collection and indexing, there is a volatile window during which running the same query may get different results.",
          format = "google-datetime",
          type = "string",
        },
        relationshipTypes = {
          description = "A list of relationship types to export, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if content_type=RELATIONSHIP. * If specified: it snapshots specified relationships. It returns an error if any of the [relationship_types] doesn't belong to the supported relationship types of the [asset_types] or if any of the [asset_types] doesn't belong to the source types of the [relationship_types]. * Otherwise: it snapshots the supported relationships for all [asset_types] or returns an error if any of the [asset_types] has no relationship support. An unspecified asset types field means all supported asset_types. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types and relationship types.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Expr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "Expr",
      properties = {
        description = {
          description = "Optional. Description of the expression. This is a longer text which describes the expression, e.g. when hovered over it in a UI.",
          type = "string",
        },
        expression = {
          description = "Textual representation of an expression in Common Expression Language syntax.",
          type = "string",
        },
        location = {
          description = "Optional. String indicating the location of the expression for error reporting, e.g. a file name and a position in the file.",
          type = "string",
        },
        title = {
          description = "Optional. Title for the expression, i.e. a short string describing its purpose. This can be used e.g. in UIs which allow to enter the expression.",
          type = "string",
        },
      },
      type = "object",
    },
    Feed = {
      description = "An asset feed used to export asset updates to a destinations. An asset feed filter controls what updates are exported. The asset feed must be created within a project, organization, or folder. Supported destinations are: Pub/Sub topics.",
      id = "Feed",
      properties = {
        assetNames = {
          description = "A list of the full names of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. For a list of the full names for supported asset types, see [Resource name format](/asset-inventory/docs/resource-name-format).",
          items = {
            type = "string",
          },
          type = "array",
        },
        assetTypes = {
          description = "A list of types of the assets to receive updates. You must specify either or both of asset_names and asset_types. Only asset updates matching specified asset_names or asset_types are exported to the feed. Example: `\"compute.googleapis.com/Disk\"` For a list of all supported asset types, see [Supported asset types](/asset-inventory/docs/supported-asset-types).",
          items = {
            type = "string",
          },
          type = "array",
        },
        condition = {
          ["$ref"] = "Expr",
          description = "A condition which determines whether an asset update should be published. If specified, an asset will be returned only when the expression evaluates to true. When set, `expression` field in the `Expr` must be a valid [CEL expression] (https://github.com/google/cel-spec) on a TemporalAsset with name `temporal_asset`. Example: a Feed with expression (\"temporal_asset.deleted == true\") will only publish Asset deletions. Other fields of `Expr` are optional. See our [user guide](https://cloud.google.com/asset-inventory/docs/monitoring-asset-changes-with-condition) for detailed instructions.",
        },
        contentType = {
          description = "Asset content type. If not specified, no content but the asset name and type will be returned.",
          enum = {
            "CONTENT_TYPE_UNSPECIFIED",
            "RESOURCE",
            "IAM_POLICY",
            "ORG_POLICY",
            "ACCESS_POLICY",
            "OS_INVENTORY",
            "RELATIONSHIP",
          },
          enumDescriptions = {
            "Unspecified content type.",
            "Resource metadata.",
            "The actual IAM policy set on a resource.",
            "The organization policy set on an asset.",
            "The Access Context Manager policy set on an asset.",
            "The runtime OS Inventory information.",
            "The related resources.",
          },
          type = "string",
        },
        feedOutputConfig = {
          ["$ref"] = "FeedOutputConfig",
          description = "Required. Feed output configuration defining where the asset updates are published to.",
        },
        name = {
          description = "Required. The format will be projects/{project_number}/feeds/{client-assigned_feed_identifier} or folders/{folder_number}/feeds/{client-assigned_feed_identifier} or organizations/{organization_number}/feeds/{client-assigned_feed_identifier} The client-assigned feed identifier must be unique within the parent project/folder/organization.",
          type = "string",
        },
        relationshipTypes = {
          description = "A list of relationship types to output, for example: `INSTANCE_TO_INSTANCEGROUP`. This field should only be specified if content_type=RELATIONSHIP. * If specified: it outputs specified relationship updates on the [asset_names] or the [asset_types]. It returns an error if any of the [relationship_types] doesn't belong to the supported relationship types of the [asset_names] or [asset_types], or any of the [asset_names] or the [asset_types] doesn't belong to the source types of the [relationship_types]. * Otherwise: it outputs the supported relationships of the types of [asset_names] and [asset_types] or returns an error if any of the [asset_names] or the [asset_types] has no replationship support. See [Introduction to Cloud Asset Inventory](https://cloud.google.com/asset-inventory/docs/overview) for all supported asset types and relationship types.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FeedOutputConfig = {
      description = "Output configuration for asset feed destination.",
      id = "FeedOutputConfig",
      properties = {
        pubsubDestination = {
          ["$ref"] = "PubsubDestination",
          description = "Destination on Pub/Sub.",
        },
      },
      type = "object",
    },
    GcsDestination = {
      description = "A Cloud Storage location.",
      id = "GcsDestination",
      properties = {
        uri = {
          description = "The URI of the Cloud Storage object. It's the same URI that is used by gsutil. Example: \"gs://bucket_name/object_name\". See [Viewing and Editing Object Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata) for more information. If the specified Cloud Storage object already exists and there is no [hold](https://cloud.google.com/storage/docs/object-holds), it will be overwritten with the exported result.",
          type = "string",
        },
        uriPrefix = {
          description = "The URI prefix of all generated Cloud Storage objects. Example: \"gs://bucket_name/object_name_prefix\". Each object URI is in format: \"gs://bucket_name/object_name_prefix// and only contains assets for that type. starts from 0. Example: \"gs://bucket_name/object_name_prefix/compute.googleapis.com/Disk/0\" is the first shard of output objects containing all compute.googleapis.com/Disk assets. An INVALID_ARGUMENT error will be returned if file with the same name \"gs://bucket_name/object_name_prefix\" already exists.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1Access = {
      description = "An IAM role or permission under analysis.",
      id = "GoogleCloudAssetV1Access",
      properties = {
        analysisState = {
          ["$ref"] = "IamPolicyAnalysisState",
          description = "The analysis state of this access.",
        },
        permission = {
          description = "The permission.",
          type = "string",
        },
        role = {
          description = "The role.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1AccessControlList = {
      description = "An access control list, derived from the above IAM policy binding, which contains a set of resources and accesses. May include one item from each set to compose an access control entry. NOTICE that there could be multiple access control lists for one IAM policy binding. The access control lists are created based on resource and access combinations. For example, assume we have the following cases in one IAM policy binding: - Permission P1 and P2 apply to resource R1 and R2; - Permission P3 applies to resource R2 and R3; This will result in the following access control lists: - AccessControlList 1: [R1, R2], [P1, P2] - AccessControlList 2: [R2, R3], [P3]",
      id = "GoogleCloudAssetV1AccessControlList",
      properties = {
        accesses = {
          description = "The accesses that match one of the following conditions: - The access_selector, if it is specified in request; - Otherwise, access specifiers reachable from the policy binding's role.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1Access",
          },
          type = "array",
        },
        conditionEvaluation = {
          ["$ref"] = "ConditionEvaluation",
          description = "Condition evaluation for this AccessControlList, if there is a condition defined in the above IAM policy binding.",
        },
        resourceEdges = {
          description = "Resource edges of the graph starting from the policy attached resource to any descendant resources. The Edge.source_node contains the full resource name of a parent resource and Edge.target_node contains the full resource name of a child resource. This field is present only if the output_resource_edges option is enabled in request.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1Edge",
          },
          type = "array",
        },
        resources = {
          description = "The resources that match one of the following conditions: - The resource_selector, if it is specified in request; - Otherwise, resources reachable from the policy attached resource.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1Resource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset = {
      description = "Represents a Google Cloud asset(resource or IAM policy) governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.",
      id = "GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedAsset",
      properties = {
        consolidatedPolicy = {
          ["$ref"] = "AnalyzerOrgPolicy",
          description = "The consolidated policy for the analyzed asset. The consolidated policy is computed by merging and evaluating AnalyzeOrgPolicyGovernedAssetsResponse.GovernedAsset.policy_bundle. The evaluation will respect the organization policy [hierarchy rules](https://cloud.google.com/resource-manager/docs/organization-policy/understanding-hierarchy).",
        },
        governedIamPolicy = {
          ["$ref"] = "GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy",
          description = "An IAM policy governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.",
        },
        governedResource = {
          ["$ref"] = "GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource",
          description = "A Google Cloud resource governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.",
        },
        policyBundle = {
          description = "The ordered list of all organization policies from the AnalyzeOrgPoliciesResponse.OrgPolicyResult.consolidated_policy.attached_resource to the scope specified in the request. If the constraint is defined with default policy, it will also appear in the list.",
          items = {
            ["$ref"] = "AnalyzerOrgPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy = {
      description = "The IAM policies governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.",
      id = "GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedIamPolicy",
      properties = {
        attachedResource = {
          description = "The full resource name of the resource associated with this IAM policy. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. See [Cloud Asset Inventory Resource Name Format](https://cloud.google.com/asset-inventory/docs/resource-name-format) for more information.",
          type = "string",
        },
        folders = {
          description = "The folder(s) that this IAM policy belongs to, in the form of folders/{FOLDER_NUMBER}. This field is available when the IAM policy belongs(directly or cascadingly) to one or more folders.",
          items = {
            type = "string",
          },
          type = "array",
        },
        organization = {
          description = "The organization that this IAM policy belongs to, in the form of organizations/{ORGANIZATION_NUMBER}. This field is available when the IAM policy belongs(directly or cascadingly) to an organization.",
          type = "string",
        },
        policy = {
          ["$ref"] = "Policy",
          description = "The IAM policy directly set on the given resource.",
        },
        project = {
          description = "The project that this IAM policy belongs to, in the form of projects/{PROJECT_NUMBER}. This field is available when the IAM policy belongs to a project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource = {
      description = "The Google Cloud resources governed by the organization policies of the AnalyzeOrgPolicyGovernedAssetsRequest.constraint.",
      id = "GoogleCloudAssetV1AnalyzeOrgPolicyGovernedAssetsResponseGovernedResource",
      properties = {
        folders = {
          description = "The folder(s) that this resource belongs to, in the form of folders/{FOLDER_NUMBER}. This field is available when the resource belongs(directly or cascadingly) to one or more folders.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fullResourceName = {
          description = "The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of the Google Cloud resource.",
          type = "string",
        },
        organization = {
          description = "The organization that this resource belongs to, in the form of organizations/{ORGANIZATION_NUMBER}. This field is available when the resource belongs(directly or cascadingly) to an organization.",
          type = "string",
        },
        parent = {
          description = "The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of the parent of AnalyzeOrgPolicyGovernedAssetsResponse.GovernedResource.full_resource_name.",
          type = "string",
        },
        project = {
          description = "The project that this resource belongs to, in the form of projects/{PROJECT_NUMBER}. This field is available when the resource belongs to a project.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1BigQueryDestination = {
      description = "A BigQuery destination.",
      id = "GoogleCloudAssetV1BigQueryDestination",
      properties = {
        dataset = {
          description = "Required. The BigQuery dataset in format \"projects/projectId/datasets/datasetId\", to which the analysis results should be exported. If this dataset does not exist, the export call will return an INVALID_ARGUMENT error.",
          type = "string",
        },
        partitionKey = {
          description = "The partition key for BigQuery partitioned table.",
          enum = {
            "PARTITION_KEY_UNSPECIFIED",
            "REQUEST_TIME",
          },
          enumDescriptions = {
            "Unspecified partition key. Tables won't be partitioned using this option.",
            "The time when the request is received. If specified as partition key, the result table(s) is partitoned by the RequestTime column, an additional timestamp column representing when the request was received.",
          },
          type = "string",
        },
        tablePrefix = {
          description = "Required. The prefix of the BigQuery tables to which the analysis results will be written. Tables will be created based on this table_prefix if not exist: * _analysis table will contain export operation's metadata. * _analysis_result will contain all the IamPolicyAnalysisResult. When [partition_key] is specified, both tables will be partitioned based on the [partition_key].",
          type = "string",
        },
        writeDisposition = {
          description = "Optional. Specifies the action that occurs if the destination table or partition already exists. The following values are supported: * WRITE_TRUNCATE: If the table or partition already exists, BigQuery overwrites the entire table or all the partitions data. * WRITE_APPEND: If the table or partition already exists, BigQuery appends the data to the table or the latest partition. * WRITE_EMPTY: If the table already exists and contains data, an error is returned. The default value is WRITE_APPEND. Each action is atomic and only occurs if BigQuery is able to complete the job successfully. Details are at https://cloud.google.com/bigquery/docs/loading-data-local#appending_to_or_overwriting_a_table_using_a_local_file.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1BooleanConstraint = {
      description = "A `Constraint` that is either enforced or not. For example a constraint `constraints/compute.disableSerialPortAccess`. If it is enforced on a VM instance, serial port connections will not be opened to that instance.",
      id = "GoogleCloudAssetV1BooleanConstraint",
      properties = {},
      type = "object",
    },
    GoogleCloudAssetV1Constraint = {
      description = "The definition of a constraint.",
      id = "GoogleCloudAssetV1Constraint",
      properties = {
        booleanConstraint = {
          ["$ref"] = "GoogleCloudAssetV1BooleanConstraint",
          description = "Defines this constraint as being a BooleanConstraint.",
        },
        constraintDefault = {
          description = "The evaluation behavior of this constraint in the absence of 'Policy'.",
          enum = {
            "CONSTRAINT_DEFAULT_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "This is only used for distinguishing unset values and should never be used.",
            "Indicate that all values are allowed for list constraints. Indicate that enforcement is off for boolean constraints.",
            "Indicate that all values are denied for list constraints. Indicate that enforcement is on for boolean constraints.",
          },
          type = "string",
        },
        description = {
          description = "Detailed description of what this `Constraint` controls as well as how and where it is enforced.",
          type = "string",
        },
        displayName = {
          description = "The human readable name of the constraint.",
          type = "string",
        },
        listConstraint = {
          ["$ref"] = "GoogleCloudAssetV1ListConstraint",
          description = "Defines this constraint as being a ListConstraint.",
        },
        name = {
          description = "The unique name of the constraint. Format of the name should be * `constraints/{constraint_name}` For example, `constraints/compute.disableSerialPortAccess`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1CustomConstraint = {
      description = "The definition of a custom constraint.",
      id = "GoogleCloudAssetV1CustomConstraint",
      properties = {
        actionType = {
          description = "Allow or deny type.",
          enum = {
            "ACTION_TYPE_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "Unspecified. Will results in user error.",
            "Allowed action type.",
            "Deny action type.",
          },
          type = "string",
        },
        condition = {
          description = "Organization Policy condition/expression. For example: `resource.instanceName.matches(\"[production|test]_.*_(\\d)+\")'` or, `resource.management.auto_upgrade == true`",
          type = "string",
        },
        description = {
          description = "Detailed information about this custom policy constraint.",
          type = "string",
        },
        displayName = {
          description = "One line display name for the UI.",
          type = "string",
        },
        methodTypes = {
          description = "All the operations being applied for this constraint.",
          items = {
            enum = {
              "METHOD_TYPE_UNSPECIFIED",
              "CREATE",
              "UPDATE",
              "DELETE",
            },
            enumDescriptions = {
              "Unspecified. Will results in user error.",
              "Constraint applied when creating the resource.",
              "Constraint applied when updating the resource.",
              "Constraint applied when deleting the resource.",
            },
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example : \"organizations/123/customConstraints/custom.createOnlyE2TypeVms\"",
          type = "string",
        },
        resourceTypes = {
          description = "The Resource Instance type on which this policy applies to. Format will be of the form : \"/\" Example: * `compute.googleapis.com/Instance`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1Edge = {
      description = "A directional edge.",
      id = "GoogleCloudAssetV1Edge",
      properties = {
        sourceNode = {
          description = "The source node of the edge. For example, it could be a full resource name for a resource node or an email of an identity.",
          type = "string",
        },
        targetNode = {
          description = "The target node of the edge. For example, it could be a full resource name for a resource node or an email of an identity.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1GcsDestination = {
      description = "A Cloud Storage location.",
      id = "GoogleCloudAssetV1GcsDestination",
      properties = {
        uri = {
          description = "Required. The URI of the Cloud Storage object. It's the same URI that is used by gsutil. Example: \"gs://bucket_name/object_name\". See [Viewing and Editing Object Metadata](https://cloud.google.com/storage/docs/viewing-editing-metadata) for more information. If the specified Cloud Storage object already exists and there is no [hold](https://cloud.google.com/storage/docs/object-holds), it will be overwritten with the analysis result.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1GovernedContainer = {
      description = "The organization/folder/project resource governed by organization policies of AnalyzeOrgPolicyGovernedContainersRequest.constraint.",
      id = "GoogleCloudAssetV1GovernedContainer",
      properties = {
        consolidatedPolicy = {
          ["$ref"] = "AnalyzerOrgPolicy",
          description = "The consolidated organization policy for the analyzed resource. The consolidated organization policy is computed by merging and evaluating AnalyzeOrgPolicyGovernedContainersResponse.GovernedContainer.policy_bundle. The evaluation will respect the organization policy [hierarchy rules](https://cloud.google.com/resource-manager/docs/organization-policy/understanding-hierarchy).",
        },
        fullResourceName = {
          description = "The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of an organization/folder/project resource.",
          type = "string",
        },
        parent = {
          description = "The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of the parent of AnalyzeOrgPolicyGovernedContainersResponse.GovernedContainer.full_resource_name.",
          type = "string",
        },
        policyBundle = {
          description = "The ordered list of all organization policies from the AnalyzeOrgPoliciesResponse.OrgPolicyResult.consolidated_policy.attached_resource. to the scope specified in the request. If the constraint is defined with default policy, it will also appear in the list.",
          items = {
            ["$ref"] = "AnalyzerOrgPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1Identity = {
      description = "An identity under analysis.",
      id = "GoogleCloudAssetV1Identity",
      properties = {
        analysisState = {
          ["$ref"] = "IamPolicyAnalysisState",
          description = "The analysis state of this identity.",
        },
        name = {
          description = "The identity name in any form of members appear in [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding), such as: - user:foo@google.com - group:group1@google.com - serviceAccount:s1@prj1.iam.gserviceaccount.com - projectOwner:some_project_id - domain:google.com - allUsers - etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1IdentityList = {
      description = "The identities and group edges.",
      id = "GoogleCloudAssetV1IdentityList",
      properties = {
        groupEdges = {
          description = "Group identity edges of the graph starting from the binding's group members to any node of the identities. The Edge.source_node contains a group, such as `group:parent@google.com`. The Edge.target_node contains a member of the group, such as `group:child@google.com` or `user:foo@google.com`. This field is present only if the output_group_edges option is enabled in request.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1Edge",
          },
          type = "array",
        },
        identities = {
          description = "Only the identities that match one of the following conditions will be presented: - The identity_selector, if it is specified in request; - Otherwise, identities reachable from the policy binding's members.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1Identity",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1ListConstraint = {
      description = "A `Constraint` that allows or disallows a list of string values, which are configured by an organization's policy administrator with a `Policy`.",
      id = "GoogleCloudAssetV1ListConstraint",
      properties = {
        supportsIn = {
          description = "Indicates whether values grouped into categories can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `\"in:Python\"` would match any value in the 'Python' group.",
          type = "boolean",
        },
        supportsUnder = {
          description = "Indicates whether subtrees of Cloud Resource Manager resource hierarchy can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `\"under:folders/123\"` would match any resource under the 'folders/123' folder.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination = {
      description = "BigQuery destination.",
      id = "GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination",
      properties = {
        dataset = {
          description = "Required. The BigQuery dataset where the query results will be saved. It has the format of \"projects/{projectId}/datasets/{datasetId}\".",
          type = "string",
        },
        table = {
          description = "Required. The BigQuery table where the query results will be saved. If this table does not exist, a new table with the given name will be created.",
          type = "string",
        },
        writeDisposition = {
          description = "Specifies the action that occurs if the destination table or partition already exists. The following values are supported: * WRITE_TRUNCATE: If the table or partition already exists, BigQuery overwrites the entire table or all the partitions data. * WRITE_APPEND: If the table or partition already exists, BigQuery appends the data to the table or the latest partition. * WRITE_EMPTY: If the table already exists and contains data, a 'duplicate' error is returned in the job result. The default value is WRITE_EMPTY.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1Resource = {
      description = "A Google Cloud resource under analysis.",
      id = "GoogleCloudAssetV1Resource",
      properties = {
        analysisState = {
          ["$ref"] = "IamPolicyAnalysisState",
          description = "The analysis state of this resource.",
        },
        fullResourceName = {
          description = "The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format)",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1Rule = {
      description = "Represents a rule defined in an organization policy",
      id = "GoogleCloudAssetV1Rule",
      properties = {
        allowAll = {
          description = "Setting this to true means that all values are allowed. This field can be set only in Policies for list constraints.",
          type = "boolean",
        },
        condition = {
          ["$ref"] = "Expr",
          description = "The evaluating condition for this rule.",
        },
        denyAll = {
          description = "Setting this to true means that all values are denied. This field can be set only in Policies for list constraints.",
          type = "boolean",
        },
        enforce = {
          description = "If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints.",
          type = "boolean",
        },
        values = {
          ["$ref"] = "GoogleCloudAssetV1StringValues",
          description = "List of values to be used for this PolicyRule. This field can be set only in Policies for list constraints.",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1StringValues = {
      description = "The string values for the list constraints.",
      id = "GoogleCloudAssetV1StringValues",
      properties = {
        allowedValues = {
          description = "List of values allowed at this resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
        deniedValues = {
          description = "List of values denied at this resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1p7beta1Asset = {
      description = "An asset in Google Cloud. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
      id = "GoogleCloudAssetV1p7beta1Asset",
      properties = {
        accessLevel = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1AccessLevel",
          description = "Please also refer to the [access level user guide](https://cloud.google.com/access-context-manager/docs/overview#access-levels).",
        },
        accessPolicy = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1AccessPolicy",
          description = "Please also refer to the [access policy user guide](https://cloud.google.com/access-context-manager/docs/overview#access-policies).",
        },
        ancestors = {
          description = "The ancestry path of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), represented as a list of relative resource names. An ancestry path starts with the closest ancestor in the hierarchy and ends at root. If the asset is a project, folder, or organization, the ancestry path starts from the asset itself. Example: `[\"projects/123456789\", \"folders/5432\", \"organizations/1234\"]`",
          items = {
            type = "string",
          },
          type = "array",
        },
        assetType = {
          description = "The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
          type = "string",
        },
        iamPolicy = {
          ["$ref"] = "Policy",
          description = "A representation of the IAM policy set on a Google Cloud resource. There can be a maximum of one IAM policy set on any given resource. In addition, IAM policies inherit their granted access scope from any policies set on parent resources in the resource hierarchy. Therefore, the effectively policy is the union of both the policy set on this resource and each policy set on all of the resource's ancestry resource levels in the hierarchy. See [this topic](https://cloud.google.com/iam/help/allow-policies/inheritance) for more information.",
        },
        name = {
          description = "The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1` See [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.",
          type = "string",
        },
        orgPolicy = {
          description = "A representation of an [organization policy](https://cloud.google.com/resource-manager/docs/organization-policy/overview#organization_policy). There can be more than one organization policy with different constraints set on a given resource.",
          items = {
            ["$ref"] = "GoogleCloudOrgpolicyV1Policy",
          },
          type = "array",
        },
        relatedAssets = {
          ["$ref"] = "GoogleCloudAssetV1p7beta1RelatedAssets",
          description = "The related assets of the asset of one relationship type. One asset only represents one type of relationship.",
        },
        resource = {
          ["$ref"] = "GoogleCloudAssetV1p7beta1Resource",
          description = "A representation of the resource.",
        },
        servicePerimeter = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1ServicePerimeter",
          description = "Please also refer to the [service perimeter user guide](https://cloud.google.com/vpc-service-controls/docs/overview).",
        },
        updateTime = {
          description = "The last update timestamp of an asset. update_time is updated when create/update/delete operation is performed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1p7beta1RelatedAsset = {
      description = "An asset identify in Google Cloud which contains its name, type and ancestors. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
      id = "GoogleCloudAssetV1p7beta1RelatedAsset",
      properties = {
        ancestors = {
          description = "The ancestors of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), represented as a list of relative resource names. An ancestry path starts with the closest ancestor in the hierarchy and ends at root. Example: `[\"projects/123456789\", \"folders/5432\", \"organizations/1234\"]`",
          items = {
            type = "string",
          },
          type = "array",
        },
        asset = {
          description = "The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1` See [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.",
          type = "string",
        },
        assetType = {
          description = "The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1p7beta1RelatedAssets = {
      description = "The detailed related assets with the `relationship_type`.",
      id = "GoogleCloudAssetV1p7beta1RelatedAssets",
      properties = {
        assets = {
          description = "The peer resources of the relationship.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1p7beta1RelatedAsset",
          },
          type = "array",
        },
        relationshipAttributes = {
          ["$ref"] = "GoogleCloudAssetV1p7beta1RelationshipAttributes",
          description = "The detailed relation attributes.",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1p7beta1RelationshipAttributes = {
      description = "The relationship attributes which include `type`, `source_resource_type`, `target_resource_type` and `action`.",
      id = "GoogleCloudAssetV1p7beta1RelationshipAttributes",
      properties = {
        action = {
          description = "The detail of the relationship, e.g. `contains`, `attaches`",
          type = "string",
        },
        sourceResourceType = {
          description = "The source asset type. Example: `compute.googleapis.com/Instance`",
          type = "string",
        },
        targetResourceType = {
          description = "The target asset type. Example: `compute.googleapis.com/Disk`",
          type = "string",
        },
        type = {
          description = "The unique identifier of the relationship type. Example: `INSTANCE_TO_INSTANCEGROUP`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudAssetV1p7beta1Resource = {
      description = "A representation of a Google Cloud resource.",
      id = "GoogleCloudAssetV1p7beta1Resource",
      properties = {
        data = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The content of the resource, in which some sensitive fields are removed and may not be present.",
          type = "object",
        },
        discoveryDocumentUri = {
          description = "The URL of the discovery document containing the resource's JSON schema. Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest` This value is unspecified for resources that do not have an API based on a discovery document, such as Cloud Bigtable.",
          type = "string",
        },
        discoveryName = {
          description = "The JSON schema name listed in the discovery document. Example: `Project` This value is unspecified for resources that do not have an API based on a discovery document, such as Cloud Bigtable.",
          type = "string",
        },
        location = {
          description = "The location of the resource in Google Cloud, such as its zone and region. For more information, see https://cloud.google.com/about/locations/.",
          type = "string",
        },
        parent = {
          description = "The full name of the immediate parent of this resource. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information. For Google Cloud assets, this value is the parent resource defined in the [IAM policy hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy). Example: `//cloudresourcemanager.googleapis.com/projects/my_project_123` For third-party assets, this field may be set differently.",
          type = "string",
        },
        resourceUrl = {
          description = "The REST URL for accessing the resource. An HTTP `GET` request using this URL returns the resource itself. Example: `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123` This value is unspecified for resources without a REST API.",
          type = "string",
        },
        version = {
          description = "The API version. Example: `v1`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV1BooleanPolicy = {
      description = "Used in `policy_type` to specify how `boolean_policy` will behave at this resource.",
      id = "GoogleCloudOrgpolicyV1BooleanPolicy",
      properties = {
        enforced = {
          description = "If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. Suppose you have a `Constraint` `constraints/compute.disableSerialPortAccess` with `constraint_default` set to `ALLOW`. A `Policy` for that `Constraint` exhibits the following behavior: - If the `Policy` at this resource has enforced set to `false`, serial port connection attempts will be allowed. - If the `Policy` at this resource has enforced set to `true`, serial port connection attempts will be refused. - If the `Policy` at this resource is `RestoreDefault`, serial port connection attempts will be allowed. - If no `Policy` is set at this resource or anywhere higher in the resource hierarchy, serial port connection attempts will be allowed. - If no `Policy` is set at this resource, but one exists higher in the resource hierarchy, the behavior is as if the`Policy` were set at this resource. The following examples demonstrate the different possible layerings: Example 1 (nearest `Constraint` wins): `organizations/foo` has a `Policy` with: {enforced: false} `projects/bar` has no `Policy` set. The constraint at `projects/bar` and `organizations/foo` will not be enforced. Example 2 (enforcement gets replaced): `organizations/foo` has a `Policy` with: {enforced: false} `projects/bar` has a `Policy` with: {enforced: true} The constraint at `organizations/foo` is not enforced. The constraint at `projects/bar` is enforced. Example 3 (RestoreDefault): `organizations/foo` has a `Policy` with: {enforced: true} `projects/bar` has a `Policy` with: {RestoreDefault: {}} The constraint at `organizations/foo` is enforced. The constraint at `projects/bar` is not enforced, because `constraint_default` for the `Constraint` is `ALLOW`.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV1ListPolicy = {
      description = "Used in `policy_type` to specify how `list_policy` behaves at this resource. `ListPolicy` can define specific values and subtrees of Cloud Resource Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or denied by setting the `allowed_values` and `denied_values` fields. This is achieved by using the `under:` and optional `is:` prefixes. The `under:` prefix is used to denote resource subtree values. The `is:` prefix is used to denote specific values, and is required only if the value contains a \":\". Values prefixed with \"is:\" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - \"projects/\", e.g. \"projects/tokyo-rain-123\" - \"folders/\", e.g. \"folders/1234\" - \"organizations/\", e.g. \"organizations/1234\" The `supports_under` field of the associated `Constraint` defines whether ancestry prefixes can be used. You can set `allowed_values` and `denied_values` in the same `Policy` if `all_values` is `ALL_VALUES_UNSPECIFIED`. `ALLOW` or `DENY` are used to allow or deny all values. If `all_values` is set to either `ALLOW` or `DENY`, `allowed_values` and `denied_values` must be unset.",
      id = "GoogleCloudOrgpolicyV1ListPolicy",
      properties = {
        allValues = {
          description = "The policy all_values state.",
          enum = {
            "ALL_VALUES_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "Indicates that allowed_values or denied_values must be set.",
            "A policy with this set allows all values.",
            "A policy with this set denies all values.",
          },
          type = "string",
        },
        allowedValues = {
          description = "List of values allowed at this resource. Can only be set if `all_values` is set to `ALL_VALUES_UNSPECIFIED`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        deniedValues = {
          description = "List of values denied at this resource. Can only be set if `all_values` is set to `ALL_VALUES_UNSPECIFIED`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        inheritFromParent = {
          description = "Determines the inheritance behavior for this `Policy`. By default, a `ListPolicy` set at a resource supersedes any `Policy` set anywhere up the resource hierarchy. However, if `inherit_from_parent` is set to `true`, then the values from the effective `Policy` of the parent resource are inherited, meaning the values set in this `Policy` are added to the values inherited up the hierarchy. Setting `Policy` hierarchies that inherit both allowed values and denied values isn't recommended in most circumstances to keep the configuration simple and understandable. However, it is possible to set a `Policy` with `allowed_values` set that inherits a `Policy` with `denied_values` set. In this case, the values that are allowed must be in `allowed_values` and not present in `denied_values`. For example, suppose you have a `Constraint` `constraints/serviceuser.services`, which has a `constraint_type` of `list_constraint`, and with `constraint_default` set to `ALLOW`. Suppose that at the Organization level, a `Policy` is applied that restricts the allowed API activations to {`E1`, `E2`}. Then, if a `Policy` is applied to a project below the Organization that has `inherit_from_parent` set to `false` and field all_values set to DENY, then an attempt to activate any API will be denied. The following examples demonstrate different possible layerings for `projects/bar` parented by `organizations/foo`: Example 1 (no inherited values): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values:\"E2\"} `projects/bar` has `inherit_from_parent` `false` and values: {allowed_values: \"E3\" allowed_values: \"E4\"} The accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are `E3`, and `E4`. Example 2 (inherited values): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values:\"E2\"} `projects/bar` has a `Policy` with values: {value: \"E3\" value: \"E4\" inherit_from_parent: true} The accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are `E1`, `E2`, `E3`, and `E4`. Example 3 (inheriting both allowed and denied values): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values: \"E2\"} `projects/bar` has a `Policy` with: {denied_values: \"E1\"} The accepted values at `organizations/foo` are `E1`, `E2`. The value accepted at `projects/bar` is `E2`. Example 4 (RestoreDefault): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values:\"E2\"} `projects/bar` has a `Policy` with values: {RestoreDefault: {}} The accepted values at `organizations/foo` are `E1`, `E2`. The accepted values at `projects/bar` are either all or none depending on the value of `constraint_default` (if `ALLOW`, all; if `DENY`, none). Example 5 (no policy inherits parent policy): `organizations/foo` has no `Policy` set. `projects/bar` has no `Policy` set. The accepted values at both levels are either all or none depending on the value of `constraint_default` (if `ALLOW`, all; if `DENY`, none). Example 6 (ListConstraint allowing all): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values: \"E2\"} `projects/bar` has a `Policy` with: {all: ALLOW} The accepted values at `organizations/foo` are `E1`, E2`. Any value is accepted at `projects/bar`. Example 7 (ListConstraint allowing none): `organizations/foo` has a `Policy` with values: {allowed_values: \"E1\" allowed_values: \"E2\"} `projects/bar` has a `Policy` with: {all: DENY} The accepted values at `organizations/foo` are `E1`, E2`. No value is accepted at `projects/bar`. Example 10 (allowed and denied subtrees of Resource Manager hierarchy): Given the following resource hierarchy O1->{F1, F2}; F1->{P1}; F2->{P2, P3}, `organizations/foo` has a `Policy` with values: {allowed_values: \"under:organizations/O1\"} `projects/bar` has a `Policy` with: {allowed_values: \"under:projects/P3\"} {denied_values: \"under:folders/F2\"} The accepted values at `organizations/foo` are `organizations/O1`, `folders/F1`, `folders/F2`, `projects/P1`, `projects/P2`, `projects/P3`. The accepted values at `projects/bar` are `organizations/O1`, `folders/F1`, `projects/P1`.",
          type = "boolean",
        },
        suggestedValue = {
          description = "Optional. The Google Cloud Console will try to default to a configuration that matches the value specified in this `Policy`. If `suggested_value` is not set, it will inherit the value specified higher in the hierarchy, unless `inherit_from_parent` is `false`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV1Policy = {
      description = "Defines a Cloud Organization `Policy` which is used to specify `Constraints` for configurations of Cloud Platform resources.",
      id = "GoogleCloudOrgpolicyV1Policy",
      properties = {
        booleanPolicy = {
          ["$ref"] = "GoogleCloudOrgpolicyV1BooleanPolicy",
          description = "For boolean `Constraints`, whether to enforce the `Constraint` or not.",
        },
        constraint = {
          description = "The name of the `Constraint` the `Policy` is configuring, for example, `constraints/serviceuser.services`. A [list of available constraints](/resource-manager/docs/organization-policy/org-policy-constraints) is available. Immutable after creation.",
          type = "string",
        },
        etag = {
          description = "An opaque tag indicating the current version of the `Policy`, used for concurrency control. When the `Policy` is returned from either a `GetPolicy` or a `ListOrgPolicy` request, this `etag` indicates the version of the current `Policy` to use when executing a read-modify-write loop. When the `Policy` is returned from a `GetEffectivePolicy` request, the `etag` will be unset. When the `Policy` is used in a `SetOrgPolicy` method, use the `etag` value that was returned from a `GetOrgPolicy` request as part of a read-modify-write loop for concurrency control. Not setting the `etag`in a `SetOrgPolicy` request will result in an unconditional write of the `Policy`.",
          format = "byte",
          type = "string",
        },
        listPolicy = {
          ["$ref"] = "GoogleCloudOrgpolicyV1ListPolicy",
          description = "List of values either allowed or disallowed.",
        },
        restoreDefault = {
          ["$ref"] = "GoogleCloudOrgpolicyV1RestoreDefault",
          description = "Restores the default behavior of the constraint; independent of `Constraint` type.",
        },
        updateTime = {
          description = "The time stamp the `Policy` was previously updated. This is set by the server, not specified by the caller, and represents the last time a call to `SetOrgPolicy` was made for that `Policy`. Any value set by the client will be ignored.",
          format = "google-datetime",
          type = "string",
        },
        version = {
          description = "Version of the `Policy`. Default version is 0;",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV1RestoreDefault = {
      description = "Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. Suppose that `constraint_default` is set to `ALLOW` for the `Constraint` `constraints/serviceuser.services`. Suppose that organization foo.com sets a `Policy` at their Organization resource node that restricts the allowed service activations to deny all service activations. They could then set a `Policy` with the `policy_type` `restore_default` on several experimental projects, restoring the `constraint_default` enforcement of the `Constraint` for only those projects, allowing those projects to have all services activated.",
      id = "GoogleCloudOrgpolicyV1RestoreDefault",
      properties = {},
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1AccessLevel = {
      description = "An `AccessLevel` is a label that can be applied to requests to Google Cloud services, along with a list of requirements necessary for the label to be applied.",
      id = "GoogleIdentityAccesscontextmanagerV1AccessLevel",
      properties = {
        basic = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1BasicLevel",
          description = "A `BasicLevel` composed of `Conditions`.",
        },
        custom = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1CustomLevel",
          description = "A `CustomLevel` written in the Common Expression Language.",
        },
        description = {
          description = "Description of the `AccessLevel` and its use. Does not affect behavior.",
          type = "string",
        },
        name = {
          description = "Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.",
          type = "string",
        },
        title = {
          description = "Human readable title. Must be unique within the Policy.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1AccessPolicy = {
      description = "`AccessPolicy` is a container for `AccessLevels` (which define the necessary attributes to use Google Cloud services) and `ServicePerimeters` (which define regions of services able to freely pass data within a perimeter). An access policy is globally visible within an organization, and the restrictions it specifies apply to all projects within an organization.",
      id = "GoogleIdentityAccesscontextmanagerV1AccessPolicy",
      properties = {
        etag = {
          description = "Output only. An opaque identifier for the current version of the `AccessPolicy`. This will always be a strongly validated etag, meaning that two Access Polices will be identical if and only if their etags are identical. Clients should not expect this to be in any specific format.",
          type = "string",
        },
        name = {
          description = "Output only. Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}`",
          type = "string",
        },
        parent = {
          description = "Required. The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`",
          type = "string",
        },
        scopes = {
          description = "The scopes of a policy define which resources an ACM policy can restrict, and where ACM resources can be referenced. For example, a policy with scopes=[\"folders/123\"] has the following behavior: - vpcsc perimeters can only restrict projects within folders/123 - access levels can only be referenced by resources within folders/123. If empty, there are no limitations on which resources can be restricted by an ACM policy, and there are no limitations on where ACM resources can be referenced. Only one policy can include a given scope (attempting to create a second policy which includes \"folders/123\" will result in an error). Currently, scopes cannot be modified after a policy is created. Currently, policies can only have a single scope. Format: list of `folders/{folder_number}` or `projects/{project_number}`",
          items = {
            type = "string",
          },
          type = "array",
        },
        title = {
          description = "Required. Human readable title. Does not affect behavior.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1ApiOperation = {
      description = "Identification for an API Operation.",
      id = "GoogleIdentityAccesscontextmanagerV1ApiOperation",
      properties = {
        methodSelectors = {
          description = "API methods or permissions to allow. Method or permission must belong to the service specified by `service_name` field. A single MethodSelector entry with `*` specified for the `method` field will allow all methods AND permissions for the service specified in `service_name`.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1MethodSelector",
          },
          type = "array",
        },
        serviceName = {
          description = "The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with `service_name` field set to `*` will allow all methods AND permissions for all services.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1BasicLevel = {
      description = "`BasicLevel` is an `AccessLevel` using a set of recommended features.",
      id = "GoogleIdentityAccesscontextmanagerV1BasicLevel",
      properties = {
        combiningFunction = {
          description = "How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.",
          enum = {
            "AND",
            "OR",
          },
          enumDescriptions = {
            "All `Conditions` must be true for the `BasicLevel` to be true.",
            "If at least one `Condition` is true, then the `BasicLevel` is true.",
          },
          type = "string",
        },
        conditions = {
          description = "Required. A list of requirements for the `AccessLevel` to be granted.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1Condition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1Condition = {
      description = "A condition necessary for an `AccessLevel` to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.",
      id = "GoogleIdentityAccesscontextmanagerV1Condition",
      properties = {
        devicePolicy = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1DevicePolicy",
          description = "Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.",
        },
        ipSubnetworks = {
          description = "CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, \"192.0.2.0/24\" is accepted but \"192.0.2.1/24\" is not. Similarly, for IPv6, \"2001:db8::/32\" is accepted whereas \"2001:db8::1/32\" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        members = {
          description = "The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: `user:{emailid}` `serviceAccount:{emailid}` If not specified, a request may come from any user.",
          items = {
            type = "string",
          },
          type = "array",
        },
        negate = {
          description = "Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields, each field must be false for the Condition overall to be satisfied. Defaults to false.",
          type = "boolean",
        },
        regions = {
          description = "The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 alpha-2 codes.",
          items = {
            type = "string",
          },
          type = "array",
        },
        requiredAccessLevels = {
          description = "A list of other access levels defined in the same `Policy`, referenced by resource name. Referencing an `AccessLevel` which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: \"`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME\"`",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1CustomLevel = {
      description = "`CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec",
      id = "GoogleIdentityAccesscontextmanagerV1CustomLevel",
      properties = {
        expr = {
          ["$ref"] = "Expr",
          description = "Required. A Cloud CEL expression evaluating to a boolean.",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1DevicePolicy = {
      description = "`DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.",
      id = "GoogleIdentityAccesscontextmanagerV1DevicePolicy",
      properties = {
        allowedDeviceManagementLevels = {
          description = "Allowed device management levels, an empty list allows all management levels.",
          items = {
            enum = {
              "MANAGEMENT_UNSPECIFIED",
              "NONE",
              "BASIC",
              "COMPLETE",
            },
            enumDescriptions = {
              "The device's management level is not specified or not known.",
              "The device is not managed.",
              "Basic management is enabled, which is generally limited to monitoring and wiping the corporate account.",
              "Complete device management. This includes more thorough monitoring and the ability to directly manage the device (such as remote wiping). This can be enabled through the Android Enterprise Platform.",
            },
            type = "string",
          },
          type = "array",
        },
        allowedEncryptionStatuses = {
          description = "Allowed encryptions statuses, an empty list allows all statuses.",
          items = {
            enum = {
              "ENCRYPTION_UNSPECIFIED",
              "ENCRYPTION_UNSUPPORTED",
              "UNENCRYPTED",
              "ENCRYPTED",
            },
            enumDescriptions = {
              "The encryption status of the device is not specified or not known.",
              "The device does not support encryption.",
              "The device supports encryption, but is currently unencrypted.",
              "The device is encrypted.",
            },
            type = "string",
          },
          type = "array",
        },
        osConstraints = {
          description = "Allowed OS versions, an empty list allows all types and all versions.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1OsConstraint",
          },
          type = "array",
        },
        requireAdminApproval = {
          description = "Whether the device needs to be approved by the customer admin.",
          type = "boolean",
        },
        requireCorpOwned = {
          description = "Whether the device needs to be corp owned.",
          type = "boolean",
        },
        requireScreenlock = {
          description = "Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1EgressFrom = {
      description = "Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.",
      id = "GoogleIdentityAccesscontextmanagerV1EgressFrom",
      properties = {
        identities = {
          description = "A list of identities that are allowed access through this [EgressPolicy]. Should be in the format of email address. The email address should represent individual user or service account only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        identityType = {
          description = "Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.",
          enum = {
            "IDENTITY_TYPE_UNSPECIFIED",
            "ANY_IDENTITY",
            "ANY_USER_ACCOUNT",
            "ANY_SERVICE_ACCOUNT",
          },
          enumDescriptions = {
            "No blanket identity group specified.",
            "Authorize access from all identities outside the perimeter.",
            "Authorize access from all human users outside the perimeter.",
            "Authorize access from all service accounts outside the perimeter.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1EgressPolicy = {
      description = "Policy for egress from perimeter. EgressPolicies match requests based on `egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the *resources* that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.",
      id = "GoogleIdentityAccesscontextmanagerV1EgressPolicy",
      properties = {
        egressFrom = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1EgressFrom",
          description = "Defines conditions on the source of a request causing this EgressPolicy to apply.",
        },
        egressTo = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1EgressTo",
          description = "Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1EgressTo = {
      description = "Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the `resources` specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match `operations` AND `resources` fields in order to be allowed egress out of the perimeter.",
      id = "GoogleIdentityAccesscontextmanagerV1EgressTo",
      properties = {
        externalResources = {
          description = "A list of external resources that are allowed to be accessed. Only AWS and Azure resources are supported. For Amazon S3, the supported format is s3://BUCKET_NAME. For Azure Storage, the supported format is azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A request matches if it contains an external resource in this list (Example: s3://bucket/path). Currently '*' is not allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        operations = {
          description = "A list of ApiOperations allowed to be performed by the sources specified in the corresponding EgressFrom. A request matches if it uses an operation/service in this list.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1ApiOperation",
          },
          type = "array",
        },
        resources = {
          description = "A list of resources, currently only projects in the form `projects/`, that are allowed to be accessed by sources defined in the corresponding EgressFrom. A request matches if it contains a resource in this list. If `*` is specified for `resources`, then this EgressTo rule will authorize access to all resources outside the perimeter.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1IngressFrom = {
      description = "Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.",
      id = "GoogleIdentityAccesscontextmanagerV1IngressFrom",
      properties = {
        identities = {
          description = "A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        identityType = {
          description = "Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.",
          enum = {
            "IDENTITY_TYPE_UNSPECIFIED",
            "ANY_IDENTITY",
            "ANY_USER_ACCOUNT",
            "ANY_SERVICE_ACCOUNT",
          },
          enumDescriptions = {
            "No blanket identity group specified.",
            "Authorize access from all identities outside the perimeter.",
            "Authorize access from all human users outside the perimeter.",
            "Authorize access from all service accounts outside the perimeter.",
          },
          type = "string",
        },
        sources = {
          description = "Sources that this IngressPolicy authorizes access from.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1IngressSource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1IngressPolicy = {
      description = "Policy for ingress into ServicePerimeter. IngressPolicies match requests based on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match, both the `ingress_from` and `ingress_to` stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and/or actions they match using the `ingress_to` field.",
      id = "GoogleIdentityAccesscontextmanagerV1IngressPolicy",
      properties = {
        ingressFrom = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1IngressFrom",
          description = "Defines the conditions on the source of a request causing this IngressPolicy to apply.",
        },
        ingressTo = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1IngressTo",
          description = "Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1IngressSource = {
      description = "The source that IngressPolicy authorizes access from.",
      id = "GoogleIdentityAccesscontextmanagerV1IngressSource",
      properties = {
        accessLevel = {
          description = "An AccessLevel resource name that allow resources within the ServicePerimeters to be accessed from the internet. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will cause an error. If no AccessLevel names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a single `*` is specified for `access_level`, then all IngressSources will be allowed.",
          type = "string",
        },
        resource = {
          description = "A Google Cloud resource that is allowed to ingress the perimeter. Requests from these resources will be allowed to access perimeter data. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`. The project may be in any Google Cloud organization, not just the organization that the perimeter is defined in. `*` is not allowed, the case of allowing all Google Cloud resources only is not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1IngressTo = {
      description = "Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in `operations` AND `resources` in order to match.",
      id = "GoogleIdentityAccesscontextmanagerV1IngressTo",
      properties = {
        operations = {
          description = "A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1ApiOperation",
          },
          type = "array",
        },
        resources = {
          description = "A list of resources, currently only projects in the form `projects/`, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single `*` is specified, then access to all resources inside the perimeter are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1MethodSelector = {
      description = "An allowed method or permission of a service specified in ApiOperation.",
      id = "GoogleIdentityAccesscontextmanagerV1MethodSelector",
      properties = {
        method = {
          description = "Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.",
          type = "string",
        },
        permission = {
          description = "Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1OsConstraint = {
      description = "A restriction on the OS type and version of devices making requests.",
      id = "GoogleIdentityAccesscontextmanagerV1OsConstraint",
      properties = {
        minimumVersion = {
          description = "The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `\"major.minor.patch\"`. Examples: `\"10.5.301\"`, `\"9.2.1\"`.",
          type = "string",
        },
        osType = {
          description = "Required. The allowed OS type.",
          enum = {
            "OS_UNSPECIFIED",
            "DESKTOP_MAC",
            "DESKTOP_WINDOWS",
            "DESKTOP_LINUX",
            "DESKTOP_CHROME_OS",
            "ANDROID",
            "IOS",
          },
          enumDescriptions = {
            "The operating system of the device is not specified or not known.",
            "A desktop Mac operating system.",
            "A desktop Windows operating system.",
            "A desktop Linux operating system.",
            "A desktop ChromeOS operating system.",
            "An Android operating system.",
            "An iOS operating system.",
          },
          type = "string",
        },
        requireVerifiedChromeOs = {
          description = "Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1ServicePerimeter = {
      description = "`ServicePerimeter` describes a set of Google Cloud resources which can freely import and export data amongst themselves, but not export outside of the `ServicePerimeter`. If a request with a source within this `ServicePerimeter` has a target outside of the `ServicePerimeter`, the request will be blocked. Otherwise the request is allowed. There are two types of Service Perimeter - Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud project can only belong to a single regular Service Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as members, a single Google Cloud project may belong to multiple Service Perimeter Bridges.",
      id = "GoogleIdentityAccesscontextmanagerV1ServicePerimeter",
      properties = {
        description = {
          description = "Description of the `ServicePerimeter` and its use. Does not affect behavior.",
          type = "string",
        },
        name = {
          description = "Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.",
          type = "string",
        },
        perimeterType = {
          description = "Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.",
          enum = {
            "PERIMETER_TYPE_REGULAR",
            "PERIMETER_TYPE_BRIDGE",
          },
          enumDescriptions = {
            "Regular Perimeter. When no value is specified, the perimeter uses this type.",
            "Perimeter Bridge.",
          },
          type = "string",
        },
        spec = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig",
          description = "Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the \"use_explicit_dry_run_spec\" flag is set.",
        },
        status = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig",
          description = "Current ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.",
        },
        title = {
          description = "Human readable title. Must be unique within the Policy.",
          type = "string",
        },
        useExplicitDryRunSpec = {
          description = "Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration (\"spec\") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config (\"status\") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use_explicit_dry_run_spec must bet set to True if any of the fields in the spec are set to non-default values.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig = {
      description = "`ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.",
      id = "GoogleIdentityAccesscontextmanagerV1ServicePerimeterConfig",
      properties = {
        accessLevels = {
          description = "A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `\"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL\"`. For Service Perimeter Bridge, must be empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        egressPolicies = {
          description = "List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1EgressPolicy",
          },
          type = "array",
        },
        ingressPolicies = {
          description = "List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.",
          items = {
            ["$ref"] = "GoogleIdentityAccesscontextmanagerV1IngressPolicy",
          },
          type = "array",
        },
        resources = {
          description = "A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        restrictedServices = {
          description = "Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        vpcAccessibleServices = {
          ["$ref"] = "GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices",
          description = "Configuration for APIs allowed within Perimeter.",
        },
      },
      type = "object",
    },
    GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices = {
      description = "Specifies how APIs are allowed to communicate within the Service Perimeter.",
      id = "GoogleIdentityAccesscontextmanagerV1VpcAccessibleServices",
      properties = {
        allowedServices = {
          description = "The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        enableRestriction = {
          description = "Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.",
          type = "boolean",
        },
      },
      type = "object",
    },
    IamPolicyAnalysis = {
      description = "An analysis message to group the query and results.",
      id = "IamPolicyAnalysis",
      properties = {
        analysisQuery = {
          ["$ref"] = "IamPolicyAnalysisQuery",
          description = "The analysis query.",
        },
        analysisResults = {
          description = "A list of IamPolicyAnalysisResult that matches the analysis query, or empty if no result is found.",
          items = {
            ["$ref"] = "IamPolicyAnalysisResult",
          },
          type = "array",
        },
        fullyExplored = {
          description = "Represents whether all entries in the analysis_results have been fully explored to answer the query.",
          type = "boolean",
        },
        nonCriticalErrors = {
          description = "A list of non-critical errors happened during the query handling.",
          items = {
            ["$ref"] = "IamPolicyAnalysisState",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IamPolicyAnalysisOutputConfig = {
      description = "Output configuration for export IAM policy analysis destination.",
      id = "IamPolicyAnalysisOutputConfig",
      properties = {
        bigqueryDestination = {
          ["$ref"] = "GoogleCloudAssetV1BigQueryDestination",
          description = "Destination on BigQuery.",
        },
        gcsDestination = {
          ["$ref"] = "GoogleCloudAssetV1GcsDestination",
          description = "Destination on Cloud Storage.",
        },
      },
      type = "object",
    },
    IamPolicyAnalysisQuery = {
      description = "IAM policy analysis query message.",
      id = "IamPolicyAnalysisQuery",
      properties = {
        accessSelector = {
          ["$ref"] = "AccessSelector",
          description = "Optional. Specifies roles or permissions for analysis. This is optional.",
        },
        conditionContext = {
          ["$ref"] = "ConditionContext",
          description = "Optional. The hypothetical context for IAM conditions evaluation.",
        },
        identitySelector = {
          ["$ref"] = "IdentitySelector",
          description = "Optional. Specifies an identity for analysis.",
        },
        options = {
          ["$ref"] = "Options",
          description = "Optional. The query options.",
        },
        resourceSelector = {
          ["$ref"] = "ResourceSelector",
          description = "Optional. Specifies a resource for analysis.",
        },
        scope = {
          description = "Required. The relative name of the root asset. Only resources and IAM policies within the scope will be analyzed. This can only be an organization number (such as \"organizations/123\"), a folder number (such as \"folders/123\"), a project ID (such as \"projects/my-project-id\"), or a project number (such as \"projects/12345\"). To know how to get organization id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-organization#retrieving_your_organization_id). To know how to get folder or project id, visit [here ](https://cloud.google.com/resource-manager/docs/creating-managing-folders#viewing_or_listing_folders_and_projects).",
          type = "string",
        },
      },
      type = "object",
    },
    IamPolicyAnalysisResult = {
      description = "IAM Policy analysis result, consisting of one IAM policy binding and derived access control lists.",
      id = "IamPolicyAnalysisResult",
      properties = {
        accessControlLists = {
          description = "The access control lists derived from the iam_binding that match or potentially match resource and access selectors specified in the request.",
          items = {
            ["$ref"] = "GoogleCloudAssetV1AccessControlList",
          },
          type = "array",
        },
        attachedResourceFullName = {
          description = "The [full resource name](https://cloud.google.com/asset-inventory/docs/resource-name-format) of the resource to which the iam_binding policy attaches.",
          type = "string",
        },
        fullyExplored = {
          description = "Represents whether all analyses on the iam_binding have successfully finished.",
          type = "boolean",
        },
        iamBinding = {
          ["$ref"] = "Binding",
          description = "The IAM policy binding under analysis.",
        },
        identityList = {
          ["$ref"] = "GoogleCloudAssetV1IdentityList",
          description = "The identity list derived from members of the iam_binding that match or potentially match identity selector specified in the request.",
        },
      },
      type = "object",
    },
    IamPolicyAnalysisState = {
      description = "Represents the detailed state of an entity under analysis, such as a resource, an identity or an access.",
      id = "IamPolicyAnalysisState",
      properties = {
        cause = {
          description = "The human-readable description of the cause of failure.",
          type = "string",
        },
        code = {
          description = "The Google standard error code that best describes the state. For example: - OK means the analysis on this entity has been successfully finished; - PERMISSION_DENIED means an access denied error is encountered; - DEADLINE_EXCEEDED means the analysis on this entity hasn't been started in time;",
          enum = {
            "OK",
            "CANCELLED",
            "UNKNOWN",
            "INVALID_ARGUMENT",
            "DEADLINE_EXCEEDED",
            "NOT_FOUND",
            "ALREADY_EXISTS",
            "PERMISSION_DENIED",
            "UNAUTHENTICATED",
            "RESOURCE_EXHAUSTED",
            "FAILED_PRECONDITION",
            "ABORTED",
            "OUT_OF_RANGE",
            "UNIMPLEMENTED",
            "INTERNAL",
            "UNAVAILABLE",
            "DATA_LOSS",
          },
          enumDescriptions = {
            "Not an error; returned on success. HTTP Mapping: 200 OK",
            "The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request",
            "Unknown error. For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error",
            "The client specified an invalid argument. Note that this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request",
            "The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout",
            "Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used. HTTP Mapping: 404 Not Found",
            "The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict",
            "The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden",
            "The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized",
            "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests",
            "The operation was rejected because the system is not in a state required for the operation's execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a) Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use `ABORTED` if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, `FAILED_PRECONDITION` should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request",
            "The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 409 Conflict",
            "The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size. There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done. HTTP Mapping: 400 Bad Request",
            "The operation is not implemented or is not supported/enabled in this service. HTTP Mapping: 501 Not Implemented",
            "Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error",
            "The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503 Service Unavailable",
            "Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error",
          },
          type = "string",
        },
      },
      type = "object",
    },
    IamPolicySearchResult = {
      description = "A result of IAM Policy search, containing information of an IAM policy.",
      id = "IamPolicySearchResult",
      properties = {
        assetType = {
          description = "The type of the resource associated with this IAM policy. Example: `compute.googleapis.com/Disk`. To search against the `asset_type`: * specify the `asset_types` field in your search request.",
          type = "string",
        },
        explanation = {
          ["$ref"] = "Explanation",
          description = "Explanation about the IAM policy search result. It contains additional information to explain why the search result matches the query.",
        },
        folders = {
          description = "The folder(s) that the IAM policy belongs to, in the form of folders/{FOLDER_NUMBER}. This field is available when the IAM policy belongs to one or more folders. To search against `folders`: * use a field query. Example: `folders:(123 OR 456)` * use a free text query. Example: `123` * specify the `scope` field as this folder in your search request.",
          items = {
            type = "string",
          },
          type = "array",
        },
        organization = {
          description = "The organization that the IAM policy belongs to, in the form of organizations/{ORGANIZATION_NUMBER}. This field is available when the IAM policy belongs to an organization. To search against `organization`: * use a field query. Example: `organization:123` * use a free text query. Example: `123` * specify the `scope` field as this organization in your search request.",
          type = "string",
        },
        policy = {
          ["$ref"] = "Policy",
          description = "The IAM policy directly set on the given resource. Note that the original IAM policy can contain multiple bindings. This only contains the bindings that match the given query. For queries that don't contain a constrain on policies (e.g., an empty query), this contains all the bindings. To search against the `policy` bindings: * use a field query: - query by the policy contained members. Example: `policy:amy@gmail.com` - query by the policy contained roles. Example: `policy:roles/compute.admin` - query by the policy contained roles' included permissions. Example: `policy.role.permissions:compute.instances.create`",
        },
        project = {
          description = "The project that the associated Google Cloud resource belongs to, in the form of projects/{PROJECT_NUMBER}. If an IAM policy is set on a resource (like VM instance, Cloud Storage bucket), the project field will indicate the project that contains the resource. If an IAM policy is set on a folder or orgnization, this field will be empty. To search against the `project`: * specify the `scope` field as this project in your search request.",
          type = "string",
        },
        resource = {
          description = "The full resource name of the resource associated with this IAM policy. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. See [Cloud Asset Inventory Resource Name Format](https://cloud.google.com/asset-inventory/docs/resource-name-format) for more information. To search against the `resource`: * use a field query. Example: `resource:organizations/123`",
          type = "string",
        },
      },
      type = "object",
    },
    IdentitySelector = {
      description = "Specifies an identity for which to determine resource access, based on roles assigned either directly to them or to the groups they belong to, directly or indirectly.",
      id = "IdentitySelector",
      properties = {
        identity = {
          description = "Required. The identity appear in the form of principals in [IAM policy binding](https://cloud.google.com/iam/reference/rest/v1/Binding). The examples of supported forms are: \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\". Notice that wildcard characters (such as * and ?) are not supported. You must give a specific identity.",
          type = "string",
        },
      },
      type = "object",
    },
    Inventory = {
      description = "This API resource represents the available inventory data for a Compute Engine virtual machine (VM) instance at a given point in time. You can use this API resource to determine the inventory data of your VM. For more information, see [Information provided by OS inventory management](https://cloud.google.com/compute/docs/instances/os-inventory-management#data-collected).",
      id = "Inventory",
      properties = {
        items = {
          additionalProperties = {
            ["$ref"] = "Item",
          },
          description = "Inventory items related to the VM keyed by an opaque unique identifier for each inventory item. The identifier is unique to each distinct and addressable inventory item and will change, when there is a new package version.",
          type = "object",
        },
        name = {
          description = "Output only. The `Inventory` API resource name. Format: `projects/{project_number}/locations/{location}/instances/{instance_id}/inventory`",
          readOnly = true,
          type = "string",
        },
        osInfo = {
          ["$ref"] = "OsInfo",
          description = "Base level operating system information for the VM.",
        },
        updateTime = {
          description = "Output only. Timestamp of the last reported inventory for the VM.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Item = {
      description = "A single piece of inventory on a VM.",
      id = "Item",
      properties = {
        availablePackage = {
          ["$ref"] = "SoftwarePackage",
          description = "Software package available to be installed on the VM instance.",
        },
        createTime = {
          description = "When this inventory item was first detected.",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "Identifier for this item, unique across items for this VM.",
          type = "string",
        },
        installedPackage = {
          ["$ref"] = "SoftwarePackage",
          description = "Software package present on the VM instance.",
        },
        originType = {
          description = "The origin of this inventory item.",
          enum = {
            "ORIGIN_TYPE_UNSPECIFIED",
            "INVENTORY_REPORT",
          },
          enumDescriptions = {
            "Invalid. An origin type must be specified.",
            "This inventory item was discovered as the result of the agent reporting inventory via the reporting API.",
          },
          type = "string",
        },
        type = {
          description = "The specific type of inventory, correlating to its specific details.",
          enum = {
            "TYPE_UNSPECIFIED",
            "INSTALLED_PACKAGE",
            "AVAILABLE_PACKAGE",
          },
          enumDescriptions = {
            "Invalid. An type must be specified.",
            "This represents a package that is installed on the VM.",
            "This represents an update that is available for a package.",
          },
          type = "string",
        },
        updateTime = {
          description = "When this inventory item was last modified.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ListAssetsResponse = {
      description = "ListAssets response.",
      id = "ListAssetsResponse",
      properties = {
        assets = {
          description = "Assets.",
          items = {
            ["$ref"] = "Asset",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results. It expires 72 hours after the page token for the first page is generated. Set to empty if there are no remaining results.",
          type = "string",
        },
        readTime = {
          description = "Time the snapshot was taken.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ListFeedsResponse = {
      id = "ListFeedsResponse",
      properties = {
        feeds = {
          description = "A list of feeds.",
          items = {
            ["$ref"] = "Feed",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSavedQueriesResponse = {
      description = "Response of listing saved queries.",
      id = "ListSavedQueriesResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        savedQueries = {
          description = "A list of savedQueries.",
          items = {
            ["$ref"] = "SavedQuery",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MoveAnalysis = {
      description = "A message to group the analysis information.",
      id = "MoveAnalysis",
      properties = {
        analysis = {
          ["$ref"] = "MoveAnalysisResult",
          description = "Analysis result of moving the target resource.",
        },
        displayName = {
          description = "The user friendly display name of the analysis. E.g. IAM, organization policy etc.",
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Description of error encountered when performing the analysis.",
        },
      },
      type = "object",
    },
    MoveAnalysisResult = {
      description = "An analysis result including blockers and warnings.",
      id = "MoveAnalysisResult",
      properties = {
        blockers = {
          description = "Blocking information that would prevent the target resource from moving to the specified destination at runtime.",
          items = {
            ["$ref"] = "MoveImpact",
          },
          type = "array",
        },
        warnings = {
          description = "Warning information indicating that moving the target resource to the specified destination might be unsafe. This can include important policy information and configuration changes, but will not block moves at runtime.",
          items = {
            ["$ref"] = "MoveImpact",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MoveImpact = {
      description = "A message to group impacts of moving the target resource.",
      id = "MoveImpact",
      properties = {
        detail = {
          description = "User friendly impact detail in a free form message.",
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
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
    Options = {
      description = "Contains query options.",
      id = "Options",
      properties = {
        analyzeServiceAccountImpersonation = {
          description = "Optional. If true, the response will include access analysis from identities to resources via service account impersonation. This is a very expensive operation, because many derived queries will be executed. We highly recommend you use AssetService.AnalyzeIamPolicyLongrunning RPC instead. For example, if the request analyzes for which resources user A has permission P, and there's an IAM policy states user A has iam.serviceAccounts.getAccessToken permission to a service account SA, and there's another IAM policy states service account SA has permission P to a Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Another example, if the request analyzes for who has permission P to a Google Cloud folder F, and there's an IAM policy states user A has iam.serviceAccounts.actAs permission to a service account SA, and there's another IAM policy states service account SA has permission P to the Google Cloud folder F, then user A potentially has access to the Google Cloud folder F. And those advanced analysis results will be included in AnalyzeIamPolicyResponse.service_account_impersonation_analysis. Only the following permissions are considered in this analysis: * `iam.serviceAccounts.actAs` * `iam.serviceAccounts.signBlob` * `iam.serviceAccounts.signJwt` * `iam.serviceAccounts.getAccessToken` * `iam.serviceAccounts.getOpenIdToken` * `iam.serviceAccounts.implicitDelegation` Default is false.",
          type = "boolean",
        },
        expandGroups = {
          description = "Optional. If true, the identities section of the result will expand any Google groups appearing in an IAM policy binding. If IamPolicyAnalysisQuery.identity_selector is specified, the identity in the result will be determined by the selector, and this flag is not allowed to set. If true, the default max expansion per group is 1000 for AssetService.AnalyzeIamPolicy][]. Default is false.",
          type = "boolean",
        },
        expandResources = {
          description = "Optional. If true and IamPolicyAnalysisQuery.resource_selector is not specified, the resource section of the result will expand any resource attached to an IAM policy to include resources lower in the resource hierarchy. For example, if the request analyzes for which resources user A has permission P, and the results include an IAM policy with P on a Google Cloud folder, the results will also include resources in that folder with permission P. If true and IamPolicyAnalysisQuery.resource_selector is specified, the resource section of the result will expand the specified resource to include resources lower in the resource hierarchy. Only project or lower resources are supported. Folder and organization resources cannot be used together with this option. For example, if the request analyzes for which users have permission P on a Google Cloud project with this option enabled, the results will include all users who have permission P on that project or any lower resource. If true, the default max expansion per resource is 1000 for AssetService.AnalyzeIamPolicy][] and 100000 for AssetService.AnalyzeIamPolicyLongrunning][]. Default is false.",
          type = "boolean",
        },
        expandRoles = {
          description = "Optional. If true, the access section of result will expand any roles appearing in IAM policy bindings to include their permissions. If IamPolicyAnalysisQuery.access_selector is specified, the access section of the result will be determined by the selector, and this flag is not allowed to set. Default is false.",
          type = "boolean",
        },
        outputGroupEdges = {
          description = "Optional. If true, the result will output the relevant membership relationships between groups and other groups, and between groups and principals. Default is false.",
          type = "boolean",
        },
        outputResourceEdges = {
          description = "Optional. If true, the result will output the relevant parent/child relationships between resources. Default is false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    OrgPolicyResult = {
      description = "The organization policy result to the query.",
      id = "OrgPolicyResult",
      properties = {
        consolidatedPolicy = {
          ["$ref"] = "AnalyzerOrgPolicy",
          description = "The consolidated organization policy for the analyzed resource. The consolidated organization policy is computed by merging and evaluating AnalyzeOrgPoliciesResponse.policy_bundle. The evaluation will respect the organization policy [hierarchy rules](https://cloud.google.com/resource-manager/docs/organization-policy/understanding-hierarchy).",
        },
        policyBundle = {
          description = "The ordered list of all organization policies from the AnalyzeOrgPoliciesResponse.OrgPolicyResult.consolidated_policy.attached_resource. to the scope specified in the request. If the constraint is defined with default policy, it will also appear in the list.",
          items = {
            ["$ref"] = "AnalyzerOrgPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OsInfo = {
      description = "Operating system information for the VM.",
      id = "OsInfo",
      properties = {
        architecture = {
          description = "The system architecture of the operating system.",
          type = "string",
        },
        hostname = {
          description = "The VM hostname.",
          type = "string",
        },
        kernelRelease = {
          description = "The kernel release of the operating system.",
          type = "string",
        },
        kernelVersion = {
          description = "The kernel version of the operating system.",
          type = "string",
        },
        longName = {
          description = "The operating system long name. For example 'Debian GNU/Linux 9' or 'Microsoft Window Server 2019 Datacenter'.",
          type = "string",
        },
        osconfigAgentVersion = {
          description = "The current version of the OS Config agent running on the VM.",
          type = "string",
        },
        shortName = {
          description = "The operating system short name. For example, 'windows' or 'debian'.",
          type = "string",
        },
        version = {
          description = "The version of the operating system.",
          type = "string",
        },
      },
      type = "object",
    },
    OutputConfig = {
      description = "Output configuration for export assets destination.",
      id = "OutputConfig",
      properties = {
        bigqueryDestination = {
          ["$ref"] = "BigQueryDestination",
          description = "Destination on BigQuery. The output table stores the fields in asset Protobuf as columns in BigQuery.",
        },
        gcsDestination = {
          ["$ref"] = "GcsDestination",
          description = "Destination on Cloud Storage.",
        },
      },
      type = "object",
    },
    PartitionSpec = {
      description = "Specifications of BigQuery partitioned table as export destination.",
      id = "PartitionSpec",
      properties = {
        partitionKey = {
          description = "The partition key for BigQuery partitioned table.",
          enum = {
            "PARTITION_KEY_UNSPECIFIED",
            "READ_TIME",
            "REQUEST_TIME",
          },
          enumDescriptions = {
            "Unspecified partition key. If used, it means using non-partitioned table.",
            "The time when the snapshot is taken. If specified as partition key, the result table(s) is partitoned by the additional timestamp column, readTime. If [read_time] in ExportAssetsRequest is specified, the readTime column's value will be the same as it. Otherwise, its value will be the current time that is used to take the snapshot.",
            "The time when the request is received and started to be processed. If specified as partition key, the result table(s) is partitoned by the requestTime column, an additional timestamp column representing when the request was received.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Permissions = {
      description = "IAM permissions",
      id = "Permissions",
      properties = {
        permissions = {
          description = "A list of permissions. A sample permission string: `compute.disk.get`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "Binding",
          },
          type = "array",
        },
        etag = {
          description = "`etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform policy updates in order to avoid race conditions: An `etag` is returned in the response to `getIamPolicy`, and systems are expected to put that etag in the request to `setIamPolicy` to ensure that their change will be applied to the same version of the policy. **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost.",
          format = "byte",
          type = "string",
        },
        version = {
          description = "Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an invalid value are rejected. Any operation that affects conditional role bindings must specify version `3`. This requirement applies to the following operations: * Getting a policy that includes a conditional role binding * Adding a conditional role binding to a policy * Changing a conditional role binding in a policy * Removing any role binding, with or without a condition, from a policy that includes conditions **Important:** If you use IAM Conditions, you must include the `etag` field whenever you call `setIamPolicy`. If you omit this field, then IAM allows you to overwrite a version `3` policy with a version `1` policy, and all of the conditions in the version `3` policy are lost. If a policy does not include any conditions, operations on that policy may specify any valid version or leave the field unset. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PolicyInfo = {
      description = "The IAM policy and its attached resource.",
      id = "PolicyInfo",
      properties = {
        attachedResource = {
          description = "The full resource name the policy is directly attached to.",
          type = "string",
        },
        policy = {
          ["$ref"] = "Policy",
          description = "The IAM policy that's directly attached to the attached_resource.",
        },
      },
      type = "object",
    },
    PubsubDestination = {
      description = "A Pub/Sub destination.",
      id = "PubsubDestination",
      properties = {
        topic = {
          description = "The name of the Pub/Sub topic to publish to. Example: `projects/PROJECT_ID/topics/TOPIC_ID`.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryAssetsOutputConfig = {
      description = "Output configuration query assets.",
      id = "QueryAssetsOutputConfig",
      properties = {
        bigqueryDestination = {
          ["$ref"] = "GoogleCloudAssetV1QueryAssetsOutputConfigBigQueryDestination",
          description = "BigQuery destination where the query results will be saved.",
        },
      },
      type = "object",
    },
    QueryAssetsRequest = {
      description = "QueryAssets request.",
      id = "QueryAssetsRequest",
      properties = {
        jobReference = {
          description = "Optional. Reference to the query job, which is from the `QueryAssetsResponse` of previous `QueryAssets` call.",
          type = "string",
        },
        outputConfig = {
          ["$ref"] = "QueryAssetsOutputConfig",
          description = "Optional. Destination where the query results will be saved. When this field is specified, the query results won't be saved in the [QueryAssetsResponse.query_result]. Instead [QueryAssetsResponse.output_config] will be set. Meanwhile, [QueryAssetsResponse.job_reference] will be set and can be used to check the status of the query job when passed to a following [QueryAssets] API call.",
        },
        pageSize = {
          description = "Optional. The maximum number of rows to return in the results. Responses are limited to 10 MB and 1000 rows. By default, the maximum row count is 1000. When the byte or row count limit is reached, the rest of the query results will be paginated. The field will be ignored when [output_config] is specified.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. A page token received from previous `QueryAssets`. The field will be ignored when [output_config] is specified.",
          type = "string",
        },
        readTime = {
          description = "Optional. Queries cloud assets as they appeared at the specified point in time.",
          format = "google-datetime",
          type = "string",
        },
        readTimeWindow = {
          ["$ref"] = "TimeWindow",
          description = "Optional. [start_time] is required. [start_time] must be less than [end_time] Defaults [end_time] to now if [start_time] is set and [end_time] isn't. Maximum permitted time range is 7 days.",
        },
        statement = {
          description = "Optional. A SQL statement that's compatible with [BigQuery Standard SQL](http://cloud/bigquery/docs/reference/standard-sql/enabling-standard-sql).",
          type = "string",
        },
        timeout = {
          description = "Optional. Specifies the maximum amount of time that the client is willing to wait for the query to complete. By default, this limit is 5 min for the first query, and 1 minute for the following queries. If the query is complete, the `done` field in the `QueryAssetsResponse` is true, otherwise false. Like BigQuery [jobs.query API](https://cloud.google.com/bigquery/docs/reference/rest/v2/jobs/query#queryrequest) The call is not guaranteed to wait for the specified timeout; it typically returns after around 200 seconds (200,000 milliseconds), even if the query is not complete. The field will be ignored when [output_config] is specified.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    QueryAssetsResponse = {
      description = "QueryAssets response.",
      id = "QueryAssetsResponse",
      properties = {
        done = {
          description = "The query response, which can be either an `error` or a valid `response`. If `done` == `false` and the query result is being saved in a output, the output_config field will be set. If `done` == `true`, exactly one of `error`, `query_result` or `output_config` will be set.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "Status",
          description = "Error status.",
        },
        jobReference = {
          description = "Reference to a query job.",
          type = "string",
        },
        outputConfig = {
          ["$ref"] = "QueryAssetsOutputConfig",
          description = "Output configuration which indicates instead of being returned in API response on the fly, the query result will be saved in a specific output.",
        },
        queryResult = {
          ["$ref"] = "QueryResult",
          description = "Result of the query.",
        },
      },
      type = "object",
    },
    QueryContent = {
      description = "The query content.",
      id = "QueryContent",
      properties = {
        iamPolicyAnalysisQuery = {
          ["$ref"] = "IamPolicyAnalysisQuery",
          description = "An IAM Policy Analysis query, which could be used in the AssetService.AnalyzeIamPolicy RPC or the AssetService.AnalyzeIamPolicyLongrunning RPC.",
        },
      },
      type = "object",
    },
    QueryResult = {
      description = "Execution results of the query. The result is formatted as rows represented by BigQuery compatible [schema]. When pagination is necessary, it will contains the page token to retrieve the results of following pages.",
      id = "QueryResult",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of the results.",
          type = "string",
        },
        rows = {
          description = "Each row hold a query result in the format of `Struct`.",
          items = {
            additionalProperties = {
              description = "Properties of the object.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
        schema = {
          ["$ref"] = "TableSchema",
          description = "Describes the format of the [rows].",
        },
        totalRows = {
          description = "Total rows of the whole query results.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    RelatedAsset = {
      description = "An asset identifier in Google Cloud which contains its name, type and ancestors. An asset can be any resource in the Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), a resource outside the Google Cloud resource hierarchy (such as Google Kubernetes Engine clusters and objects), or a policy (e.g. IAM policy). See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
      id = "RelatedAsset",
      properties = {
        ancestors = {
          description = "The ancestors of an asset in Google Cloud [resource hierarchy](https://cloud.google.com/resource-manager/docs/cloud-platform-resource-hierarchy), represented as a list of relative resource names. An ancestry path starts with the closest ancestor in the hierarchy and ends at root. Example: `[\"projects/123456789\", \"folders/5432\", \"organizations/1234\"]`",
          items = {
            type = "string",
          },
          type = "array",
        },
        asset = {
          description = "The full name of the asset. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1` See [Resource names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information.",
          type = "string",
        },
        assetType = {
          description = "The type of the asset. Example: `compute.googleapis.com/Disk` See [Supported asset types](https://cloud.google.com/asset-inventory/docs/supported-asset-types) for more information.",
          type = "string",
        },
        relationshipType = {
          description = "The unique identifier of the relationship type. Example: `INSTANCE_TO_INSTANCEGROUP`",
          type = "string",
        },
      },
      type = "object",
    },
    RelatedAssets = {
      description = "DEPRECATED. This message only presents for the purpose of backward-compatibility. The server will never populate this message in responses. The detailed related assets with the `relationship_type`.",
      id = "RelatedAssets",
      properties = {
        assets = {
          description = "The peer resources of the relationship.",
          items = {
            ["$ref"] = "RelatedAsset",
          },
          type = "array",
        },
        relationshipAttributes = {
          ["$ref"] = "RelationshipAttributes",
          description = "The detailed relationship attributes.",
        },
      },
      type = "object",
    },
    RelatedResource = {
      description = "The detailed related resource.",
      id = "RelatedResource",
      properties = {
        assetType = {
          description = "The type of the asset. Example: `compute.googleapis.com/Instance`",
          type = "string",
        },
        fullResourceName = {
          description = "The full resource name of the related resource. Example: `//compute.googleapis.com/projects/my_proj_123/zones/instance/instance123`",
          type = "string",
        },
      },
      type = "object",
    },
    RelatedResources = {
      description = "The related resources of the primary resource.",
      id = "RelatedResources",
      properties = {
        relatedResources = {
          description = "The detailed related resources of the primary resource.",
          items = {
            ["$ref"] = "RelatedResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RelationshipAttributes = {
      description = "DEPRECATED. This message only presents for the purpose of backward-compatibility. The server will never populate this message in responses. The relationship attributes which include `type`, `source_resource_type`, `target_resource_type` and `action`.",
      id = "RelationshipAttributes",
      properties = {
        action = {
          description = "The detail of the relationship, e.g. `contains`, `attaches`",
          type = "string",
        },
        sourceResourceType = {
          description = "The source asset type. Example: `compute.googleapis.com/Instance`",
          type = "string",
        },
        targetResourceType = {
          description = "The target asset type. Example: `compute.googleapis.com/Disk`",
          type = "string",
        },
        type = {
          description = "The unique identifier of the relationship type. Example: `INSTANCE_TO_INSTANCEGROUP`",
          type = "string",
        },
      },
      type = "object",
    },
    Resource = {
      description = "A representation of a Google Cloud resource.",
      id = "Resource",
      properties = {
        data = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The content of the resource, in which some sensitive fields are removed and may not be present.",
          type = "object",
        },
        discoveryDocumentUri = {
          description = "The URL of the discovery document containing the resource's JSON schema. Example: `https://www.googleapis.com/discovery/v1/apis/compute/v1/rest` This value is unspecified for resources that do not have an API based on a discovery document, such as Cloud Bigtable.",
          type = "string",
        },
        discoveryName = {
          description = "The JSON schema name listed in the discovery document. Example: `Project` This value is unspecified for resources that do not have an API based on a discovery document, such as Cloud Bigtable.",
          type = "string",
        },
        location = {
          description = "The location of the resource in Google Cloud, such as its zone and region. For more information, see https://cloud.google.com/about/locations/.",
          type = "string",
        },
        parent = {
          description = "The full name of the immediate parent of this resource. See [Resource Names](https://cloud.google.com/apis/design/resource_names#full_resource_name) for more information. For Google Cloud assets, this value is the parent resource defined in the [IAM policy hierarchy](https://cloud.google.com/iam/docs/overview#policy_hierarchy). Example: `//cloudresourcemanager.googleapis.com/projects/my_project_123` For third-party assets, this field may be set differently.",
          type = "string",
        },
        resourceUrl = {
          description = "The REST URL for accessing the resource. An HTTP `GET` request using this URL returns the resource itself. Example: `https://cloudresourcemanager.googleapis.com/v1/projects/my-project-123` This value is unspecified for resources without a REST API.",
          type = "string",
        },
        version = {
          description = "The API version. Example: `v1`",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceSearchResult = {
      description = "A result of Resource Search, containing information of a cloud resource. Next ID: 31",
      id = "ResourceSearchResult",
      properties = {
        additionalAttributes = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The additional searchable attributes of this resource. The attributes may vary from one resource type to another. Examples: `projectId` for Project, `dnsName` for DNS ManagedZone. This field contains a subset of the resource metadata fields that are returned by the List or Get APIs provided by the corresponding Google Cloud service (e.g., Compute Engine). see [API references and supported searchable attributes](https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types) to see which fields are included. You can search values of these fields through free text search. However, you should not consume the field programically as the field names and values may change as the Google Cloud service updates to a new incompatible API version. To search against the `additional_attributes`: * Use a free text query to match the attributes values. Example: to search `additional_attributes = { dnsName: \"foobar\" }`, you can issue a query `foobar`.",
          type = "object",
        },
        assetType = {
          description = "The type of this resource. Example: `compute.googleapis.com/Disk`. To search against the `asset_type`: * Specify the `asset_type` field in your search request.",
          type = "string",
        },
        attachedResources = {
          description = "Attached resources of this resource. For example, an OSConfig Inventory is an attached resource of a Compute Instance. This field is repeated because a resource could have multiple attached resources. This `attached_resources` field is not searchable. Some attributes of the attached resources are exposed in `additional_attributes` field, so as to allow users to search on them.",
          items = {
            ["$ref"] = "AttachedResource",
          },
          type = "array",
        },
        createTime = {
          description = "The create timestamp of this resource, at which the resource was created. The granularity is in seconds. Timestamp.nanos will always be 0. This field is available only when the resource's Protobuf contains it. To search against `create_time`: * Use a field query. - value in seconds since unix epoch. Example: `createTime > 1609459200` - value in date string. Example: `createTime > 2021-01-01` - value in date-time string (must be quoted). Example: `createTime > \"2021-01-01T00:00:00\"`",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "One or more paragraphs of text description of this resource. Maximum length could be up to 1M bytes. This field is available only when the resource's Protobuf contains it. To search against the `description`: * Use a field query. Example: `description:\"important instance\"` * Use a free text query. Example: `\"important instance\"`",
          type = "string",
        },
        displayName = {
          description = "The display name of this resource. This field is available only when the resource's Protobuf contains it. To search against the `display_name`: * Use a field query. Example: `displayName:\"My Instance\"` * Use a free text query. Example: `\"My Instance\"`",
          type = "string",
        },
        folders = {
          description = "The folder(s) that this resource belongs to, in the form of folders/{FOLDER_NUMBER}. This field is available when the resource belongs to one or more folders. To search against `folders`: * Use a field query. Example: `folders:(123 OR 456)` * Use a free text query. Example: `123` * Specify the `scope` field as this folder in your search request.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kmsKey = {
          description = "The Cloud KMS [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys) name or [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions) name. This field only presents for the purpose of backward compatibility. Please use the `kms_keys` field to retrieve Cloud KMS key information. This field is available only when the resource's Protobuf contains it and will only be populated for [these resource types](https://cloud.google.com/asset-inventory/docs/legacy-field-names#resource_types_with_the_to_be_deprecated_kmskey_field) for backward compatible purposes. To search against the `kms_key`: * Use a field query. Example: `kmsKey:key` * Use a free text query. Example: `key`",
          type = "string",
        },
        kmsKeys = {
          description = "The Cloud KMS [CryptoKey](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys) names or [CryptoKeyVersion](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys.cryptoKeyVersions) names. This field is available only when the resource's Protobuf contains it. To search against the `kms_keys`: * Use a field query. Example: `kmsKeys:key` * Use a free text query. Example: `key`",
          items = {
            type = "string",
          },
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels associated with this resource. See [Labelling and grouping Google Cloud resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources) for more information. This field is available only when the resource's Protobuf contains it. To search against the `labels`: * Use a field query: - query on any label's key or value. Example: `labels:prod` - query by a given label. Example: `labels.env:prod` - query by a given label's existence. Example: `labels.env:*` * Use a free text query. Example: `prod`",
          type = "object",
        },
        location = {
          description = "Location can be `global`, regional like `us-east1`, or zonal like `us-west1-b`. This field is available only when the resource's Protobuf contains it. To search against the `location`: * Use a field query. Example: `location:us-west*` * Use a free text query. Example: `us-west*`",
          type = "string",
        },
        name = {
          description = "The full resource name of this resource. Example: `//compute.googleapis.com/projects/my_project_123/zones/zone1/instances/instance1`. See [Cloud Asset Inventory Resource Name Format](https://cloud.google.com/asset-inventory/docs/resource-name-format) for more information. To search against the `name`: * Use a field query. Example: `name:instance1` * Use a free text query. Example: `instance1`",
          type = "string",
        },
        networkTags = {
          description = "Network tags associated with this resource. Like labels, network tags are a type of annotations used to group Google Cloud resources. See [Labelling Google Cloud resources](https://cloud.google.com/blog/products/gcp/labelling-and-grouping-your-google-cloud-platform-resources) for more information. This field is available only when the resource's Protobuf contains it. To search against the `network_tags`: * Use a field query. Example: `networkTags:internal` * Use a free text query. Example: `internal`",
          items = {
            type = "string",
          },
          type = "array",
        },
        organization = {
          description = "The organization that this resource belongs to, in the form of organizations/{ORGANIZATION_NUMBER}. This field is available when the resource belongs to an organization. To search against `organization`: * Use a field query. Example: `organization:123` * Use a free text query. Example: `123` * Specify the `scope` field as this organization in your search request.",
          type = "string",
        },
        parentAssetType = {
          description = "The type of this resource's immediate parent, if there is one. To search against the `parent_asset_type`: * Use a field query. Example: `parentAssetType:\"cloudresourcemanager.googleapis.com/Project\"` * Use a free text query. Example: `cloudresourcemanager.googleapis.com/Project`",
          type = "string",
        },
        parentFullResourceName = {
          description = "The full resource name of this resource's parent, if it has one. To search against the `parent_full_resource_name`: * Use a field query. Example: `parentFullResourceName:\"project-name\"` * Use a free text query. Example: `project-name`",
          type = "string",
        },
        project = {
          description = "The project that this resource belongs to, in the form of projects/{PROJECT_NUMBER}. This field is available when the resource belongs to a project. To search against `project`: * Use a field query. Example: `project:12345` * Use a free text query. Example: `12345` * Specify the `scope` field as this project in your search request.",
          type = "string",
        },
        relationships = {
          additionalProperties = {
            ["$ref"] = "RelatedResources",
          },
          description = "A map of related resources of this resource, keyed by the relationship type. A relationship type is in the format of {SourceType}_{ACTION}_{DestType}. Example: `DISK_TO_INSTANCE`, `DISK_TO_NETWORK`, `INSTANCE_TO_INSTANCEGROUP`. See [supported relationship types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#supported_relationship_types).",
          type = "object",
        },
        state = {
          description = "The state of this resource. Different resources types have different state definitions that are mapped from various fields of different resource types. This field is available only when the resource's Protobuf contains it. Example: If the resource is an instance provided by Compute Engine, its state will include PROVISIONING, STAGING, RUNNING, STOPPING, SUSPENDING, SUSPENDED, REPAIRING, and TERMINATED. See `status` definition in [API Reference](https://cloud.google.com/compute/docs/reference/rest/v1/instances). If the resource is a project provided by Resource Manager, its state will include LIFECYCLE_STATE_UNSPECIFIED, ACTIVE, DELETE_REQUESTED and DELETE_IN_PROGRESS. See `lifecycleState` definition in [API Reference](https://cloud.google.com/resource-manager/reference/rest/v1/projects). To search against the `state`: * Use a field query. Example: `state:RUNNING` * Use a free text query. Example: `RUNNING`",
          type = "string",
        },
        tagKeys = {
          description = "TagKey namespaced names, in the format of {ORG_ID}/{TAG_KEY_SHORT_NAME}. To search against the `tagKeys`: * Use a field query. Example: - `tagKeys:\"123456789/env*\"` - `tagKeys=\"123456789/env\"` - `tagKeys:\"env\"` * Use a free text query. Example: - `env`",
          items = {
            type = "string",
          },
          type = "array",
        },
        tagValueIds = {
          description = "TagValue IDs, in the format of tagValues/{TAG_VALUE_ID}. To search against the `tagValueIds`: * Use a field query. Example: - `tagValueIds:\"456\"` - `tagValueIds=\"tagValues/456\"` * Use a free text query. Example: - `456`",
          items = {
            type = "string",
          },
          type = "array",
        },
        tagValues = {
          description = "TagValue namespaced names, in the format of {ORG_ID}/{TAG_KEY_SHORT_NAME}/{TAG_VALUE_SHORT_NAME}. To search against the `tagValues`: * Use a field query. Example: - `tagValues:\"env\"` - `tagValues:\"env/prod\"` - `tagValues:\"123456789/env/prod*\"` - `tagValues=\"123456789/env/prod\"` * Use a free text query. Example: - `prod`",
          items = {
            type = "string",
          },
          type = "array",
        },
        updateTime = {
          description = "The last update timestamp of this resource, at which the resource was last modified or deleted. The granularity is in seconds. Timestamp.nanos will always be 0. This field is available only when the resource's Protobuf contains it. To search against `update_time`: * Use a field query. - value in seconds since unix epoch. Example: `updateTime < 1609459200` - value in date string. Example: `updateTime < 2021-01-01` - value in date-time string (must be quoted). Example: `updateTime < \"2021-01-01T00:00:00\"`",
          format = "google-datetime",
          type = "string",
        },
        versionedResources = {
          description = "Versioned resource representations of this resource. This is repeated because there could be multiple versions of resource representations during version migration. This `versioned_resources` field is not searchable. Some attributes of the resource representations are exposed in `additional_attributes` field, so as to allow users to search on them.",
          items = {
            ["$ref"] = "VersionedResource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResourceSelector = {
      description = "Specifies the resource to analyze for access policies, which may be set directly on the resource, or on ancestors such as organizations, folders or projects.",
      id = "ResourceSelector",
      properties = {
        fullResourceName = {
          description = "Required. The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of a resource of [supported resource types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#analyzable_asset_types).",
          type = "string",
        },
      },
      type = "object",
    },
    SavedQuery = {
      description = "A saved query which can be shared with others or used later.",
      id = "SavedQuery",
      properties = {
        content = {
          ["$ref"] = "QueryContent",
          description = "The query content.",
        },
        createTime = {
          description = "Output only. The create time of this saved query.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        creator = {
          description = "Output only. The account's email address who has created this saved query.",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "The description of this saved query. This value should be fewer than 255 characters.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels applied on the resource. This value should not contain more than 10 entries. The key and value of each entry must be non-empty and fewer than 64 characters.",
          type = "object",
        },
        lastUpdateTime = {
          description = "Output only. The last update time of this saved query.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lastUpdater = {
          description = "Output only. The account's email address who has updated this saved query most recently.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The resource name of the saved query. The format must be: * projects/project_number/savedQueries/saved_query_id * folders/folder_number/savedQueries/saved_query_id * organizations/organization_number/savedQueries/saved_query_id",
          type = "string",
        },
      },
      type = "object",
    },
    SearchAllIamPoliciesResponse = {
      description = "Search all IAM policies response.",
      id = "SearchAllIamPoliciesResponse",
      properties = {
        nextPageToken = {
          description = "Set if there are more results than those appearing in this response; to get the next set of results, call this method again, using this value as the `page_token`.",
          type = "string",
        },
        results = {
          description = "A list of IAM policies that match the search query. Related information such as the associated resource is returned along with the policy.",
          items = {
            ["$ref"] = "IamPolicySearchResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchAllResourcesResponse = {
      description = "Search all resources response.",
      id = "SearchAllResourcesResponse",
      properties = {
        nextPageToken = {
          description = "If there are more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        results = {
          description = "A list of Resources that match the search query. It contains the resource standard metadata information.",
          items = {
            ["$ref"] = "ResourceSearchResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SoftwarePackage = {
      description = "Software package information of the operating system.",
      id = "SoftwarePackage",
      properties = {
        aptPackage = {
          ["$ref"] = "VersionedPackage",
          description = "Details of an APT package. For details about the apt package manager, see https://wiki.debian.org/Apt.",
        },
        cosPackage = {
          ["$ref"] = "VersionedPackage",
          description = "Details of a COS package.",
        },
        googetPackage = {
          ["$ref"] = "VersionedPackage",
          description = "Details of a Googet package. For details about the googet package manager, see https://github.com/google/googet.",
        },
        qfePackage = {
          ["$ref"] = "WindowsQuickFixEngineeringPackage",
          description = "Details of a Windows Quick Fix engineering package. See https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering for info in Windows Quick Fix Engineering.",
        },
        windowsApplication = {
          ["$ref"] = "WindowsApplication",
          description = "Details of Windows Application.",
        },
        wuaPackage = {
          ["$ref"] = "WindowsUpdatePackage",
          description = "Details of a Windows Update package. See https://docs.microsoft.com/en-us/windows/win32/api/_wua/ for information about Windows Update.",
        },
        yumPackage = {
          ["$ref"] = "VersionedPackage",
          description = "Yum package info. For details about the yum package manager, see https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/ch-yum.",
        },
        zypperPackage = {
          ["$ref"] = "VersionedPackage",
          description = "Details of a Zypper package. For details about the Zypper package manager, see https://en.opensuse.org/SDB:Zypper_manual.",
        },
        zypperPatch = {
          ["$ref"] = "ZypperPatch",
          description = "Details of a Zypper patch. For details about the Zypper package manager, see https://en.opensuse.org/SDB:Zypper_manual.",
        },
      },
      type = "object",
    },
    Status = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "Status",
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
    TableFieldSchema = {
      description = "A field in TableSchema.",
      id = "TableFieldSchema",
      properties = {
        field = {
          description = "The field name. The name must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum length is 128 characters.",
          type = "string",
        },
        fields = {
          description = "Describes the nested schema fields if the type property is set to RECORD.",
          items = {
            ["$ref"] = "TableFieldSchema",
          },
          type = "array",
        },
        mode = {
          description = "The field mode. Possible values include NULLABLE, REQUIRED and REPEATED. The default value is NULLABLE.",
          type = "string",
        },
        type = {
          description = "The field data type. Possible values include * STRING * BYTES * INTEGER * FLOAT * BOOLEAN * TIMESTAMP * DATE * TIME * DATETIME * GEOGRAPHY, * NUMERIC, * BIGNUMERIC, * RECORD (where RECORD indicates that the field contains a nested schema).",
          type = "string",
        },
      },
      type = "object",
    },
    TableSchema = {
      description = "BigQuery Compatible table schema.",
      id = "TableSchema",
      properties = {
        fields = {
          description = "Describes the fields in a table.",
          items = {
            ["$ref"] = "TableFieldSchema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TemporalAsset = {
      description = "An asset in Google Cloud and its temporal metadata, including the time window when it was observed and its status during that window.",
      id = "TemporalAsset",
      properties = {
        asset = {
          ["$ref"] = "Asset",
          description = "An asset in Google Cloud.",
        },
        deleted = {
          description = "Whether the asset has been deleted or not.",
          type = "boolean",
        },
        priorAsset = {
          ["$ref"] = "Asset",
          description = "Prior copy of the asset. Populated if prior_asset_state is PRESENT. Currently this is only set for responses in Real-Time Feed.",
        },
        priorAssetState = {
          description = "State of prior_asset.",
          enum = {
            "PRIOR_ASSET_STATE_UNSPECIFIED",
            "PRESENT",
            "INVALID",
            "DOES_NOT_EXIST",
            "DELETED",
          },
          enumDescriptions = {
            "prior_asset is not applicable for the current asset.",
            "prior_asset is populated correctly.",
            "Failed to set prior_asset.",
            "Current asset is the first known state.",
            "prior_asset is a deletion.",
          },
          type = "string",
        },
        window = {
          ["$ref"] = "TimeWindow",
          description = "The time window when the asset data and state was observed.",
        },
      },
      type = "object",
    },
    TimeWindow = {
      description = "A time window specified by its `start_time` and `end_time`.",
      id = "TimeWindow",
      properties = {
        endTime = {
          description = "End time of the time window (inclusive). If not specified, the current timestamp is used instead.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Start time of the time window (exclusive).",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateFeedRequest = {
      description = "Update asset feed request.",
      id = "UpdateFeedRequest",
      properties = {
        feed = {
          ["$ref"] = "Feed",
          description = "Required. The new values of feed details. It must match an existing feed and the field `name` must be in the format of: projects/project_number/feeds/feed_id or folders/folder_number/feeds/feed_id or organizations/organization_number/feeds/feed_id.",
        },
        updateMask = {
          description = "Required. Only updates the `feed` fields indicated by this mask. The field mask must not be empty, and it must not contain fields that are immutable or only set by the server.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    VersionedPackage = {
      description = "Information related to the a standard versioned package. This includes package info for APT, Yum, Zypper, and Googet package managers.",
      id = "VersionedPackage",
      properties = {
        architecture = {
          description = "The system architecture this package is intended for.",
          type = "string",
        },
        packageName = {
          description = "The name of the package.",
          type = "string",
        },
        version = {
          description = "The version of the package.",
          type = "string",
        },
      },
      type = "object",
    },
    VersionedResource = {
      description = "Resource representation as defined by the corresponding service providing the resource for a given API version.",
      id = "VersionedResource",
      properties = {
        resource = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "JSON representation of the resource as defined by the corresponding service providing this resource. Example: If the resource is an instance provided by Compute Engine, this field will contain the JSON representation of the instance as defined by Compute Engine: `https://cloud.google.com/compute/docs/reference/rest/v1/instances`. You can find the resource definition for each supported resource type in this table: `https://cloud.google.com/asset-inventory/docs/supported-asset-types#searchable_asset_types`",
          type = "object",
        },
        version = {
          description = "API version of the resource. Example: If the resource is an instance provided by Compute Engine v1 API as defined in `https://cloud.google.com/compute/docs/reference/rest/v1/instances`, version will be \"v1\".",
          type = "string",
        },
      },
      type = "object",
    },
    WindowsApplication = {
      description = "Contains information about a Windows application that is retrieved from the Windows Registry. For more information about these fields, see: https://docs.microsoft.com/en-us/windows/win32/msi/uninstall-registry-key",
      id = "WindowsApplication",
      properties = {
        displayName = {
          description = "The name of the application or product.",
          type = "string",
        },
        displayVersion = {
          description = "The version of the product or application in string format.",
          type = "string",
        },
        helpLink = {
          description = "The internet address for technical support.",
          type = "string",
        },
        installDate = {
          ["$ref"] = "Date",
          description = "The last time this product received service. The value of this property is replaced each time a patch is applied or removed from the product or the command-line option is used to repair the product.",
        },
        publisher = {
          description = "The name of the manufacturer for the product or application.",
          type = "string",
        },
      },
      type = "object",
    },
    WindowsQuickFixEngineeringPackage = {
      description = "Information related to a Quick Fix Engineering package. Fields are taken from Windows QuickFixEngineering Interface and match the source names: https://docs.microsoft.com/en-us/windows/win32/cimwin32prov/win32-quickfixengineering",
      id = "WindowsQuickFixEngineeringPackage",
      properties = {
        caption = {
          description = "A short textual description of the QFE update.",
          type = "string",
        },
        description = {
          description = "A textual description of the QFE update.",
          type = "string",
        },
        hotFixId = {
          description = "Unique identifier associated with a particular QFE update.",
          type = "string",
        },
        installTime = {
          description = "Date that the QFE update was installed. Mapped from installed_on field.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    WindowsUpdateCategory = {
      description = "Categories specified by the Windows Update.",
      id = "WindowsUpdateCategory",
      properties = {
        id = {
          description = "The identifier of the windows update category.",
          type = "string",
        },
        name = {
          description = "The name of the windows update category.",
          type = "string",
        },
      },
      type = "object",
    },
    WindowsUpdatePackage = {
      description = "Details related to a Windows Update package. Field data and names are taken from Windows Update API IUpdate Interface: https://docs.microsoft.com/en-us/windows/win32/api/_wua/ Descriptive fields like title, and description are localized based on the locale of the VM being updated.",
      id = "WindowsUpdatePackage",
      properties = {
        categories = {
          description = "The categories that are associated with this update package.",
          items = {
            ["$ref"] = "WindowsUpdateCategory",
          },
          type = "array",
        },
        description = {
          description = "The localized description of the update package.",
          type = "string",
        },
        kbArticleIds = {
          description = "A collection of Microsoft Knowledge Base article IDs that are associated with the update package.",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastDeploymentChangeTime = {
          description = "The last published date of the update, in (UTC) date and time.",
          format = "google-datetime",
          type = "string",
        },
        moreInfoUrls = {
          description = "A collection of URLs that provide more information about the update package.",
          items = {
            type = "string",
          },
          type = "array",
        },
        revisionNumber = {
          description = "The revision number of this update package.",
          format = "int32",
          type = "integer",
        },
        supportUrl = {
          description = "A hyperlink to the language-specific support information for the update.",
          type = "string",
        },
        title = {
          description = "The localized title of the update package.",
          type = "string",
        },
        updateId = {
          description = "Gets the identifier of an update package. Stays the same across revisions.",
          type = "string",
        },
      },
      type = "object",
    },
    ZypperPatch = {
      description = "Details related to a Zypper Patch.",
      id = "ZypperPatch",
      properties = {
        category = {
          description = "The category of the patch.",
          type = "string",
        },
        patchName = {
          description = "The name of the patch.",
          type = "string",
        },
        severity = {
          description = "The severity specified for this patch",
          type = "string",
        },
        summary = {
          description = "Any summary information provided about this patch.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Asset API",
  version = "v1",
  version_module = true,
}