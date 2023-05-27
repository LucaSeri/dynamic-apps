return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/webmasters"] = {
          description = "View and manage Search Console data for your verified sites",
        },
        ["https://www.googleapis.com/auth/webmasters.readonly"] = {
          description = "View Search Console data for your verified sites",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://searchconsole.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Search Console",
  description = "The Search Console API provides access to both Search Console data (verified users only) and to public information on an URL basis (anyone)",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/webmaster-tools/search-console-api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "searchconsole:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://searchconsole.mtls.googleapis.com/",
  name = "searchconsole",
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
    searchanalytics = {
      methods = {
        query = {
          description = "Query your data with filters and parameters that you define. Returns zero or more rows grouped by the row keys that you define. You must define a date range of one or more days. When date is one of the group by values, any days without data are omitted from the result list. If you need to know which days have data, issue a broad date range query grouped by date for any metric, and see which day rows are returned.",
          flatPath = "webmasters/v3/sites/{siteUrl}/searchAnalytics/query",
          httpMethod = "POST",
          id = "webmasters.searchanalytics.query",
          parameterOrder = {
            "siteUrl",
          },
          parameters = {
            siteUrl = {
              description = "The site's URL, including protocol. For example: `http://www.example.com/`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}/searchAnalytics/query",
          request = {
            ["$ref"] = "SearchAnalyticsQueryRequest",
          },
          response = {
            ["$ref"] = "SearchAnalyticsQueryResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
            "https://www.googleapis.com/auth/webmasters.readonly",
          },
        },
      },
    },
    sitemaps = {
      methods = {
        delete = {
          description = "Deletes a sitemap from the Sitemaps report. Does not stop Google from crawling this sitemap or the URLs that were previously crawled in the deleted sitemap.",
          flatPath = "webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}",
          httpMethod = "DELETE",
          id = "webmasters.sitemaps.delete",
          parameterOrder = {
            "siteUrl",
            "feedpath",
          },
          parameters = {
            feedpath = {
              description = "The URL of the actual sitemap. For example: `http://www.example.com/sitemap.xml`.",
              location = "path",
              required = true,
              type = "string",
            },
            siteUrl = {
              description = "The site's URL, including protocol. For example: `http://www.example.com/`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}",
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
          },
        },
        get = {
          description = "Retrieves information about a specific sitemap.",
          flatPath = "webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}",
          httpMethod = "GET",
          id = "webmasters.sitemaps.get",
          parameterOrder = {
            "siteUrl",
            "feedpath",
          },
          parameters = {
            feedpath = {
              description = "The URL of the actual sitemap. For example: `http://www.example.com/sitemap.xml`.",
              location = "path",
              required = true,
              type = "string",
            },
            siteUrl = {
              description = "The site's URL, including protocol. For example: `http://www.example.com/`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}",
          response = {
            ["$ref"] = "WmxSitemap",
          },
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
            "https://www.googleapis.com/auth/webmasters.readonly",
          },
        },
        list = {
          description = " Lists the [sitemaps-entries](/webmaster-tools/v3/sitemaps) submitted for this site, or included in the sitemap index file (if `sitemapIndex` is specified in the request).",
          flatPath = "webmasters/v3/sites/{siteUrl}/sitemaps",
          httpMethod = "GET",
          id = "webmasters.sitemaps.list",
          parameterOrder = {
            "siteUrl",
          },
          parameters = {
            siteUrl = {
              description = "The site's URL, including protocol. For example: `http://www.example.com/`.",
              location = "path",
              required = true,
              type = "string",
            },
            sitemapIndex = {
              description = " A URL of a site's sitemap index. For example: `http://www.example.com/sitemapindex.xml`.",
              location = "query",
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}/sitemaps",
          response = {
            ["$ref"] = "SitemapsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
            "https://www.googleapis.com/auth/webmasters.readonly",
          },
        },
        submit = {
          description = "Submits a sitemap for a site.",
          flatPath = "webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}",
          httpMethod = "PUT",
          id = "webmasters.sitemaps.submit",
          parameterOrder = {
            "siteUrl",
            "feedpath",
          },
          parameters = {
            feedpath = {
              description = "The URL of the actual sitemap. For example: `http://www.example.com/sitemap.xml`.",
              location = "path",
              required = true,
              type = "string",
            },
            siteUrl = {
              description = "The site's URL, including protocol. For example: `http://www.example.com/`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}",
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
          },
        },
      },
    },
    sites = {
      methods = {
        add = {
          description = " Adds a site to the set of the user's sites in Search Console.",
          flatPath = "webmasters/v3/sites/{siteUrl}",
          httpMethod = "PUT",
          id = "webmasters.sites.add",
          parameterOrder = {
            "siteUrl",
          },
          parameters = {
            siteUrl = {
              description = "The URL of the site to add.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}",
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
          },
        },
        delete = {
          description = " Removes a site from the set of the user's Search Console sites.",
          flatPath = "webmasters/v3/sites/{siteUrl}",
          httpMethod = "DELETE",
          id = "webmasters.sites.delete",
          parameterOrder = {
            "siteUrl",
          },
          parameters = {
            siteUrl = {
              description = "The URI of the property as defined in Search Console. **Examples:** `http://www.example.com/` or `sc-domain:example.com`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}",
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
          },
        },
        get = {
          description = " Retrieves information about specific site.",
          flatPath = "webmasters/v3/sites/{siteUrl}",
          httpMethod = "GET",
          id = "webmasters.sites.get",
          parameterOrder = {
            "siteUrl",
          },
          parameters = {
            siteUrl = {
              description = "The URI of the property as defined in Search Console. **Examples:** `http://www.example.com/` or `sc-domain:example.com`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "webmasters/v3/sites/{siteUrl}",
          response = {
            ["$ref"] = "WmxSite",
          },
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
            "https://www.googleapis.com/auth/webmasters.readonly",
          },
        },
        list = {
          description = " Lists the user's Search Console sites.",
          flatPath = "webmasters/v3/sites",
          httpMethod = "GET",
          id = "webmasters.sites.list",
          parameterOrder = {},
          parameters = {},
          path = "webmasters/v3/sites",
          response = {
            ["$ref"] = "SitesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/webmasters",
            "https://www.googleapis.com/auth/webmasters.readonly",
          },
        },
      },
    },
    urlInspection = {
      resources = {
        index = {
          methods = {
            inspect = {
              description = "Index inspection.",
              flatPath = "v1/urlInspection/index:inspect",
              httpMethod = "POST",
              id = "searchconsole.urlInspection.index.inspect",
              parameterOrder = {},
              parameters = {},
              path = "v1/urlInspection/index:inspect",
              request = {
                ["$ref"] = "InspectUrlIndexRequest",
              },
              response = {
                ["$ref"] = "InspectUrlIndexResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/webmasters",
                "https://www.googleapis.com/auth/webmasters.readonly",
              },
            },
          },
        },
      },
    },
    urlTestingTools = {
      resources = {
        mobileFriendlyTest = {
          methods = {
            run = {
              description = "Runs Mobile-Friendly Test for a given URL.",
              flatPath = "v1/urlTestingTools/mobileFriendlyTest:run",
              httpMethod = "POST",
              id = "searchconsole.urlTestingTools.mobileFriendlyTest.run",
              parameterOrder = {},
              parameters = {},
              path = "v1/urlTestingTools/mobileFriendlyTest:run",
              request = {
                ["$ref"] = "RunMobileFriendlyTestRequest",
              },
              response = {
                ["$ref"] = "RunMobileFriendlyTestResponse",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://searchconsole.googleapis.com/",
  schemas = {
    AmpInspectionResult = {
      description = "AMP inspection result of the live page or the current information from Google's index, depending on whether you requested a live inspection or not.",
      id = "AmpInspectionResult",
      properties = {
        ampIndexStatusVerdict = {
          description = "Index status of the AMP URL.",
          enum = {
            "VERDICT_UNSPECIFIED",
            "PASS",
            "PARTIAL",
            "FAIL",
            "NEUTRAL",
          },
          enumDescriptions = {
            "Unknown verdict.",
            "Equivalent to \"Valid\" for the page or item in Search Console.",
            "Reserved, no longer in use.",
            "Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.",
            "Equivalent to \"Excluded\" for the page or item in Search Console.",
          },
          type = "string",
        },
        ampUrl = {
          description = "URL of the AMP that was inspected. If the submitted URL is a desktop page that refers to an AMP version, the AMP version will be inspected.",
          type = "string",
        },
        indexingState = {
          description = "Whether or not the page blocks indexing through a noindex rule.",
          enum = {
            "AMP_INDEXING_STATE_UNSPECIFIED",
            "AMP_INDEXING_ALLOWED",
            "BLOCKED_DUE_TO_NOINDEX",
            "BLOCKED_DUE_TO_EXPIRED_UNAVAILABLE_AFTER",
          },
          enumDescriptions = {
            "Unknown indexing status.",
            "Indexing allowed.",
            "Indexing not allowed, 'noindex' detected.",
            "Indexing not allowed, 'unavailable_after' date expired.",
          },
          type = "string",
        },
        issues = {
          description = "A list of zero or more AMP issues found for the inspected URL.",
          items = {
            ["$ref"] = "AmpIssue",
          },
          type = "array",
        },
        lastCrawlTime = {
          description = "Last time this AMP version was crawled by Google. Absent if the URL was never crawled successfully.",
          format = "google-datetime",
          type = "string",
        },
        pageFetchState = {
          description = "Whether or not Google could fetch the AMP.",
          enum = {
            "PAGE_FETCH_STATE_UNSPECIFIED",
            "SUCCESSFUL",
            "SOFT_404",
            "BLOCKED_ROBOTS_TXT",
            "NOT_FOUND",
            "ACCESS_DENIED",
            "SERVER_ERROR",
            "REDIRECT_ERROR",
            "ACCESS_FORBIDDEN",
            "BLOCKED_4XX",
            "INTERNAL_CRAWL_ERROR",
            "INVALID_URL",
          },
          enumDescriptions = {
            "Unknown fetch state.",
            "Successful fetch.",
            "Soft 404.",
            "Blocked by robots.txt.",
            "Not found (404).",
            "Blocked due to unauthorized request (401).",
            "Server error (5xx).",
            "Redirection error.",
            "Blocked due to access forbidden (403).",
            "Blocked due to other 4xx issue (not 403, 404).",
            "Internal error.",
            "Invalid URL.",
          },
          type = "string",
        },
        robotsTxtState = {
          description = "Whether or not the page is blocked to Google by a robots.txt rule.",
          enum = {
            "ROBOTS_TXT_STATE_UNSPECIFIED",
            "ALLOWED",
            "DISALLOWED",
          },
          enumDescriptions = {
            "Unknown robots.txt state, typically because the page wasn't fetched or found, or because robots.txt itself couldn't be reached.",
            "Crawl allowed by robots.txt.",
            "Crawl blocked by robots.txt.",
          },
          type = "string",
        },
        verdict = {
          description = "The status of the most severe error on the page. If a page has both warnings and errors, the page status is error. Error status means the page cannot be shown in Search results.",
          enum = {
            "VERDICT_UNSPECIFIED",
            "PASS",
            "PARTIAL",
            "FAIL",
            "NEUTRAL",
          },
          enumDescriptions = {
            "Unknown verdict.",
            "Equivalent to \"Valid\" for the page or item in Search Console.",
            "Reserved, no longer in use.",
            "Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.",
            "Equivalent to \"Excluded\" for the page or item in Search Console.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AmpIssue = {
      description = "AMP issue.",
      id = "AmpIssue",
      properties = {
        issueMessage = {
          description = "Brief description of this issue.",
          type = "string",
        },
        severity = {
          description = "Severity of this issue: WARNING or ERROR.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "Unknown severity.",
            "Warning.",
            "Error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ApiDataRow = {
      id = "ApiDataRow",
      properties = {
        clicks = {
          format = "double",
          type = "number",
        },
        ctr = {
          format = "double",
          type = "number",
        },
        impressions = {
          format = "double",
          type = "number",
        },
        keys = {
          items = {
            type = "string",
          },
          type = "array",
        },
        position = {
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ApiDimensionFilter = {
      description = "A filter test to be applied to each row in the data set, where a match can return the row. Filters are string comparisons, and values and dimension names are not case-sensitive. Individual filters are either AND'ed or OR'ed within their parent filter group, according to the group's group type. You do not need to group by a specified dimension to filter against it.",
      id = "ApiDimensionFilter",
      properties = {
        dimension = {
          enum = {
            "QUERY",
            "PAGE",
            "COUNTRY",
            "DEVICE",
            "SEARCH_APPEARANCE",
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
        expression = {
          type = "string",
        },
        operator = {
          enum = {
            "EQUALS",
            "NOT_EQUALS",
            "CONTAINS",
            "NOT_CONTAINS",
            "INCLUDING_REGEX",
            "EXCLUDING_REGEX",
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
    ApiDimensionFilterGroup = {
      description = "A set of dimension value filters to test against each row. Only rows that pass all filter groups will be returned. All results within a filter group are either AND'ed or OR'ed together, depending on the group type selected. All filter groups are AND'ed together.",
      id = "ApiDimensionFilterGroup",
      properties = {
        filters = {
          items = {
            ["$ref"] = "ApiDimensionFilter",
          },
          type = "array",
        },
        groupType = {
          enum = {
            "AND",
          },
          enumDescriptions = {
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BlockedResource = {
      description = "Blocked resource.",
      id = "BlockedResource",
      properties = {
        url = {
          description = "URL of the blocked resource.",
          type = "string",
        },
      },
      type = "object",
    },
    DetectedItems = {
      description = "Rich Results items grouped by type.",
      id = "DetectedItems",
      properties = {
        items = {
          description = "List of Rich Results items.",
          items = {
            ["$ref"] = "Item",
          },
          type = "array",
        },
        richResultType = {
          description = "Rich Results type",
          type = "string",
        },
      },
      type = "object",
    },
    Image = {
      description = "Describe image data.",
      id = "Image",
      properties = {
        data = {
          description = "Image data in format determined by the mime type. Currently, the format will always be \"image/png\", but this might change in the future.",
          format = "byte",
          type = "string",
        },
        mimeType = {
          description = "The mime-type of the image data.",
          type = "string",
        },
      },
      type = "object",
    },
    IndexStatusInspectionResult = {
      description = "Results of index status inspection for either the live page or the version in Google's index, depending on whether you requested a live inspection or not. For more information, see the [Index coverage report documentation](https://support.google.com/webmasters/answer/7440203).",
      id = "IndexStatusInspectionResult",
      properties = {
        coverageState = {
          description = "Could Google find and index the page. More details about page indexing appear in 'indexing_state'.",
          type = "string",
        },
        crawledAs = {
          description = "Primary crawler that was used by Google to crawl your site.",
          enum = {
            "CRAWLING_USER_AGENT_UNSPECIFIED",
            "DESKTOP",
            "MOBILE",
          },
          enumDescriptions = {
            "Unknown user agent.",
            "Desktop user agent.",
            "Mobile user agent.",
          },
          type = "string",
        },
        googleCanonical = {
          description = "The URL of the page that Google selected as canonical. If the page was not indexed, this field is absent.",
          type = "string",
        },
        indexingState = {
          description = "Whether or not the page blocks indexing through a noindex rule.",
          enum = {
            "INDEXING_STATE_UNSPECIFIED",
            "INDEXING_ALLOWED",
            "BLOCKED_BY_META_TAG",
            "BLOCKED_BY_HTTP_HEADER",
            "BLOCKED_BY_ROBOTS_TXT",
          },
          enumDescriptions = {
            "Unknown indexing status.",
            "Indexing allowed.",
            "Indexing not allowed, 'noindex' detected in 'robots' meta tag.",
            "Indexing not allowed, 'noindex' detected in 'X-Robots-Tag' http header.",
            "Reserved, no longer in use.",
          },
          type = "string",
        },
        lastCrawlTime = {
          description = "Last time this URL was crawled by Google using the [primary crawler](https://support.google.com/webmasters/answer/7440203#primary_crawler). Absent if the URL was never crawled successfully.",
          format = "google-datetime",
          type = "string",
        },
        pageFetchState = {
          description = "Whether or not Google could retrieve the page from your server. Equivalent to [\"page fetch\"](https://support.google.com/webmasters/answer/9012289#index_coverage) in the URL inspection report.",
          enum = {
            "PAGE_FETCH_STATE_UNSPECIFIED",
            "SUCCESSFUL",
            "SOFT_404",
            "BLOCKED_ROBOTS_TXT",
            "NOT_FOUND",
            "ACCESS_DENIED",
            "SERVER_ERROR",
            "REDIRECT_ERROR",
            "ACCESS_FORBIDDEN",
            "BLOCKED_4XX",
            "INTERNAL_CRAWL_ERROR",
            "INVALID_URL",
          },
          enumDescriptions = {
            "Unknown fetch state.",
            "Successful fetch.",
            "Soft 404.",
            "Blocked by robots.txt.",
            "Not found (404).",
            "Blocked due to unauthorized request (401).",
            "Server error (5xx).",
            "Redirection error.",
            "Blocked due to access forbidden (403).",
            "Blocked due to other 4xx issue (not 403, 404).",
            "Internal error.",
            "Invalid URL.",
          },
          type = "string",
        },
        referringUrls = {
          description = "URLs that link to the inspected URL, directly and indirectly.",
          items = {
            type = "string",
          },
          type = "array",
        },
        robotsTxtState = {
          description = "Whether or not the page is blocked to Google by a robots.txt rule.",
          enum = {
            "ROBOTS_TXT_STATE_UNSPECIFIED",
            "ALLOWED",
            "DISALLOWED",
          },
          enumDescriptions = {
            "Unknown robots.txt state, typically because the page wasn't fetched or found, or because robots.txt itself couldn't be reached.",
            "Crawl allowed by robots.txt.",
            "Crawl blocked by robots.txt.",
          },
          type = "string",
        },
        sitemap = {
          description = "Any sitemaps that this URL was listed in, as known by Google. Not guaranteed to be an exhaustive list, especially if Google did not discover this URL through a sitemap. Absent if no sitemaps were found.",
          items = {
            type = "string",
          },
          type = "array",
        },
        userCanonical = {
          description = "The URL that your page or site [declares as canonical](https://developers.google.com/search/docs/advanced/crawling/consolidate-duplicate-urls?#define-canonical). If you did not declare a canonical URL, this field is absent.",
          type = "string",
        },
        verdict = {
          description = "High level verdict about whether the URL *is* indexed (indexed status), or *can be* indexed (live inspection).",
          enum = {
            "VERDICT_UNSPECIFIED",
            "PASS",
            "PARTIAL",
            "FAIL",
            "NEUTRAL",
          },
          enumDescriptions = {
            "Unknown verdict.",
            "Equivalent to \"Valid\" for the page or item in Search Console.",
            "Reserved, no longer in use.",
            "Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.",
            "Equivalent to \"Excluded\" for the page or item in Search Console.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InspectUrlIndexRequest = {
      description = "Index inspection request.",
      id = "InspectUrlIndexRequest",
      properties = {
        inspectionUrl = {
          description = "Required. URL to inspect. Must be under the property specified in \"site_url\".",
          type = "string",
        },
        languageCode = {
          description = "Optional. An [IETF BCP-47](https://en.wikipedia.org/wiki/IETF_language_tag) language code representing the requested language for translated issue messages, e.g. \"en-US\", \"or \"de-CH\". Default value is \"en-US\".",
          type = "string",
        },
        siteUrl = {
          description = "Required. The URL of the property as defined in Search Console. **Examples:** `http://www.example.com/` for a URL-prefix property, or `sc-domain:example.com` for a Domain property.",
          type = "string",
        },
      },
      type = "object",
    },
    InspectUrlIndexResponse = {
      description = "Index-Status inspection response.",
      id = "InspectUrlIndexResponse",
      properties = {
        inspectionResult = {
          ["$ref"] = "UrlInspectionResult",
          description = "URL inspection results.",
        },
      },
      type = "object",
    },
    Item = {
      description = "A specific rich result found on the page.",
      id = "Item",
      properties = {
        issues = {
          description = "A list of zero or more rich result issues found for this instance.",
          items = {
            ["$ref"] = "RichResultsIssue",
          },
          type = "array",
        },
        name = {
          description = "The user-provided name of this item.",
          type = "string",
        },
      },
      type = "object",
    },
    MobileFriendlyIssue = {
      description = "Mobile-friendly issue.",
      id = "MobileFriendlyIssue",
      properties = {
        rule = {
          description = "Rule violated.",
          enum = {
            "MOBILE_FRIENDLY_RULE_UNSPECIFIED",
            "USES_INCOMPATIBLE_PLUGINS",
            "CONFIGURE_VIEWPORT",
            "FIXED_WIDTH_VIEWPORT",
            "SIZE_CONTENT_TO_VIEWPORT",
            "USE_LEGIBLE_FONT_SIZES",
            "TAP_TARGETS_TOO_CLOSE",
          },
          enumDescriptions = {
            "Unknown rule. Sorry, we don't have any description for the rule that was broken.",
            "Plugins incompatible with mobile devices are being used. [Learn more] (https://support.google.com/webmasters/answer/6352293#flash_usage).",
            "Viewport is not specified using the meta viewport tag. [Learn more] (https://support.google.com/webmasters/answer/6352293#viewport_not_configured).",
            "Viewport defined to a fixed width. [Learn more] (https://support.google.com/webmasters/answer/6352293#fixed-width_viewport).",
            "Content not sized to viewport. [Learn more] (https://support.google.com/webmasters/answer/6352293#content_not_sized_to_viewport).",
            "Font size is too small for easy reading on a small screen. [Learn More] (https://support.google.com/webmasters/answer/6352293#small_font_size).",
            "Touch elements are too close to each other. [Learn more] (https://support.google.com/webmasters/answer/6352293#touch_elements_too_close).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MobileUsabilityInspectionResult = {
      description = "Mobile-usability inspection results.",
      id = "MobileUsabilityInspectionResult",
      properties = {
        issues = {
          description = "A list of zero or more mobile-usability issues detected for this URL.",
          items = {
            ["$ref"] = "MobileUsabilityIssue",
          },
          type = "array",
        },
        verdict = {
          description = "High-level mobile-usability inspection result for this URL.",
          enum = {
            "VERDICT_UNSPECIFIED",
            "PASS",
            "PARTIAL",
            "FAIL",
            "NEUTRAL",
          },
          enumDescriptions = {
            "Unknown verdict.",
            "Equivalent to \"Valid\" for the page or item in Search Console.",
            "Reserved, no longer in use.",
            "Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.",
            "Equivalent to \"Excluded\" for the page or item in Search Console.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MobileUsabilityIssue = {
      description = "Mobile-usability issue.",
      id = "MobileUsabilityIssue",
      properties = {
        issueType = {
          description = "Mobile-usability issue type.",
          enum = {
            "MOBILE_USABILITY_ISSUE_TYPE_UNSPECIFIED",
            "USES_INCOMPATIBLE_PLUGINS",
            "CONFIGURE_VIEWPORT",
            "FIXED_WIDTH_VIEWPORT",
            "SIZE_CONTENT_TO_VIEWPORT",
            "USE_LEGIBLE_FONT_SIZES",
            "TAP_TARGETS_TOO_CLOSE",
          },
          enumDescriptions = {
            "Unknown issue. Sorry, we don't have any description for the rule that was broken.",
            "Plugins incompatible with mobile devices are being used. [Learn more] (https://support.google.com/webmasters/answer/6352293#flash_usage#error-list).",
            "Viewport is not specified using the meta viewport tag. [Learn more] (https://support.google.com/webmasters/answer/6352293#viewport_not_configured#error-list).",
            "Viewport defined to a fixed width. [Learn more] (https://support.google.com/webmasters/answer/6352293#fixed-width_viewport#error-list).",
            "Content not sized to viewport. [Learn more] (https://support.google.com/webmasters/answer/6352293#content_not_sized_to_viewport#error-list).",
            "Font size is too small for easy reading on a small screen. [Learn More] (https://support.google.com/webmasters/answer/6352293#small_font_size#error-list).",
            "Touch elements are too close to each other. [Learn more] (https://support.google.com/webmasters/answer/6352293#touch_elements_too_close#error-list).",
          },
          type = "string",
        },
        message = {
          description = "Additional information regarding the issue.",
          type = "string",
        },
        severity = {
          description = "Not returned; reserved for future use.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "Unknown severity.",
            "Warning.",
            "Error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ResourceIssue = {
      description = "Information about a resource with issue.",
      id = "ResourceIssue",
      properties = {
        blockedResource = {
          ["$ref"] = "BlockedResource",
          description = "Describes a blocked resource issue.",
        },
      },
      type = "object",
    },
    RichResultsInspectionResult = {
      description = "Rich-Results inspection result, including any rich results found at this URL.",
      id = "RichResultsInspectionResult",
      properties = {
        detectedItems = {
          description = "A list of zero or more rich results detected on this page. Rich results that cannot even be parsed due to syntactic issues will not be listed here.",
          items = {
            ["$ref"] = "DetectedItems",
          },
          type = "array",
        },
        verdict = {
          description = "High-level rich results inspection result for this URL.",
          enum = {
            "VERDICT_UNSPECIFIED",
            "PASS",
            "PARTIAL",
            "FAIL",
            "NEUTRAL",
          },
          enumDescriptions = {
            "Unknown verdict.",
            "Equivalent to \"Valid\" for the page or item in Search Console.",
            "Reserved, no longer in use.",
            "Equivalent to \"Error\" or \"Invalid\" for the page or item in Search Console.",
            "Equivalent to \"Excluded\" for the page or item in Search Console.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RichResultsIssue = {
      description = "Severity and status of a single issue affecting a single rich result instance on a page.",
      id = "RichResultsIssue",
      properties = {
        issueMessage = {
          description = "Rich Results issue type.",
          type = "string",
        },
        severity = {
          description = "Severity of this issue: WARNING, or ERROR. Items with an issue of status ERROR cannot appear with rich result features in Google Search results.",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "WARNING",
            "ERROR",
          },
          enumDescriptions = {
            "Unknown severity.",
            "Warning.",
            "Error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RunMobileFriendlyTestRequest = {
      description = "Mobile-friendly test request.",
      id = "RunMobileFriendlyTestRequest",
      properties = {
        requestScreenshot = {
          description = "Whether or not screenshot is requested. Default is false.",
          type = "boolean",
        },
        url = {
          description = "URL for inspection.",
          type = "string",
        },
      },
      type = "object",
    },
    RunMobileFriendlyTestResponse = {
      description = "Mobile-friendly test response, including mobile-friendly issues and resource issues.",
      id = "RunMobileFriendlyTestResponse",
      properties = {
        mobileFriendliness = {
          description = "Test verdict, whether the page is mobile friendly or not.",
          enum = {
            "MOBILE_FRIENDLY_TEST_RESULT_UNSPECIFIED",
            "MOBILE_FRIENDLY",
            "NOT_MOBILE_FRIENDLY",
          },
          enumDescriptions = {
            "Internal error when running this test. Please try running the test again.",
            "The page is mobile friendly.",
            "The page is not mobile friendly.",
          },
          type = "string",
        },
        mobileFriendlyIssues = {
          description = "List of mobile-usability issues.",
          items = {
            ["$ref"] = "MobileFriendlyIssue",
          },
          type = "array",
        },
        resourceIssues = {
          description = "Information about embedded resources issues.",
          items = {
            ["$ref"] = "ResourceIssue",
          },
          type = "array",
        },
        screenshot = {
          ["$ref"] = "Image",
          description = "Screenshot of the requested URL.",
        },
        testStatus = {
          ["$ref"] = "TestStatus",
          description = "Final state of the test, can be either complete or an error.",
        },
      },
      type = "object",
    },
    SearchAnalyticsQueryRequest = {
      id = "SearchAnalyticsQueryRequest",
      properties = {
        aggregationType = {
          description = "[Optional; Default is \\\"auto\\\"] How data is aggregated. If aggregated by property, all data for the same property is aggregated; if aggregated by page, all data is aggregated by canonical URI. If you filter or group by page, choose AUTO; otherwise you can aggregate either by property or by page, depending on how you want your data calculated; see the help documentation to learn how data is calculated differently by site versus by page. **Note:** If you group or filter by page, you cannot aggregate by property. If you specify any value other than AUTO, the aggregation type in the result will match the requested type, or if you request an invalid type, you will get an error. The API will never change your aggregation type if the requested type is invalid.",
          enum = {
            "AUTO",
            "BY_PROPERTY",
            "BY_PAGE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        dataState = {
          description = "The data state to be fetched, can be full or all, the latter including full and partial data.",
          enum = {
            "DATA_STATE_UNSPECIFIED",
            "FINAL",
            "ALL",
          },
          enumDescriptions = {
            "Default value, should not be used.",
            "Include full final data only, without partial.",
            "Include all data, full and partial.",
          },
          type = "string",
        },
        dimensionFilterGroups = {
          description = "[Optional] Zero or more filters to apply to the dimension grouping values; for example, 'query contains \\\"buy\\\"' to see only data where the query string contains the substring \\\"buy\\\" (not case-sensitive). You can filter by a dimension without grouping by it.",
          items = {
            ["$ref"] = "ApiDimensionFilterGroup",
          },
          type = "array",
        },
        dimensions = {
          description = "[Optional] Zero or more dimensions to group results by. Dimensions are the group-by values in the Search Analytics page. Dimensions are combined to create a unique row key for each row. Results are grouped in the order that you supply these dimensions.",
          items = {
            enum = {
              "DATE",
              "QUERY",
              "PAGE",
              "COUNTRY",
              "DEVICE",
              "SEARCH_APPEARANCE",
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
        endDate = {
          description = "[Required] End date of the requested date range, in YYYY-MM-DD format, in PST (UTC - 8:00). Must be greater than or equal to the start date. This value is included in the range.",
          type = "string",
        },
        rowLimit = {
          description = "[Optional; Default is 1000] The maximum number of rows to return. Must be a number from 1 to 25,000 (inclusive).",
          format = "int32",
          type = "integer",
        },
        searchType = {
          description = "[Optional; Default is \\\"web\\\"] The search type to filter for.",
          enum = {
            "WEB",
            "IMAGE",
            "VIDEO",
            "NEWS",
            "DISCOVER",
            "GOOGLE_NEWS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "News tab in search.",
            "Discover.",
            "Google News (news.google.com or mobile app).",
          },
          type = "string",
        },
        startDate = {
          description = " [Required] Start date of the requested date range, in YYYY-MM-DD format, in PST time (UTC - 8:00). Must be less than or equal to the end date. This value is included in the range.",
          type = "string",
        },
        startRow = {
          description = "[Optional; Default is 0] Zero-based index of the first row in the response. Must be a non-negative number.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "Optional. [Optional; Default is \\\"web\\\"] Type of report: search type, or either Discover or Gnews.",
          enum = {
            "WEB",
            "IMAGE",
            "VIDEO",
            "NEWS",
            "DISCOVER",
            "GOOGLE_NEWS",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "News tab in search.",
            "Discover.",
            "Google News (news.google.com or mobile app).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SearchAnalyticsQueryResponse = {
      description = "A list of rows, one per result, grouped by key. Metrics in each row are aggregated for all data grouped by that key either by page or property, as specified by the aggregation type parameter.",
      id = "SearchAnalyticsQueryResponse",
      properties = {
        responseAggregationType = {
          description = "How the results were aggregated.",
          enum = {
            "AUTO",
            "BY_PROPERTY",
            "BY_PAGE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        rows = {
          description = "A list of rows grouped by the key values in the order given in the query.",
          items = {
            ["$ref"] = "ApiDataRow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SitemapsListResponse = {
      description = "List of sitemaps.",
      id = "SitemapsListResponse",
      properties = {
        sitemap = {
          description = "Contains detailed information about a specific URL submitted as a [sitemap](https://support.google.com/webmasters/answer/156184).",
          items = {
            ["$ref"] = "WmxSitemap",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SitesListResponse = {
      description = "List of sites with access level information.",
      id = "SitesListResponse",
      properties = {
        siteEntry = {
          description = "Contains permission level information about a Search Console site. For more information, see [Permissions in Search Console](https://support.google.com/webmasters/answer/2451999).",
          items = {
            ["$ref"] = "WmxSite",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestStatus = {
      description = "Final state of the test, including error details if necessary.",
      id = "TestStatus",
      properties = {
        details = {
          description = "Error details if applicable.",
          type = "string",
        },
        status = {
          description = "Status of the test.",
          enum = {
            "TEST_STATUS_UNSPECIFIED",
            "COMPLETE",
            "INTERNAL_ERROR",
            "PAGE_UNREACHABLE",
          },
          enumDescriptions = {
            "Internal error when running this test. Please try running the test again.",
            "Inspection has completed without errors.",
            "Inspection terminated in an error state. This indicates a problem in Google's infrastructure, not a user error. Please try again later.",
            "Google can not access the URL because of a user error such as a robots.txt blockage, a 403 or 500 code etc. Please make sure that the URL provided is accessible by Googlebot and is not password protected.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UrlInspectionResult = {
      description = "URL inspection result, including all inspection results.",
      id = "UrlInspectionResult",
      properties = {
        ampResult = {
          ["$ref"] = "AmpInspectionResult",
          description = "Result of the AMP analysis. Absent if the page is not an AMP page.",
        },
        indexStatusResult = {
          ["$ref"] = "IndexStatusInspectionResult",
          description = "Result of the index status analysis.",
        },
        inspectionResultLink = {
          description = "Link to Search Console URL inspection.",
          type = "string",
        },
        mobileUsabilityResult = {
          ["$ref"] = "MobileUsabilityInspectionResult",
          description = "Result of the Mobile usability analysis.",
        },
        richResultsResult = {
          ["$ref"] = "RichResultsInspectionResult",
          description = "Result of the Rich Results analysis. Absent if there are no rich results found.",
        },
      },
      type = "object",
    },
    WmxSite = {
      description = "Contains permission level information about a Search Console site. For more information, see [Permissions in Search Console](https://support.google.com/webmasters/answer/2451999).",
      id = "WmxSite",
      properties = {
        permissionLevel = {
          description = "The user's permission level for the site.",
          enum = {
            "SITE_PERMISSION_LEVEL_UNSPECIFIED",
            "SITE_OWNER",
            "SITE_FULL_USER",
            "SITE_RESTRICTED_USER",
            "SITE_UNVERIFIED_USER",
          },
          enumDescriptions = {
            "",
            "Owner has complete access to the site.",
            "Full users can access all data, and perform most of the operations.",
            "Restricted users can access most of the data, and perform some operations.",
            "Unverified user has no access to site's data.",
          },
          type = "string",
        },
        siteUrl = {
          description = "The URL of the site.",
          type = "string",
        },
      },
      type = "object",
    },
    WmxSitemap = {
      description = "Contains detailed information about a specific URL submitted as a [sitemap](https://support.google.com/webmasters/answer/156184).",
      id = "WmxSitemap",
      properties = {
        contents = {
          description = "The various content types in the sitemap.",
          items = {
            ["$ref"] = "WmxSitemapContent",
          },
          type = "array",
        },
        errors = {
          description = "Number of errors in the sitemap. These are issues with the sitemap itself that need to be fixed before it can be processed correctly.",
          format = "int64",
          type = "string",
        },
        isPending = {
          description = "If true, the sitemap has not been processed.",
          type = "boolean",
        },
        isSitemapsIndex = {
          description = "If true, the sitemap is a collection of sitemaps.",
          type = "boolean",
        },
        lastDownloaded = {
          description = "Date & time in which this sitemap was last downloaded. Date format is in RFC 3339 format (yyyy-mm-dd).",
          format = "google-datetime",
          type = "string",
        },
        lastSubmitted = {
          description = "Date & time in which this sitemap was submitted. Date format is in RFC 3339 format (yyyy-mm-dd).",
          format = "google-datetime",
          type = "string",
        },
        path = {
          description = "The url of the sitemap.",
          type = "string",
        },
        type = {
          description = "The type of the sitemap. For example: `rssFeed`.",
          enum = {
            "NOT_SITEMAP",
            "URL_LIST",
            "SITEMAP",
            "RSS_FEED",
            "ATOM_FEED",
            "PATTERN_SITEMAP",
            "OCEANFRONT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "Unsupported sitemap types.",
            "",
          },
          type = "string",
        },
        warnings = {
          description = "Number of warnings for the sitemap. These are generally non-critical issues with URLs in the sitemaps.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    WmxSitemapContent = {
      description = "Information about the various content types in the sitemap.",
      id = "WmxSitemapContent",
      properties = {
        indexed = {
          description = "*Deprecated; do not use.*",
          format = "int64",
          type = "string",
        },
        submitted = {
          description = "The number of URLs in the sitemap (of the content type).",
          format = "int64",
          type = "string",
        },
        type = {
          description = "The specific type of content in this sitemap. For example: `web`.",
          enum = {
            "WEB",
            "IMAGE",
            "VIDEO",
            "NEWS",
            "MOBILE",
            "ANDROID_APP",
            "PATTERN",
            "IOS_APP",
            "DATA_FEED_ELEMENT",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "Unsupported content type.",
            "",
            "Unsupported content type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Search Console API",
  version = "v1",
  version_module = true,
}
