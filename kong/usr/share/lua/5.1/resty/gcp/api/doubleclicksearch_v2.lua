return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/doubleclicksearch"] = {
          description = "View and manage your advertising data in DoubleClick Search",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://doubleclicksearch.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Doubleclicksearch",
  description = "The Search Ads 360 API allows developers to automate uploading conversions and downloading reports from Search Ads 360.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/search-ads",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "doubleclicksearch:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://doubleclicksearch.mtls.googleapis.com/",
  name = "doubleclicksearch",
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
    conversion = {
      methods = {
        get = {
          description = "Retrieves a list of conversions from a DoubleClick Search engine account.",
          flatPath = "doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/engine/{engineAccountId}/conversion",
          httpMethod = "GET",
          id = "doubleclicksearch.conversion.get",
          parameterOrder = {
            "agencyId",
            "advertiserId",
            "engineAccountId",
            "endDate",
            "rowCount",
            "startDate",
            "startRow",
          },
          parameters = {
            adGroupId = {
              description = "Numeric ID of the ad group.",
              format = "int64",
              location = "query",
              type = "string",
            },
            adId = {
              description = "Numeric ID of the ad.",
              format = "int64",
              location = "query",
              type = "string",
            },
            advertiserId = {
              description = "Numeric ID of the advertiser.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            agencyId = {
              description = "Numeric ID of the agency.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            campaignId = {
              description = "Numeric ID of the campaign.",
              format = "int64",
              location = "query",
              type = "string",
            },
            criterionId = {
              description = "Numeric ID of the criterion.",
              format = "int64",
              location = "query",
              type = "string",
            },
            customerId = {
              description = "Customer ID of a client account in the new Search Ads 360 experience.",
              location = "query",
              type = "string",
            },
            endDate = {
              description = "Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd.",
              format = "int32",
              location = "query",
              maximum = "99991231",
              minimum = "20091101",
              required = true,
              type = "integer",
            },
            engineAccountId = {
              description = "Numeric ID of the engine account.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            rowCount = {
              description = "The number of conversions to return per call.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              required = true,
              type = "integer",
            },
            startDate = {
              description = "First date (inclusive) on which to retrieve conversions. Format is yyyymmdd.",
              format = "int32",
              location = "query",
              maximum = "99991231",
              minimum = "20091101",
              required = true,
              type = "integer",
            },
            startRow = {
              description = "The 0-based starting index for retrieving conversions results.",
              format = "uint32",
              location = "query",
              required = true,
              type = "integer",
            },
          },
          path = "doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/engine/{engineAccountId}/conversion",
          response = {
            ["$ref"] = "ConversionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
        getByCustomerId = {
          description = "Retrieves a list of conversions from a DoubleClick Search engine account.",
          flatPath = "doubleclicksearch/v2/customer/{customerId}/conversion",
          httpMethod = "GET",
          id = "doubleclicksearch.conversion.getByCustomerId",
          parameterOrder = {
            "customerId",
            "endDate",
            "rowCount",
            "startDate",
            "startRow",
          },
          parameters = {
            adGroupId = {
              description = "Numeric ID of the ad group.",
              format = "int64",
              location = "query",
              type = "string",
            },
            adId = {
              description = "Numeric ID of the ad.",
              format = "int64",
              location = "query",
              type = "string",
            },
            advertiserId = {
              description = "Numeric ID of the advertiser.",
              format = "int64",
              location = "query",
              type = "string",
            },
            agencyId = {
              description = "Numeric ID of the agency.",
              format = "int64",
              location = "query",
              type = "string",
            },
            campaignId = {
              description = "Numeric ID of the campaign.",
              format = "int64",
              location = "query",
              type = "string",
            },
            criterionId = {
              description = "Numeric ID of the criterion.",
              format = "int64",
              location = "query",
              type = "string",
            },
            customerId = {
              description = "Customer ID of a client account in the new Search Ads 360 experience.",
              location = "path",
              required = true,
              type = "string",
            },
            endDate = {
              description = "Last date (inclusive) on which to retrieve conversions. Format is yyyymmdd.",
              format = "int32",
              location = "query",
              maximum = "99991231",
              minimum = "20091101",
              required = true,
              type = "integer",
            },
            engineAccountId = {
              description = "Numeric ID of the engine account.",
              format = "int64",
              location = "query",
              type = "string",
            },
            rowCount = {
              description = "The number of conversions to return per call.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              required = true,
              type = "integer",
            },
            startDate = {
              description = "First date (inclusive) on which to retrieve conversions. Format is yyyymmdd.",
              format = "int32",
              location = "query",
              maximum = "99991231",
              minimum = "20091101",
              required = true,
              type = "integer",
            },
            startRow = {
              description = "The 0-based starting index for retrieving conversions results.",
              format = "uint32",
              location = "query",
              required = true,
              type = "integer",
            },
          },
          path = "doubleclicksearch/v2/customer/{customerId}/conversion",
          response = {
            ["$ref"] = "ConversionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
        insert = {
          description = "Inserts a batch of new conversions into DoubleClick Search.",
          flatPath = "doubleclicksearch/v2/conversion",
          httpMethod = "POST",
          id = "doubleclicksearch.conversion.insert",
          parameterOrder = {},
          parameters = {},
          path = "doubleclicksearch/v2/conversion",
          request = {
            ["$ref"] = "ConversionList",
          },
          response = {
            ["$ref"] = "ConversionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
        update = {
          description = "Updates a batch of conversions in DoubleClick Search.",
          flatPath = "doubleclicksearch/v2/conversion",
          httpMethod = "PUT",
          id = "doubleclicksearch.conversion.update",
          parameterOrder = {},
          parameters = {},
          path = "doubleclicksearch/v2/conversion",
          request = {
            ["$ref"] = "ConversionList",
          },
          response = {
            ["$ref"] = "ConversionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
        updateAvailability = {
          description = "Updates the availabilities of a batch of floodlight activities in DoubleClick Search.",
          flatPath = "doubleclicksearch/v2/conversion/updateAvailability",
          httpMethod = "POST",
          id = "doubleclicksearch.conversion.updateAvailability",
          parameterOrder = {},
          parameters = {},
          path = "doubleclicksearch/v2/conversion/updateAvailability",
          request = {
            ["$ref"] = "UpdateAvailabilityRequest",
          },
          response = {
            ["$ref"] = "UpdateAvailabilityResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
      },
    },
    reports = {
      methods = {
        generate = {
          description = "Generates and returns a report immediately.",
          flatPath = "doubleclicksearch/v2/reports/generate",
          httpMethod = "POST",
          id = "doubleclicksearch.reports.generate",
          parameterOrder = {},
          parameters = {},
          path = "doubleclicksearch/v2/reports/generate",
          request = {
            ["$ref"] = "ReportRequest",
          },
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
        get = {
          description = "Polls for the status of a report request.",
          flatPath = "doubleclicksearch/v2/reports/{reportId}",
          httpMethod = "GET",
          id = "doubleclicksearch.reports.get",
          parameterOrder = {
            "reportId",
          },
          parameters = {
            reportId = {
              description = "ID of the report request being polled.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "doubleclicksearch/v2/reports/{reportId}",
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
        getFile = {
          description = "Downloads a report file encoded in UTF-8.",
          flatPath = "doubleclicksearch/v2/reports/{reportId}/files/{reportFragment}",
          httpMethod = "GET",
          id = "doubleclicksearch.reports.getFile",
          parameterOrder = {
            "reportId",
            "reportFragment",
          },
          parameters = {
            reportFragment = {
              description = "The index of the report fragment to download.",
              format = "int32",
              location = "path",
              minimum = "0",
              required = true,
              type = "integer",
            },
            reportId = {
              description = "ID of the report.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "doubleclicksearch/v2/reports/{reportId}/files/{reportFragment}",
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
        getIdMappingFile = {
          description = "Downloads a csv file(encoded in UTF-8) that contains ID mappings between legacy SA360 and new SA360. The file includes all children entities of the given advertiser(e.g. engine accounts, campaigns, ad groups, etc.) that exist in both legacy SA360 and new SA360.",
          flatPath = "doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/idmapping",
          httpMethod = "GET",
          id = "doubleclicksearch.reports.getIdMappingFile",
          parameterOrder = {
            "agencyId",
            "advertiserId",
          },
          parameters = {
            advertiserId = {
              description = "Legacy SA360 advertiser ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            agencyId = {
              description = "Legacy SA360 agency ID.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/idmapping",
          response = {
            ["$ref"] = "IdMappingFile",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
        request = {
          description = "Inserts a report request into the reporting system.",
          flatPath = "doubleclicksearch/v2/reports",
          httpMethod = "POST",
          id = "doubleclicksearch.reports.request",
          parameterOrder = {},
          parameters = {},
          path = "doubleclicksearch/v2/reports",
          request = {
            ["$ref"] = "ReportRequest",
          },
          response = {
            ["$ref"] = "Report",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
      },
    },
    savedColumns = {
      methods = {
        list = {
          description = "Retrieve the list of saved columns for a specified advertiser.",
          flatPath = "doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/savedcolumns",
          httpMethod = "GET",
          id = "doubleclicksearch.savedColumns.list",
          parameterOrder = {
            "agencyId",
            "advertiserId",
          },
          parameters = {
            advertiserId = {
              description = "DS ID of the advertiser.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
            agencyId = {
              description = "DS ID of the agency.",
              format = "int64",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "doubleclicksearch/v2/agency/{agencyId}/advertiser/{advertiserId}/savedcolumns",
          response = {
            ["$ref"] = "SavedColumnList",
          },
          scopes = {
            "https://www.googleapis.com/auth/doubleclicksearch",
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://doubleclicksearch.googleapis.com/",
  schemas = {
    Availability = {
      description = "A message containing availability data relevant to DoubleClick Search.",
      id = "Availability",
      properties = {
        advertiserId = {
          annotations = {
            required = {
              "doubleclicksearch.conversion.updateAvailability",
            },
          },
          description = "DS advertiser ID.",
          format = "int64",
          type = "string",
        },
        agencyId = {
          annotations = {
            required = {
              "doubleclicksearch.conversion.updateAvailability",
            },
          },
          description = "DS agency ID.",
          format = "int64",
          type = "string",
        },
        availabilityTimestamp = {
          annotations = {
            required = {
              "doubleclicksearch.conversion.updateAvailability",
            },
          },
          description = "The time by which all conversions have been uploaded, in epoch millis UTC.",
          format = "int64",
          type = "string",
        },
        customerId = {
          description = "Customer ID of a client account in the new Search Ads 360 experience.",
          type = "string",
        },
        segmentationId = {
          description = "The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID).",
          format = "int64",
          type = "string",
        },
        segmentationName = {
          description = "The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name).",
          type = "string",
        },
        segmentationType = {
          annotations = {
            required = {
              "doubleclicksearch.conversion.updateAvailability",
            },
          },
          description = "The segmentation type that this availability is for (its default value is `FLOODLIGHT`).",
          type = "string",
        },
      },
      type = "object",
    },
    Conversion = {
      description = "A conversion containing data relevant to DoubleClick Search.",
      id = "Conversion",
      properties = {
        adGroupId = {
          description = "DS ad group ID.",
          format = "int64",
          type = "string",
        },
        adId = {
          description = "DS ad ID.",
          format = "int64",
          type = "string",
        },
        advertiserId = {
          description = "DS advertiser ID.",
          format = "int64",
          type = "string",
        },
        agencyId = {
          description = "DS agency ID.",
          format = "int64",
          type = "string",
        },
        attributionModel = {
          description = "Available to advertisers only after contacting DoubleClick Search customer support.",
          type = "string",
        },
        campaignId = {
          description = "DS campaign ID.",
          format = "int64",
          type = "string",
        },
        channel = {
          description = "Sales channel for the product. Acceptable values are: - \"`local`\": a physical store - \"`online`\": an online store ",
          type = "string",
        },
        clickId = {
          description = "DS click ID for the conversion.",
          type = "string",
        },
        conversionId = {
          annotations = {
            required = {
              "doubleclicksearch.conversion.insert",
            },
          },
          description = "For offline conversions, advertisers provide this ID. Advertisers can specify any ID that is meaningful to them. Each conversion in a request must specify a unique ID, and the combination of ID and timestamp must be unique amongst all conversions within the advertiser. For online conversions, DS copies the `dsConversionId` or `floodlightOrderId` into this property depending on the advertiser's Floodlight instructions.",
          type = "string",
        },
        conversionModifiedTimestamp = {
          description = "The time at which the conversion was last modified, in epoch millis UTC.",
          format = "int64",
          type = "string",
        },
        conversionTimestamp = {
          annotations = {
            required = {
              "doubleclicksearch.conversion.insert",
            },
          },
          description = "The time at which the conversion took place, in epoch millis UTC.",
          type = "string",
        },
        countMillis = {
          description = "Available to advertisers only after contacting DoubleClick Search customer support.",
          format = "int64",
          type = "string",
        },
        criterionId = {
          description = "DS criterion (keyword) ID.",
          format = "int64",
          type = "string",
        },
        currencyCode = {
          description = "The currency code for the conversion's revenue. Should be in ISO 4217 alphabetic (3-char) format.",
          type = "string",
        },
        customDimension = {
          description = "Custom dimensions for the conversion, which can be used to filter data in a report.",
          items = {
            ["$ref"] = "CustomDimension",
          },
          type = "array",
        },
        customMetric = {
          description = "Custom metrics for the conversion.",
          items = {
            ["$ref"] = "CustomMetric",
          },
          type = "array",
        },
        customerId = {
          description = "Customer ID of a client account in the new Search Ads 360 experience.",
          type = "string",
        },
        deviceType = {
          description = "The type of device on which the conversion occurred.",
          type = "string",
        },
        dsConversionId = {
          description = "ID that DoubleClick Search generates for each conversion.",
          format = "int64",
          type = "string",
        },
        engineAccountId = {
          description = "DS engine account ID.",
          format = "int64",
          type = "string",
        },
        floodlightOrderId = {
          description = "The Floodlight order ID provided by the advertiser for the conversion.",
          type = "string",
        },
        inventoryAccountId = {
          description = "ID that DS generates and uses to uniquely identify the inventory account that contains the product.",
          format = "int64",
          type = "string",
        },
        productCountry = {
          description = "The country registered for the Merchant Center feed that contains the product. Use an ISO 3166 code to specify a country.",
          type = "string",
        },
        productGroupId = {
          description = "DS product group ID.",
          format = "int64",
          type = "string",
        },
        productId = {
          description = "The product ID (SKU).",
          type = "string",
        },
        productLanguage = {
          description = "The language registered for the Merchant Center feed that contains the product. Use an ISO 639 code to specify a language.",
          type = "string",
        },
        quantityMillis = {
          description = "The quantity of this conversion, in millis.",
          format = "int64",
          type = "string",
        },
        revenueMicros = {
          description = "The revenue amount of this `TRANSACTION` conversion, in micros (value multiplied by 1000000, no decimal). For example, to specify a revenue value of \"10\" enter \"10000000\" (10 million) in your request.",
          type = "string",
        },
        segmentationId = {
          description = "The numeric segmentation identifier (for example, DoubleClick Search Floodlight activity ID).",
          format = "int64",
          type = "string",
        },
        segmentationName = {
          description = "The friendly segmentation identifier (for example, DoubleClick Search Floodlight activity name).",
          type = "string",
        },
        segmentationType = {
          annotations = {
            required = {
              "doubleclicksearch.conversion.insert",
            },
          },
          description = "The segmentation type of this conversion (for example, `FLOODLIGHT`).",
          type = "string",
        },
        state = {
          description = "The state of the conversion, that is, either `ACTIVE` or `REMOVED`. Note: state DELETED is deprecated.",
          type = "string",
        },
        storeId = {
          description = "The ID of the local store for which the product was advertised. Applicable only when the channel is \"`local`\".",
          type = "string",
        },
        type = {
          description = "The type of the conversion, that is, either `ACTION` or `TRANSACTION`. An `ACTION` conversion is an action by the user that has no monetarily quantifiable value, while a `TRANSACTION` conversion is an action that does have a monetarily quantifiable value. Examples are email list signups (`ACTION`) versus ecommerce purchases (`TRANSACTION`).",
          type = "string",
        },
      },
      type = "object",
    },
    ConversionList = {
      description = "A list of conversions.",
      id = "ConversionList",
      properties = {
        conversion = {
          description = "The conversions being requested.",
          items = {
            ["$ref"] = "Conversion",
          },
          type = "array",
        },
        kind = {
          description = "Identifies this as a ConversionList resource. Value: the fixed string doubleclicksearch#conversionList.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomDimension = {
      description = "A message containing the custom dimension.",
      id = "CustomDimension",
      properties = {
        name = {
          description = "Custom dimension name.",
          type = "string",
        },
        value = {
          description = "Custom dimension value.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomMetric = {
      description = "A message containing the custom metric.",
      id = "CustomMetric",
      properties = {
        name = {
          description = "Custom metric name.",
          type = "string",
        },
        value = {
          description = "Custom metric numeric value.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    IdMappingFile = {
      description = "File returned to https://developers.google.com/search-ads/v2/reference/reports/getIdMappingFile.",
      id = "IdMappingFile",
      properties = {},
      type = "object",
    },
    Report = {
      description = "A DoubleClick Search report. This object contains the report request, some report metadata such as currency code, and the generated report rows or report files.",
      id = "Report",
      properties = {
        files = {
          description = "Asynchronous report only. Contains a list of generated report files once the report has successfully completed.",
          items = {
            properties = {
              byteCount = {
                description = "The size of this report file in bytes.",
                format = "int64",
                type = "string",
              },
              url = {
                description = "Use this url to download the report file.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        id = {
          description = "Asynchronous report only. Id of the report.",
          type = "string",
        },
        isReportReady = {
          description = "Asynchronous report only. True if and only if the report has completed successfully and the report files are ready to be downloaded.",
          type = "boolean",
        },
        kind = {
          description = "Identifies this as a Report resource. Value: the fixed string `doubleclicksearch#report`.",
          type = "string",
        },
        request = {
          ["$ref"] = "ReportRequest",
          description = "The request that created the report. Optional fields not specified in the original request are filled with default values.",
        },
        rowCount = {
          description = "The number of report rows generated by the report, not including headers.",
          format = "int32",
          type = "integer",
        },
        rows = {
          description = "Synchronous report only. Generated report rows.",
          items = {
            ["$ref"] = "ReportRow",
          },
          type = "array",
        },
        statisticsCurrencyCode = {
          description = "The currency code of all monetary values produced in the report, including values that are set by users (e.g., keyword bid settings) and metrics (e.g., cost and revenue). The currency code of a report is determined by the `statisticsCurrency` field of the report request.",
          type = "string",
        },
        statisticsTimeZone = {
          description = "If all statistics of the report are sourced from the same time zone, this would be it. Otherwise the field is unset.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportApiColumnSpec = {
      description = "A request object used to create a DoubleClick Search report.",
      id = "ReportApiColumnSpec",
      properties = {
        columnName = {
          description = "Name of a DoubleClick Search column to include in the report.",
          type = "string",
        },
        customDimensionName = {
          description = "Segments a report by a custom dimension. The report must be scoped to an advertiser or lower, and the custom dimension must already be set up in DoubleClick Search. The custom dimension name, which appears in DoubleClick Search, is case sensitive.\\ If used in a conversion report, returns the value of the specified custom dimension for the given conversion, if set. This column does not segment the conversion report.",
          type = "string",
        },
        customMetricName = {
          description = "Name of a custom metric to include in the report. The report must be scoped to an advertiser or lower, and the custom metric must already be set up in DoubleClick Search. The custom metric name, which appears in DoubleClick Search, is case sensitive.",
          type = "string",
        },
        endDate = {
          description = "Inclusive day in YYYY-MM-DD format. When provided, this overrides the overall time range of the report for this column only. Must be provided together with `startDate`.",
          type = "string",
        },
        groupByColumn = {
          description = "Synchronous report only. Set to `true` to group by this column. Defaults to `false`.",
          type = "boolean",
        },
        headerText = {
          description = "Text used to identify this column in the report output; defaults to `columnName` or `savedColumnName` when not specified. This can be used to prevent collisions between DoubleClick Search columns and saved columns with the same name.",
          type = "string",
        },
        platformSource = {
          description = "The platform that is used to provide data for the custom dimension. Acceptable values are \"floodlight\".",
          type = "string",
        },
        productReportPerspective = {
          description = "Returns metrics only for a specific type of product activity. Accepted values are: - \"`sold`\": returns metrics only for products that were sold - \"`advertised`\": returns metrics only for products that were advertised in a Shopping campaign, and that might or might not have been sold ",
          type = "string",
        },
        savedColumnName = {
          description = "Name of a saved column to include in the report. The report must be scoped at advertiser or lower, and this saved column must already be created in the DoubleClick Search UI.",
          type = "string",
        },
        startDate = {
          description = "Inclusive date in YYYY-MM-DD format. When provided, this overrides the overall time range of the report for this column only. Must be provided together with `endDate`.",
          type = "string",
        },
      },
      type = "object",
    },
    ReportRequest = {
      description = "A request object used to create a DoubleClick Search report.",
      id = "ReportRequest",
      properties = {
        columns = {
          description = "The columns to include in the report. This includes both DoubleClick Search columns and saved columns. For DoubleClick Search columns, only the `columnName` parameter is required. For saved columns only the `savedColumnName` parameter is required. Both `columnName` and `savedColumnName` cannot be set in the same stanza.\\ The maximum number of columns per request is 300.",
          items = {
            ["$ref"] = "ReportApiColumnSpec",
          },
          type = "array",
        },
        downloadFormat = {
          annotations = {
            required = {
              "doubleclicksearch.reports.request",
            },
          },
          description = "Format that the report should be returned in. Currently `csv` or `tsv` is supported.",
          type = "string",
        },
        filters = {
          description = "A list of filters to be applied to the report.\\ The maximum number of filters per request is 300.",
          items = {
            properties = {
              column = {
                ["$ref"] = "ReportApiColumnSpec",
                description = "Column to perform the filter on. This can be a DoubleClick Search column or a saved column.",
              },
              operator = {
                description = "Operator to use in the filter. See the filter reference for a list of available operators.",
                type = "string",
              },
              values = {
                description = "A list of values to filter the column value against.\\ The maximum number of filter values per request is 300.",
                items = {
                  type = "any",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        includeDeletedEntities = {
          description = "Determines if removed entities should be included in the report. Defaults to `false`. Deprecated, please use `includeRemovedEntities` instead.",
          type = "boolean",
        },
        includeRemovedEntities = {
          description = "Determines if removed entities should be included in the report. Defaults to `false`.",
          type = "boolean",
        },
        maxRowsPerFile = {
          annotations = {
            required = {
              "doubleclicksearch.reports.request",
            },
          },
          description = "Asynchronous report only. The maximum number of rows per report file. A large report is split into many files based on this field. Acceptable values are `1000000` to `100000000`, inclusive.",
          format = "int32",
          type = "integer",
        },
        orderBy = {
          description = "Synchronous report only. A list of columns and directions defining sorting to be performed on the report rows.\\ The maximum number of orderings per request is 300.",
          items = {
            properties = {
              column = {
                ["$ref"] = "ReportApiColumnSpec",
                description = "Column to perform the sort on. This can be a DoubleClick Search-defined column or a saved column.",
              },
              sortOrder = {
                description = "The sort direction, which is either `ascending` or `descending`.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        reportScope = {
          description = "The reportScope is a set of IDs that are used to determine which subset of entities will be returned in the report. The full lineage of IDs from the lowest scoped level desired up through agency is required.",
          properties = {
            adGroupId = {
              description = "DS ad group ID.",
              format = "int64",
              type = "string",
            },
            adId = {
              description = "DS ad ID.",
              format = "int64",
              type = "string",
            },
            advertiserId = {
              description = "DS advertiser ID.",
              format = "int64",
              type = "string",
            },
            agencyId = {
              description = "DS agency ID.",
              format = "int64",
              type = "string",
            },
            campaignId = {
              description = "DS campaign ID.",
              format = "int64",
              type = "string",
            },
            engineAccountId = {
              description = "DS engine account ID.",
              format = "int64",
              type = "string",
            },
            keywordId = {
              description = "DS keyword ID.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        reportType = {
          annotations = {
            required = {
              "doubleclicksearch.reports.generate",
              "doubleclicksearch.reports.request",
            },
          },
          description = "Determines the type of rows that are returned in the report. For example, if you specify `reportType: keyword`, each row in the report will contain data about a keyword. See the [Types of Reports](/search-ads/v2/report-types/) reference for the columns that are available for each type.",
          type = "string",
        },
        rowCount = {
          annotations = {
            required = {
              "doubleclicksearch.reports.generate",
            },
          },
          description = "Synchronous report only. The maximum number of rows to return; additional rows are dropped. Acceptable values are `0` to `10000`, inclusive. Defaults to `10000`.",
          format = "int32",
          type = "integer",
        },
        startRow = {
          annotations = {
            required = {
              "doubleclicksearch.reports.generate",
            },
          },
          description = "Synchronous report only. Zero-based index of the first row to return. Acceptable values are `0` to `50000`, inclusive. Defaults to `0`.",
          format = "int32",
          type = "integer",
        },
        statisticsCurrency = {
          annotations = {
            required = {
              "doubleclicksearch.reports.generate",
              "doubleclicksearch.reports.request",
            },
          },
          description = "Specifies the currency in which monetary will be returned. Possible values are: `usd`, `agency` (valid if the report is scoped to agency or lower), `advertiser` (valid if the report is scoped to * advertiser or lower), or `account` (valid if the report is scoped to engine account or lower).",
          type = "string",
        },
        timeRange = {
          description = "If metrics are requested in a report, this argument will be used to restrict the metrics to a specific time range.",
          properties = {
            changedAttributesSinceTimestamp = {
              description = "Inclusive UTC timestamp in RFC format, e.g., `2013-07-16T10:16:23.555Z`. See additional references on how changed attribute reports work.",
              type = "string",
            },
            changedMetricsSinceTimestamp = {
              description = "Inclusive UTC timestamp in RFC format, e.g., `2013-07-16T10:16:23.555Z`. See additional references on how changed metrics reports work.",
              type = "string",
            },
            endDate = {
              description = "Inclusive date in YYYY-MM-DD format.",
              type = "string",
            },
            startDate = {
              description = "Inclusive date in YYYY-MM-DD format.",
              type = "string",
            },
          },
          type = "object",
        },
        verifySingleTimeZone = {
          description = "If `true`, the report would only be created if all the requested stat data are sourced from a single timezone. Defaults to `false`.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ReportRow = {
      additionalProperties = {
        description = "Indicates the columns that are represented in this row. That is, each key corresponds to a column with a non-empty cell in this row.",
        type = "any",
      },
      description = "A row in a DoubleClick Search report.",
      id = "ReportRow",
      type = "object",
    },
    SavedColumn = {
      description = "A saved column",
      id = "SavedColumn",
      properties = {
        kind = {
          description = "Identifies this as a SavedColumn resource. Value: the fixed string doubleclicksearch#savedColumn.",
          type = "string",
        },
        savedColumnName = {
          description = "The name of the saved column.",
          type = "string",
        },
        type = {
          description = "The type of data this saved column will produce.",
          type = "string",
        },
      },
      type = "object",
    },
    SavedColumnList = {
      description = "A list of saved columns. Advertisers create saved columns to report on Floodlight activities, Google Analytics goals, or custom KPIs. To request reports with saved columns, you'll need the saved column names that are available from this list.",
      id = "SavedColumnList",
      properties = {
        items = {
          description = "The saved columns being requested.",
          items = {
            ["$ref"] = "SavedColumn",
          },
          type = "array",
        },
        kind = {
          description = "Identifies this as a SavedColumnList resource. Value: the fixed string doubleclicksearch#savedColumnList.",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateAvailabilityRequest = {
      description = "The request to update availability.",
      id = "UpdateAvailabilityRequest",
      properties = {
        availabilities = {
          description = "The availabilities being requested.",
          items = {
            ["$ref"] = "Availability",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateAvailabilityResponse = {
      description = "The response to a update availability request.",
      id = "UpdateAvailabilityResponse",
      properties = {
        availabilities = {
          description = "The availabilities being returned.",
          items = {
            ["$ref"] = "Availability",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Search Ads 360 API",
  version = "v2",
}
