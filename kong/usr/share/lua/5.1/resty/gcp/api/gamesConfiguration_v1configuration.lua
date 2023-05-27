return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/androidpublisher"] = {
          description = "View and manage your Google Play Developer account",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://gamesconfiguration.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Games Configuration",
  description = "The Google Play Game Services Publishing API allows developers to configure their games in Game Services.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/games/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "gamesConfiguration:v1configuration",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://gamesconfiguration.mtls.googleapis.com/",
  name = "gamesConfiguration",
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
    achievementConfigurations = {
      methods = {
        delete = {
          description = "Delete the achievement configuration with the given ID.",
          flatPath = "games/v1configuration/achievements/{achievementId}",
          httpMethod = "DELETE",
          id = "gamesConfiguration.achievementConfigurations.delete",
          parameterOrder = {
            "achievementId",
          },
          parameters = {
            achievementId = {
              description = "The ID of the achievement used by this method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/achievements/{achievementId}",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        get = {
          description = "Retrieves the metadata of the achievement configuration with the given ID.",
          flatPath = "games/v1configuration/achievements/{achievementId}",
          httpMethod = "GET",
          id = "gamesConfiguration.achievementConfigurations.get",
          parameterOrder = {
            "achievementId",
          },
          parameters = {
            achievementId = {
              description = "The ID of the achievement used by this method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/achievements/{achievementId}",
          response = {
            ["$ref"] = "AchievementConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        insert = {
          description = "Insert a new achievement configuration in this application.",
          flatPath = "games/v1configuration/applications/{applicationId}/achievements",
          httpMethod = "POST",
          id = "gamesConfiguration.achievementConfigurations.insert",
          parameterOrder = {
            "applicationId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/applications/{applicationId}/achievements",
          request = {
            ["$ref"] = "AchievementConfiguration",
          },
          response = {
            ["$ref"] = "AchievementConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        list = {
          description = "Returns a list of the achievement configurations in this application.",
          flatPath = "games/v1configuration/applications/{applicationId}/achievements",
          httpMethod = "GET",
          id = "gamesConfiguration.achievementConfigurations.list",
          parameterOrder = {
            "applicationId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of resource configurations to return in the response, used for paging. For any response, the actual number of resources returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1configuration/applications/{applicationId}/achievements",
          response = {
            ["$ref"] = "AchievementConfigurationListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        update = {
          description = "Update the metadata of the achievement configuration with the given ID.",
          flatPath = "games/v1configuration/achievements/{achievementId}",
          httpMethod = "PUT",
          id = "gamesConfiguration.achievementConfigurations.update",
          parameterOrder = {
            "achievementId",
          },
          parameters = {
            achievementId = {
              description = "The ID of the achievement used by this method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/achievements/{achievementId}",
          request = {
            ["$ref"] = "AchievementConfiguration",
          },
          response = {
            ["$ref"] = "AchievementConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
    leaderboardConfigurations = {
      methods = {
        delete = {
          description = "Delete the leaderboard configuration with the given ID.",
          flatPath = "games/v1configuration/leaderboards/{leaderboardId}",
          httpMethod = "DELETE",
          id = "gamesConfiguration.leaderboardConfigurations.delete",
          parameterOrder = {
            "leaderboardId",
          },
          parameters = {
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/leaderboards/{leaderboardId}",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        get = {
          description = "Retrieves the metadata of the leaderboard configuration with the given ID.",
          flatPath = "games/v1configuration/leaderboards/{leaderboardId}",
          httpMethod = "GET",
          id = "gamesConfiguration.leaderboardConfigurations.get",
          parameterOrder = {
            "leaderboardId",
          },
          parameters = {
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/leaderboards/{leaderboardId}",
          response = {
            ["$ref"] = "LeaderboardConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        insert = {
          description = "Insert a new leaderboard configuration in this application.",
          flatPath = "games/v1configuration/applications/{applicationId}/leaderboards",
          httpMethod = "POST",
          id = "gamesConfiguration.leaderboardConfigurations.insert",
          parameterOrder = {
            "applicationId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/applications/{applicationId}/leaderboards",
          request = {
            ["$ref"] = "LeaderboardConfiguration",
          },
          response = {
            ["$ref"] = "LeaderboardConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        list = {
          description = "Returns a list of the leaderboard configurations in this application.",
          flatPath = "games/v1configuration/applications/{applicationId}/leaderboards",
          httpMethod = "GET",
          id = "gamesConfiguration.leaderboardConfigurations.list",
          parameterOrder = {
            "applicationId",
          },
          parameters = {
            applicationId = {
              description = "The application ID from the Google Play developer console.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "The maximum number of resource configurations to return in the response, used for paging. For any response, the actual number of resources returned may be less than the specified `maxResults`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The token returned by the previous request.",
              location = "query",
              type = "string",
            },
          },
          path = "games/v1configuration/applications/{applicationId}/leaderboards",
          response = {
            ["$ref"] = "LeaderboardConfigurationListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        update = {
          description = "Update the metadata of the leaderboard configuration with the given ID.",
          flatPath = "games/v1configuration/leaderboards/{leaderboardId}",
          httpMethod = "PUT",
          id = "gamesConfiguration.leaderboardConfigurations.update",
          parameterOrder = {
            "leaderboardId",
          },
          parameters = {
            leaderboardId = {
              description = "The ID of the leaderboard.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "games/v1configuration/leaderboards/{leaderboardId}",
          request = {
            ["$ref"] = "LeaderboardConfiguration",
          },
          response = {
            ["$ref"] = "LeaderboardConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://gamesconfiguration.googleapis.com/",
  schemas = {
    AchievementConfiguration = {
      description = "An achievement configuration resource.",
      id = "AchievementConfiguration",
      properties = {
        achievementType = {
          description = "The type of the achievement.",
          enum = {
            "ACHIEVEMENT_TYPE_UNSPECIFIED",
            "STANDARD",
            "INCREMENTAL",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Achievement is either locked or unlocked.",
            "Achievement is incremental.",
          },
          type = "string",
        },
        draft = {
          ["$ref"] = "AchievementConfigurationDetail",
          description = "The draft data of the achievement.",
        },
        id = {
          description = "The ID of the achievement.",
          type = "string",
        },
        initialState = {
          description = "The initial state of the achievement.",
          enum = {
            "INITIAL_STATE_UNSPECIFIED",
            "HIDDEN",
            "REVEALED",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Achievement is hidden.",
            "Achievement is revealed.",
          },
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#achievementConfiguration`.",
          type = "string",
        },
        published = {
          ["$ref"] = "AchievementConfigurationDetail",
          description = "The read-only published data of the achievement.",
        },
        stepsToUnlock = {
          description = "Steps to unlock. Only applicable to incremental achievements.",
          format = "int32",
          type = "integer",
        },
        token = {
          description = "The token for this resource.",
          type = "string",
        },
      },
      type = "object",
    },
    AchievementConfigurationDetail = {
      description = "An achievement configuration detail.",
      id = "AchievementConfigurationDetail",
      properties = {
        description = {
          ["$ref"] = "LocalizedStringBundle",
          description = "Localized strings for the achievement description.",
        },
        iconUrl = {
          description = "The icon url of this achievement. Writes to this field are ignored.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#achievementConfigurationDetail`.",
          type = "string",
        },
        name = {
          ["$ref"] = "LocalizedStringBundle",
          description = "Localized strings for the achievement name.",
        },
        pointValue = {
          description = "Point value for the achievement.",
          format = "int32",
          type = "integer",
        },
        sortRank = {
          description = "The sort rank of this achievement. Writes to this field are ignored.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AchievementConfigurationListResponse = {
      description = "A ListConfigurations response.",
      id = "AchievementConfigurationListResponse",
      properties = {
        items = {
          description = "The achievement configurations.",
          items = {
            ["$ref"] = "AchievementConfiguration",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#achievementConfigurationListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "The pagination token for the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    GamesNumberAffixConfiguration = {
      description = "A number affix resource.",
      id = "GamesNumberAffixConfiguration",
      properties = {
        few = {
          ["$ref"] = "LocalizedStringBundle",
          description = "When the language requires special treatment of \"small\" numbers (as with 2, 3, and 4 in Czech; or numbers ending 2, 3, or 4 but not 12, 13, or 14 in Polish).",
        },
        many = {
          ["$ref"] = "LocalizedStringBundle",
          description = "When the language requires special treatment of \"large\" numbers (as with numbers ending 11-99 in Maltese).",
        },
        one = {
          ["$ref"] = "LocalizedStringBundle",
          description = "When the language requires special treatment of numbers like one (as with the number 1 in English and most other languages; in Russian, any number ending in 1 but not ending in 11 is in this class).",
        },
        other = {
          ["$ref"] = "LocalizedStringBundle",
          description = "When the language does not require special treatment of the given quantity (as with all numbers in Chinese, or 42 in English).",
        },
        two = {
          ["$ref"] = "LocalizedStringBundle",
          description = "When the language requires special treatment of numbers like two (as with 2 in Welsh, or 102 in Slovenian).",
        },
        zero = {
          ["$ref"] = "LocalizedStringBundle",
          description = "When the language requires special treatment of the number 0 (as in Arabic).",
        },
      },
      type = "object",
    },
    GamesNumberFormatConfiguration = {
      description = "A number format resource.",
      id = "GamesNumberFormatConfiguration",
      properties = {
        currencyCode = {
          description = "The curreny code string. Only used for CURRENCY format type.",
          type = "string",
        },
        numDecimalPlaces = {
          description = "The number of decimal places for number. Only used for NUMERIC format type.",
          format = "int32",
          type = "integer",
        },
        numberFormatType = {
          description = "The formatting for the number.",
          enum = {
            "NUMBER_FORMAT_TYPE_UNSPECIFIED",
            "NUMERIC",
            "TIME_DURATION",
            "CURRENCY",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Numbers are formatted to have no digits or fixed number of digits after the decimal point according to locale. An optional custom unit can be added.",
            "Numbers are formatted to hours, minutes and seconds.",
            "Numbers are formatted to currency according to locale.",
          },
          type = "string",
        },
        suffix = {
          ["$ref"] = "GamesNumberAffixConfiguration",
          description = "An optional suffix for the NUMERIC format type. These strings follow the same plural rules as all Android string resources.",
        },
      },
      type = "object",
    },
    LeaderboardConfiguration = {
      description = "An leaderboard configuration resource.",
      id = "LeaderboardConfiguration",
      properties = {
        draft = {
          ["$ref"] = "LeaderboardConfigurationDetail",
          description = "The draft data of the leaderboard.",
        },
        id = {
          description = "The ID of the leaderboard.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#leaderboardConfiguration`.",
          type = "string",
        },
        published = {
          ["$ref"] = "LeaderboardConfigurationDetail",
          description = "The read-only published data of the leaderboard.",
        },
        scoreMax = {
          description = "Maximum score that can be posted to this leaderboard.",
          format = "int64",
          type = "string",
        },
        scoreMin = {
          description = "Minimum score that can be posted to this leaderboard.",
          format = "int64",
          type = "string",
        },
        scoreOrder = {
          enum = {
            "SCORE_ORDER_UNSPECIFIED",
            "LARGER_IS_BETTER",
            "SMALLER_IS_BETTER",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Larger scores posted are ranked higher.",
            "Smaller scores posted are ranked higher.",
          },
          type = "string",
        },
        token = {
          description = "The token for this resource.",
          type = "string",
        },
      },
      type = "object",
    },
    LeaderboardConfigurationDetail = {
      description = "A leaderboard configuration detail.",
      id = "LeaderboardConfigurationDetail",
      properties = {
        iconUrl = {
          description = "The icon url of this leaderboard. Writes to this field are ignored.",
          type = "string",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#leaderboardConfigurationDetail`.",
          type = "string",
        },
        name = {
          ["$ref"] = "LocalizedStringBundle",
          description = "Localized strings for the leaderboard name.",
        },
        scoreFormat = {
          ["$ref"] = "GamesNumberFormatConfiguration",
          description = "The score formatting for the leaderboard.",
        },
        sortRank = {
          description = "The sort rank of this leaderboard. Writes to this field are ignored.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    LeaderboardConfigurationListResponse = {
      description = "A ListConfigurations response.",
      id = "LeaderboardConfigurationListResponse",
      properties = {
        items = {
          description = "The leaderboard configurations.",
          items = {
            ["$ref"] = "LeaderboardConfiguration",
          },
          type = "array",
        },
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#leaderboardConfigurationListResponse`.",
          type = "string",
        },
        nextPageToken = {
          description = "The pagination token for the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    LocalizedString = {
      description = "A localized string resource.",
      id = "LocalizedString",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#localizedString`.",
          type = "string",
        },
        locale = {
          description = "The locale string.",
          type = "string",
        },
        value = {
          description = "The string value.",
          type = "string",
        },
      },
      type = "object",
    },
    LocalizedStringBundle = {
      description = "A localized string bundle resource.",
      id = "LocalizedStringBundle",
      properties = {
        kind = {
          description = "Uniquely identifies the type of this resource. Value is always the fixed string `gamesConfiguration#localizedStringBundle`.",
          type = "string",
        },
        translations = {
          description = "The locale strings.",
          items = {
            ["$ref"] = "LocalizedString",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Play Game Services Publishing API",
  version = "v1configuration",
}
