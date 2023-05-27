return {
  basePath = "",
  baseUrl = "https://businessprofileperformance.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Business Profile Performance",
  description = "The Business Profile Performance API allows merchants to fetch performance reports about their business profile on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/my-business/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "businessprofileperformance:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://businessprofileperformance.mtls.googleapis.com/",
  name = "businessprofileperformance",
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
    locations = {
      methods = {
        getDailyMetricsTimeSeries = {
          description = " Returns the values for each date from a given time range that are associated with the specific daily metric. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345:getDailyMetricsTimeSeries?dailyMetric=WEBSITE_CLICKS&daily_range.start_date.year=2022&daily_range.start_date.month=1&daily_range.start_date.day=1&daily_range.end_date.year=2022&daily_range.end_date.month=3&daily_range.end_date.day=31`",
          flatPath = "v1/locations/{locationsId}:getDailyMetricsTimeSeries",
          httpMethod = "GET",
          id = "businessprofileperformance.locations.getDailyMetricsTimeSeries",
          parameterOrder = {
            "name",
          },
          parameters = {
            dailyMetric = {
              description = "Required. The metric to retrieve time series.",
              enum = {
                "DAILY_METRIC_UNKNOWN",
                "BUSINESS_IMPRESSIONS_DESKTOP_MAPS",
                "BUSINESS_IMPRESSIONS_DESKTOP_SEARCH",
                "BUSINESS_IMPRESSIONS_MOBILE_MAPS",
                "BUSINESS_IMPRESSIONS_MOBILE_SEARCH",
                "BUSINESS_CONVERSATIONS",
                "BUSINESS_DIRECTION_REQUESTS",
                "CALL_CLICKS",
                "WEBSITE_CLICKS",
                "BUSINESS_BOOKINGS",
                "BUSINESS_FOOD_ORDERS",
              },
              enumDescriptions = {
                "Represents the default unknown value.",
                "Business impressions on Google Maps on Desktop devices. Multiple impressions by a unique user within a single day are counted as a single impression.",
                "Business impressions on Google Search on Desktop devices. Multiple impressions by a unique user within a single day are counted as a single impression.",
                "Business impressions on Google Maps on Mobile devices. Multiple impressions by a unique user within a single day are counted as a single impression.",
                "Business impressions on Google Search on Mobile devices. Multiple impressions by a unique user within a single day are counted as a single impression.",
                "The number of message conversations received on the business profile.",
                "The number of times a direction request was requested to the business location.",
                "The number of times the business profile call button was clicked.",
                "The number of times the business profile website was clicked.",
                "The number of bookings received from the business profile.",
                "The number of food orders received from the business profile.",
              },
              location = "query",
              type = "string",
            },
            ["dailyRange.endDate.day"] = {
              description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailyRange.endDate.month"] = {
              description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailyRange.endDate.year"] = {
              description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailyRange.startDate.day"] = {
              description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailyRange.startDate.month"] = {
              description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailyRange.startDate.year"] = {
              description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailySubEntityType.dayOfWeek"] = {
              description = "Represents the day of the week. Eg: MONDAY.",
              enum = {
                "DAY_OF_WEEK_UNSPECIFIED",
                "MONDAY",
                "TUESDAY",
                "WEDNESDAY",
                "THURSDAY",
                "FRIDAY",
                "SATURDAY",
                "SUNDAY",
              },
              enumDescriptions = {
                "The day of the week is unspecified.",
                "Monday",
                "Tuesday",
                "Wednesday",
                "Thursday",
                "Friday",
                "Saturday",
                "Sunday",
              },
              location = "query",
              type = "string",
            },
            ["dailySubEntityType.timeOfDay.hours"] = {
              description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailySubEntityType.timeOfDay.minutes"] = {
              description = "Minutes of hour of day. Must be from 0 to 59.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailySubEntityType.timeOfDay.nanos"] = {
              description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            ["dailySubEntityType.timeOfDay.seconds"] = {
              description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            name = {
              description = "Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id is an unobfuscated listing id.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:getDailyMetricsTimeSeries",
          response = {
            ["$ref"] = "GetDailyMetricsTimeSeriesResponse",
          },
        },
      },
      resources = {
        searchkeywords = {
          resources = {
            impressions = {
              resources = {
                monthly = {
                  methods = {
                    list = {
                      description = "Returns the search keywords used to find a business in search or maps. Each search keyword is accompanied by impressions which are aggregated on a monthly basis. Example request: `GET https://businessprofileperformance.googleapis.com/v1/locations/12345/searchkeywords/impressions/monthly?monthly_range.start_month.year=2022&monthly_range.start_month.month=1&monthly_range.end_month.year=2022&monthly_range.end_month.month=3`",
                      flatPath = "v1/locations/{locationsId}/searchkeywords/impressions/monthly",
                      httpMethod = "GET",
                      id = "businessprofileperformance.locations.searchkeywords.impressions.monthly.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        ["monthlyRange.endMonth.day"] = {
                          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        ["monthlyRange.endMonth.month"] = {
                          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        ["monthlyRange.endMonth.year"] = {
                          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        ["monthlyRange.startMonth.day"] = {
                          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        ["monthlyRange.startMonth.month"] = {
                          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        ["monthlyRange.startMonth.year"] = {
                          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageSize = {
                          description = "Optional. The number of results requested. The default page size is 100. Page size can be set to a maximum of 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. A token indicating the next paginated result to be returned.",
                          format = "byte",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The location for which the time series should be fetched. Format: locations/{location_id} where location_id is an unobfuscated listing id.",
                          location = "path",
                          pattern = "^locations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/searchkeywords/impressions/monthly",
                      response = {
                        ["$ref"] = "ListSearchKeywordImpressionsMonthlyResponse",
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://businessprofileperformance.googleapis.com/",
  schemas = {
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
    DatedValue = {
      description = "Represents a single datapoint in the timeseries, where each datapoint is a date-value pair.",
      id = "DatedValue",
      properties = {
        date = {
          ["$ref"] = "Date",
          description = "The date that the datapoint corresponds to. This represents a month value if the day field is not set.",
        },
        value = {
          description = "The value of the datapoint.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GetDailyMetricsTimeSeriesResponse = {
      description = "Represents the response for GetDailyMetricsTimeSeries.",
      id = "GetDailyMetricsTimeSeriesResponse",
      properties = {
        timeSeries = {
          ["$ref"] = "TimeSeries",
          description = "The daily time series.",
        },
      },
      type = "object",
    },
    InsightsValue = {
      description = "Represents an insights value.",
      id = "InsightsValue",
      properties = {
        threshold = {
          description = "Represents the threshold below which the actual value falls.",
          format = "int64",
          type = "string",
        },
        value = {
          description = "Represents the actual value.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ListSearchKeywordImpressionsMonthlyResponse = {
      description = "Represents the response for ListSearchKeywordImpressionsMonthly.",
      id = "ListSearchKeywordImpressionsMonthlyResponse",
      properties = {
        nextPageToken = {
          description = "A token indicating the last paginated result returned. This can be used by succeeding requests to get the next \"page\" of keywords. It will only be present when there are more results to be returned.",
          format = "byte",
          type = "string",
        },
        searchKeywordsCounts = {
          description = "Search terms which have been used to find a business.",
          items = {
            ["$ref"] = "SearchKeywordCount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchKeywordCount = {
      description = "Represents a single search keyword and its value.",
      id = "SearchKeywordCount",
      properties = {
        insightsValue = {
          ["$ref"] = "InsightsValue",
          description = "One of either: 1) The sum of the number of unique users that used the keyword in a month, aggregated for each month requested. 2) A threshold that indicates that the actual value is below this threshold.",
        },
        searchKeyword = {
          description = "The lower-cased string that the user entered.",
          type = "string",
        },
      },
      type = "object",
    },
    TimeSeries = {
      description = "Represents a timeseries.",
      id = "TimeSeries",
      properties = {
        datedValues = {
          description = "List of datapoints in the timeseries, where each datapoint is a date-value pair.",
          items = {
            ["$ref"] = "DatedValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Business Profile Performance API",
  version = "v1",
  version_module = true,
}
