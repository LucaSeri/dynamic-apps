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
  baseUrl = "https://playcustomapp.googleapis.com/",
  batchPath = "batch",
  description = "API to create and publish custom Android apps",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/android/work/play/custom-app-api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "playcustomapp:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://playcustomapp.mtls.googleapis.com/",
  name = "playcustomapp",
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
      resources = {
        customApps = {
          methods = {
            create = {
              description = "Creates a new custom app.",
              flatPath = "playcustomapp/v1/accounts/{account}/customApps",
              httpMethod = "POST",
              id = "playcustomapp.accounts.customApps.create",
              mediaUpload = {
                accept = {
                  "*/*",
                },
                maxSize = "10737418240",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/playcustomapp/v1/accounts/{account}/customApps",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/playcustomapp/v1/accounts/{account}/customApps",
                  },
                },
              },
              parameterOrder = {
                "account",
              },
              parameters = {
                account = {
                  description = "Developer account ID.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "playcustomapp/v1/accounts/{account}/customApps",
              request = {
                ["$ref"] = "CustomApp",
              },
              response = {
                ["$ref"] = "CustomApp",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
              supportsMediaUpload = true,
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://playcustomapp.googleapis.com/",
  schemas = {
    CustomApp = {
      description = "This resource represents a custom app.",
      id = "CustomApp",
      properties = {
        languageCode = {
          description = "Default listing language in BCP 47 format.",
          type = "string",
        },
        organizations = {
          description = "Organizations to which the custom app should be made available. If the request contains any organizations, then the app will be restricted to only these organizations. To support the organization linked to the developer account, the organization ID should be provided explicitly together with other organizations. If no organizations are provided, then the app is only available to the organization linked to the developer account.",
          items = {
            ["$ref"] = "Organization",
          },
          type = "array",
        },
        packageName = {
          description = "Output only. Package name of the created Android app. Only present in the API response.",
          readOnly = true,
          type = "string",
        },
        title = {
          description = "Title for the Android app.",
          type = "string",
        },
      },
      type = "object",
    },
    Organization = {
      description = "Represents an organization that can access a custom app.",
      id = "Organization",
      properties = {
        organizationId = {
          description = "Required. ID of the organization.",
          type = "string",
        },
        organizationName = {
          description = "Optional. A human-readable name of the organization, to help recognize the organization.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Play Custom App Publishing API",
  version = "v1",
}
