return {
  basePath = "",
  baseUrl = "https://customsearch.googleapis.com/",
  batchPath = "batch",
  canonicalName = "CustomSearch API",
  description = "Searches over a website or collection of websites",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/custom-search/v1/introduction",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "customsearch:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://customsearch.mtls.googleapis.com/",
  name = "customsearch",
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
    cse = {
      methods = {
        list = {
          description = "Returns metadata about the search performed, metadata about the engine used for the search, and the search results.",
          flatPath = "customsearch/v1",
          httpMethod = "GET",
          id = "search.cse.list",
          parameterOrder = {},
          parameters = {
            c2coff = {
              description = "Enables or disables [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch). The default value for this parameter is 0 (zero), meaning that the feature is enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)",
              location = "query",
              type = "string",
            },
            cr = {
              description = "Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://developers.google.com/custom-search/docs/json_api_reference#booleanOperators) in the cr parameter's value. Google Search determines the country of a document by analyzing: * the top-level domain (TLD) of the document's URL * the geographic location of the Web server's IP address See the [Country Parameter Values](https://developers.google.com/custom-search/docs/json_api_reference#countryCollections) page for a list of valid values for this parameter.",
              location = "query",
              type = "string",
            },
            cx = {
              description = "The Programmable Search Engine ID to use for this request.",
              location = "query",
              type = "string",
            },
            dateRestrict = {
              description = "Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified number of past days. * `w[number]`: requests results from the specified number of past weeks. * `m[number]`: requests results from the specified number of past months. * `y[number]`: requests results from the specified number of past years.",
              location = "query",
              type = "string",
            },
            exactTerms = {
              description = "Identifies a phrase that all documents in the search results must contain.",
              location = "query",
              type = "string",
            },
            excludeTerms = {
              description = "Identifies a word or phrase that should not appear in any documents in the search results.",
              location = "query",
              type = "string",
            },
            fileType = {
              description = "Restricts results to files of a specified extension. A list of file types indexable by Google can be found in Search Console [Help Center](https://support.google.com/webmasters/answer/35287).",
              location = "query",
              type = "string",
            },
            filter = {
              description = "Controls turning on or off the duplicate content filter. * See [Automatic Filtering](https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering) for more information about Google's search results filters. Note that host crowding filtering applies only to multi-site searches. * By default, Google applies filtering to all search results to improve the quality of those results. Acceptable values are: * `0`: Turns off duplicate content filter. * `1`: Turns on duplicate content filter.",
              location = "query",
              type = "string",
            },
            gl = {
              description = "Geolocation of end user. * The `gl` parameter value is a two-letter country code. The `gl` parameter boosts search results whose country of origin matches the parameter value. See the [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) page for a list of valid values. * Specifying a `gl` parameter value should lead to more relevant results. This is particularly true for international customers and, even more specifically, for customers in English- speaking countries other than the United States.",
              location = "query",
              type = "string",
            },
            googlehost = {
              description = "**Deprecated**. Use the `gl` parameter for a similar effect. The local Google domain (for example, google.com, google.de, or google.fr) to use to perform the search.",
              location = "query",
              type = "string",
            },
            highRange = {
              description = "Specifies the ending value for a search range. * Use `lowRange` and `highRange` to append an inclusive search range of `lowRange...highRange` to the query.",
              location = "query",
              type = "string",
            },
            hl = {
              description = "Sets the user interface language. * Explicitly setting this parameter improves the performance and the quality of your search results. * See the [Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages) section of [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing) for more information, and [Supported Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages) for a list of supported languages.",
              location = "query",
              type = "string",
            },
            hq = {
              description = "Appends the specified query terms to the query, as if they were combined with a logical AND operator.",
              location = "query",
              type = "string",
            },
            imgColorType = {
              description = "Returns black and white, grayscale, transparent, or color images. Acceptable values are: * `\"color\"` * `\"gray\"` * `\"mono\"`: black and white * `\"trans\"`: transparent background",
              enum = {
                "imgColorTypeUndefined",
                "mono",
                "gray",
                "color",
                "trans",
              },
              enumDescriptions = {
                "No image color type specified.",
                "Black and white images only.",
                "Grayscale images only.",
                "Color images only.",
                "Images with transparent background",
              },
              location = "query",
              type = "string",
            },
            imgDominantColor = {
              description = "Returns images of a specific dominant color. Acceptable values are: * `\"black\"` * `\"blue\"` * `\"brown\"` * `\"gray\"` * `\"green\"` * `\"orange\"` * `\"pink\"` * `\"purple\"` * `\"red\"` * `\"teal\"` * `\"white\"` * `\"yellow\"`",
              enum = {
                "imgDominantColorUndefined",
                "black",
                "blue",
                "brown",
                "gray",
                "green",
                "orange",
                "pink",
                "purple",
                "red",
                "teal",
                "white",
                "yellow",
              },
              enumDescriptions = {
                "No dominant color specified.",
                "Predominantly black images only.",
                "Predominantly blue images only.",
                "Predominantly brown images only.",
                "Predominantly gray images only.",
                "Predominantly green images only.",
                "Predominantly orange images only.",
                "Predominantly pink images only.",
                "Predominantly purple images only.",
                "Predominantly red images only.",
                "Predominantly teal images only.",
                "Predominantly white images only.",
                "Predominantly yellow images only.",
              },
              location = "query",
              type = "string",
            },
            imgSize = {
              description = "Returns images of a specified size. Acceptable values are: * `\"huge\"` * `\"icon\"` * `\"large\"` * `\"medium\"` * `\"small\"` * `\"xlarge\"` * `\"xxlarge\"`",
              enum = {
                "imgSizeUndefined",
                "HUGE",
                "ICON",
                "LARGE",
                "MEDIUM",
                "SMALL",
                "XLARGE",
                "XXLARGE",
              },
              enumDescriptions = {
                "No image size specified.",
                "Only the largest possible images.",
                "Only very small icon-sized images.",
                "Only large images.",
                "Only medium images.",
                "Only small images.",
                "Only very large images.",
                "Only extremely large images.",
              },
              location = "query",
              type = "string",
            },
            imgType = {
              description = "Returns images of a type. Acceptable values are: * `\"clipart\"` * `\"face\"` * `\"lineart\"` * `\"stock\"` * `\"photo\"` * `\"animated\"`",
              enum = {
                "imgTypeUndefined",
                "clipart",
                "face",
                "lineart",
                "stock",
                "photo",
                "animated",
              },
              enumDescriptions = {
                "No image type specified.",
                "Clipart-style images only.",
                "Images of faces only.",
                "Line art images only.",
                "Stock images only.",
                "Photo images only.",
                "Animated images only.",
              },
              location = "query",
              type = "string",
            },
            linkSite = {
              description = "Specifies that all search results should contain a link to a particular URL.",
              location = "query",
              type = "string",
            },
            lowRange = {
              description = "Specifies the starting value for a search range. Use `lowRange` and `highRange` to append an inclusive search range of `lowRange...highRange` to the query.",
              location = "query",
              type = "string",
            },
            lr = {
              description = "Restricts the search to documents written in a particular language (e.g., `lr=lang_ja`). Acceptable values are: * `\"lang_ar\"`: Arabic * `\"lang_bg\"`: Bulgarian * `\"lang_ca\"`: Catalan * `\"lang_cs\"`: Czech * `\"lang_da\"`: Danish * `\"lang_de\"`: German * `\"lang_el\"`: Greek * `\"lang_en\"`: English * `\"lang_es\"`: Spanish * `\"lang_et\"`: Estonian * `\"lang_fi\"`: Finnish * `\"lang_fr\"`: French * `\"lang_hr\"`: Croatian * `\"lang_hu\"`: Hungarian * `\"lang_id\"`: Indonesian * `\"lang_is\"`: Icelandic * `\"lang_it\"`: Italian * `\"lang_iw\"`: Hebrew * `\"lang_ja\"`: Japanese * `\"lang_ko\"`: Korean * `\"lang_lt\"`: Lithuanian * `\"lang_lv\"`: Latvian * `\"lang_nl\"`: Dutch * `\"lang_no\"`: Norwegian * `\"lang_pl\"`: Polish * `\"lang_pt\"`: Portuguese * `\"lang_ro\"`: Romanian * `\"lang_ru\"`: Russian * `\"lang_sk\"`: Slovak * `\"lang_sl\"`: Slovenian * `\"lang_sr\"`: Serbian * `\"lang_sv\"`: Swedish * `\"lang_tr\"`: Turkish * `\"lang_zh-CN\"`: Chinese (Simplified) * `\"lang_zh-TW\"`: Chinese (Traditional)",
              location = "query",
              type = "string",
            },
            num = {
              description = "Number of search results to return. * Valid values are integers between 1 and 10, inclusive.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            orTerms = {
              description = "Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms.",
              location = "query",
              type = "string",
            },
            q = {
              description = "Query",
              location = "query",
              type = "string",
            },
            relatedSite = {
              description = "Specifies that all search results should be pages that are related to the specified URL.",
              location = "query",
              type = "string",
            },
            rights = {
              description = "Filters based on licensing. Supported values include: `cc_publicdomain`, `cc_attribute`, `cc_sharealike`, `cc_noncommercial`, `cc_nonderived` and combinations of these. See [typical combinations](https://wiki.creativecommons.org/wiki/CC_Search_integration).",
              location = "query",
              type = "string",
            },
            safe = {
              description = "Search safety level. Acceptable values are: * `\"active\"`: Enables SafeSearch filtering. * `\"off\"`: Disables SafeSearch filtering. (default)",
              enum = {
                "safeUndefined",
                "active",
                "high",
                "medium",
                "off",
              },
              enumDescriptions = {
                "SafeSearch mode unspecified. (Falls back to engine's configuration.)",
                "Turn SafeSearch on.",
                "Deprecated, equivalent to \"active\".",
                "Deprecated, equivalent to \"active\".",
                "Turn SafeSearch off.",
              },
              location = "query",
              type = "string",
            },
            searchType = {
              description = "Specifies the search type: `image`. If unspecified, results are limited to webpages. Acceptable values are: * `\"image\"`: custom image search.",
              enum = {
                "searchTypeUndefined",
                "image",
              },
              enumDescriptions = {
                "Search type unspecified (defaults to web search).",
                "Image search.",
              },
              location = "query",
              type = "string",
            },
            siteSearch = {
              description = "Specifies a given site which should always be included or excluded from results (see `siteSearchFilter` parameter, below).",
              location = "query",
              type = "string",
            },
            siteSearchFilter = {
              description = "Controls whether to include or exclude results from the site named in the `siteSearch` parameter. Acceptable values are: * `\"e\"`: exclude * `\"i\"`: include",
              enum = {
                "siteSearchFilterUndefined",
                "e",
                "i",
              },
              enumDescriptions = {
                "Filter mode unspecified.",
                "Exclude results from the listed sites.",
                "Include only results from the listed sites.",
              },
              location = "query",
              type = "string",
            },
            sort = {
              description = "The sort expression to apply to the results. The sort parameter specifies that the results be sorted according to the specified expression i.e. sort by date. [Example: sort=date](https://developers.google.com/custom-search/docs/structured_search#sort-by-attribute).",
              location = "query",
              type = "string",
            },
            start = {
              description = "The index of the first result to return. The default number of results per page is 10, so `&start=11` would start at the top of the second page of results. **Note**: The JSON API will never return more than 100 results, even if more than 100 documents match the query, so setting the sum of `start + num` to a number greater than 100 will produce an error. Also note that the maximum value for `num` is 10.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
          },
          path = "customsearch/v1",
          response = {
            ["$ref"] = "Search",
          },
        },
      },
      resources = {
        siterestrict = {
          methods = {
            list = {
              description = "Returns metadata about the search performed, metadata about the engine used for the search, and the search results. Uses a small set of url patterns.",
              flatPath = "customsearch/v1/siterestrict",
              httpMethod = "GET",
              id = "search.cse.siterestrict.list",
              parameterOrder = {},
              parameters = {
                c2coff = {
                  description = "Enables or disables [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch). The default value for this parameter is 0 (zero), meaning that the feature is enabled. Supported values are: * `1`: Disabled * `0`: Enabled (default)",
                  location = "query",
                  type = "string",
                },
                cr = {
                  description = "Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://developers.google.com/custom-search/docs/json_api_reference#booleanOperators) in the cr parameter's value. Google Search determines the country of a document by analyzing: * the top-level domain (TLD) of the document's URL * the geographic location of the Web server's IP address See the [Country Parameter Values](https://developers.google.com/custom-search/docs/json_api_reference#countryCollections) page for a list of valid values for this parameter.",
                  location = "query",
                  type = "string",
                },
                cx = {
                  description = "The Programmable Search Engine ID to use for this request.",
                  location = "query",
                  type = "string",
                },
                dateRestrict = {
                  description = "Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified number of past days. * `w[number]`: requests results from the specified number of past weeks. * `m[number]`: requests results from the specified number of past months. * `y[number]`: requests results from the specified number of past years.",
                  location = "query",
                  type = "string",
                },
                exactTerms = {
                  description = "Identifies a phrase that all documents in the search results must contain.",
                  location = "query",
                  type = "string",
                },
                excludeTerms = {
                  description = "Identifies a word or phrase that should not appear in any documents in the search results.",
                  location = "query",
                  type = "string",
                },
                fileType = {
                  description = "Restricts results to files of a specified extension. A list of file types indexable by Google can be found in Search Console [Help Center](https://support.google.com/webmasters/answer/35287).",
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Controls turning on or off the duplicate content filter. * See [Automatic Filtering](https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering) for more information about Google's search results filters. Note that host crowding filtering applies only to multi-site searches. * By default, Google applies filtering to all search results to improve the quality of those results. Acceptable values are: * `0`: Turns off duplicate content filter. * `1`: Turns on duplicate content filter.",
                  location = "query",
                  type = "string",
                },
                gl = {
                  description = "Geolocation of end user. * The `gl` parameter value is a two-letter country code. The `gl` parameter boosts search results whose country of origin matches the parameter value. See the [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) page for a list of valid values. * Specifying a `gl` parameter value should lead to more relevant results. This is particularly true for international customers and, even more specifically, for customers in English- speaking countries other than the United States.",
                  location = "query",
                  type = "string",
                },
                googlehost = {
                  description = "**Deprecated**. Use the `gl` parameter for a similar effect. The local Google domain (for example, google.com, google.de, or google.fr) to use to perform the search.",
                  location = "query",
                  type = "string",
                },
                highRange = {
                  description = "Specifies the ending value for a search range. * Use `lowRange` and `highRange` to append an inclusive search range of `lowRange...highRange` to the query.",
                  location = "query",
                  type = "string",
                },
                hl = {
                  description = "Sets the user interface language. * Explicitly setting this parameter improves the performance and the quality of your search results. * See the [Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages) section of [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing) for more information, and [Supported Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages) for a list of supported languages.",
                  location = "query",
                  type = "string",
                },
                hq = {
                  description = "Appends the specified query terms to the query, as if they were combined with a logical AND operator.",
                  location = "query",
                  type = "string",
                },
                imgColorType = {
                  description = "Returns black and white, grayscale, transparent, or color images. Acceptable values are: * `\"color\"` * `\"gray\"` * `\"mono\"`: black and white * `\"trans\"`: transparent background",
                  enum = {
                    "imgColorTypeUndefined",
                    "mono",
                    "gray",
                    "color",
                    "trans",
                  },
                  enumDescriptions = {
                    "No image color type specified.",
                    "Black and white images only.",
                    "Grayscale images only.",
                    "Color images only.",
                    "Images with transparent background",
                  },
                  location = "query",
                  type = "string",
                },
                imgDominantColor = {
                  description = "Returns images of a specific dominant color. Acceptable values are: * `\"black\"` * `\"blue\"` * `\"brown\"` * `\"gray\"` * `\"green\"` * `\"orange\"` * `\"pink\"` * `\"purple\"` * `\"red\"` * `\"teal\"` * `\"white\"` * `\"yellow\"`",
                  enum = {
                    "imgDominantColorUndefined",
                    "black",
                    "blue",
                    "brown",
                    "gray",
                    "green",
                    "orange",
                    "pink",
                    "purple",
                    "red",
                    "teal",
                    "white",
                    "yellow",
                  },
                  enumDescriptions = {
                    "No dominant color specified.",
                    "Predominantly black images only.",
                    "Predominantly blue images only.",
                    "Predominantly brown images only.",
                    "Predominantly gray images only.",
                    "Predominantly green images only.",
                    "Predominantly orange images only.",
                    "Predominantly pink images only.",
                    "Predominantly purple images only.",
                    "Predominantly red images only.",
                    "Predominantly teal images only.",
                    "Predominantly white images only.",
                    "Predominantly yellow images only.",
                  },
                  location = "query",
                  type = "string",
                },
                imgSize = {
                  description = "Returns images of a specified size. Acceptable values are: * `\"huge\"` * `\"icon\"` * `\"large\"` * `\"medium\"` * `\"small\"` * `\"xlarge\"` * `\"xxlarge\"`",
                  enum = {
                    "imgSizeUndefined",
                    "HUGE",
                    "ICON",
                    "LARGE",
                    "MEDIUM",
                    "SMALL",
                    "XLARGE",
                    "XXLARGE",
                  },
                  enumDescriptions = {
                    "No image size specified.",
                    "Only the largest possible images.",
                    "Only very small icon-sized images.",
                    "Only large images.",
                    "Only medium images.",
                    "Only small images.",
                    "Only very large images.",
                    "Only extremely large images.",
                  },
                  location = "query",
                  type = "string",
                },
                imgType = {
                  description = "Returns images of a type. Acceptable values are: * `\"clipart\"` * `\"face\"` * `\"lineart\"` * `\"stock\"` * `\"photo\"` * `\"animated\"`",
                  enum = {
                    "imgTypeUndefined",
                    "clipart",
                    "face",
                    "lineart",
                    "stock",
                    "photo",
                    "animated",
                  },
                  enumDescriptions = {
                    "No image type specified.",
                    "Clipart-style images only.",
                    "Images of faces only.",
                    "Line art images only.",
                    "Stock images only.",
                    "Photo images only.",
                    "Animated images only.",
                  },
                  location = "query",
                  type = "string",
                },
                linkSite = {
                  description = "Specifies that all search results should contain a link to a particular URL.",
                  location = "query",
                  type = "string",
                },
                lowRange = {
                  description = "Specifies the starting value for a search range. Use `lowRange` and `highRange` to append an inclusive search range of `lowRange...highRange` to the query.",
                  location = "query",
                  type = "string",
                },
                lr = {
                  description = "Restricts the search to documents written in a particular language (e.g., `lr=lang_ja`). Acceptable values are: * `\"lang_ar\"`: Arabic * `\"lang_bg\"`: Bulgarian * `\"lang_ca\"`: Catalan * `\"lang_cs\"`: Czech * `\"lang_da\"`: Danish * `\"lang_de\"`: German * `\"lang_el\"`: Greek * `\"lang_en\"`: English * `\"lang_es\"`: Spanish * `\"lang_et\"`: Estonian * `\"lang_fi\"`: Finnish * `\"lang_fr\"`: French * `\"lang_hr\"`: Croatian * `\"lang_hu\"`: Hungarian * `\"lang_id\"`: Indonesian * `\"lang_is\"`: Icelandic * `\"lang_it\"`: Italian * `\"lang_iw\"`: Hebrew * `\"lang_ja\"`: Japanese * `\"lang_ko\"`: Korean * `\"lang_lt\"`: Lithuanian * `\"lang_lv\"`: Latvian * `\"lang_nl\"`: Dutch * `\"lang_no\"`: Norwegian * `\"lang_pl\"`: Polish * `\"lang_pt\"`: Portuguese * `\"lang_ro\"`: Romanian * `\"lang_ru\"`: Russian * `\"lang_sk\"`: Slovak * `\"lang_sl\"`: Slovenian * `\"lang_sr\"`: Serbian * `\"lang_sv\"`: Swedish * `\"lang_tr\"`: Turkish * `\"lang_zh-CN\"`: Chinese (Simplified) * `\"lang_zh-TW\"`: Chinese (Traditional)",
                  location = "query",
                  type = "string",
                },
                num = {
                  description = "Number of search results to return. * Valid values are integers between 1 and 10, inclusive.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                orTerms = {
                  description = "Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms.",
                  location = "query",
                  type = "string",
                },
                q = {
                  description = "Query",
                  location = "query",
                  type = "string",
                },
                relatedSite = {
                  description = "Specifies that all search results should be pages that are related to the specified URL.",
                  location = "query",
                  type = "string",
                },
                rights = {
                  description = "Filters based on licensing. Supported values include: `cc_publicdomain`, `cc_attribute`, `cc_sharealike`, `cc_noncommercial`, `cc_nonderived` and combinations of these. See [typical combinations](https://wiki.creativecommons.org/wiki/CC_Search_integration).",
                  location = "query",
                  type = "string",
                },
                safe = {
                  description = "Search safety level. Acceptable values are: * `\"active\"`: Enables SafeSearch filtering. * `\"off\"`: Disables SafeSearch filtering. (default)",
                  enum = {
                    "safeUndefined",
                    "active",
                    "high",
                    "medium",
                    "off",
                  },
                  enumDescriptions = {
                    "SafeSearch mode unspecified. (Falls back to engine's configuration.)",
                    "Turn SafeSearch on.",
                    "Deprecated, equivalent to \"active\".",
                    "Deprecated, equivalent to \"active\".",
                    "Turn SafeSearch off.",
                  },
                  location = "query",
                  type = "string",
                },
                searchType = {
                  description = "Specifies the search type: `image`. If unspecified, results are limited to webpages. Acceptable values are: * `\"image\"`: custom image search.",
                  enum = {
                    "searchTypeUndefined",
                    "image",
                  },
                  enumDescriptions = {
                    "Search type unspecified (defaults to web search).",
                    "Image search.",
                  },
                  location = "query",
                  type = "string",
                },
                siteSearch = {
                  description = "Specifies a given site which should always be included or excluded from results (see `siteSearchFilter` parameter, below).",
                  location = "query",
                  type = "string",
                },
                siteSearchFilter = {
                  description = "Controls whether to include or exclude results from the site named in the `siteSearch` parameter. Acceptable values are: * `\"e\"`: exclude * `\"i\"`: include",
                  enum = {
                    "siteSearchFilterUndefined",
                    "e",
                    "i",
                  },
                  enumDescriptions = {
                    "Filter mode unspecified.",
                    "Exclude results from the listed sites.",
                    "Include only results from the listed sites.",
                  },
                  location = "query",
                  type = "string",
                },
                sort = {
                  description = "The sort expression to apply to the results. The sort parameter specifies that the results be sorted according to the specified expression i.e. sort by date. [Example: sort=date](https://developers.google.com/custom-search/docs/structured_search#sort-by-attribute).",
                  location = "query",
                  type = "string",
                },
                start = {
                  description = "The index of the first result to return. The default number of results per page is 10, so `&start=11` would start at the top of the second page of results. **Note**: The JSON API will never return more than 100 results, even if more than 100 documents match the query, so setting the sum of `start + num` to a number greater than 100 will produce an error. Also note that the maximum value for `num` is 10.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
              },
              path = "customsearch/v1/siterestrict",
              response = {
                ["$ref"] = "Search",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://customsearch.googleapis.com/",
  schemas = {
    Promotion = {
      description = "Promotion result.",
      id = "Promotion",
      properties = {
        bodyLines = {
          description = "An array of block objects for this promotion.",
          items = {
            description = "Block object belonging to a promotion.",
            properties = {
              htmlTitle = {
                description = "The block object's text in HTML, if it has text.",
                type = "string",
              },
              link = {
                description = "The anchor text of the block object's link, if it has a link.",
                type = "string",
              },
              title = {
                description = "The block object's text, if it has text.",
                type = "string",
              },
              url = {
                description = "The URL of the block object's link, if it has one.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        displayLink = {
          description = "An abridged version of this search's result URL, e.g. www.example.com.",
          type = "string",
        },
        htmlTitle = {
          description = "The title of the promotion, in HTML.",
          type = "string",
        },
        image = {
          description = "Image belonging to a promotion.",
          properties = {
            height = {
              description = "Image height in pixels.",
              format = "int32",
              type = "integer",
            },
            source = {
              description = "URL of the image for this promotion link.",
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
        link = {
          description = "The URL of the promotion.",
          type = "string",
        },
        title = {
          description = "The title of the promotion.",
          type = "string",
        },
      },
      type = "object",
    },
    Result = {
      description = "A custom search result.",
      id = "Result",
      properties = {
        cacheId = {
          description = "Indicates the ID of Google's cached version of the search result.",
          type = "string",
        },
        displayLink = {
          description = "An abridged version of this search result’s URL, e.g. www.example.com.",
          type = "string",
        },
        fileFormat = {
          description = "The file format of the search result.",
          type = "string",
        },
        formattedUrl = {
          description = "The URL displayed after the snippet for each search result.",
          type = "string",
        },
        htmlFormattedUrl = {
          description = "The HTML-formatted URL displayed after the snippet for each search result.",
          type = "string",
        },
        htmlSnippet = {
          description = "The snippet of the search result, in HTML.",
          type = "string",
        },
        htmlTitle = {
          description = "The title of the search result, in HTML.",
          type = "string",
        },
        image = {
          description = "Image belonging to a custom search result.",
          properties = {
            byteSize = {
              description = "The size of the image, in pixels.",
              format = "int32",
              type = "integer",
            },
            contextLink = {
              description = "A URL pointing to the webpage hosting the image.",
              type = "string",
            },
            height = {
              description = "The height of the image, in pixels.",
              format = "int32",
              type = "integer",
            },
            thumbnailHeight = {
              description = "The height of the thumbnail image, in pixels.",
              format = "int32",
              type = "integer",
            },
            thumbnailLink = {
              description = "A URL to the thumbnail image.",
              type = "string",
            },
            thumbnailWidth = {
              description = "The width of the thumbnail image, in pixels.",
              format = "int32",
              type = "integer",
            },
            width = {
              description = "The width of the image, in pixels.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        kind = {
          description = "A unique identifier for the type of current object. For this API, it is `customsearch#result.`",
          type = "string",
        },
        labels = {
          description = "Encapsulates all information about refinement labels.",
          items = {
            description = "Refinement label associated with a custom search result.",
            properties = {
              displayName = {
                description = "The display name of a refinement label. This is the name you should display in your user interface.",
                type = "string",
              },
              label_with_op = {
                description = "Refinement label and the associated refinement operation.",
                type = "string",
              },
              name = {
                description = "The name of a refinement label, which you can use to refine searches. Don't display this in your user interface; instead, use displayName.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        link = {
          description = "The full URL to which the search result is pointing, e.g. http://www.example.com/foo/bar.",
          type = "string",
        },
        mime = {
          description = "The MIME type of the search result.",
          type = "string",
        },
        pagemap = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Contains [PageMap](https://developers.google.com/custom-search/docs/structured_data#pagemaps) information for this search result.",
          type = "object",
        },
        snippet = {
          description = "The snippet of the search result, in plain text.",
          type = "string",
        },
        title = {
          description = "The title of the search result, in plain text.",
          type = "string",
        },
      },
      type = "object",
    },
    Search = {
      description = "Response to a custom search request.",
      id = "Search",
      properties = {
        context = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Metadata and refinements associated with the given search engine, including: * The name of the search engine that was used for the query. * A set of [facet objects](https://developers.google.com/custom-search/docs/refinements#create) (refinements) you can use for refining a search.",
          type = "object",
        },
        items = {
          description = "The current set of custom search results.",
          items = {
            ["$ref"] = "Result",
          },
          type = "array",
        },
        kind = {
          description = "Unique identifier for the type of current object. For this API, it is customsearch#search.",
          type = "string",
        },
        promotions = {
          description = "The set of [promotions](https://developers.google.com/custom-search/docs/promotions). Present only if the custom search engine's configuration files define any promotions for the given query.",
          items = {
            ["$ref"] = "Promotion",
          },
          type = "array",
        },
        queries = {
          description = "Query metadata for the previous, current, and next pages of results.",
          properties = {
            nextPage = {
              description = "Metadata representing the next page of results, if applicable.",
              items = {
                description = "Custom search request metadata.",
                properties = {
                  count = {
                    description = "Number of search results returned in this set.",
                    format = "int32",
                    type = "integer",
                  },
                  cr = {
                    description = "Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) in the `cr` parameter's value. Google WebSearch determines the country of a document by analyzing the following: * The top-level domain (TLD) of the document's URL. * The geographic location of the web server's IP address. See [Country (cr) Parameter Values](https://developers.google.com/custom-search/docs/json_api_reference#countryCollections) for a list of valid values for this parameter.",
                    type = "string",
                  },
                  cx = {
                    description = "The identifier of an engine created using the Programmable Search Engine [Control Panel](https://programmablesearchengine.google.com/). This is a custom property not defined in the OpenSearch spec. This parameter is **required**.",
                    type = "string",
                  },
                  dateRestrict = {
                    description = "Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified number of past days. * `w[number]`: requests results from the specified number of past weeks. * `m[number]`: requests results from the specified number of past months. * `y[number]`: requests results from the specified number of past years.",
                    type = "string",
                  },
                  disableCnTwTranslation = {
                    description = "Enables or disables the [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch) feature. Supported values are: * `0`: enabled (default) * `1`: disabled",
                    type = "string",
                  },
                  exactTerms = {
                    description = "Identifies a phrase that all documents in the search results must contain.",
                    type = "string",
                  },
                  excludeTerms = {
                    description = "Identifies a word or phrase that should not appear in any documents in the search results.",
                    type = "string",
                  },
                  fileType = {
                    description = "Restricts results to files of a specified extension. Filetypes supported by Google include: * Adobe Portable Document Format (`pdf`) * Adobe PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`, `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel (`xls`) * Microsoft PowerPoint (`ppt`) * Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`swf`) * Text (`ans`, `txt`). Additional filetypes may be added in the future. An up-to-date list can always be found in Google's [file type FAQ](https://support.google.com/webmasters/answer/35287).",
                    type = "string",
                  },
                  filter = {
                    description = "Activates or deactivates the automatic filtering of Google search results. See [Automatic Filtering](https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering) for more information about Google's search results filters. Valid values for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**: By default, Google applies filtering to all search results to improve the quality of those results.",
                    type = "string",
                  },
                  gl = {
                    description = "Boosts search results whose country of origin matches the parameter value. See [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) for a list of valid values. Specifying a `gl` parameter value in WebSearch requests should improve the relevance of results. This is particularly true for international customers and, even more specifically, for customers in English-speaking countries other than the United States.",
                    type = "string",
                  },
                  googleHost = {
                    description = "Specifies the Google domain (for example, google.com, google.de, or google.fr) to which the search should be limited.",
                    type = "string",
                  },
                  highRange = {
                    description = "Specifies the ending value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.",
                    type = "string",
                  },
                  hl = {
                    description = "Specifies the interface language (host language) of your user interface. Explicitly setting this parameter improves the performance and the quality of your search results. See the [Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages) section of [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing) for more information, and [Supported Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages) for a list of supported languages.",
                    type = "string",
                  },
                  hq = {
                    description = "Appends the specified query terms to the query, as if they were combined with a logical `AND` operator.",
                    type = "string",
                  },
                  imgColorType = {
                    description = "Restricts results to images of a specified color type. Supported values are: * `mono` (black and white) * `gray` (grayscale) * `color` (color)",
                    type = "string",
                  },
                  imgDominantColor = {
                    description = "Restricts results to images with a specific dominant color. Supported values are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` * `purple` * `pink` * `white` * `gray` * `black` * `brown`",
                    type = "string",
                  },
                  imgSize = {
                    description = "Restricts results to images of a specified size. Supported values are: * `icon` (small) * `small | medium | large | xlarge` (medium) * `xxlarge` (large) * `huge` (extra-large)",
                    type = "string",
                  },
                  imgType = {
                    description = "Restricts results to images of a specified type. Supported values are: * `clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo` (Photo) * `animated` (Animated) * `stock` (Stock)",
                    type = "string",
                  },
                  inputEncoding = {
                    description = "The character encoding supported for search requests.",
                    type = "string",
                  },
                  language = {
                    description = "The language of the search results.",
                    type = "string",
                  },
                  linkSite = {
                    description = "Specifies that all results should contain a link to a specific URL.",
                    type = "string",
                  },
                  lowRange = {
                    description = "Specifies the starting value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.",
                    type = "string",
                  },
                  orTerms = {
                    description = "Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms. You can also use the [Boolean OR](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) query term for this type of query.",
                    type = "string",
                  },
                  outputEncoding = {
                    description = "The character encoding supported for search results.",
                    type = "string",
                  },
                  relatedSite = {
                    description = "Specifies that all search results should be pages that are related to the specified URL. The parameter value should be a URL.",
                    type = "string",
                  },
                  rights = {
                    description = "Filters based on licensing. Supported values include: * `cc_publicdomain` * `cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`",
                    type = "string",
                  },
                  safe = {
                    description = "Specifies the [SafeSearch level](https://developers.google.com/custom-search/docs/json_api_reference#safeSearchLevels) used for filtering out adult results. This is a custom property not defined in the OpenSearch spec. Valid parameter values are: * `\"off\"`: Disable SafeSearch * `\"active\"`: Enable SafeSearch",
                    type = "string",
                  },
                  searchTerms = {
                    description = "The search terms entered by the user.",
                    type = "string",
                  },
                  searchType = {
                    description = "Allowed values are `web` or `image`. If unspecified, results are limited to webpages.",
                    type = "string",
                  },
                  siteSearch = {
                    description = "Restricts results to URLs from a specified site.",
                    type = "string",
                  },
                  siteSearchFilter = {
                    description = "Specifies whether to include or exclude results from the site named in the `sitesearch` parameter. Supported values are: * `i`: include content from site * `e`: exclude content from site",
                    type = "string",
                  },
                  sort = {
                    description = "Specifies that results should be sorted according to the specified expression. For example, sort by date.",
                    type = "string",
                  },
                  startIndex = {
                    description = "The index of the current set of search results into the total set of results, where the index of the first result is 1.",
                    format = "int32",
                    type = "integer",
                  },
                  startPage = {
                    description = "The page number of this set of results, where the page length is set by the `count` property.",
                    format = "int32",
                    type = "integer",
                  },
                  title = {
                    description = "A description of the query.",
                    type = "string",
                  },
                  totalResults = {
                    description = "Estimated number of total search results. May not be accurate.",
                    format = "int64",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
            previousPage = {
              description = "Metadata representing the previous page of results, if applicable.",
              items = {
                description = "Custom search request metadata.",
                properties = {
                  count = {
                    description = "Number of search results returned in this set.",
                    format = "int32",
                    type = "integer",
                  },
                  cr = {
                    description = "Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) in the `cr` parameter's value. Google WebSearch determines the country of a document by analyzing the following: * The top-level domain (TLD) of the document's URL. * The geographic location of the web server's IP address. See [Country (cr) Parameter Values](https://developers.google.com/custom-search/docs/json_api_reference#countryCollections) for a list of valid values for this parameter.",
                    type = "string",
                  },
                  cx = {
                    description = "The identifier of an engine created using the Programmable Search Engine [Control Panel](https://programmablesearchengine.google.com/). This is a custom property not defined in the OpenSearch spec. This parameter is **required**.",
                    type = "string",
                  },
                  dateRestrict = {
                    description = "Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified number of past days. * `w[number]`: requests results from the specified number of past weeks. * `m[number]`: requests results from the specified number of past months. * `y[number]`: requests results from the specified number of past years.",
                    type = "string",
                  },
                  disableCnTwTranslation = {
                    description = "Enables or disables the [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch) feature. Supported values are: * `0`: enabled (default) * `1`: disabled",
                    type = "string",
                  },
                  exactTerms = {
                    description = "Identifies a phrase that all documents in the search results must contain.",
                    type = "string",
                  },
                  excludeTerms = {
                    description = "Identifies a word or phrase that should not appear in any documents in the search results.",
                    type = "string",
                  },
                  fileType = {
                    description = "Restricts results to files of a specified extension. Filetypes supported by Google include: * Adobe Portable Document Format (`pdf`) * Adobe PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`, `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel (`xls`) * Microsoft PowerPoint (`ppt`) * Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`swf`) * Text (`ans`, `txt`). Additional filetypes may be added in the future. An up-to-date list can always be found in Google's [file type FAQ](https://support.google.com/webmasters/answer/35287).",
                    type = "string",
                  },
                  filter = {
                    description = "Activates or deactivates the automatic filtering of Google search results. See [Automatic Filtering](https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering) for more information about Google's search results filters. Valid values for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**: By default, Google applies filtering to all search results to improve the quality of those results.",
                    type = "string",
                  },
                  gl = {
                    description = "Boosts search results whose country of origin matches the parameter value. See [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) for a list of valid values. Specifying a `gl` parameter value in WebSearch requests should improve the relevance of results. This is particularly true for international customers and, even more specifically, for customers in English-speaking countries other than the United States.",
                    type = "string",
                  },
                  googleHost = {
                    description = "Specifies the Google domain (for example, google.com, google.de, or google.fr) to which the search should be limited.",
                    type = "string",
                  },
                  highRange = {
                    description = "Specifies the ending value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.",
                    type = "string",
                  },
                  hl = {
                    description = "Specifies the interface language (host language) of your user interface. Explicitly setting this parameter improves the performance and the quality of your search results. See the [Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages) section of [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing) for more information, and [Supported Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages) for a list of supported languages.",
                    type = "string",
                  },
                  hq = {
                    description = "Appends the specified query terms to the query, as if they were combined with a logical `AND` operator.",
                    type = "string",
                  },
                  imgColorType = {
                    description = "Restricts results to images of a specified color type. Supported values are: * `mono` (black and white) * `gray` (grayscale) * `color` (color)",
                    type = "string",
                  },
                  imgDominantColor = {
                    description = "Restricts results to images with a specific dominant color. Supported values are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` * `purple` * `pink` * `white` * `gray` * `black` * `brown`",
                    type = "string",
                  },
                  imgSize = {
                    description = "Restricts results to images of a specified size. Supported values are: * `icon` (small) * `small | medium | large | xlarge` (medium) * `xxlarge` (large) * `huge` (extra-large)",
                    type = "string",
                  },
                  imgType = {
                    description = "Restricts results to images of a specified type. Supported values are: * `clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo` (Photo) * `animated` (Animated) * `stock` (Stock)",
                    type = "string",
                  },
                  inputEncoding = {
                    description = "The character encoding supported for search requests.",
                    type = "string",
                  },
                  language = {
                    description = "The language of the search results.",
                    type = "string",
                  },
                  linkSite = {
                    description = "Specifies that all results should contain a link to a specific URL.",
                    type = "string",
                  },
                  lowRange = {
                    description = "Specifies the starting value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.",
                    type = "string",
                  },
                  orTerms = {
                    description = "Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms. You can also use the [Boolean OR](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) query term for this type of query.",
                    type = "string",
                  },
                  outputEncoding = {
                    description = "The character encoding supported for search results.",
                    type = "string",
                  },
                  relatedSite = {
                    description = "Specifies that all search results should be pages that are related to the specified URL. The parameter value should be a URL.",
                    type = "string",
                  },
                  rights = {
                    description = "Filters based on licensing. Supported values include: * `cc_publicdomain` * `cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`",
                    type = "string",
                  },
                  safe = {
                    description = "Specifies the [SafeSearch level](https://developers.google.com/custom-search/docs/json_api_reference#safeSearchLevels) used for filtering out adult results. This is a custom property not defined in the OpenSearch spec. Valid parameter values are: * `\"off\"`: Disable SafeSearch * `\"active\"`: Enable SafeSearch",
                    type = "string",
                  },
                  searchTerms = {
                    description = "The search terms entered by the user.",
                    type = "string",
                  },
                  searchType = {
                    description = "Allowed values are `web` or `image`. If unspecified, results are limited to webpages.",
                    type = "string",
                  },
                  siteSearch = {
                    description = "Restricts results to URLs from a specified site.",
                    type = "string",
                  },
                  siteSearchFilter = {
                    description = "Specifies whether to include or exclude results from the site named in the `sitesearch` parameter. Supported values are: * `i`: include content from site * `e`: exclude content from site",
                    type = "string",
                  },
                  sort = {
                    description = "Specifies that results should be sorted according to the specified expression. For example, sort by date.",
                    type = "string",
                  },
                  startIndex = {
                    description = "The index of the current set of search results into the total set of results, where the index of the first result is 1.",
                    format = "int32",
                    type = "integer",
                  },
                  startPage = {
                    description = "The page number of this set of results, where the page length is set by the `count` property.",
                    format = "int32",
                    type = "integer",
                  },
                  title = {
                    description = "A description of the query.",
                    type = "string",
                  },
                  totalResults = {
                    description = "Estimated number of total search results. May not be accurate.",
                    format = "int64",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
            request = {
              description = "Metadata representing the current request.",
              items = {
                description = "Custom search request metadata.",
                properties = {
                  count = {
                    description = "Number of search results returned in this set.",
                    format = "int32",
                    type = "integer",
                  },
                  cr = {
                    description = "Restricts search results to documents originating in a particular country. You may use [Boolean operators](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) in the `cr` parameter's value. Google WebSearch determines the country of a document by analyzing the following: * The top-level domain (TLD) of the document's URL. * The geographic location of the web server's IP address. See [Country (cr) Parameter Values](https://developers.google.com/custom-search/docs/json_api_reference#countryCollections) for a list of valid values for this parameter.",
                    type = "string",
                  },
                  cx = {
                    description = "The identifier of an engine created using the Programmable Search Engine [Control Panel](https://programmablesearchengine.google.com/). This is a custom property not defined in the OpenSearch spec. This parameter is **required**.",
                    type = "string",
                  },
                  dateRestrict = {
                    description = "Restricts results to URLs based on date. Supported values include: * `d[number]`: requests results from the specified number of past days. * `w[number]`: requests results from the specified number of past weeks. * `m[number]`: requests results from the specified number of past months. * `y[number]`: requests results from the specified number of past years.",
                    type = "string",
                  },
                  disableCnTwTranslation = {
                    description = "Enables or disables the [Simplified and Traditional Chinese Search](https://developers.google.com/custom-search/docs/json_api_reference#chineseSearch) feature. Supported values are: * `0`: enabled (default) * `1`: disabled",
                    type = "string",
                  },
                  exactTerms = {
                    description = "Identifies a phrase that all documents in the search results must contain.",
                    type = "string",
                  },
                  excludeTerms = {
                    description = "Identifies a word or phrase that should not appear in any documents in the search results.",
                    type = "string",
                  },
                  fileType = {
                    description = "Restricts results to files of a specified extension. Filetypes supported by Google include: * Adobe Portable Document Format (`pdf`) * Adobe PostScript (`ps`) * Lotus 1-2-3 (`wk1`, `wk2`, `wk3`, `wk4`, `wk5`, `wki`, `wks`, `wku`) * Lotus WordPro (`lwp`) * Macwrite (`mw`) * Microsoft Excel (`xls`) * Microsoft PowerPoint (`ppt`) * Microsoft Word (`doc`) * Microsoft Works (`wks`, `wps`, `wdb`) * Microsoft Write (`wri`) * Rich Text Format (`rtf`) * Shockwave Flash (`swf`) * Text (`ans`, `txt`). Additional filetypes may be added in the future. An up-to-date list can always be found in Google's [file type FAQ](https://support.google.com/webmasters/answer/35287).",
                    type = "string",
                  },
                  filter = {
                    description = "Activates or deactivates the automatic filtering of Google search results. See [Automatic Filtering](https://developers.google.com/custom-search/docs/json_api_reference#automaticFiltering) for more information about Google's search results filters. Valid values for this parameter are: * `0`: Disabled * `1`: Enabled (default) **Note**: By default, Google applies filtering to all search results to improve the quality of those results.",
                    type = "string",
                  },
                  gl = {
                    description = "Boosts search results whose country of origin matches the parameter value. See [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) for a list of valid values. Specifying a `gl` parameter value in WebSearch requests should improve the relevance of results. This is particularly true for international customers and, even more specifically, for customers in English-speaking countries other than the United States.",
                    type = "string",
                  },
                  googleHost = {
                    description = "Specifies the Google domain (for example, google.com, google.de, or google.fr) to which the search should be limited.",
                    type = "string",
                  },
                  highRange = {
                    description = "Specifies the ending value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.",
                    type = "string",
                  },
                  hl = {
                    description = "Specifies the interface language (host language) of your user interface. Explicitly setting this parameter improves the performance and the quality of your search results. See the [Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#wsInterfaceLanguages) section of [Internationalizing Queries and Results Presentation](https://developers.google.com/custom-search/docs/json_api_reference#wsInternationalizing) for more information, and [Supported Interface Languages](https://developers.google.com/custom-search/docs/json_api_reference#interfaceLanguages) for a list of supported languages.",
                    type = "string",
                  },
                  hq = {
                    description = "Appends the specified query terms to the query, as if they were combined with a logical `AND` operator.",
                    type = "string",
                  },
                  imgColorType = {
                    description = "Restricts results to images of a specified color type. Supported values are: * `mono` (black and white) * `gray` (grayscale) * `color` (color)",
                    type = "string",
                  },
                  imgDominantColor = {
                    description = "Restricts results to images with a specific dominant color. Supported values are: * `red` * `orange` * `yellow` * `green` * `teal` * `blue` * `purple` * `pink` * `white` * `gray` * `black` * `brown`",
                    type = "string",
                  },
                  imgSize = {
                    description = "Restricts results to images of a specified size. Supported values are: * `icon` (small) * `small | medium | large | xlarge` (medium) * `xxlarge` (large) * `huge` (extra-large)",
                    type = "string",
                  },
                  imgType = {
                    description = "Restricts results to images of a specified type. Supported values are: * `clipart` (Clip art) * `face` (Face) * `lineart` (Line drawing) * `photo` (Photo) * `animated` (Animated) * `stock` (Stock)",
                    type = "string",
                  },
                  inputEncoding = {
                    description = "The character encoding supported for search requests.",
                    type = "string",
                  },
                  language = {
                    description = "The language of the search results.",
                    type = "string",
                  },
                  linkSite = {
                    description = "Specifies that all results should contain a link to a specific URL.",
                    type = "string",
                  },
                  lowRange = {
                    description = "Specifies the starting value for a search range. Use `cse:lowRange` and `cse:highrange` to append an inclusive search range of `lowRange...highRange` to the query.",
                    type = "string",
                  },
                  orTerms = {
                    description = "Provides additional search terms to check for in a document, where each document in the search results must contain at least one of the additional search terms. You can also use the [Boolean OR](https://developers.google.com/custom-search/docs/json_api_reference#BooleanOrSearch) query term for this type of query.",
                    type = "string",
                  },
                  outputEncoding = {
                    description = "The character encoding supported for search results.",
                    type = "string",
                  },
                  relatedSite = {
                    description = "Specifies that all search results should be pages that are related to the specified URL. The parameter value should be a URL.",
                    type = "string",
                  },
                  rights = {
                    description = "Filters based on licensing. Supported values include: * `cc_publicdomain` * `cc_attribute` * `cc_sharealike` * `cc_noncommercial` * `cc_nonderived`",
                    type = "string",
                  },
                  safe = {
                    description = "Specifies the [SafeSearch level](https://developers.google.com/custom-search/docs/json_api_reference#safeSearchLevels) used for filtering out adult results. This is a custom property not defined in the OpenSearch spec. Valid parameter values are: * `\"off\"`: Disable SafeSearch * `\"active\"`: Enable SafeSearch",
                    type = "string",
                  },
                  searchTerms = {
                    description = "The search terms entered by the user.",
                    type = "string",
                  },
                  searchType = {
                    description = "Allowed values are `web` or `image`. If unspecified, results are limited to webpages.",
                    type = "string",
                  },
                  siteSearch = {
                    description = "Restricts results to URLs from a specified site.",
                    type = "string",
                  },
                  siteSearchFilter = {
                    description = "Specifies whether to include or exclude results from the site named in the `sitesearch` parameter. Supported values are: * `i`: include content from site * `e`: exclude content from site",
                    type = "string",
                  },
                  sort = {
                    description = "Specifies that results should be sorted according to the specified expression. For example, sort by date.",
                    type = "string",
                  },
                  startIndex = {
                    description = "The index of the current set of search results into the total set of results, where the index of the first result is 1.",
                    format = "int32",
                    type = "integer",
                  },
                  startPage = {
                    description = "The page number of this set of results, where the page length is set by the `count` property.",
                    format = "int32",
                    type = "integer",
                  },
                  title = {
                    description = "A description of the query.",
                    type = "string",
                  },
                  totalResults = {
                    description = "Estimated number of total search results. May not be accurate.",
                    format = "int64",
                    type = "string",
                  },
                },
                type = "object",
              },
              type = "array",
            },
          },
          type = "object",
        },
        searchInformation = {
          description = "Metadata about a search operation.",
          properties = {
            formattedSearchTime = {
              description = "The time taken for the server to return search results, formatted according to locale style.",
              type = "string",
            },
            formattedTotalResults = {
              description = "The total number of search results, formatted according to locale style.",
              type = "string",
            },
            searchTime = {
              description = "The time taken for the server to return search results.",
              format = "double",
              type = "number",
            },
            totalResults = {
              description = "The total number of search results returned by the query.",
              type = "string",
            },
          },
          type = "object",
        },
        spelling = {
          description = "Spell correction information for a query.",
          properties = {
            correctedQuery = {
              description = "The corrected query.",
              type = "string",
            },
            htmlCorrectedQuery = {
              description = "The corrected query, formatted in HTML.",
              type = "string",
            },
          },
          type = "object",
        },
        url = {
          description = "OpenSearch template and URL.",
          properties = {
            template = {
              description = "The actual [OpenSearch template](http://www.opensearch.org/specifications/opensearch/1.1#opensearch_url_template_syntax) for this API.",
              type = "string",
            },
            type = {
              description = "The MIME type of the OpenSearch URL template for the Custom Search JSON API.",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Custom Search API",
  version = "v1",
  version_module = true,
}