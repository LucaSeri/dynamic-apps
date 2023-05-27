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
  baseUrl = "https://androidpublisher.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Android Publisher",
  description = "Lets Android application developers access their Google Play accounts. At a high level, the expected workflow is to \"insert\" an Edit, make changes as necessary, and then \"commit\" it. ",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/android-publisher",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "androidpublisher:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://androidpublisher.mtls.googleapis.com/",
  name = "androidpublisher",
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
    applications = {
      resources = {
        deviceTierConfigs = {
          methods = {
            create = {
              description = "Creates a new device tier config for an app.",
              flatPath = "androidpublisher/v3/applications/{packageName}/deviceTierConfigs",
              httpMethod = "POST",
              id = "androidpublisher.applications.deviceTierConfigs.create",
              parameterOrder = {
                "packageName",
              },
              parameters = {
                allowUnknownDevices = {
                  description = "Whether the service should accept device IDs that are unknown to Play's device catalog.",
                  location = "query",
                  type = "boolean",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/deviceTierConfigs",
              request = {
                ["$ref"] = "DeviceTierConfig",
              },
              response = {
                ["$ref"] = "DeviceTierConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            get = {
              description = "Returns a particular device tier config.",
              flatPath = "androidpublisher/v3/applications/{packageName}/deviceTierConfigs/{deviceTierConfigId}",
              httpMethod = "GET",
              id = "androidpublisher.applications.deviceTierConfigs.get",
              parameterOrder = {
                "packageName",
                "deviceTierConfigId",
              },
              parameters = {
                deviceTierConfigId = {
                  description = "Required. Id of an existing device tier config.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/deviceTierConfigs/{deviceTierConfigId}",
              response = {
                ["$ref"] = "DeviceTierConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            list = {
              description = "Returns created device tier configs, ordered by descending creation time.",
              flatPath = "androidpublisher/v3/applications/{packageName}/deviceTierConfigs",
              httpMethod = "GET",
              id = "androidpublisher.applications.deviceTierConfigs.list",
              parameterOrder = {
                "packageName",
              },
              parameters = {
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of device tier configs to return. The service may return fewer than this value. If unspecified, at most 10 device tier configs will be returned. The maximum value for this field is 100; values above 100 will be coerced to 100. Device tier configs will be ordered by descending creation time.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListDeviceTierConfigs` call. Provide this to retrieve the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/deviceTierConfigs",
              response = {
                ["$ref"] = "ListDeviceTierConfigsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
      },
    },
    edits = {
      methods = {
        commit = {
          description = "Commits an app edit.",
          flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}:commit",
          httpMethod = "POST",
          id = "androidpublisher.edits.commit",
          parameterOrder = {
            "packageName",
            "editId",
          },
          parameters = {
            changesNotSentForReview = {
              description = "Indicates that the changes in this edit will not be reviewed until they are explicitly sent for review from the Google Play Console UI. These changes will be added to any other changes that are not yet sent for review.",
              location = "query",
              type = "boolean",
            },
            editId = {
              description = "Identifier of the edit.",
              location = "path",
              required = true,
              type = "string",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/edits/{editId}:commit",
          response = {
            ["$ref"] = "AppEdit",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        delete = {
          description = "Deletes an app edit.",
          flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}",
          httpMethod = "DELETE",
          id = "androidpublisher.edits.delete",
          parameterOrder = {
            "packageName",
            "editId",
          },
          parameters = {
            editId = {
              description = "Identifier of the edit.",
              location = "path",
              required = true,
              type = "string",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/edits/{editId}",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        get = {
          description = "Gets an app edit.",
          flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}",
          httpMethod = "GET",
          id = "androidpublisher.edits.get",
          parameterOrder = {
            "packageName",
            "editId",
          },
          parameters = {
            editId = {
              description = "Identifier of the edit.",
              location = "path",
              required = true,
              type = "string",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/edits/{editId}",
          response = {
            ["$ref"] = "AppEdit",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        insert = {
          description = "Creates a new edit for an app.",
          flatPath = "androidpublisher/v3/applications/{packageName}/edits",
          httpMethod = "POST",
          id = "androidpublisher.edits.insert",
          parameterOrder = {
            "packageName",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/edits",
          request = {
            ["$ref"] = "AppEdit",
          },
          response = {
            ["$ref"] = "AppEdit",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        validate = {
          description = "Validates an app edit.",
          flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}:validate",
          httpMethod = "POST",
          id = "androidpublisher.edits.validate",
          parameterOrder = {
            "packageName",
            "editId",
          },
          parameters = {
            editId = {
              description = "Identifier of the edit.",
              location = "path",
              required = true,
              type = "string",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/edits/{editId}:validate",
          response = {
            ["$ref"] = "AppEdit",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
      resources = {
        apks = {
          methods = {
            addexternallyhosted = {
              description = "Creates a new APK without uploading the APK itself to Google Play, instead hosting the APK at a specified URL. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/externallyHosted",
              httpMethod = "POST",
              id = "androidpublisher.edits.apks.addexternallyhosted",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/externallyHosted",
              request = {
                ["$ref"] = "ApksAddExternallyHostedRequest",
              },
              response = {
                ["$ref"] = "ApksAddExternallyHostedResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            list = {
              description = "Lists all current APKs of the app and edit.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks",
              httpMethod = "GET",
              id = "androidpublisher.edits.apks.list",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks",
              response = {
                ["$ref"] = "ApksListResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            upload = {
              description = "Uploads an APK and adds to the current edit.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks",
              httpMethod = "POST",
              id = "androidpublisher.edits.apks.upload",
              mediaUpload = {
                accept = {
                  "application/octet-stream",
                  "application/vnd.android.package-archive",
                },
                maxSize = "10737418240",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/apks",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/apks",
                  },
                },
              },
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks",
              response = {
                ["$ref"] = "Apk",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
              supportsMediaUpload = true,
            },
          },
        },
        bundles = {
          methods = {
            list = {
              description = "Lists all current Android App Bundles of the app and edit.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles",
              httpMethod = "GET",
              id = "androidpublisher.edits.bundles.list",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles",
              response = {
                ["$ref"] = "BundlesListResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            upload = {
              description = "Uploads a new Android App Bundle to this edit. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors) for an example in java.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles",
              httpMethod = "POST",
              id = "androidpublisher.edits.bundles.upload",
              mediaUpload = {
                accept = {
                  "application/octet-stream",
                },
                maxSize = "10737418240",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles",
                  },
                },
              },
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                ackBundleInstallationWarning = {
                  description = "Must be set to true if the app bundle installation may trigger a warning on user devices (for example, if installation size may be over a threshold, typically 100 MB).",
                  location = "query",
                  type = "boolean",
                },
                deviceTierConfigId = {
                  description = "Device tier config (DTC) to be used for generating deliverables (APKs). Contains id of the DTC or \"LATEST\" for last uploaded DTC.",
                  location = "query",
                  type = "string",
                },
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/bundles",
              response = {
                ["$ref"] = "Bundle",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
              supportsMediaUpload = true,
            },
          },
        },
        countryavailability = {
          methods = {
            get = {
              description = "Gets country availability.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/countryAvailability/{track}",
              httpMethod = "GET",
              id = "androidpublisher.edits.countryavailability.get",
              parameterOrder = {
                "packageName",
                "editId",
                "track",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                track = {
                  description = "The track to read from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/countryAvailability/{track}",
              response = {
                ["$ref"] = "TrackCountryAvailability",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
        deobfuscationfiles = {
          methods = {
            upload = {
              description = "Uploads a new deobfuscation file and attaches to the specified APK.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}",
              httpMethod = "POST",
              id = "androidpublisher.edits.deobfuscationfiles.upload",
              mediaUpload = {
                accept = {
                  "application/octet-stream",
                },
                maxSize = "838860800",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}",
                  },
                },
              },
              parameterOrder = {
                "packageName",
                "editId",
                "apkVersionCode",
                "deobfuscationFileType",
              },
              parameters = {
                apkVersionCode = {
                  description = "The version code of the APK whose Deobfuscation File is being uploaded.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                deobfuscationFileType = {
                  description = "The type of the deobfuscation file.",
                  enum = {
                    "deobfuscationFileTypeUnspecified",
                    "proguard",
                    "nativeCode",
                  },
                  enumDescriptions = {
                    "Unspecified deobfuscation file type.",
                    "Proguard deobfuscation file type.",
                    "Native debugging symbols file type.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                editId = {
                  description = "Unique identifier for this edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Unique identifier for the Android app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/deobfuscationFiles/{deobfuscationFileType}",
              response = {
                ["$ref"] = "DeobfuscationFilesUploadResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
              supportsMediaUpload = true,
            },
          },
        },
        details = {
          methods = {
            get = {
              description = "Gets details of an app.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/details",
              httpMethod = "GET",
              id = "androidpublisher.edits.details.get",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/details",
              response = {
                ["$ref"] = "AppDetails",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            patch = {
              description = "Patches details of an app.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/details",
              httpMethod = "PATCH",
              id = "androidpublisher.edits.details.patch",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/details",
              request = {
                ["$ref"] = "AppDetails",
              },
              response = {
                ["$ref"] = "AppDetails",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            update = {
              description = "Updates details of an app.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/details",
              httpMethod = "PUT",
              id = "androidpublisher.edits.details.update",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/details",
              request = {
                ["$ref"] = "AppDetails",
              },
              response = {
                ["$ref"] = "AppDetails",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
        expansionfiles = {
          methods = {
            get = {
              description = "Fetches the expansion file configuration for the specified APK.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              httpMethod = "GET",
              id = "androidpublisher.edits.expansionfiles.get",
              parameterOrder = {
                "packageName",
                "editId",
                "apkVersionCode",
                "expansionFileType",
              },
              parameters = {
                apkVersionCode = {
                  description = "The version code of the APK whose expansion file configuration is being read or modified.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                expansionFileType = {
                  description = "The file type of the file configuration which is being read or modified.",
                  enum = {
                    "expansionFileTypeUnspecified",
                    "main",
                    "patch",
                  },
                  enumDescriptions = {
                    "Unspecified expansion file type.",
                    "Main expansion file.",
                    "Patch expansion file.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              response = {
                ["$ref"] = "ExpansionFile",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            patch = {
              description = "Patches the APK's expansion file configuration to reference another APK's expansion file. To add a new expansion file use the Upload method.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              httpMethod = "PATCH",
              id = "androidpublisher.edits.expansionfiles.patch",
              parameterOrder = {
                "packageName",
                "editId",
                "apkVersionCode",
                "expansionFileType",
              },
              parameters = {
                apkVersionCode = {
                  description = "The version code of the APK whose expansion file configuration is being read or modified.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                expansionFileType = {
                  description = "The file type of the expansion file configuration which is being updated.",
                  enum = {
                    "expansionFileTypeUnspecified",
                    "main",
                    "patch",
                  },
                  enumDescriptions = {
                    "Unspecified expansion file type.",
                    "Main expansion file.",
                    "Patch expansion file.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              request = {
                ["$ref"] = "ExpansionFile",
              },
              response = {
                ["$ref"] = "ExpansionFile",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            update = {
              description = "Updates the APK's expansion file configuration to reference another APK's expansion file. To add a new expansion file use the Upload method.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              httpMethod = "PUT",
              id = "androidpublisher.edits.expansionfiles.update",
              parameterOrder = {
                "packageName",
                "editId",
                "apkVersionCode",
                "expansionFileType",
              },
              parameters = {
                apkVersionCode = {
                  description = "The version code of the APK whose expansion file configuration is being read or modified.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                expansionFileType = {
                  description = "The file type of the file configuration which is being read or modified.",
                  enum = {
                    "expansionFileTypeUnspecified",
                    "main",
                    "patch",
                  },
                  enumDescriptions = {
                    "Unspecified expansion file type.",
                    "Main expansion file.",
                    "Patch expansion file.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              request = {
                ["$ref"] = "ExpansionFile",
              },
              response = {
                ["$ref"] = "ExpansionFile",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            upload = {
              description = "Uploads a new expansion file and attaches to the specified APK.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              httpMethod = "POST",
              id = "androidpublisher.edits.expansionfiles.upload",
              mediaUpload = {
                accept = {
                  "application/octet-stream",
                },
                maxSize = "2147483648",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
                  },
                },
              },
              parameterOrder = {
                "packageName",
                "editId",
                "apkVersionCode",
                "expansionFileType",
              },
              parameters = {
                apkVersionCode = {
                  description = "The version code of the APK whose expansion file configuration is being read or modified.",
                  format = "int32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                expansionFileType = {
                  description = "The file type of the expansion file configuration which is being updated.",
                  enum = {
                    "expansionFileTypeUnspecified",
                    "main",
                    "patch",
                  },
                  enumDescriptions = {
                    "Unspecified expansion file type.",
                    "Main expansion file.",
                    "Patch expansion file.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/apks/{apkVersionCode}/expansionFiles/{expansionFileType}",
              response = {
                ["$ref"] = "ExpansionFilesUploadResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
              supportsMediaUpload = true,
            },
          },
        },
        images = {
          methods = {
            delete = {
              description = "Deletes the image (specified by id) from the edit.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}/{imageId}",
              httpMethod = "DELETE",
              id = "androidpublisher.edits.images.delete",
              parameterOrder = {
                "packageName",
                "editId",
                "language",
                "imageType",
                "imageId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                imageId = {
                  description = "Unique identifier an image within the set of images attached to this edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                imageType = {
                  description = "Type of the Image.",
                  enum = {
                    "appImageTypeUnspecified",
                    "phoneScreenshots",
                    "sevenInchScreenshots",
                    "tenInchScreenshots",
                    "tvScreenshots",
                    "wearScreenshots",
                    "icon",
                    "featureGraphic",
                    "tvBanner",
                  },
                  enumDescriptions = {
                    "Unspecified type. Do not use.",
                    "Phone screenshot.",
                    "Seven inch screenshot.",
                    "Ten inch screenshot.",
                    "TV screenshot.",
                    "Wear screenshot.",
                    "Icon.",
                    "Feature graphic.",
                    "TV banner.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}/{imageId}",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            deleteall = {
              description = "Deletes all images for the specified language and image type. Returns an empty response if no images are found.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
              httpMethod = "DELETE",
              id = "androidpublisher.edits.images.deleteall",
              parameterOrder = {
                "packageName",
                "editId",
                "language",
                "imageType",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                imageType = {
                  description = "Type of the Image. Providing an image type that refers to no images is a no-op.",
                  enum = {
                    "appImageTypeUnspecified",
                    "phoneScreenshots",
                    "sevenInchScreenshots",
                    "tenInchScreenshots",
                    "tvScreenshots",
                    "wearScreenshots",
                    "icon",
                    "featureGraphic",
                    "tvBanner",
                  },
                  enumDescriptions = {
                    "Unspecified type. Do not use.",
                    "Phone screenshot.",
                    "Seven inch screenshot.",
                    "Ten inch screenshot.",
                    "TV screenshot.",
                    "Wear screenshot.",
                    "Icon.",
                    "Feature graphic.",
                    "TV banner.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). Providing a language that is not supported by the App is a no-op.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
              response = {
                ["$ref"] = "ImagesDeleteAllResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            list = {
              description = "Lists all images. The response may be empty.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
              httpMethod = "GET",
              id = "androidpublisher.edits.images.list",
              parameterOrder = {
                "packageName",
                "editId",
                "language",
                "imageType",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                imageType = {
                  description = "Type of the Image. Providing an image type that refers to no images will return an empty response.",
                  enum = {
                    "appImageTypeUnspecified",
                    "phoneScreenshots",
                    "sevenInchScreenshots",
                    "tenInchScreenshots",
                    "tvScreenshots",
                    "wearScreenshots",
                    "icon",
                    "featureGraphic",
                    "tvBanner",
                  },
                  enumDescriptions = {
                    "Unspecified type. Do not use.",
                    "Phone screenshot.",
                    "Seven inch screenshot.",
                    "Ten inch screenshot.",
                    "TV screenshot.",
                    "Wear screenshot.",
                    "Icon.",
                    "Feature graphic.",
                    "TV banner.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). There must be a store listing for the specified language.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
              response = {
                ["$ref"] = "ImagesListResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            upload = {
              description = "Uploads an image of the specified language and image type, and adds to the edit.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
              httpMethod = "POST",
              id = "androidpublisher.edits.images.upload",
              mediaUpload = {
                accept = {
                  "image/*",
                },
                maxSize = "15728640",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
                  },
                },
              },
              parameterOrder = {
                "packageName",
                "editId",
                "language",
                "imageType",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                imageType = {
                  description = "Type of the Image.",
                  enum = {
                    "appImageTypeUnspecified",
                    "phoneScreenshots",
                    "sevenInchScreenshots",
                    "tenInchScreenshots",
                    "tvScreenshots",
                    "wearScreenshots",
                    "icon",
                    "featureGraphic",
                    "tvBanner",
                  },
                  enumDescriptions = {
                    "Unspecified type. Do not use.",
                    "Phone screenshot.",
                    "Seven inch screenshot.",
                    "Ten inch screenshot.",
                    "TV screenshot.",
                    "Wear screenshot.",
                    "Icon.",
                    "Feature graphic.",
                    "TV banner.",
                  },
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German). Providing a language that is not supported by the App is a no-op.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}/{imageType}",
              response = {
                ["$ref"] = "ImagesUploadResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
              supportsMediaUpload = true,
            },
          },
        },
        listings = {
          methods = {
            delete = {
              description = "Deletes a localized store listing.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              httpMethod = "DELETE",
              id = "androidpublisher.edits.listings.delete",
              parameterOrder = {
                "packageName",
                "editId",
                "language",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            deleteall = {
              description = "Deletes all store listings.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings",
              httpMethod = "DELETE",
              id = "androidpublisher.edits.listings.deleteall",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            get = {
              description = "Gets a localized store listing.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              httpMethod = "GET",
              id = "androidpublisher.edits.listings.get",
              parameterOrder = {
                "packageName",
                "editId",
                "language",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              response = {
                ["$ref"] = "Listing",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            list = {
              description = "Lists all localized store listings.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings",
              httpMethod = "GET",
              id = "androidpublisher.edits.listings.list",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings",
              response = {
                ["$ref"] = "ListingsListResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            patch = {
              description = "Patches a localized store listing.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              httpMethod = "PATCH",
              id = "androidpublisher.edits.listings.patch",
              parameterOrder = {
                "packageName",
                "editId",
                "language",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              request = {
                ["$ref"] = "Listing",
              },
              response = {
                ["$ref"] = "Listing",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            update = {
              description = "Creates or updates a localized store listing.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              httpMethod = "PUT",
              id = "androidpublisher.edits.listings.update",
              parameterOrder = {
                "packageName",
                "editId",
                "language",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                language = {
                  description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/listings/{language}",
              request = {
                ["$ref"] = "Listing",
              },
              response = {
                ["$ref"] = "Listing",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
        testers = {
          methods = {
            get = {
              description = "Gets testers. Note: Testers resource does not support email lists.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}",
              httpMethod = "GET",
              id = "androidpublisher.edits.testers.get",
              parameterOrder = {
                "packageName",
                "editId",
                "track",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                track = {
                  description = "The track to read from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}",
              response = {
                ["$ref"] = "Testers",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            patch = {
              description = "Patches testers. Note: Testers resource does not support email lists.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}",
              httpMethod = "PATCH",
              id = "androidpublisher.edits.testers.patch",
              parameterOrder = {
                "packageName",
                "editId",
                "track",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                track = {
                  description = "The track to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}",
              request = {
                ["$ref"] = "Testers",
              },
              response = {
                ["$ref"] = "Testers",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            update = {
              description = "Updates testers. Note: Testers resource does not support email lists.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}",
              httpMethod = "PUT",
              id = "androidpublisher.edits.testers.update",
              parameterOrder = {
                "packageName",
                "editId",
                "track",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                track = {
                  description = "The track to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/testers/{track}",
              request = {
                ["$ref"] = "Testers",
              },
              response = {
                ["$ref"] = "Testers",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
        tracks = {
          methods = {
            get = {
              description = "Gets a track.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}",
              httpMethod = "GET",
              id = "androidpublisher.edits.tracks.get",
              parameterOrder = {
                "packageName",
                "editId",
                "track",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                track = {
                  description = "Identifier of the track.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}",
              response = {
                ["$ref"] = "Track",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            list = {
              description = "Lists all tracks.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks",
              httpMethod = "GET",
              id = "androidpublisher.edits.tracks.list",
              parameterOrder = {
                "packageName",
                "editId",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks",
              response = {
                ["$ref"] = "TracksListResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            patch = {
              description = "Patches a track.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}",
              httpMethod = "PATCH",
              id = "androidpublisher.edits.tracks.patch",
              parameterOrder = {
                "packageName",
                "editId",
                "track",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                track = {
                  description = "Identifier of the track.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}",
              request = {
                ["$ref"] = "Track",
              },
              response = {
                ["$ref"] = "Track",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            update = {
              description = "Updates a track.",
              flatPath = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}",
              httpMethod = "PUT",
              id = "androidpublisher.edits.tracks.update",
              parameterOrder = {
                "packageName",
                "editId",
                "track",
              },
              parameters = {
                editId = {
                  description = "Identifier of the edit.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                track = {
                  description = "Identifier of the track.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/edits/{editId}/tracks/{track}",
              request = {
                ["$ref"] = "Track",
              },
              response = {
                ["$ref"] = "Track",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
      },
    },
    generatedapks = {
      methods = {
        download = {
          description = "Downloads a single signed APK generated from an app bundle.",
          flatPath = "androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}/downloads/{downloadId}:download",
          httpMethod = "GET",
          id = "androidpublisher.generatedapks.download",
          parameterOrder = {
            "packageName",
            "versionCode",
            "downloadId",
          },
          parameters = {
            downloadId = {
              description = "Download ID, which uniquely identifies the APK to download. Can be obtained from the response of `generatedapks.list` method.",
              location = "path",
              required = true,
              type = "string",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            versionCode = {
              description = "Version code of the app bundle.",
              format = "int32",
              location = "path",
              required = true,
              type = "integer",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}/downloads/{downloadId}:download",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
        list = {
          description = "Returns download metadata for all APKs that were generated from a given app bundle.",
          flatPath = "androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}",
          httpMethod = "GET",
          id = "androidpublisher.generatedapks.list",
          parameterOrder = {
            "packageName",
            "versionCode",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            versionCode = {
              description = "Version code of the app bundle.",
              format = "int32",
              location = "path",
              required = true,
              type = "integer",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/generatedApks/{versionCode}",
          response = {
            ["$ref"] = "GeneratedApksListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
    grants = {
      methods = {
        create = {
          description = "Grant access for a user to the given package.",
          flatPath = "androidpublisher/v3/developers/{developersId}/users/{usersId}/grants",
          httpMethod = "POST",
          id = "androidpublisher.grants.create",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The user which needs permission. Format: developers/{developer}/users/{user}",
              location = "path",
              pattern = "^developers/[^/]+/users/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/{+parent}/grants",
          request = {
            ["$ref"] = "Grant",
          },
          response = {
            ["$ref"] = "Grant",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        delete = {
          description = "Removes all access for the user to the given package or developer account.",
          flatPath = "androidpublisher/v3/developers/{developersId}/users/{usersId}/grants/{grantsId}",
          httpMethod = "DELETE",
          id = "androidpublisher.grants.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the grant to delete. Format: developers/{developer}/users/{email}/grants/{package_name}",
              location = "path",
              pattern = "^developers/[^/]+/users/[^/]+/grants/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/{+name}",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        patch = {
          description = "Updates access for the user to the given package.",
          flatPath = "androidpublisher/v3/developers/{developersId}/users/{usersId}/grants/{grantsId}",
          httpMethod = "PATCH",
          id = "androidpublisher.grants.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name for this grant, following the pattern \"developers/{developer}/users/{email}/grants/{package_name}\". If this grant is for a draft app, the app ID will be used in this resource name instead of the package name.",
              location = "path",
              pattern = "^developers/[^/]+/users/[^/]+/grants/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. The list of fields to be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "androidpublisher/v3/{+name}",
          request = {
            ["$ref"] = "Grant",
          },
          response = {
            ["$ref"] = "Grant",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
    inappproducts = {
      methods = {
        delete = {
          description = "Deletes an in-app product (i.e. a managed product or a subscriptions).",
          flatPath = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          httpMethod = "DELETE",
          id = "androidpublisher.inappproducts.delete",
          parameterOrder = {
            "packageName",
            "sku",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            sku = {
              description = "Unique identifier for the in-app product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        get = {
          description = "Gets an in-app product, which can be a managed product or a subscription.",
          flatPath = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          httpMethod = "GET",
          id = "androidpublisher.inappproducts.get",
          parameterOrder = {
            "packageName",
            "sku",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            sku = {
              description = "Unique identifier for the in-app product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          response = {
            ["$ref"] = "InAppProduct",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        insert = {
          description = "Creates an in-app product (i.e. a managed product or a subscriptions).",
          flatPath = "androidpublisher/v3/applications/{packageName}/inappproducts",
          httpMethod = "POST",
          id = "androidpublisher.inappproducts.insert",
          parameterOrder = {
            "packageName",
          },
          parameters = {
            autoConvertMissingPrices = {
              description = "If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.",
              location = "query",
              type = "boolean",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/inappproducts",
          request = {
            ["$ref"] = "InAppProduct",
          },
          response = {
            ["$ref"] = "InAppProduct",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        list = {
          description = "Lists all in-app products - both managed products and subscriptions. If an app has a large number of in-app products, the response may be paginated. In this case the response field `tokenPagination.nextPageToken` will be set and the caller should provide its value as a `token` request parameter to retrieve the next page.",
          flatPath = "androidpublisher/v3/applications/{packageName}/inappproducts",
          httpMethod = "GET",
          id = "androidpublisher.inappproducts.list",
          parameterOrder = {
            "packageName",
          },
          parameters = {
            maxResults = {
              description = "Deprecated and ignored. The page size is determined by the server.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            startIndex = {
              description = "Deprecated and ignored. Set the `token` parameter to rertieve the next page.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            token = {
              description = "Pagination token. If empty, list starts at the first product.",
              location = "query",
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/inappproducts",
          response = {
            ["$ref"] = "InappproductsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        patch = {
          description = "Patches an in-app product (i.e. a managed product or a subscriptions).",
          flatPath = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          httpMethod = "PATCH",
          id = "androidpublisher.inappproducts.patch",
          parameterOrder = {
            "packageName",
            "sku",
          },
          parameters = {
            autoConvertMissingPrices = {
              description = "If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.",
              location = "query",
              type = "boolean",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            sku = {
              description = "Unique identifier for the in-app product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          request = {
            ["$ref"] = "InAppProduct",
          },
          response = {
            ["$ref"] = "InAppProduct",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        update = {
          description = "Updates an in-app product (i.e. a managed product or a subscriptions).",
          flatPath = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          httpMethod = "PUT",
          id = "androidpublisher.inappproducts.update",
          parameterOrder = {
            "packageName",
            "sku",
          },
          parameters = {
            allowMissing = {
              description = "If set to true, and the in-app product with the given package_name and sku doesn't exist, the in-app product will be created.",
              location = "query",
              type = "boolean",
            },
            autoConvertMissingPrices = {
              description = "If true the prices for all regions targeted by the parent app that don't have a price specified for this in-app product will be auto converted to the target currency based on the default price. Defaults to false.",
              location = "query",
              type = "boolean",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            sku = {
              description = "Unique identifier for the in-app product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/inappproducts/{sku}",
          request = {
            ["$ref"] = "InAppProduct",
          },
          response = {
            ["$ref"] = "InAppProduct",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
    internalappsharingartifacts = {
      methods = {
        uploadapk = {
          description = "Uploads an APK to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors) for an example in java.",
          flatPath = "androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk",
          httpMethod = "POST",
          id = "androidpublisher.internalappsharingartifacts.uploadapk",
          mediaUpload = {
            accept = {
              "application/octet-stream",
              "application/vnd.android.package-archive",
            },
            maxSize = "1073741824",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk",
              },
              simple = {
                multipart = true,
                path = "/upload/androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk",
              },
            },
          },
          parameterOrder = {
            "packageName",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/apk",
          response = {
            ["$ref"] = "InternalAppSharingArtifact",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
          supportsMediaUpload = true,
        },
        uploadbundle = {
          description = "Uploads an app bundle to internal app sharing. If you are using the Google API client libraries, please increase the timeout of the http request before calling this endpoint (a timeout of 2 minutes is recommended). See [Timeouts and Errors](https://developers.google.com/api-client-library/java/google-api-java-client/errors) for an example in java.",
          flatPath = "androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle",
          httpMethod = "POST",
          id = "androidpublisher.internalappsharingartifacts.uploadbundle",
          mediaUpload = {
            accept = {
              "application/octet-stream",
            },
            maxSize = "10737418240",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle",
              },
              simple = {
                multipart = true,
                path = "/upload/androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle",
              },
            },
          },
          parameterOrder = {
            "packageName",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/internalappsharing/{packageName}/artifacts/bundle",
          response = {
            ["$ref"] = "InternalAppSharingArtifact",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
          supportsMediaUpload = true,
        },
      },
    },
    monetization = {
      methods = {
        convertRegionPrices = {
          description = "Calculates the region prices, using today's exchange rate and country-specific pricing patterns, based on the price in the request for a set of regions.",
          flatPath = "androidpublisher/v3/applications/{packageName}/pricing:convertRegionPrices",
          httpMethod = "POST",
          id = "androidpublisher.monetization.convertRegionPrices",
          parameterOrder = {
            "packageName",
          },
          parameters = {
            packageName = {
              description = "Required. The app package name.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/pricing:convertRegionPrices",
          request = {
            ["$ref"] = "ConvertRegionPricesRequest",
          },
          response = {
            ["$ref"] = "ConvertRegionPricesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
      resources = {
        subscriptions = {
          methods = {
            archive = {
              description = "Archives a subscription. Can only be done if at least one base plan was active in the past, and no base plan is available for new or existing subscribers currently. This action is irreversible, and the subscription ID will remain reserved.",
              flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}:archive",
              httpMethod = "POST",
              id = "androidpublisher.monetization.subscriptions.archive",
              parameterOrder = {
                "packageName",
                "productId",
              },
              parameters = {
                packageName = {
                  description = "Required. The parent app (package name) of the app of the subscription to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                productId = {
                  description = "Required. The unique product ID of the subscription to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}:archive",
              request = {
                ["$ref"] = "ArchiveSubscriptionRequest",
              },
              response = {
                ["$ref"] = "Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            create = {
              description = "Creates a new subscription. Newly added base plans will remain in draft state until activated.",
              flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions",
              httpMethod = "POST",
              id = "androidpublisher.monetization.subscriptions.create",
              parameterOrder = {
                "packageName",
              },
              parameters = {
                packageName = {
                  description = "Required. The parent app (package name) for which the subscription should be created. Must be equal to the package_name field on the Subscription resource.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                productId = {
                  description = "Required. The ID to use for the subscription. For the requirements on this format, see the documentation of the product_id field on the Subscription resource.",
                  location = "query",
                  type = "string",
                },
                ["regionsVersion.version"] = {
                  description = "Required. A string representing version of the available regions being used for the specified resource. The current version is 2022/01.",
                  location = "query",
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/subscriptions",
              request = {
                ["$ref"] = "Subscription",
              },
              response = {
                ["$ref"] = "Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            delete = {
              description = "Deletes a subscription. A subscription can only be deleted if it has never had a base plan published.",
              flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}",
              httpMethod = "DELETE",
              id = "androidpublisher.monetization.subscriptions.delete",
              parameterOrder = {
                "packageName",
                "productId",
              },
              parameters = {
                packageName = {
                  description = "Required. The parent app (package name) of the app of the subscription to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                productId = {
                  description = "Required. The unique product ID of the subscription to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            get = {
              description = "Reads a single subscription.",
              flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}",
              httpMethod = "GET",
              id = "androidpublisher.monetization.subscriptions.get",
              parameterOrder = {
                "packageName",
                "productId",
              },
              parameters = {
                packageName = {
                  description = "Required. The parent app (package name) of the subscription to get.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                productId = {
                  description = "Required. The unique product ID of the subscription to get.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}",
              response = {
                ["$ref"] = "Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            list = {
              description = "Lists all subscriptions under a given app.",
              flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions",
              httpMethod = "GET",
              id = "androidpublisher.monetization.subscriptions.list",
              parameterOrder = {
                "packageName",
              },
              parameters = {
                packageName = {
                  description = "Required. The parent app (package name) for which the subscriptions should be read.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of subscriptions to return. The service may return fewer than this value. If unspecified, at most 50 subscriptions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListSubscriptions` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListSubscriptions` must match the call that provided the page token.",
                  location = "query",
                  type = "string",
                },
                showArchived = {
                  description = "Whether archived subscriptions should be included in the response. Defaults to false.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/subscriptions",
              response = {
                ["$ref"] = "ListSubscriptionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            patch = {
              description = "Updates an existing subscription.",
              flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}",
              httpMethod = "PATCH",
              id = "androidpublisher.monetization.subscriptions.patch",
              parameterOrder = {
                "packageName",
                "productId",
              },
              parameters = {
                packageName = {
                  description = "Immutable. Package name of the parent app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                productId = {
                  description = "Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be composed of lower-case letters (a-z), numbers (0-9), underscores (_) and dots (.). It must start with a lower-case letter or number, and be between 1 and 40 (inclusive) characters in length.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                ["regionsVersion.version"] = {
                  description = "Required. A string representing version of the available regions being used for the specified resource. The current version is 2022/01.",
                  location = "query",
                  type = "string",
                },
                updateMask = {
                  description = "Required. The list of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}",
              request = {
                ["$ref"] = "Subscription",
              },
              response = {
                ["$ref"] = "Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
          resources = {
            basePlans = {
              methods = {
                activate = {
                  description = "Activates a base plan. Once activated, base plans will be available to new subscribers.",
                  flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:activate",
                  httpMethod = "POST",
                  id = "androidpublisher.monetization.subscriptions.basePlans.activate",
                  parameterOrder = {
                    "packageName",
                    "productId",
                    "basePlanId",
                  },
                  parameters = {
                    basePlanId = {
                      description = "Required. The unique base plan ID of the base plan to activate.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    packageName = {
                      description = "Required. The parent app (package name) of the base plan to activate.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    productId = {
                      description = "Required. The parent subscription (ID) of the base plan to activate.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:activate",
                  request = {
                    ["$ref"] = "ActivateBasePlanRequest",
                  },
                  response = {
                    ["$ref"] = "Subscription",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/androidpublisher",
                  },
                },
                deactivate = {
                  description = "Deactivates a base plan. Once deactivated, the base plan will become unavailable to new subscribers, but existing subscribers will maintain their subscription",
                  flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:deactivate",
                  httpMethod = "POST",
                  id = "androidpublisher.monetization.subscriptions.basePlans.deactivate",
                  parameterOrder = {
                    "packageName",
                    "productId",
                    "basePlanId",
                  },
                  parameters = {
                    basePlanId = {
                      description = "Required. The unique base plan ID of the base plan to deactivate.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    packageName = {
                      description = "Required. The parent app (package name) of the base plan to deactivate.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    productId = {
                      description = "Required. The parent subscription (ID) of the base plan to deactivate.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:deactivate",
                  request = {
                    ["$ref"] = "DeactivateBasePlanRequest",
                  },
                  response = {
                    ["$ref"] = "Subscription",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/androidpublisher",
                  },
                },
                delete = {
                  description = "Deletes a base plan. Can only be done for draft base plans. This action is irreversible.",
                  flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}",
                  httpMethod = "DELETE",
                  id = "androidpublisher.monetization.subscriptions.basePlans.delete",
                  parameterOrder = {
                    "packageName",
                    "productId",
                    "basePlanId",
                  },
                  parameters = {
                    basePlanId = {
                      description = "Required. The unique offer ID of the base plan to delete.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    packageName = {
                      description = "Required. The parent app (package name) of the base plan to delete.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    productId = {
                      description = "Required. The parent subscription (ID) of the base plan to delete.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}",
                  scopes = {
                    "https://www.googleapis.com/auth/androidpublisher",
                  },
                },
                migratePrices = {
                  description = "Migrates subscribers who are receiving an historical subscription price to the currently-offered price for the specified region. Requests will cause price change notifications to be sent to users who are currently receiving an historical price older than the supplied timestamp. Subscribers who do not agree to the new price will have their subscription ended at the next renewal.",
                  flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:migratePrices",
                  httpMethod = "POST",
                  id = "androidpublisher.monetization.subscriptions.basePlans.migratePrices",
                  parameterOrder = {
                    "packageName",
                    "productId",
                    "basePlanId",
                  },
                  parameters = {
                    basePlanId = {
                      description = "Required. The unique base plan ID of the base plan to update prices on.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    packageName = {
                      description = "Required. Package name of the parent app. Must be equal to the package_name field on the Subscription resource.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    productId = {
                      description = "Required. The ID of the subscription to update. Must be equal to the product_id field on the Subscription resource.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}:migratePrices",
                  request = {
                    ["$ref"] = "MigrateBasePlanPricesRequest",
                  },
                  response = {
                    ["$ref"] = "MigrateBasePlanPricesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/androidpublisher",
                  },
                },
              },
              resources = {
                offers = {
                  methods = {
                    activate = {
                      description = "Activates a subscription offer. Once activated, subscription offers will be available to new subscribers.",
                      flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:activate",
                      httpMethod = "POST",
                      id = "androidpublisher.monetization.subscriptions.basePlans.offers.activate",
                      parameterOrder = {
                        "packageName",
                        "productId",
                        "basePlanId",
                        "offerId",
                      },
                      parameters = {
                        basePlanId = {
                          description = "Required. The parent base plan (ID) of the offer to activate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        offerId = {
                          description = "Required. The unique offer ID of the offer to activate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        packageName = {
                          description = "Required. The parent app (package name) of the offer to activate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        productId = {
                          description = "Required. The parent subscription (ID) of the offer to activate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:activate",
                      request = {
                        ["$ref"] = "ActivateSubscriptionOfferRequest",
                      },
                      response = {
                        ["$ref"] = "SubscriptionOffer",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/androidpublisher",
                      },
                    },
                    create = {
                      description = "Creates a new subscription offer. Only auto-renewing base plans can have subscription offers. The offer state will be DRAFT until it is activated.",
                      flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers",
                      httpMethod = "POST",
                      id = "androidpublisher.monetization.subscriptions.basePlans.offers.create",
                      parameterOrder = {
                        "packageName",
                        "productId",
                        "basePlanId",
                      },
                      parameters = {
                        basePlanId = {
                          description = "Required. The parent base plan (ID) for which the offer should be created. Must be equal to the base_plan_id field on the SubscriptionOffer resource.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        offerId = {
                          description = "Required. The ID to use for the offer. For the requirements on this format, see the documentation of the offer_id field on the SubscriptionOffer resource.",
                          location = "query",
                          type = "string",
                        },
                        packageName = {
                          description = "Required. The parent app (package name) for which the offer should be created. Must be equal to the package_name field on the Subscription resource.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        productId = {
                          description = "Required. The parent subscription (ID) for which the offer should be created. Must be equal to the product_id field on the SubscriptionOffer resource.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        ["regionsVersion.version"] = {
                          description = "Required. A string representing version of the available regions being used for the specified resource. The current version is 2022/01.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers",
                      request = {
                        ["$ref"] = "SubscriptionOffer",
                      },
                      response = {
                        ["$ref"] = "SubscriptionOffer",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/androidpublisher",
                      },
                    },
                    deactivate = {
                      description = "Deactivates a subscription offer. Once deactivated, existing subscribers will maintain their subscription, but the offer will become unavailable to new subscribers.",
                      flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:deactivate",
                      httpMethod = "POST",
                      id = "androidpublisher.monetization.subscriptions.basePlans.offers.deactivate",
                      parameterOrder = {
                        "packageName",
                        "productId",
                        "basePlanId",
                        "offerId",
                      },
                      parameters = {
                        basePlanId = {
                          description = "Required. The parent base plan (ID) of the offer to deactivate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        offerId = {
                          description = "Required. The unique offer ID of the offer to deactivate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        packageName = {
                          description = "Required. The parent app (package name) of the offer to deactivate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        productId = {
                          description = "Required. The parent subscription (ID) of the offer to deactivate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}:deactivate",
                      request = {
                        ["$ref"] = "DeactivateSubscriptionOfferRequest",
                      },
                      response = {
                        ["$ref"] = "SubscriptionOffer",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/androidpublisher",
                      },
                    },
                    delete = {
                      description = "Deletes a subscription offer. Can only be done for draft offers. This action is irreversible.",
                      flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}",
                      httpMethod = "DELETE",
                      id = "androidpublisher.monetization.subscriptions.basePlans.offers.delete",
                      parameterOrder = {
                        "packageName",
                        "productId",
                        "basePlanId",
                        "offerId",
                      },
                      parameters = {
                        basePlanId = {
                          description = "Required. The parent base plan (ID) of the offer to delete.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        offerId = {
                          description = "Required. The unique offer ID of the offer to delete.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        packageName = {
                          description = "Required. The parent app (package name) of the offer to delete.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        productId = {
                          description = "Required. The parent subscription (ID) of the offer to delete.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}",
                      scopes = {
                        "https://www.googleapis.com/auth/androidpublisher",
                      },
                    },
                    get = {
                      description = "Reads a single offer",
                      flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}",
                      httpMethod = "GET",
                      id = "androidpublisher.monetization.subscriptions.basePlans.offers.get",
                      parameterOrder = {
                        "packageName",
                        "productId",
                        "basePlanId",
                        "offerId",
                      },
                      parameters = {
                        basePlanId = {
                          description = "Required. The parent base plan (ID) of the offer to get.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        offerId = {
                          description = "Required. The unique offer ID of the offer to get.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        packageName = {
                          description = "Required. The parent app (package name) of the offer to get.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        productId = {
                          description = "Required. The parent subscription (ID) of the offer to get.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}",
                      response = {
                        ["$ref"] = "SubscriptionOffer",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/androidpublisher",
                      },
                    },
                    list = {
                      description = "Lists all offers under a given subscription.",
                      flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers",
                      httpMethod = "GET",
                      id = "androidpublisher.monetization.subscriptions.basePlans.offers.list",
                      parameterOrder = {
                        "packageName",
                        "productId",
                        "basePlanId",
                      },
                      parameters = {
                        basePlanId = {
                          description = "Required. The parent base plan (ID) for which the offers should be read. May be specified as '-' to read all offers under a subscription.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        packageName = {
                          description = "Required. The parent app (package name) for which the subscriptions should be read.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        pageSize = {
                          description = "The maximum number of subscriptions to return. The service may return fewer than this value. If unspecified, at most 50 subscriptions will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, received from a previous `ListSubscriptionsOffers` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListSubscriptionOffers` must match the call that provided the page token.",
                          location = "query",
                          type = "string",
                        },
                        productId = {
                          description = "Required. The parent subscription (ID) for which the offers should be read.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers",
                      response = {
                        ["$ref"] = "ListSubscriptionOffersResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/androidpublisher",
                      },
                    },
                    patch = {
                      description = "Updates an existing subscription offer.",
                      flatPath = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}",
                      httpMethod = "PATCH",
                      id = "androidpublisher.monetization.subscriptions.basePlans.offers.patch",
                      parameterOrder = {
                        "packageName",
                        "productId",
                        "basePlanId",
                        "offerId",
                      },
                      parameters = {
                        basePlanId = {
                          description = "Required. Immutable. The ID of the base plan to which this offer is an extension.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        offerId = {
                          description = "Required. Immutable. Unique ID of this subscription offer. Must be unique within the base plan.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        packageName = {
                          description = "Required. Immutable. The package name of the app the parent subscription belongs to.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        productId = {
                          description = "Required. Immutable. The ID of the parent subscription this offer belongs to.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        ["regionsVersion.version"] = {
                          description = "Required. A string representing version of the available regions being used for the specified resource. The current version is 2022/01.",
                          location = "query",
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. The list of fields to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "androidpublisher/v3/applications/{packageName}/subscriptions/{productId}/basePlans/{basePlanId}/offers/{offerId}",
                      request = {
                        ["$ref"] = "SubscriptionOffer",
                      },
                      response = {
                        ["$ref"] = "SubscriptionOffer",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/androidpublisher",
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
    orders = {
      methods = {
        refund = {
          description = "Refunds a user's subscription or in-app purchase order. Orders older than 1 year cannot be refunded.",
          flatPath = "androidpublisher/v3/applications/{packageName}/orders/{orderId}:refund",
          httpMethod = "POST",
          id = "androidpublisher.orders.refund",
          parameterOrder = {
            "packageName",
            "orderId",
          },
          parameters = {
            orderId = {
              description = "The order ID provided to the user when the subscription or in-app order was purchased.",
              location = "path",
              required = true,
              type = "string",
            },
            packageName = {
              description = "The package name of the application for which this subscription or in-app item was purchased (for example, 'com.some.thing').",
              location = "path",
              required = true,
              type = "string",
            },
            revoke = {
              description = "Whether to revoke the purchased item. If set to true, access to the subscription or in-app item will be terminated immediately. If the item is a recurring subscription, all future payments will also be terminated. Consumed in-app items need to be handled by developer's app. (optional).",
              location = "query",
              type = "boolean",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/orders/{orderId}:refund",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
    purchases = {
      resources = {
        products = {
          methods = {
            acknowledge = {
              description = "Acknowledges a purchase of an inapp item.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:acknowledge",
              httpMethod = "POST",
              id = "androidpublisher.purchases.products.acknowledge",
              parameterOrder = {
                "packageName",
                "productId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application the inapp product was sold in (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                productId = {
                  description = "The inapp product SKU (for example, 'com.some.thing.inapp1').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the inapp product was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}:acknowledge",
              request = {
                ["$ref"] = "ProductPurchasesAcknowledgeRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            get = {
              description = "Checks the purchase and consumption status of an inapp item.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}",
              httpMethod = "GET",
              id = "androidpublisher.purchases.products.get",
              parameterOrder = {
                "packageName",
                "productId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application the inapp product was sold in (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                productId = {
                  description = "The inapp product SKU (for example, 'com.some.thing.inapp1').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the inapp product was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/products/{productId}/tokens/{token}",
              response = {
                ["$ref"] = "ProductPurchase",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
        subscriptions = {
          methods = {
            acknowledge = {
              description = "Acknowledges a subscription purchase.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:acknowledge",
              httpMethod = "POST",
              id = "androidpublisher.purchases.subscriptions.acknowledge",
              parameterOrder = {
                "packageName",
                "subscriptionId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application for which this subscription was purchased (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "The purchased subscription ID (for example, 'monthly001').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the subscription was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:acknowledge",
              request = {
                ["$ref"] = "SubscriptionPurchasesAcknowledgeRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            cancel = {
              description = "Cancels a user's subscription purchase. The subscription remains valid until its expiration time.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel",
              httpMethod = "POST",
              id = "androidpublisher.purchases.subscriptions.cancel",
              parameterOrder = {
                "packageName",
                "subscriptionId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application for which this subscription was purchased (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "The purchased subscription ID (for example, 'monthly001').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the subscription was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:cancel",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            defer = {
              description = "Defers a user's subscription purchase until a specified future expiration time.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:defer",
              httpMethod = "POST",
              id = "androidpublisher.purchases.subscriptions.defer",
              parameterOrder = {
                "packageName",
                "subscriptionId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application for which this subscription was purchased (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "The purchased subscription ID (for example, 'monthly001').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the subscription was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:defer",
              request = {
                ["$ref"] = "SubscriptionPurchasesDeferRequest",
              },
              response = {
                ["$ref"] = "SubscriptionPurchasesDeferResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            get = {
              description = "Checks whether a user's subscription purchase is valid and returns its expiry time.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}",
              httpMethod = "GET",
              id = "androidpublisher.purchases.subscriptions.get",
              parameterOrder = {
                "packageName",
                "subscriptionId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application for which this subscription was purchased (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "The purchased subscription ID (for example, 'monthly001').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the subscription was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}",
              response = {
                ["$ref"] = "SubscriptionPurchase",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            refund = {
              description = "Refunds a user's subscription purchase, but the subscription remains valid until its expiration time and it will continue to recur.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:refund",
              httpMethod = "POST",
              id = "androidpublisher.purchases.subscriptions.refund",
              parameterOrder = {
                "packageName",
                "subscriptionId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application for which this subscription was purchased (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "\"The purchased subscription ID (for example, 'monthly001').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the subscription was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:refund",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            revoke = {
              description = "Refunds and immediately revokes a user's subscription purchase. Access to the subscription will be terminated immediately and it will stop recurring.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:revoke",
              httpMethod = "POST",
              id = "androidpublisher.purchases.subscriptions.revoke",
              parameterOrder = {
                "packageName",
                "subscriptionId",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package name of the application for which this subscription was purchased (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                subscriptionId = {
                  description = "The purchased subscription ID (for example, 'monthly001').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "The token provided to the user's device when the subscription was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/subscriptions/{subscriptionId}/tokens/{token}:revoke",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
        subscriptionsv2 = {
          methods = {
            get = {
              description = "Get metadata about a subscription",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}",
              httpMethod = "GET",
              id = "androidpublisher.purchases.subscriptionsv2.get",
              parameterOrder = {
                "packageName",
                "token",
              },
              parameters = {
                packageName = {
                  description = "The package of the application for which this subscription was purchased (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                token = {
                  description = "Required. The token provided to the user's device when the subscription was purchased.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/subscriptionsv2/tokens/{token}",
              response = {
                ["$ref"] = "SubscriptionPurchaseV2",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
        voidedpurchases = {
          methods = {
            list = {
              description = "Lists the purchases that were canceled, refunded or charged-back.",
              flatPath = "androidpublisher/v3/applications/{packageName}/purchases/voidedpurchases",
              httpMethod = "GET",
              id = "androidpublisher.purchases.voidedpurchases.list",
              parameterOrder = {
                "packageName",
              },
              parameters = {
                endTime = {
                  description = "The time, in milliseconds since the Epoch, of the newest voided purchase that you want to see in the response. The value of this parameter cannot be greater than the current time and is ignored if a pagination token is set. Default value is current time. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.",
                  format = "int64",
                  location = "query",
                  type = "string",
                },
                maxResults = {
                  description = "Defines how many results the list operation should return. The default number depends on the resource collection.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
                packageName = {
                  description = "The package name of the application for which voided purchases need to be returned (for example, 'com.some.thing').",
                  location = "path",
                  required = true,
                  type = "string",
                },
                startIndex = {
                  description = "Defines the index of the first element to return. This can only be used if indexed paging is enabled.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
                startTime = {
                  description = "The time, in milliseconds since the Epoch, of the oldest voided purchase that you want to see in the response. The value of this parameter cannot be older than 30 days and is ignored if a pagination token is set. Default value is current time minus 30 days. Note: This filter is applied on the time at which the record is seen as voided by our systems and not the actual voided time returned in the response.",
                  format = "int64",
                  location = "query",
                  type = "string",
                },
                token = {
                  description = "Defines the token of the page to return, usually taken from TokenPagination. This can only be used if token paging is enabled.",
                  location = "query",
                  type = "string",
                },
                type = {
                  description = "The type of voided purchases that you want to see in the response. Possible values are: 0. Only voided in-app product purchases will be returned in the response. This is the default value. 1. Both voided in-app purchases and voided subscription purchases will be returned in the response. Note: Before requesting to receive voided subscription purchases, you must switch to use orderId in the response which uniquely identifies one-time purchases and subscriptions. Otherwise, you will receive multiple subscription orders with the same PurchaseToken, because subscription renewal orders share the same PurchaseToken.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/purchases/voidedpurchases",
              response = {
                ["$ref"] = "VoidedPurchasesListResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
      },
    },
    reviews = {
      methods = {
        get = {
          description = "Gets a single review.",
          flatPath = "androidpublisher/v3/applications/{packageName}/reviews/{reviewId}",
          httpMethod = "GET",
          id = "androidpublisher.reviews.get",
          parameterOrder = {
            "packageName",
            "reviewId",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            reviewId = {
              description = "Unique identifier for a review.",
              location = "path",
              required = true,
              type = "string",
            },
            translationLanguage = {
              description = "Language localization code.",
              location = "query",
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/reviews/{reviewId}",
          response = {
            ["$ref"] = "Review",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        list = {
          description = "Lists all reviews.",
          flatPath = "androidpublisher/v3/applications/{packageName}/reviews",
          httpMethod = "GET",
          id = "androidpublisher.reviews.list",
          parameterOrder = {
            "packageName",
          },
          parameters = {
            maxResults = {
              description = "How many results the list operation should return.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            startIndex = {
              description = "The index of the first element to return.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            token = {
              description = "Pagination token. If empty, list starts at the first review.",
              location = "query",
              type = "string",
            },
            translationLanguage = {
              description = "Language localization code.",
              location = "query",
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/reviews",
          response = {
            ["$ref"] = "ReviewsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        reply = {
          description = "Replies to a single review, or updates an existing reply.",
          flatPath = "androidpublisher/v3/applications/{packageName}/reviews/{reviewId}:reply",
          httpMethod = "POST",
          id = "androidpublisher.reviews.reply",
          parameterOrder = {
            "packageName",
            "reviewId",
          },
          parameters = {
            packageName = {
              description = "Package name of the app.",
              location = "path",
              required = true,
              type = "string",
            },
            reviewId = {
              description = "Unique identifier for a review.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/applications/{packageName}/reviews/{reviewId}:reply",
          request = {
            ["$ref"] = "ReviewsReplyRequest",
          },
          response = {
            ["$ref"] = "ReviewsReplyResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
    systemapks = {
      resources = {
        variants = {
          methods = {
            create = {
              description = "Creates an APK which is suitable for inclusion in a system image from an already uploaded Android App Bundle.",
              flatPath = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants",
              httpMethod = "POST",
              id = "androidpublisher.systemapks.variants.create",
              parameterOrder = {
                "packageName",
                "versionCode",
              },
              parameters = {
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                versionCode = {
                  description = "The version code of the App Bundle.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants",
              request = {
                ["$ref"] = "Variant",
              },
              response = {
                ["$ref"] = "Variant",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            download = {
              description = "Downloads a previously created system APK which is suitable for inclusion in a system image.",
              flatPath = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}:download",
              httpMethod = "GET",
              id = "androidpublisher.systemapks.variants.download",
              parameterOrder = {
                "packageName",
                "versionCode",
                "variantId",
              },
              parameters = {
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                variantId = {
                  description = "The ID of a previously created system APK variant.",
                  format = "uint32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                versionCode = {
                  description = "The version code of the App Bundle.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}:download",
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
              supportsMediaDownload = true,
              useMediaDownloadService = true,
            },
            get = {
              description = "Returns a previously created system APK variant.",
              flatPath = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}",
              httpMethod = "GET",
              id = "androidpublisher.systemapks.variants.get",
              parameterOrder = {
                "packageName",
                "versionCode",
                "variantId",
              },
              parameters = {
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                variantId = {
                  description = "The ID of a previously created system APK variant.",
                  format = "uint32",
                  location = "path",
                  required = true,
                  type = "integer",
                },
                versionCode = {
                  description = "The version code of the App Bundle.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants/{variantId}",
              response = {
                ["$ref"] = "Variant",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
            list = {
              description = "Returns the list of previously created system APK variants.",
              flatPath = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants",
              httpMethod = "GET",
              id = "androidpublisher.systemapks.variants.list",
              parameterOrder = {
                "packageName",
                "versionCode",
              },
              parameters = {
                packageName = {
                  description = "Package name of the app.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                versionCode = {
                  description = "The version code of the App Bundle.",
                  format = "int64",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "androidpublisher/v3/applications/{packageName}/systemApks/{versionCode}/variants",
              response = {
                ["$ref"] = "SystemApksListResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/androidpublisher",
              },
            },
          },
        },
      },
    },
    users = {
      methods = {
        create = {
          description = "Grant access for a user to the given developer account.",
          flatPath = "androidpublisher/v3/developers/{developersId}/users",
          httpMethod = "POST",
          id = "androidpublisher.users.create",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. The developer account to add the user to. Format: developers/{developer}",
              location = "path",
              pattern = "^developers/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/{+parent}/users",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        delete = {
          description = "Removes all access for the user to the given developer account.",
          flatPath = "androidpublisher/v3/developers/{developersId}/users/{usersId}",
          httpMethod = "DELETE",
          id = "androidpublisher.users.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the user to delete. Format: developers/{developer}/users/{email}",
              location = "path",
              pattern = "^developers/[^/]+/users/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/{+name}",
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        list = {
          description = "Lists all users with access to a developer account.",
          flatPath = "androidpublisher/v3/developers/{developersId}/users",
          httpMethod = "GET",
          id = "androidpublisher.users.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            pageSize = {
              description = "The maximum number of results to return. This must be set to -1 to disable pagination.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token received from a previous call to this method, in order to retrieve further results.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The developer account to fetch users from. Format: developers/{developer}",
              location = "path",
              pattern = "^developers/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "androidpublisher/v3/{+parent}/users",
          response = {
            ["$ref"] = "ListUsersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
        patch = {
          description = "Updates access for the user to the developer account.",
          flatPath = "androidpublisher/v3/developers/{developersId}/users/{usersId}",
          httpMethod = "PATCH",
          id = "androidpublisher.users.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name for this user, following the pattern \"developers/{developer}/users/{email}\".",
              location = "path",
              pattern = "^developers/[^/]+/users/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. The list of fields to be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "androidpublisher/v3/{+name}",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidpublisher",
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://androidpublisher.googleapis.com/",
  schemas = {
    AcquisitionTargetingRule = {
      description = "Represents a targeting rule of the form: User never had {scope} before.",
      id = "AcquisitionTargetingRule",
      properties = {
        scope = {
          ["$ref"] = "TargetingRuleScope",
          description = "Required. The scope of subscriptions this rule considers. Only allows \"this subscription\" and \"any subscription in app\".",
        },
      },
      type = "object",
    },
    ActivateBasePlanRequest = {
      description = "Request message for ActivateBasePlan.",
      id = "ActivateBasePlanRequest",
      properties = {},
      type = "object",
    },
    ActivateSubscriptionOfferRequest = {
      description = "Request message for ActivateSubscriptionOffer.",
      id = "ActivateSubscriptionOfferRequest",
      properties = {},
      type = "object",
    },
    Apk = {
      description = "Information about an APK. The resource for ApksService.",
      id = "Apk",
      properties = {
        binary = {
          ["$ref"] = "ApkBinary",
          description = "Information about the binary payload of this APK.",
        },
        versionCode = {
          description = "The version code of the APK, as specified in the manifest file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ApkBinary = {
      description = "Represents the binary payload of an APK.",
      id = "ApkBinary",
      properties = {
        sha1 = {
          description = "A sha1 hash of the APK payload, encoded as a hex string and matching the output of the sha1sum command.",
          type = "string",
        },
        sha256 = {
          description = "A sha256 hash of the APK payload, encoded as a hex string and matching the output of the sha256sum command.",
          type = "string",
        },
      },
      type = "object",
    },
    ApksAddExternallyHostedRequest = {
      description = "Request to create a new externally hosted APK.",
      id = "ApksAddExternallyHostedRequest",
      properties = {
        externallyHostedApk = {
          ["$ref"] = "ExternallyHostedApk",
          description = "The definition of the externally-hosted APK and where it is located.",
        },
      },
      type = "object",
    },
    ApksAddExternallyHostedResponse = {
      description = "Response for creating a new externally hosted APK.",
      id = "ApksAddExternallyHostedResponse",
      properties = {
        externallyHostedApk = {
          ["$ref"] = "ExternallyHostedApk",
          description = "The definition of the externally-hosted APK and where it is located.",
        },
      },
      type = "object",
    },
    ApksListResponse = {
      description = "Response listing all APKs.",
      id = "ApksListResponse",
      properties = {
        apks = {
          description = "All APKs.",
          items = {
            ["$ref"] = "Apk",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this response (\"androidpublisher#apksListResponse\").",
          type = "string",
        },
      },
      type = "object",
    },
    AppDetails = {
      description = "The app details. The resource for DetailsService.",
      id = "AppDetails",
      properties = {
        contactEmail = {
          description = "The user-visible support email for this app.",
          type = "string",
        },
        contactPhone = {
          description = "The user-visible support telephone number for this app.",
          type = "string",
        },
        contactWebsite = {
          description = "The user-visible website for this app.",
          type = "string",
        },
        defaultLanguage = {
          description = "Default language code, in BCP 47 format (eg \"en-US\").",
          type = "string",
        },
      },
      type = "object",
    },
    AppEdit = {
      description = "An app edit. The resource for EditsService.",
      id = "AppEdit",
      properties = {
        expiryTimeSeconds = {
          description = "Output only. The time (as seconds since Epoch) at which the edit will expire and will be no longer valid for use.",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Output only. Identifier of the edit. Can be used in subsequent API calls.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ArchiveSubscriptionRequest = {
      description = "Request message for ArchiveSubscription.",
      id = "ArchiveSubscriptionRequest",
      properties = {},
      type = "object",
    },
    AutoRenewingBasePlanType = {
      description = "Represents a base plan that automatically renews at the end of its subscription period.",
      id = "AutoRenewingBasePlanType",
      properties = {
        billingPeriodDuration = {
          description = "Required. Subscription period, specified in ISO 8601 format. For a list of acceptable billing periods, refer to the help center.",
          type = "string",
        },
        gracePeriodDuration = {
          description = "Grace period of the subscription, specified in ISO 8601 format. Acceptable values are P0D (zero days), P3D (3 days), P7D (7 days), P14D (14 days), and P30D (30 days). If not specified, a default value will be used based on the recurring period duration.",
          type = "string",
        },
        legacyCompatible = {
          description = "Whether the renewing base plan is backward compatible. The backward compatible base plan is returned by the Google Play Billing Library deprecated method querySkuDetailsAsync(). Only one renewing base plan can be marked as legacy compatible for a given subscription.",
          type = "boolean",
        },
        legacyCompatibleSubscriptionOfferId = {
          description = "Subscription offer id which is legacy compatible. The backward compatible subscription offer is returned by the Google Play Billing Library deprecated method querySkuDetailsAsync(). Only one subscription offer can be marked as legacy compatible for a given renewing base plan. To have no Subscription offer as legacy compatible set this field as empty string.",
          type = "string",
        },
        prorationMode = {
          description = "The proration mode for the base plan determines what happens when a user switches to this plan from another base plan. If unspecified, defaults to CHARGE_ON_NEXT_BILLING_DATE.",
          enum = {
            "SUBSCRIPTION_PRORATION_MODE_UNSPECIFIED",
            "SUBSCRIPTION_PRORATION_MODE_CHARGE_ON_NEXT_BILLING_DATE",
            "SUBSCRIPTION_PRORATION_MODE_CHARGE_FULL_PRICE_IMMEDIATELY",
          },
          enumDescriptions = {
            "Unspecified mode.",
            "Users will be charged for their new base plan at the end of their current billing period.",
            "Users will be charged for their new base plan immediately and in full. Any remaining period of their existing subscription will be used to extend the duration of the new billing plan.",
          },
          type = "string",
        },
        resubscribeState = {
          description = "Whether users should be able to resubscribe to this base plan in Google Play surfaces. Defaults to RESUBSCRIBE_STATE_ACTIVE if not specified.",
          enum = {
            "RESUBSCRIBE_STATE_UNSPECIFIED",
            "RESUBSCRIBE_STATE_ACTIVE",
            "RESUBSCRIBE_STATE_INACTIVE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Resubscribe is active.",
            "Resubscribe is inactive.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AutoRenewingPlan = {
      description = "Information related to an auto renewing plan.",
      id = "AutoRenewingPlan",
      properties = {
        autoRenewEnabled = {
          description = "If the subscription is currently set to auto-renew, e.g. the user has not canceled the subscription",
          type = "boolean",
        },
        priceChangeDetails = {
          ["$ref"] = "SubscriptionItemPriceChangeDetails",
          description = "The information of the last price change for the item since subscription signup.",
        },
      },
      type = "object",
    },
    BasePlan = {
      description = "A single base plan for a subscription.",
      id = "BasePlan",
      properties = {
        autoRenewingBasePlanType = {
          ["$ref"] = "AutoRenewingBasePlanType",
          description = "Set when the base plan automatically renews at a regular interval.",
        },
        basePlanId = {
          description = "Required. Immutable. The unique identifier of this base plan. Must be unique within the subscription, and conform with RFC-1034. That is, this ID can only contain lower-case letters (a-z), numbers (0-9), and hyphens (-), and be at most 63 characters.",
          type = "string",
        },
        offerTags = {
          description = "List of up to 20 custom tags specified for this base plan, and returned to the app through the billing library. Subscription offers for this base plan will also receive these offer tags in the billing library.",
          items = {
            ["$ref"] = "OfferTag",
          },
          type = "array",
        },
        otherRegionsConfig = {
          ["$ref"] = "OtherRegionsBasePlanConfig",
          description = "Pricing information for any new locations Play may launch in the future. If omitted, the BasePlan will not be automatically available any new locations Play may launch in the future.",
        },
        prepaidBasePlanType = {
          ["$ref"] = "PrepaidBasePlanType",
          description = "Set when the base plan does not automatically renew at the end of the billing period.",
        },
        regionalConfigs = {
          description = "Region-specific information for this base plan.",
          items = {
            ["$ref"] = "RegionalBasePlanConfig",
          },
          type = "array",
        },
        state = {
          description = "Output only. The state of the base plan, i.e. whether it's active. Draft and inactive base plans can be activated or deleted. Active base plans can be made inactive. Inactive base plans can be canceled. This field cannot be changed by updating the resource. Use the dedicated endpoints instead.",
          enum = {
            "STATE_UNSPECIFIED",
            "DRAFT",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The base plan is currently in a draft state, and hasn't been activated. It can be safely deleted at this point.",
            "The base plan is active and available for new subscribers.",
            "The base plan is inactive and only available for existing subscribers.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Bundle = {
      description = "Information about an app bundle. The resource for BundlesService.",
      id = "Bundle",
      properties = {
        sha1 = {
          description = "A sha1 hash of the upload payload, encoded as a hex string and matching the output of the sha1sum command.",
          type = "string",
        },
        sha256 = {
          description = "A sha256 hash of the upload payload, encoded as a hex string and matching the output of the sha256sum command.",
          type = "string",
        },
        versionCode = {
          description = "The version code of the Android App Bundle, as specified in the Android App Bundle's base module APK manifest file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BundlesListResponse = {
      description = "Response listing all app bundles.",
      id = "BundlesListResponse",
      properties = {
        bundles = {
          description = "All app bundles.",
          items = {
            ["$ref"] = "Bundle",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this response (\"androidpublisher#bundlesListResponse\").",
          type = "string",
        },
      },
      type = "object",
    },
    CancelSurveyResult = {
      description = "Result of the cancel survey when the subscription was canceled by the user.",
      id = "CancelSurveyResult",
      properties = {
        reason = {
          description = "The reason the user selected in the cancel survey.",
          enum = {
            "CANCEL_SURVEY_REASON_UNSPECIFIED",
            "CANCEL_SURVEY_REASON_NOT_ENOUGH_USAGE",
            "CANCEL_SURVEY_REASON_TECHNICAL_ISSUES",
            "CANCEL_SURVEY_REASON_COST_RELATED",
            "CANCEL_SURVEY_REASON_FOUND_BETTER_APP",
            "CANCEL_SURVEY_REASON_OTHERS",
          },
          enumDescriptions = {
            "Unspecified cancel survey reason.",
            "Not enough usage of the subscription.",
            "Technical issues while using the app.",
            "Cost related issues.",
            "The user found a better app.",
            "Other reasons.",
          },
          type = "string",
        },
        reasonUserInput = {
          description = "Only set for CANCEL_SURVEY_REASON_OTHERS. This is the user's freeform response to the survey.",
          type = "string",
        },
      },
      type = "object",
    },
    CanceledStateContext = {
      description = "Information specific to a subscription in canceled state.",
      id = "CanceledStateContext",
      properties = {
        developerInitiatedCancellation = {
          ["$ref"] = "DeveloperInitiatedCancellation",
          description = "Subscription was canceled by the developer.",
        },
        replacementCancellation = {
          ["$ref"] = "ReplacementCancellation",
          description = "Subscription was replaced by a new subscription.",
        },
        systemInitiatedCancellation = {
          ["$ref"] = "SystemInitiatedCancellation",
          description = "Subscription was canceled by the system, for example because of a billing problem.",
        },
        userInitiatedCancellation = {
          ["$ref"] = "UserInitiatedCancellation",
          description = "Subscription was canceled by user.",
        },
      },
      type = "object",
    },
    Comment = {
      description = "An entry of conversation between user and developer.",
      id = "Comment",
      properties = {
        developerComment = {
          ["$ref"] = "DeveloperComment",
          description = "A comment from a developer.",
        },
        userComment = {
          ["$ref"] = "UserComment",
          description = "A comment from a user.",
        },
      },
      type = "object",
    },
    ConvertRegionPricesRequest = {
      description = "Request message for ConvertRegionPrices.",
      id = "ConvertRegionPricesRequest",
      properties = {
        price = {
          ["$ref"] = "Money",
          description = "The intital price to convert other regions from. Tax exclusive.",
        },
      },
      type = "object",
    },
    ConvertRegionPricesResponse = {
      description = "Response message for ConvertRegionPrices.",
      id = "ConvertRegionPricesResponse",
      properties = {
        convertedOtherRegionsPrice = {
          ["$ref"] = "ConvertedOtherRegionsPrice",
          description = "Converted other regions prices in USD and EUR, to use for countries where Play doesn't support a country's local currency.",
        },
        convertedRegionPrices = {
          additionalProperties = {
            ["$ref"] = "ConvertedRegionPrice",
          },
          description = "Map from region code to converted region price.",
          type = "object",
        },
      },
      type = "object",
    },
    ConvertedOtherRegionsPrice = {
      description = "Converted other regions prices.",
      id = "ConvertedOtherRegionsPrice",
      properties = {
        eurPrice = {
          ["$ref"] = "Money",
          description = "Price in EUR to use for the \"Other regions\" location exclusive of taxes.",
        },
        usdPrice = {
          ["$ref"] = "Money",
          description = "Price in USD to use for the \"Other regions\" location exclusive of taxes.",
        },
      },
      type = "object",
    },
    ConvertedRegionPrice = {
      description = "A converted region price.",
      id = "ConvertedRegionPrice",
      properties = {
        price = {
          ["$ref"] = "Money",
          description = "The converted price tax inclusive.",
        },
        regionCode = {
          description = "The region code of the region.",
          type = "string",
        },
        taxAmount = {
          ["$ref"] = "Money",
          description = "The tax amount of the converted price.",
        },
      },
      type = "object",
    },
    CountryTargeting = {
      description = "Country targeting specification.",
      id = "CountryTargeting",
      properties = {
        countries = {
          description = "Countries to target, specified as two letter [CLDR codes](https://unicode.org/cldr/charts/latest/supplemental/territory_containment_un_m_49.html).",
          items = {
            type = "string",
          },
          type = "array",
        },
        includeRestOfWorld = {
          description = "Include \"rest of world\" as well as explicitly targeted countries.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeactivateBasePlanRequest = {
      description = "Request message for DeactivateBasePlan.",
      id = "DeactivateBasePlanRequest",
      properties = {},
      type = "object",
    },
    DeactivateSubscriptionOfferRequest = {
      description = "Request message for DeactivateSubscriptionOffer.",
      id = "DeactivateSubscriptionOfferRequest",
      properties = {},
      type = "object",
    },
    DeobfuscationFile = {
      description = "Represents a deobfuscation file.",
      id = "DeobfuscationFile",
      properties = {
        symbolType = {
          description = "The type of the deobfuscation file.",
          enum = {
            "deobfuscationFileTypeUnspecified",
            "proguard",
            "nativeCode",
          },
          enumDescriptions = {
            "Unspecified deobfuscation file type.",
            "Proguard deobfuscation file type.",
            "Native debugging symbols file type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeobfuscationFilesUploadResponse = {
      description = "Responses for the upload.",
      id = "DeobfuscationFilesUploadResponse",
      properties = {
        deobfuscationFile = {
          ["$ref"] = "DeobfuscationFile",
          description = "The uploaded Deobfuscation File configuration.",
        },
      },
      type = "object",
    },
    DeveloperComment = {
      description = "Developer entry from conversation between user and developer.",
      id = "DeveloperComment",
      properties = {
        lastModified = {
          ["$ref"] = "Timestamp",
          description = "The last time at which this comment was updated.",
        },
        text = {
          description = "The content of the comment, i.e. reply body.",
          type = "string",
        },
      },
      type = "object",
    },
    DeveloperInitiatedCancellation = {
      description = "Information specific to cancellations initiated by developers.",
      id = "DeveloperInitiatedCancellation",
      properties = {},
      type = "object",
    },
    DeviceGroup = {
      description = "LINT.IfChange A group of devices. A group is defined by a set of device selectors. A device belongs to the group if it matches any selector (logical OR).",
      id = "DeviceGroup",
      properties = {
        deviceSelectors = {
          description = "Device selectors for this group. A device matching any of the selectors is included in this group.",
          items = {
            ["$ref"] = "DeviceSelector",
          },
          type = "array",
        },
        name = {
          description = "The name of the group.",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceId = {
      description = "Identifier of a device.",
      id = "DeviceId",
      properties = {
        buildBrand = {
          description = "Value of Build.BRAND.",
          type = "string",
        },
        buildDevice = {
          description = "Value of Build.DEVICE.",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceMetadata = {
      description = "Characteristics of the user's device.",
      id = "DeviceMetadata",
      properties = {
        cpuMake = {
          description = "Device CPU make, e.g. \"Qualcomm\"",
          type = "string",
        },
        cpuModel = {
          description = "Device CPU model, e.g. \"MSM8974\"",
          type = "string",
        },
        deviceClass = {
          description = "Device class (e.g. tablet)",
          type = "string",
        },
        glEsVersion = {
          description = "OpenGL version",
          format = "int32",
          type = "integer",
        },
        manufacturer = {
          description = "Device manufacturer (e.g. Motorola)",
          type = "string",
        },
        nativePlatform = {
          description = "Comma separated list of native platforms (e.g. \"arm\", \"arm7\")",
          type = "string",
        },
        productName = {
          description = "Device model name (e.g. Droid)",
          type = "string",
        },
        ramMb = {
          description = "Device RAM in Megabytes, e.g. \"2048\"",
          format = "int32",
          type = "integer",
        },
        screenDensityDpi = {
          description = "Screen density in DPI",
          format = "int32",
          type = "integer",
        },
        screenHeightPx = {
          description = "Screen height in pixels",
          format = "int32",
          type = "integer",
        },
        screenWidthPx = {
          description = "Screen width in pixels",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeviceRam = {
      description = "Conditions about a device's RAM capabilities.",
      id = "DeviceRam",
      properties = {
        maxBytes = {
          description = "Maximum RAM in bytes (bound excluded).",
          format = "int64",
          type = "string",
        },
        minBytes = {
          description = "Minimum RAM in bytes (bound included).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceSelector = {
      description = "Selector for a device group. A selector consists of a set of conditions on the device that should all match (logical AND) to determine a device group eligibility. For instance, if a selector specifies RAM conditions, device model inclusion and device model exclusion, a device is considered to match if: device matches RAM conditions AND device matches one of the included device models AND device doesn't match excluded device models",
      id = "DeviceSelector",
      properties = {
        deviceRam = {
          ["$ref"] = "DeviceRam",
          description = "Conditions on the device's RAM.",
        },
        excludedDeviceIds = {
          description = "Device models excluded by this selector, even if they match all other conditions.",
          items = {
            ["$ref"] = "DeviceId",
          },
          type = "array",
        },
        forbiddenSystemFeatures = {
          description = "A device that has any of these system features is excluded by this selector, even if it matches all other conditions.",
          items = {
            ["$ref"] = "SystemFeature",
          },
          type = "array",
        },
        includedDeviceIds = {
          description = "Device models included by this selector.",
          items = {
            ["$ref"] = "DeviceId",
          },
          type = "array",
        },
        requiredSystemFeatures = {
          description = "A device needs to have all these system features to be included by the selector.",
          items = {
            ["$ref"] = "SystemFeature",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DeviceSpec = {
      description = "The device spec used to generate a system APK.",
      id = "DeviceSpec",
      properties = {
        screenDensity = {
          description = "Screen dpi.",
          format = "uint32",
          type = "integer",
        },
        supportedAbis = {
          description = "Supported ABI architectures in the order of preference. The values should be the string as reported by the platform, e.g. \"armeabi-v7a\", \"x86_64\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        supportedLocales = {
          description = "All installed locales represented as BCP-47 strings, e.g. \"en-US\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    DeviceTier = {
      description = "A single device tier. Devices matching any of the device groups in device_group_names are considered to match the tier.",
      id = "DeviceTier",
      properties = {
        deviceGroupNames = {
          description = "Groups of devices included in this tier. These groups must be defined explicitly under device_groups in this configuration.",
          items = {
            type = "string",
          },
          type = "array",
        },
        level = {
          description = "The priority level of the tier. Tiers are evaluated in descending order of level: the highest level tier has the highest priority. The highest tier matching a given device is selected for that device. You should use a contiguous range of levels for your tiers in a tier set; tier levels in a tier set must be unique. For instance, if your tier set has 4 tiers (including the global fallback), you should define tiers 1, 2 and 3 in this configuration. Note: tier 0 is implicitly defined as a global fallback and selected for devices that don't match any of the tiers explicitly defined here. You mustn't define level 0 explicitly in this configuration.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DeviceTierConfig = {
      description = "LINT.IfChange Configuration describing device targeting criteria for the content of an app.",
      id = "DeviceTierConfig",
      properties = {
        deviceGroups = {
          description = "Definition of device groups for the app.",
          items = {
            ["$ref"] = "DeviceGroup",
          },
          type = "array",
        },
        deviceTierConfigId = {
          description = "Output only. The device tier config ID.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        deviceTierSet = {
          ["$ref"] = "DeviceTierSet",
          description = "Definition of the set of device tiers for the app.",
        },
      },
      type = "object",
    },
    DeviceTierSet = {
      description = "A set of device tiers. A tier set determines what variation of app content gets served to a specific device, for device-targeted content. You should assign a priority level to each tier, which determines the ordering by which they are evaluated by Play. See the documentation of DeviceTier.level for more details.",
      id = "DeviceTierSet",
      properties = {
        deviceTiers = {
          description = "Device tiers belonging to the set.",
          items = {
            ["$ref"] = "DeviceTier",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ExpansionFile = {
      description = "An expansion file. The resource for ExpansionFilesService.",
      id = "ExpansionFile",
      properties = {
        fileSize = {
          description = "If set, this field indicates that this APK has an expansion file uploaded to it: this APK does not reference another APK's expansion file. The field's value is the size of the uploaded expansion file in bytes.",
          format = "int64",
          type = "string",
        },
        referencesVersion = {
          description = "If set, this APK's expansion file references another APK's expansion file. The file_size field will not be set.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ExpansionFilesUploadResponse = {
      description = "Response for uploading an expansion file.",
      id = "ExpansionFilesUploadResponse",
      properties = {
        expansionFile = {
          ["$ref"] = "ExpansionFile",
          description = "The uploaded expansion file configuration.",
        },
      },
      type = "object",
    },
    ExternalAccountIdentifiers = {
      description = "User account identifier in the third-party service.",
      id = "ExternalAccountIdentifiers",
      properties = {
        externalAccountId = {
          description = "User account identifier in the third-party service. Only present if account linking happened as part of the subscription purchase flow.",
          type = "string",
        },
        obfuscatedExternalAccountId = {
          description = "An obfuscated version of the id that is uniquely associated with the user's account in your app. Present for the following purchases: * If account linking happened as part of the subscription purchase flow. * It was specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.",
          type = "string",
        },
        obfuscatedExternalProfileId = {
          description = "An obfuscated version of the id that is uniquely associated with the user's profile in your app. Only present if specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.",
          type = "string",
        },
      },
      type = "object",
    },
    ExternallyHostedApk = {
      description = "Defines an APK available for this application that is hosted externally and not uploaded to Google Play. This function is only available to organizations using Managed Play whose application is configured to restrict distribution to the organizations.",
      id = "ExternallyHostedApk",
      properties = {
        applicationLabel = {
          description = "The application label.",
          type = "string",
        },
        certificateBase64s = {
          description = "A certificate (or array of certificates if a certificate-chain is used) used to sign this APK, represented as a base64 encoded byte array.",
          items = {
            type = "string",
          },
          type = "array",
        },
        externallyHostedUrl = {
          description = "The URL at which the APK is hosted. This must be an https URL.",
          type = "string",
        },
        fileSha1Base64 = {
          description = "The sha1 checksum of this APK, represented as a base64 encoded byte array.",
          type = "string",
        },
        fileSha256Base64 = {
          description = "The sha256 checksum of this APK, represented as a base64 encoded byte array.",
          type = "string",
        },
        fileSize = {
          description = "The file size in bytes of this APK.",
          format = "int64",
          type = "string",
        },
        iconBase64 = {
          description = "The icon image from the APK, as a base64 encoded byte array.",
          type = "string",
        },
        maximumSdk = {
          description = "The maximum SDK supported by this APK (optional).",
          format = "int32",
          type = "integer",
        },
        minimumSdk = {
          description = "The minimum SDK targeted by this APK.",
          format = "int32",
          type = "integer",
        },
        nativeCodes = {
          description = "The native code environments supported by this APK (optional).",
          items = {
            type = "string",
          },
          type = "array",
        },
        packageName = {
          description = "The package name.",
          type = "string",
        },
        usesFeatures = {
          description = "The features required by this APK (optional).",
          items = {
            type = "string",
          },
          type = "array",
        },
        usesPermissions = {
          description = "The permissions requested by this APK.",
          items = {
            ["$ref"] = "UsesPermission",
          },
          type = "array",
        },
        versionCode = {
          description = "The version code of this APK.",
          format = "int32",
          type = "integer",
        },
        versionName = {
          description = "The version name of this APK.",
          type = "string",
        },
      },
      type = "object",
    },
    GeneratedApksListResponse = {
      description = "Response to list generated APKs.",
      id = "GeneratedApksListResponse",
      properties = {
        generatedApks = {
          description = "All generated APKs, grouped by the APK signing key.",
          items = {
            ["$ref"] = "GeneratedApksPerSigningKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GeneratedApksPerSigningKey = {
      description = "Download metadata for split, standalone and universal APKs, as well as asset pack slices, signed with a given key.",
      id = "GeneratedApksPerSigningKey",
      properties = {
        certificateSha256Hash = {
          description = "SHA256 hash of the APK signing public key certificate.",
          type = "string",
        },
        generatedAssetPackSlices = {
          description = "List of asset pack slices which will be served for this app bundle, signed with a key corresponding to certificate_sha256_hash.",
          items = {
            ["$ref"] = "GeneratedAssetPackSlice",
          },
          type = "array",
        },
        generatedSplitApks = {
          description = "List of generated split APKs, signed with a key corresponding to certificate_sha256_hash.",
          items = {
            ["$ref"] = "GeneratedSplitApk",
          },
          type = "array",
        },
        generatedStandaloneApks = {
          description = "List of generated standalone APKs, signed with a key corresponding to certificate_sha256_hash.",
          items = {
            ["$ref"] = "GeneratedStandaloneApk",
          },
          type = "array",
        },
        generatedUniversalApk = {
          ["$ref"] = "GeneratedUniversalApk",
          description = "Generated universal APK, signed with a key corresponding to certificate_sha256_hash. This field is not set if no universal APK was generated for this signing key.",
        },
      },
      type = "object",
    },
    GeneratedAssetPackSlice = {
      description = "Download metadata for an asset pack slice.",
      id = "GeneratedAssetPackSlice",
      properties = {
        downloadId = {
          description = "Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.download` method.",
          type = "string",
        },
        moduleName = {
          description = "Name of the module that this asset slice belongs to.",
          type = "string",
        },
        sliceId = {
          description = "Asset slice ID.",
          type = "string",
        },
        version = {
          description = "Asset module version.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GeneratedSplitApk = {
      description = "Download metadata for a split APK.",
      id = "GeneratedSplitApk",
      properties = {
        downloadId = {
          description = "Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.download` method.",
          type = "string",
        },
        moduleName = {
          description = "Name of the module that this APK belongs to.",
          type = "string",
        },
        splitId = {
          description = "Split ID. Empty for the main split of the base module.",
          type = "string",
        },
        variantId = {
          description = "ID of the generated variant.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GeneratedStandaloneApk = {
      description = "Download metadata for a standalone APK.",
      id = "GeneratedStandaloneApk",
      properties = {
        downloadId = {
          description = "Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.download` method.",
          type = "string",
        },
        variantId = {
          description = "ID of the generated variant.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GeneratedUniversalApk = {
      description = "Download metadata for a universal APK.",
      id = "GeneratedUniversalApk",
      properties = {
        downloadId = {
          description = "Download ID, which uniquely identifies the APK to download. Should be supplied to `generatedapks.download` method.",
          type = "string",
        },
      },
      type = "object",
    },
    Grant = {
      description = "An access grant resource.",
      id = "Grant",
      properties = {
        appLevelPermissions = {
          description = "The permissions granted to the user for this app.",
          items = {
            enum = {
              "APP_LEVEL_PERMISSION_UNSPECIFIED",
              "CAN_ACCESS_APP",
              "CAN_VIEW_FINANCIAL_DATA",
              "CAN_MANAGE_PERMISSIONS",
              "CAN_REPLY_TO_REVIEWS",
              "CAN_MANAGE_PUBLIC_APKS",
              "CAN_MANAGE_TRACK_APKS",
              "CAN_MANAGE_TRACK_USERS",
              "CAN_MANAGE_PUBLIC_LISTING",
              "CAN_MANAGE_DRAFT_APPS",
              "CAN_MANAGE_ORDERS",
            },
            enumDescriptions = {
              "Unknown or unspecified permission.",
              "View app information (read-only).",
              "View financial data.",
              "Admin (all permissions).",
              "Reply to reviews.",
              "Release to production, exclude devices, and use app signing by Google Play.",
              "Release to testing tracks.",
              "Manage testing tracks and edit tester lists.",
              "Manage store presence.",
              "Edit and delete draft apps.",
              "Manage orders and subscriptions.",
            },
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. Resource name for this grant, following the pattern \"developers/{developer}/users/{email}/grants/{package_name}\". If this grant is for a draft app, the app ID will be used in this resource name instead of the package name.",
          type = "string",
        },
        packageName = {
          description = "Immutable. The package name of the app. This will be empty for draft apps.",
          type = "string",
        },
      },
      type = "object",
    },
    Image = {
      description = "An uploaded image. The resource for ImagesService.",
      id = "Image",
      properties = {
        id = {
          description = "A unique id representing this image.",
          type = "string",
        },
        sha1 = {
          description = "A sha1 hash of the image.",
          type = "string",
        },
        sha256 = {
          description = "A sha256 hash of the image.",
          type = "string",
        },
        url = {
          description = "A URL that will serve a preview of the image.",
          type = "string",
        },
      },
      type = "object",
    },
    ImagesDeleteAllResponse = {
      description = "Response for deleting all images.",
      id = "ImagesDeleteAllResponse",
      properties = {
        deleted = {
          description = "The deleted images.",
          items = {
            ["$ref"] = "Image",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ImagesListResponse = {
      description = "Response listing all images.",
      id = "ImagesListResponse",
      properties = {
        images = {
          description = "All listed Images.",
          items = {
            ["$ref"] = "Image",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ImagesUploadResponse = {
      description = "Response for uploading an image.",
      id = "ImagesUploadResponse",
      properties = {
        image = {
          ["$ref"] = "Image",
          description = "The uploaded image.",
        },
      },
      type = "object",
    },
    InAppProduct = {
      description = "An in-app product. The resource for InappproductsService.",
      id = "InAppProduct",
      properties = {
        defaultLanguage = {
          description = "Default language of the localized data, as defined by BCP-47. e.g. \"en-US\".",
          type = "string",
        },
        defaultPrice = {
          ["$ref"] = "Price",
          description = "Default price. Cannot be zero, as in-app products are never free. Always in the developer's Checkout merchant currency.",
        },
        gracePeriod = {
          description = "Grace period of the subscription, specified in ISO 8601 format. Allows developers to give their subscribers a grace period when the payment for the new recurrence period is declined. Acceptable values are P0D (zero days), P3D (three days), P7D (seven days), P14D (14 days), and P30D (30 days).",
          type = "string",
        },
        listings = {
          additionalProperties = {
            ["$ref"] = "InAppProductListing",
          },
          description = "List of localized title and description data. Map key is the language of the localized data, as defined by BCP-47, e.g. \"en-US\".",
          type = "object",
        },
        managedProductTaxesAndComplianceSettings = {
          ["$ref"] = "ManagedProductTaxAndComplianceSettings",
          description = "Details about taxes and legal compliance. Only applicable to managed products.",
        },
        packageName = {
          description = "Package name of the parent app.",
          type = "string",
        },
        prices = {
          additionalProperties = {
            ["$ref"] = "Price",
          },
          description = "Prices per buyer region. None of these can be zero, as in-app products are never free. Map key is region code, as defined by ISO 3166-2.",
          type = "object",
        },
        purchaseType = {
          description = "The type of the product, e.g. a recurring subscription.",
          enum = {
            "purchaseTypeUnspecified",
            "managedUser",
            "subscription",
          },
          enumDescriptions = {
            "Unspecified purchase type.",
            "The default product type - one time purchase.",
            "In-app product with a recurring period.",
          },
          type = "string",
        },
        sku = {
          description = "Stock-keeping-unit (SKU) of the product, unique within an app.",
          type = "string",
        },
        status = {
          description = "The status of the product, e.g. whether it's active.",
          enum = {
            "statusUnspecified",
            "active",
            "inactive",
          },
          enumDescriptions = {
            "Unspecified status.",
            "The product is published and active in the store.",
            "The product is not published and therefore inactive in the store.",
          },
          type = "string",
        },
        subscriptionPeriod = {
          description = "Subscription period, specified in ISO 8601 format. Acceptable values are P1W (one week), P1M (one month), P3M (three months), P6M (six months), and P1Y (one year).",
          type = "string",
        },
        subscriptionTaxesAndComplianceSettings = {
          ["$ref"] = "SubscriptionTaxAndComplianceSettings",
          description = "Details about taxes and legal compliance. Only applicable to subscription products.",
        },
        trialPeriod = {
          description = "Trial period, specified in ISO 8601 format. Acceptable values are anything between P7D (seven days) and P999D (999 days).",
          type = "string",
        },
      },
      type = "object",
    },
    InAppProductListing = {
      description = "Store listing of a single in-app product.",
      id = "InAppProductListing",
      properties = {
        benefits = {
          description = "Localized entitlement benefits for a subscription.",
          items = {
            type = "string",
          },
          type = "array",
        },
        description = {
          description = "Description for the store listing.",
          type = "string",
        },
        title = {
          description = "Title for the store listing.",
          type = "string",
        },
      },
      type = "object",
    },
    InappproductsListResponse = {
      description = "Response listing all in-app products.",
      id = "InappproductsListResponse",
      properties = {
        inappproduct = {
          description = "All in-app products.",
          items = {
            ["$ref"] = "InAppProduct",
          },
          type = "array",
        },
        kind = {
          description = "The kind of this response (\"androidpublisher#inappproductsListResponse\").",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "Deprecated and unset.",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
          description = "Pagination token, to handle a number of products that is over one page.",
        },
      },
      type = "object",
    },
    InternalAppSharingArtifact = {
      description = "An artifact resource which gets created when uploading an APK or Android App Bundle through internal app sharing.",
      id = "InternalAppSharingArtifact",
      properties = {
        certificateFingerprint = {
          description = "The sha256 fingerprint of the certificate used to sign the generated artifact.",
          type = "string",
        },
        downloadUrl = {
          description = "The download URL generated for the uploaded artifact. Users that are authorized to download can follow the link to the Play Store app to install it.",
          type = "string",
        },
        sha256 = {
          description = "The sha256 hash of the artifact represented as a lowercase hexadecimal number, matching the output of the sha256sum command.",
          type = "string",
        },
      },
      type = "object",
    },
    IntroductoryPriceInfo = {
      description = "Contains the introductory price information for a subscription.",
      id = "IntroductoryPriceInfo",
      properties = {
        introductoryPriceAmountMicros = {
          description = "Introductory price of the subscription, not including tax. The currency is the same as price_currency_code. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price_amount_micros is 1990000.",
          format = "int64",
          type = "string",
        },
        introductoryPriceCurrencyCode = {
          description = "ISO 4217 currency code for the introductory subscription price. For example, if the price is specified in British pounds sterling, price_currency_code is \"GBP\".",
          type = "string",
        },
        introductoryPriceCycles = {
          description = "The number of billing period to offer introductory pricing.",
          format = "int32",
          type = "integer",
        },
        introductoryPricePeriod = {
          description = "Introductory price period, specified in ISO 8601 format. Common values are (but not limited to) \"P1W\" (one week), \"P1M\" (one month), \"P3M\" (three months), \"P6M\" (six months), and \"P1Y\" (one year).",
          type = "string",
        },
      },
      type = "object",
    },
    ListDeviceTierConfigsResponse = {
      description = "Response listing existing device tier configs.",
      id = "ListDeviceTierConfigsResponse",
      properties = {
        deviceTierConfigs = {
          description = "Device tier configs created by the developer.",
          items = {
            ["$ref"] = "DeviceTierConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListSubscriptionOffersResponse = {
      description = "Response message for ListSubscriptionOffers.",
      id = "ListSubscriptionOffersResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        subscriptionOffers = {
          description = "The subscription offers from the specified subscription.",
          items = {
            ["$ref"] = "SubscriptionOffer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSubscriptionsResponse = {
      description = "Response message for ListSubscriptions.",
      id = "ListSubscriptionsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        subscriptions = {
          description = "The subscriptions from the specified app.",
          items = {
            ["$ref"] = "Subscription",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListUsersResponse = {
      description = "A response containing one or more users with access to an account.",
      id = "ListUsersResponse",
      properties = {
        nextPageToken = {
          description = "A token to pass to subsequent calls in order to retrieve subsequent results. This will not be set if there are no more results to return.",
          type = "string",
        },
        users = {
          description = "The resulting users.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Listing = {
      description = "A localized store listing. The resource for ListingsService.",
      id = "Listing",
      properties = {
        fullDescription = {
          description = "Full description of the app.",
          type = "string",
        },
        language = {
          description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).",
          type = "string",
        },
        shortDescription = {
          description = "Short description of the app.",
          type = "string",
        },
        title = {
          description = "Localized title of the app.",
          type = "string",
        },
        video = {
          description = "URL of a promotional YouTube video for the app.",
          type = "string",
        },
      },
      type = "object",
    },
    ListingsListResponse = {
      description = "Response listing all localized listings.",
      id = "ListingsListResponse",
      properties = {
        kind = {
          description = "The kind of this response (\"androidpublisher#listingsListResponse\").",
          type = "string",
        },
        listings = {
          description = "All localized listings.",
          items = {
            ["$ref"] = "Listing",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalizedText = {
      description = "Localized text in given language.",
      id = "LocalizedText",
      properties = {
        language = {
          description = "Language localization code (a BCP-47 language tag; for example, \"de-AT\" for Austrian German).",
          type = "string",
        },
        text = {
          description = "The text in the given language.",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedProductTaxAndComplianceSettings = {
      description = "Details about taxation and legal compliance for managed products.",
      id = "ManagedProductTaxAndComplianceSettings",
      properties = {
        eeaWithdrawalRightType = {
          description = "Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the [Help Center article](https://support.google.com/googleplay/android-developer/answer/10463498) for more information.",
          enum = {
            "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED",
            "WITHDRAWAL_RIGHT_DIGITAL_CONTENT",
            "WITHDRAWAL_RIGHT_SERVICE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        taxRateInfoByRegionCode = {
          additionalProperties = {
            ["$ref"] = "RegionalTaxRateInfo",
          },
          description = "A mapping from region code to tax rate details. The keys are region codes as defined by Unicode's \"CLDR\".",
          type = "object",
        },
      },
      type = "object",
    },
    MigrateBasePlanPricesRequest = {
      description = "Request message for MigrateBasePlanPrices.",
      id = "MigrateBasePlanPricesRequest",
      properties = {
        regionalPriceMigrations = {
          description = "Required. The regional prices to update.",
          items = {
            ["$ref"] = "RegionalPriceMigrationConfig",
          },
          type = "array",
        },
        regionsVersion = {
          ["$ref"] = "RegionsVersion",
          description = "Required. The version of the available regions being used for the regional_price_migrations.",
        },
      },
      type = "object",
    },
    MigrateBasePlanPricesResponse = {
      description = "Response message for MigrateBasePlanPrices.",
      id = "MigrateBasePlanPricesResponse",
      properties = {},
      type = "object",
    },
    Money = {
      description = "Represents an amount of money with its currency type.",
      id = "Money",
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
    OfferDetails = {
      description = "Offer details information related to a purchase line item.",
      id = "OfferDetails",
      properties = {
        basePlanId = {
          description = "The base plan ID. Present for all base plan and offers.",
          type = "string",
        },
        offerId = {
          description = "The offer ID. Only present for discounted offers.",
          type = "string",
        },
        offerTags = {
          description = "The latest offer tags associated with the offer. It includes tags inherited from the base plan.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OfferTag = {
      description = "Represents a custom tag specified for base plans and subscription offers.",
      id = "OfferTag",
      properties = {
        tag = {
          description = "Must conform with RFC-1034. That is, this string can only contain lower-case letters (a-z), numbers (0-9), and hyphens (-), and be at most 20 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    OtherRegionsBasePlanConfig = {
      description = "Pricing information for any new locations Play may launch in.",
      id = "OtherRegionsBasePlanConfig",
      properties = {
        eurPrice = {
          ["$ref"] = "Money",
          description = "Required. Price in EUR to use for any new locations Play may launch in.",
        },
        newSubscriberAvailability = {
          description = "Whether the base plan is available for new subscribers in any new locations Play may launch in. If not specified, this will default to false.",
          type = "boolean",
        },
        usdPrice = {
          ["$ref"] = "Money",
          description = "Required. Price in USD to use for any new locations Play may launch in.",
        },
      },
      type = "object",
    },
    OtherRegionsSubscriptionOfferConfig = {
      description = "Configuration for any new locations Play may launch in specified on a subscription offer.",
      id = "OtherRegionsSubscriptionOfferConfig",
      properties = {
        otherRegionsNewSubscriberAvailability = {
          description = "Whether the subscription offer in any new locations Play may launch in the future. If not specified, this will default to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    OtherRegionsSubscriptionOfferPhaseConfig = {
      description = "Configuration for any new locations Play may launch in for a single offer phase.",
      id = "OtherRegionsSubscriptionOfferPhaseConfig",
      properties = {
        absoluteDiscounts = {
          ["$ref"] = "OtherRegionsSubscriptionOfferPhasePrices",
          description = "The absolute amount of money subtracted from the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a $1 absolute discount for a phase of a duration of 3 months would correspond to a price of $2. The resulting price may not be smaller than the minimum price allowed for any new locations Play may launch in.",
        },
        otherRegionsPrices = {
          ["$ref"] = "OtherRegionsSubscriptionOfferPhasePrices",
          description = "The absolute price the user pays for this offer phase. The price must not be smaller than the minimum price allowed for any new locations Play may launch in.",
        },
        relativeDiscount = {
          description = "The fraction of the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a 50% discount for a phase of a duration of 3 months would correspond to a price of $1.50. The discount must be specified as a fraction strictly larger than 0 and strictly smaller than 1. The resulting price will be rounded to the nearest billable unit (e.g. cents for USD). The relative discount is considered invalid if the discounted price ends up being smaller than the minimum price allowed in any new locations Play may launch in.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    OtherRegionsSubscriptionOfferPhasePrices = {
      description = "Pricing information for any new locations Play may launch in.",
      id = "OtherRegionsSubscriptionOfferPhasePrices",
      properties = {
        eurPrice = {
          ["$ref"] = "Money",
          description = "Required. Price in EUR to use for any new locations Play may launch in.",
        },
        usdPrice = {
          ["$ref"] = "Money",
          description = "Required. Price in USD to use for any new locations Play may launch in.",
        },
      },
      type = "object",
    },
    PageInfo = {
      description = "Information about the current page. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned.",
      id = "PageInfo",
      properties = {
        resultPerPage = {
          description = "Maximum number of results returned in one page. ! The number of results included in the API response.",
          format = "int32",
          type = "integer",
        },
        startIndex = {
          description = "Index of the first result returned in the current page.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "Total number of results available on the backend ! The total number of results in the result set.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PausedStateContext = {
      description = "Information specific to a subscription in paused state.",
      id = "PausedStateContext",
      properties = {
        autoResumeTime = {
          description = "Time at which the subscription will be automatically resumed.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    PrepaidBasePlanType = {
      description = "Represents a base plan that does not automatically renew at the end of the base plan, and must be manually renewed by the user.",
      id = "PrepaidBasePlanType",
      properties = {
        billingPeriodDuration = {
          description = "Required. Subscription period, specified in ISO 8601 format. For a list of acceptable billing periods, refer to the help center.",
          type = "string",
        },
        timeExtension = {
          description = "Whether users should be able to extend this prepaid base plan in Google Play surfaces. Defaults to TIME_EXTENSION_ACTIVE if not specified.",
          enum = {
            "TIME_EXTENSION_UNSPECIFIED",
            "TIME_EXTENSION_ACTIVE",
            "TIME_EXTENSION_INACTIVE",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Time extension is active. Users are allowed to top-up or extend their prepaid plan.",
            "Time extension is inactive. Users cannot top-up or extend their prepaid plan.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PrepaidPlan = {
      description = "Information related to a prepaid plan.",
      id = "PrepaidPlan",
      properties = {
        allowExtendAfterTime = {
          description = "If present, this is the time after which top up purchases are allowed for the prepaid plan. Will not be present for expired prepaid plans.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Price = {
      description = "Definition of a price, i.e. currency and units.",
      id = "Price",
      properties = {
        currency = {
          description = "3 letter Currency code, as defined by ISO 4217. See java/com/google/common/money/CurrencyCode.java",
          type = "string",
        },
        priceMicros = {
          description = "Price in 1/million of the currency base unit, represented as a string.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductPurchase = {
      description = "A ProductPurchase resource indicates the status of a user's inapp product purchase.",
      id = "ProductPurchase",
      properties = {
        acknowledgementState = {
          description = "The acknowledgement state of the inapp product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged",
          format = "int32",
          type = "integer",
        },
        consumptionState = {
          description = "The consumption state of the inapp product. Possible values are: 0. Yet to be consumed 1. Consumed",
          format = "int32",
          type = "integer",
        },
        developerPayload = {
          description = "A developer-specified string that contains supplemental information about an order.",
          type = "string",
        },
        kind = {
          description = "This kind represents an inappPurchase object in the androidpublisher service.",
          type = "string",
        },
        obfuscatedExternalAccountId = {
          description = "An obfuscated version of the id that is uniquely associated with the user's account in your app. Only present if specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.",
          type = "string",
        },
        obfuscatedExternalProfileId = {
          description = "An obfuscated version of the id that is uniquely associated with the user's profile in your app. Only present if specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.",
          type = "string",
        },
        orderId = {
          description = "The order id associated with the purchase of the inapp product.",
          type = "string",
        },
        productId = {
          description = "The inapp product SKU. May not be present.",
          type = "string",
        },
        purchaseState = {
          description = "The purchase state of the order. Possible values are: 0. Purchased 1. Canceled 2. Pending",
          format = "int32",
          type = "integer",
        },
        purchaseTimeMillis = {
          description = "The time the product was purchased, in milliseconds since the epoch (Jan 1, 1970).",
          format = "int64",
          type = "string",
        },
        purchaseToken = {
          description = "The purchase token generated to identify this purchase. May not be present.",
          type = "string",
        },
        purchaseType = {
          description = "The type of purchase of the inapp product. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code) 2. Rewarded (i.e. from watching a video ad instead of paying)",
          format = "int32",
          type = "integer",
        },
        quantity = {
          description = "The quantity associated with the purchase of the inapp product. If not present, the quantity is 1.",
          format = "int32",
          type = "integer",
        },
        regionCode = {
          description = "ISO 3166-1 alpha-2 billing region code of the user at the time the product was granted.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductPurchasesAcknowledgeRequest = {
      description = "Request for the product.purchases.acknowledge API.",
      id = "ProductPurchasesAcknowledgeRequest",
      properties = {
        developerPayload = {
          description = "Payload to attach to the purchase.",
          type = "string",
        },
      },
      type = "object",
    },
    RegionalBasePlanConfig = {
      description = "Configuration for a base plan specific to a region.",
      id = "RegionalBasePlanConfig",
      properties = {
        newSubscriberAvailability = {
          description = "Whether the base plan in the specified region is available for new subscribers. Existing subscribers will not have their subscription canceled if this value is set to false. If not specified, this will default to false.",
          type = "boolean",
        },
        price = {
          ["$ref"] = "Money",
          description = "The price of the base plan in the specified region. Must be set if the base plan is available to new subscribers. Must be set in the currency that is linked to the specified region.",
        },
        regionCode = {
          description = "Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. \"US\".",
          type = "string",
        },
      },
      type = "object",
    },
    RegionalPriceMigrationConfig = {
      description = "Configuration for a price migration.",
      id = "RegionalPriceMigrationConfig",
      properties = {
        oldestAllowedPriceVersionTime = {
          description = "Required. The cutoff time for historical prices that subscribers can remain paying. Subscribers who are on a price that was created before this cutoff time will be migrated to the currently-offered price. These subscribers will receive a notification that they will be paying a different price. Subscribers who do not agree to the new price will have their subscription ended at the next renewal.",
          format = "google-datetime",
          type = "string",
        },
        regionCode = {
          description = "Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. \"US\".",
          type = "string",
        },
      },
      type = "object",
    },
    RegionalSubscriptionOfferConfig = {
      description = "Configuration for a subscription offer in a single region.",
      id = "RegionalSubscriptionOfferConfig",
      properties = {
        newSubscriberAvailability = {
          description = "Whether the subscription offer in the specified region is available for new subscribers. Existing subscribers will not have their subscription cancelled if this value is set to false. If not specified, this will default to false.",
          type = "boolean",
        },
        regionCode = {
          description = "Required. Immutable. Region code this configuration applies to, as defined by ISO 3166-2, e.g. \"US\".",
          type = "string",
        },
      },
      type = "object",
    },
    RegionalSubscriptionOfferPhaseConfig = {
      description = "Configuration for a single phase of a subscription offer in a single region.",
      id = "RegionalSubscriptionOfferPhaseConfig",
      properties = {
        absoluteDiscount = {
          ["$ref"] = "Money",
          description = "The absolute amount of money subtracted from the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a $1 absolute discount for a phase of a duration of 3 months would correspond to a price of $2. The resulting price may not be smaller than the minimum price allowed for this region.",
        },
        price = {
          ["$ref"] = "Money",
          description = "The absolute price the user pays for this offer phase. The price must not be smaller than the minimum price allowed for this region.",
        },
        regionCode = {
          description = "Required. Immutable. The region to which this config applies.",
          type = "string",
        },
        relativeDiscount = {
          description = "The fraction of the base plan price prorated over the phase duration that the user pays for this offer phase. For example, if the base plan price for this region is $12 for a period of 1 year, then a 50% discount for a phase of a duration of 3 months would correspond to a price of $1.50. The discount must be specified as a fraction strictly larger than 0 and strictly smaller than 1. The resulting price will be rounded to the nearest billable unit (e.g. cents for USD). The relative discount is considered invalid if the discounted price ends up being smaller than the minimum price allowed in this region.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    RegionalTaxRateInfo = {
      description = "Specified details about taxation in a given geographical region.",
      id = "RegionalTaxRateInfo",
      properties = {
        eligibleForStreamingServiceTaxRate = {
          description = "You must tell us if your app contains streaming products to correctly charge US state and local sales tax. Field only supported in United States.",
          type = "boolean",
        },
        streamingTaxType = {
          description = "To collect communications or amusement taxes in the United States, choose the appropriate tax category. [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498#streaming_tax).",
          enum = {
            "STREAMING_TAX_TYPE_UNSPECIFIED",
            "STREAMING_TAX_TYPE_TELCO_VIDEO_RENTAL",
            "STREAMING_TAX_TYPE_TELCO_VIDEO_SALES",
            "STREAMING_TAX_TYPE_TELCO_VIDEO_MULTI_CHANNEL",
            "STREAMING_TAX_TYPE_TELCO_AUDIO_RENTAL",
            "STREAMING_TAX_TYPE_TELCO_AUDIO_SALES",
            "STREAMING_TAX_TYPE_TELCO_AUDIO_MULTI_CHANNEL",
          },
          enumDescriptions = {
            "No telecommunications tax collected.",
            "US-specific telecommunications tax tier for video streaming, on demand, rentals / subscriptions / pay-per-view.",
            "US-specific telecommunications tax tier for video streaming of pre-recorded content like movies, tv shows.",
            "US-specific telecommunications tax tier for video streaming of multi-channel programming.",
            "US-specific telecommunications tax tier for audio streaming, rental / subscription.",
            "US-specific telecommunications tax tier for audio streaming, sale / permanent download.",
            "US-specific telecommunications tax tier for multi channel audio streaming like radio.",
          },
          type = "string",
        },
        taxTier = {
          description = "Tax tier to specify reduced tax rate. Developers who sell digital news, magazines, newspapers, books, or audiobooks in various regions may be eligible for reduced tax rates. [Learn more](https://support.google.com/googleplay/android-developer/answer/10463498).",
          enum = {
            "TAX_TIER_UNSPECIFIED",
            "TAX_TIER_BOOKS_1",
            "TAX_TIER_NEWS_1",
            "TAX_TIER_NEWS_2",
            "TAX_TIER_MUSIC_OR_AUDIO_1",
            "TAX_TIER_LIVE_OR_BROADCAST_1",
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
    RegionsVersion = {
      description = "The version of the available regions being used for the specified resource.",
      id = "RegionsVersion",
      properties = {
        version = {
          description = "Required. A string representing version of the available regions being used for the specified resource. The current version is 2022/01.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplacementCancellation = {
      description = "Information specific to cancellations caused by subscription replacement.",
      id = "ReplacementCancellation",
      properties = {},
      type = "object",
    },
    Review = {
      description = "An Android app review.",
      id = "Review",
      properties = {
        authorName = {
          description = "The name of the user who wrote the review.",
          type = "string",
        },
        comments = {
          description = "A repeated field containing comments for the review.",
          items = {
            ["$ref"] = "Comment",
          },
          type = "array",
        },
        reviewId = {
          description = "Unique identifier for this review.",
          type = "string",
        },
      },
      type = "object",
    },
    ReviewReplyResult = {
      description = "The result of replying/updating a reply to review.",
      id = "ReviewReplyResult",
      properties = {
        lastEdited = {
          ["$ref"] = "Timestamp",
          description = "The time at which the reply took effect.",
        },
        replyText = {
          description = "The reply text that was applied.",
          type = "string",
        },
      },
      type = "object",
    },
    ReviewsListResponse = {
      description = "Response listing reviews.",
      id = "ReviewsListResponse",
      properties = {
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "Information about the current page.",
        },
        reviews = {
          description = "List of reviews.",
          items = {
            ["$ref"] = "Review",
          },
          type = "array",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
          description = "Pagination token, to handle a number of products that is over one page.",
        },
      },
      type = "object",
    },
    ReviewsReplyRequest = {
      description = "Request to reply to review or update existing reply.",
      id = "ReviewsReplyRequest",
      properties = {
        replyText = {
          description = "The text to set as the reply. Replies of more than approximately 350 characters will be rejected. HTML tags will be stripped.",
          type = "string",
        },
      },
      type = "object",
    },
    ReviewsReplyResponse = {
      description = "Response on status of replying to a review.",
      id = "ReviewsReplyResponse",
      properties = {
        result = {
          ["$ref"] = "ReviewReplyResult",
          description = "The result of replying/updating a reply to review.",
        },
      },
      type = "object",
    },
    SubscribeWithGoogleInfo = {
      description = "Information associated with purchases made with 'Subscribe with Google'.",
      id = "SubscribeWithGoogleInfo",
      properties = {
        emailAddress = {
          description = "The email address of the user when the subscription was purchased.",
          type = "string",
        },
        familyName = {
          description = "The family name of the user when the subscription was purchased.",
          type = "string",
        },
        givenName = {
          description = "The given name of the user when the subscription was purchased.",
          type = "string",
        },
        profileId = {
          description = "The Google profile id of the user when the subscription was purchased.",
          type = "string",
        },
        profileName = {
          description = "The profile name of the user when the subscription was purchased.",
          type = "string",
        },
      },
      type = "object",
    },
    Subscription = {
      description = "A single subscription for an app.",
      id = "Subscription",
      properties = {
        archived = {
          description = "Output only. Whether this subscription is archived. Archived subscriptions are not available to any subscriber any longer, cannot be updated, and are not returned in list requests unless the show archived flag is passed in.",
          readOnly = true,
          type = "boolean",
        },
        basePlans = {
          description = "The set of base plans for this subscription. Represents the prices and duration of the subscription if no other offers apply.",
          items = {
            ["$ref"] = "BasePlan",
          },
          type = "array",
        },
        listings = {
          description = "Required. List of localized listings for this subscription. Must contain at least an entry for the default language of the parent app.",
          items = {
            ["$ref"] = "SubscriptionListing",
          },
          type = "array",
        },
        packageName = {
          description = "Immutable. Package name of the parent app.",
          type = "string",
        },
        productId = {
          description = "Immutable. Unique product ID of the product. Unique within the parent app. Product IDs must be composed of lower-case letters (a-z), numbers (0-9), underscores (_) and dots (.). It must start with a lower-case letter or number, and be between 1 and 40 (inclusive) characters in length.",
          type = "string",
        },
        taxAndComplianceSettings = {
          ["$ref"] = "SubscriptionTaxAndComplianceSettings",
          description = "Details about taxes and legal compliance.",
        },
      },
      type = "object",
    },
    SubscriptionCancelSurveyResult = {
      description = "Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).",
      id = "SubscriptionCancelSurveyResult",
      properties = {
        cancelSurveyReason = {
          description = "The cancellation reason the user chose in the survey. Possible values are: 0. Other 1. I don't use this service enough 2. Technical issues 3. Cost-related reasons 4. I found a better app",
          format = "int32",
          type = "integer",
        },
        userInputCancelReason = {
          description = "The customized input cancel reason from the user. Only present when cancelReason is 0.",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionDeferralInfo = {
      description = "A SubscriptionDeferralInfo contains the data needed to defer a subscription purchase to a future expiry time.",
      id = "SubscriptionDeferralInfo",
      properties = {
        desiredExpiryTimeMillis = {
          description = "The desired next expiry time to assign to the subscription, in milliseconds since the Epoch. The given time must be later/greater than the current expiry time for the subscription.",
          format = "int64",
          type = "string",
        },
        expectedExpiryTimeMillis = {
          description = "The expected expiry time for the subscription. If the current expiry time for the subscription is not the value specified here, the deferral will not occur.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionItemPriceChangeDetails = {
      description = "Price change related information of a subscription item.",
      id = "SubscriptionItemPriceChangeDetails",
      properties = {
        expectedNewPriceChargeTime = {
          description = "The renewal time at which the price change will become effective for the user. This is subject to change(to a future time) due to cases where the renewal time shifts like pause.",
          format = "google-datetime",
          type = "string",
        },
        newPrice = {
          ["$ref"] = "Money",
          description = "New recurring price for the subscription item.",
        },
        priceChangeMode = {
          description = "Price change mode specifies how the subscription item price is changing.",
          enum = {
            "PRICE_CHANGE_MODE_UNSPECIFIED",
            "PRICE_DECREASE",
            "PRICE_INCREASE",
          },
          enumDescriptions = {
            "Price change mode unspecified. This value should never be set.",
            "If the subscription price is decreasing.",
            "If the subscription price is increasing and the user needs to accept it.",
          },
          type = "string",
        },
        priceChangeState = {
          description = "State the price change is currently in.",
          enum = {
            "PRICE_CHANGE_STATE_UNSPECIFIED",
            "OUTSTANDING",
            "CONFIRMED",
            "APPLIED",
          },
          enumDescriptions = {
            "Price change state unspecified. This value should not be used.",
            "Waiting for the user to agree for the price change.",
            "The price change is confirmed to happen for the user.",
            "The price change is applied, i.e. the user has started being charged the new price.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionListing = {
      description = "The consumer-visible metadata of a subscription.",
      id = "SubscriptionListing",
      properties = {
        benefits = {
          description = "A list of benefits shown to the user on platforms such as the Play Store and in restoration flows in the language of this listing. Plain text. Ordered list of at most four benefits.",
          items = {
            type = "string",
          },
          type = "array",
        },
        description = {
          description = "The description of this subscription in the language of this listing. Maximum length - 80 characters. Plain text.",
          type = "string",
        },
        languageCode = {
          description = "Required. The language of this listing, as defined by BCP-47, e.g. \"en-US\".",
          type = "string",
        },
        title = {
          description = "Required. The title of this subscription in the language of this listing. Plain text.",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionOffer = {
      description = "A single, temporary offer",
      id = "SubscriptionOffer",
      properties = {
        basePlanId = {
          description = "Required. Immutable. The ID of the base plan to which this offer is an extension.",
          type = "string",
        },
        offerId = {
          description = "Required. Immutable. Unique ID of this subscription offer. Must be unique within the base plan.",
          type = "string",
        },
        offerTags = {
          description = "List of up to 20 custom tags specified for this offer, and returned to the app through the billing library.",
          items = {
            ["$ref"] = "OfferTag",
          },
          type = "array",
        },
        otherRegionsConfig = {
          ["$ref"] = "OtherRegionsSubscriptionOfferConfig",
          description = "The configuration for any new locations Play may launch in the future.",
        },
        packageName = {
          description = "Required. Immutable. The package name of the app the parent subscription belongs to.",
          type = "string",
        },
        phases = {
          description = "Required. The phases of this subscription offer. Must contain at least one entry, and may contain at most five. Users will always receive all these phases in the specified order. Phases may not be added, removed, or reordered after initial creation.",
          items = {
            ["$ref"] = "SubscriptionOfferPhase",
          },
          type = "array",
        },
        productId = {
          description = "Required. Immutable. The ID of the parent subscription this offer belongs to.",
          type = "string",
        },
        regionalConfigs = {
          description = "Required. The region-specific configuration of this offer. Must contain at least one entry.",
          items = {
            ["$ref"] = "RegionalSubscriptionOfferConfig",
          },
          type = "array",
        },
        state = {
          description = "Output only. The current state of this offer. Can be changed using Activate and Deactivate actions. NB: the base plan state supersedes this state, so an active offer may not be available if the base plan is not active.",
          enum = {
            "STATE_UNSPECIFIED",
            "DRAFT",
            "ACTIVE",
            "INACTIVE",
          },
          enumDescriptions = {
            "Default value, should never be used.",
            "The subscription offer is not and has never been available to users.",
            "The subscription offer is available to new and existing users.",
            "The subscription offer is not available to new users. Existing users retain access.",
          },
          readOnly = true,
          type = "string",
        },
        targeting = {
          ["$ref"] = "SubscriptionOfferTargeting",
          description = "The requirements that users need to fulfil to be eligible for this offer. Represents the requirements that Play will evaluate to decide whether an offer should be returned. Developers may further filter these offers themselves.",
        },
      },
      type = "object",
    },
    SubscriptionOfferPhase = {
      description = "A single phase of a subscription offer.",
      id = "SubscriptionOfferPhase",
      properties = {
        duration = {
          description = "Required. The duration of a single recurrence of this phase. Specified in ISO 8601 format.",
          type = "string",
        },
        otherRegionsConfig = {
          ["$ref"] = "OtherRegionsSubscriptionOfferPhaseConfig",
          description = "Pricing information for any new locations Play may launch in.",
        },
        recurrenceCount = {
          description = "Required. The number of times this phase repeats. If this offer phase is not free, each recurrence charges the user the price of this offer phase.",
          format = "int32",
          type = "integer",
        },
        regionalConfigs = {
          description = "Required. The region-specific configuration of this offer phase. This list must contain exactly one entry for each region for which the subscription offer has a regional config.",
          items = {
            ["$ref"] = "RegionalSubscriptionOfferPhaseConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SubscriptionOfferTargeting = {
      description = "Defines the rule a user needs to satisfy to receive this offer.",
      id = "SubscriptionOfferTargeting",
      properties = {
        acquisitionRule = {
          ["$ref"] = "AcquisitionTargetingRule",
          description = "Offer targeting rule for new user acquisition.",
        },
        upgradeRule = {
          ["$ref"] = "UpgradeTargetingRule",
          description = "Offer targeting rule for upgrading users' existing plans.",
        },
      },
      type = "object",
    },
    SubscriptionPriceChange = {
      description = "Contains the price change information for a subscription that can be used to control the user journey for the price change in the app. This can be in the form of seeking confirmation from the user or tailoring the experience for a successful conversion.",
      id = "SubscriptionPriceChange",
      properties = {
        newPrice = {
          ["$ref"] = "Price",
          description = "The new price the subscription will renew with if the price change is accepted by the user.",
        },
        state = {
          description = "The current state of the price change. Possible values are: 0. Outstanding: State for a pending price change waiting for the user to agree. In this state, you can optionally seek confirmation from the user using the In-App API. 1. Accepted: State for an accepted price change that the subscription will renew with unless it's canceled. The price change takes effect on a future date when the subscription renews. Note that the change might not occur when the subscription is renewed next.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SubscriptionPurchase = {
      description = "A SubscriptionPurchase resource indicates the status of a user's subscription purchase.",
      id = "SubscriptionPurchase",
      properties = {
        acknowledgementState = {
          description = "The acknowledgement state of the subscription product. Possible values are: 0. Yet to be acknowledged 1. Acknowledged",
          format = "int32",
          type = "integer",
        },
        autoRenewing = {
          description = "Whether the subscription will automatically be renewed when it reaches its current expiry time.",
          type = "boolean",
        },
        autoResumeTimeMillis = {
          description = "Time at which the subscription will be automatically resumed, in milliseconds since the Epoch. Only present if the user has requested to pause the subscription.",
          format = "int64",
          type = "string",
        },
        cancelReason = {
          description = "The reason why a subscription was canceled or is not auto-renewing. Possible values are: 0. User canceled the subscription 1. Subscription was canceled by the system, for example because of a billing problem 2. Subscription was replaced with a new subscription 3. Subscription was canceled by the developer",
          format = "int32",
          type = "integer",
        },
        cancelSurveyResult = {
          ["$ref"] = "SubscriptionCancelSurveyResult",
          description = "Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).",
        },
        countryCode = {
          description = "ISO 3166-1 alpha-2 billing country/region code of the user at the time the subscription was granted.",
          type = "string",
        },
        developerPayload = {
          description = "A developer-specified string that contains supplemental information about an order.",
          type = "string",
        },
        emailAddress = {
          description = "The email address of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'.",
          type = "string",
        },
        expiryTimeMillis = {
          description = "Time at which the subscription will expire, in milliseconds since the Epoch.",
          format = "int64",
          type = "string",
        },
        externalAccountId = {
          description = "User account identifier in the third-party service. Only present if account linking happened as part of the subscription purchase flow.",
          type = "string",
        },
        familyName = {
          description = "The family name of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'.",
          type = "string",
        },
        givenName = {
          description = "The given name of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'.",
          type = "string",
        },
        introductoryPriceInfo = {
          ["$ref"] = "IntroductoryPriceInfo",
          description = "Introductory price information of the subscription. This is only present when the subscription was purchased with an introductory price. This field does not indicate the subscription is currently in introductory price period.",
        },
        kind = {
          description = "This kind represents a subscriptionPurchase object in the androidpublisher service.",
          type = "string",
        },
        linkedPurchaseToken = {
          description = "The purchase token of the originating purchase if this subscription is one of the following: 0. Re-signup of a canceled but non-lapsed subscription 1. Upgrade/downgrade from a previous subscription For example, suppose a user originally signs up and you receive purchase token X, then the user cancels and goes through the resignup flow (before their subscription lapses) and you receive purchase token Y, and finally the user upgrades their subscription and you receive purchase token Z. If you call this API with purchase token Z, this field will be set to Y. If you call this API with purchase token Y, this field will be set to X. If you call this API with purchase token X, this field will not be set.",
          type = "string",
        },
        obfuscatedExternalAccountId = {
          description = "An obfuscated version of the id that is uniquely associated with the user's account in your app. Present for the following purchases: * If account linking happened as part of the subscription purchase flow. * It was specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedaccountid when the purchase was made.",
          type = "string",
        },
        obfuscatedExternalProfileId = {
          description = "An obfuscated version of the id that is uniquely associated with the user's profile in your app. Only present if specified using https://developer.android.com/reference/com/android/billingclient/api/BillingFlowParams.Builder#setobfuscatedprofileid when the purchase was made.",
          type = "string",
        },
        orderId = {
          description = "The order id of the latest recurring order associated with the purchase of the subscription. If the subscription was canceled because payment was declined, this will be the order id from the payment declined order.",
          type = "string",
        },
        paymentState = {
          description = "The payment state of the subscription. Possible values are: 0. Payment pending 1. Payment received 2. Free trial 3. Pending deferred upgrade/downgrade Not present for canceled, expired subscriptions.",
          format = "int32",
          type = "integer",
        },
        priceAmountMicros = {
          description = "Price of the subscription, For tax exclusive countries, the price doesn't include tax. For tax inclusive countries, the price includes tax. Price is expressed in micro-units, where 1,000,000 micro-units represents one unit of the currency. For example, if the subscription price is €1.99, price_amount_micros is 1990000.",
          format = "int64",
          type = "string",
        },
        priceChange = {
          ["$ref"] = "SubscriptionPriceChange",
          description = "The latest price change information available. This is present only when there is an upcoming price change for the subscription yet to be applied. Once the subscription renews with the new price or the subscription is canceled, no price change information will be returned.",
        },
        priceCurrencyCode = {
          description = "ISO 4217 currency code for the subscription price. For example, if the price is specified in British pounds sterling, price_currency_code is \"GBP\".",
          type = "string",
        },
        profileId = {
          description = "The Google profile id of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'.",
          type = "string",
        },
        profileName = {
          description = "The profile name of the user when the subscription was purchased. Only present for purchases made with 'Subscribe with Google'.",
          type = "string",
        },
        promotionCode = {
          description = "The promotion code applied on this purchase. This field is only set if a vanity code promotion is applied when the subscription was purchased.",
          type = "string",
        },
        promotionType = {
          description = "The type of promotion applied on this purchase. This field is only set if a promotion is applied when the subscription was purchased. Possible values are: 0. One time code 1. Vanity code",
          format = "int32",
          type = "integer",
        },
        purchaseType = {
          description = "The type of purchase of the subscription. This field is only set if this purchase was not made using the standard in-app billing flow. Possible values are: 0. Test (i.e. purchased from a license testing account) 1. Promo (i.e. purchased using a promo code)",
          format = "int32",
          type = "integer",
        },
        startTimeMillis = {
          description = "Time at which the subscription was granted, in milliseconds since the Epoch.",
          format = "int64",
          type = "string",
        },
        userCancellationTimeMillis = {
          description = "The time at which the subscription was canceled by the user, in milliseconds since the epoch. Only present if cancelReason is 0.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionPurchaseLineItem = {
      description = "Item-level info for a subscription purchase.",
      id = "SubscriptionPurchaseLineItem",
      properties = {
        autoRenewingPlan = {
          ["$ref"] = "AutoRenewingPlan",
          description = "The item is auto renewing.",
        },
        expiryTime = {
          description = "Time at which the subscription expired or will expire unless the access is extended (ex. renews).",
          format = "google-datetime",
          type = "string",
        },
        offerDetails = {
          ["$ref"] = "OfferDetails",
          description = "The offer details for this item.",
        },
        prepaidPlan = {
          ["$ref"] = "PrepaidPlan",
          description = "The item is prepaid.",
        },
        productId = {
          description = "The purchased product ID (for example, 'monthly001').",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionPurchaseV2 = {
      description = "Indicates the status of a user's subscription purchase.",
      id = "SubscriptionPurchaseV2",
      properties = {
        acknowledgementState = {
          description = "The acknowledgement state of the subscription.",
          enum = {
            "ACKNOWLEDGEMENT_STATE_UNSPECIFIED",
            "ACKNOWLEDGEMENT_STATE_PENDING",
            "ACKNOWLEDGEMENT_STATE_ACKNOWLEDGED",
          },
          enumDescriptions = {
            "Unspecified acknowledgement state.",
            "The subscription is not acknowledged yet.",
            "The subscription is acknowledged.",
          },
          type = "string",
        },
        canceledStateContext = {
          ["$ref"] = "CanceledStateContext",
          description = "Additional context around canceled subscriptions. Only present if the subscription currently has subscription_state SUBSCRIPTION_STATE_CANCELED.",
        },
        externalAccountIdentifiers = {
          ["$ref"] = "ExternalAccountIdentifiers",
          description = "User account identifier in the third-party service.",
        },
        kind = {
          description = "This kind represents a SubscriptionPurchaseV2 object in the androidpublisher service.",
          type = "string",
        },
        latestOrderId = {
          description = "The order id of the latest order associated with the purchase of the subscription. For autoRenewing subscription, this is the order id of signup order if it is not renewed yet, or the last recurring order id (success, pending, or declined order). For prepaid subscription, this is the order id associated with the queried purchase token.",
          type = "string",
        },
        lineItems = {
          description = "Item-level info for a subscription purchase. The items in the same purchase should be either all with AutoRenewingPlan or all with PrepaidPlan.",
          items = {
            ["$ref"] = "SubscriptionPurchaseLineItem",
          },
          type = "array",
        },
        linkedPurchaseToken = {
          description = "The purchase token of the old subscription if this subscription is one of the following: * Re-signup of a canceled but non-lapsed subscription * Upgrade/downgrade from a previous subscription. * Convert from prepaid to auto renewing subscription. * Convert from an auto renewing subscription to prepaid. * Topup a prepaid subscription.",
          type = "string",
        },
        pausedStateContext = {
          ["$ref"] = "PausedStateContext",
          description = "Additional context around paused subscriptions. Only present if the subscription currently has subscription_state SUBSCRIPTION_STATE_PAUSED.",
        },
        regionCode = {
          description = "ISO 3166-1 alpha-2 billing country/region code of the user at the time the subscription was granted.",
          type = "string",
        },
        startTime = {
          description = "Time at which the subscription was granted. Not set for pending subscriptions (subscription was created but awaiting payment during signup).",
          format = "google-datetime",
          type = "string",
        },
        subscribeWithGoogleInfo = {
          ["$ref"] = "SubscribeWithGoogleInfo",
          description = "User profile associated with purchases made with 'Subscribe with Google'.",
        },
        subscriptionState = {
          description = "The current state of the subscription.",
          enum = {
            "SUBSCRIPTION_STATE_UNSPECIFIED",
            "SUBSCRIPTION_STATE_PENDING",
            "SUBSCRIPTION_STATE_ACTIVE",
            "SUBSCRIPTION_STATE_PAUSED",
            "SUBSCRIPTION_STATE_IN_GRACE_PERIOD",
            "SUBSCRIPTION_STATE_ON_HOLD",
            "SUBSCRIPTION_STATE_CANCELED",
            "SUBSCRIPTION_STATE_EXPIRED",
          },
          enumDescriptions = {
            "Unspecified subscription state.",
            "Subscription was created but awaiting payment during signup. In this state, all items are awaiting payment.",
            "Subscription is active. - (1) If the subscription is an auto renewing plan, at least one item is auto_renew_enabled and not expired. - (2) If the subscription is a prepaid plan, at least one item is not expired.",
            "Subscription is paused. The state is only available when the subscription is an auto renewing plan. In this state, all items are in paused state.",
            "Subscription is in grace period. The state is only available when the subscription is an auto renewing plan. In this state, all items are in grace period.",
            "Subscription is on hold (suspended). The state is only available when the subscription is an auto renewing plan. In this state, all items are on hold.",
            "Subscription is canceled but not expired yet. The state is only available when the subscription is an auto renewing plan. All items have auto_renew_enabled set to false.",
            "Subscription is expired. All items have expiry_time in the past.",
          },
          type = "string",
        },
        testPurchase = {
          ["$ref"] = "TestPurchase",
          description = "Only present if this subscription purchase is a test purchase.",
        },
      },
      type = "object",
    },
    SubscriptionPurchasesAcknowledgeRequest = {
      description = "Request for the purchases.subscriptions.acknowledge API.",
      id = "SubscriptionPurchasesAcknowledgeRequest",
      properties = {
        developerPayload = {
          description = "Payload to attach to the purchase.",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionPurchasesDeferRequest = {
      description = "Request for the purchases.subscriptions.defer API.",
      id = "SubscriptionPurchasesDeferRequest",
      properties = {
        deferralInfo = {
          ["$ref"] = "SubscriptionDeferralInfo",
          description = "The information about the new desired expiry time for the subscription.",
        },
      },
      type = "object",
    },
    SubscriptionPurchasesDeferResponse = {
      description = "Response for the purchases.subscriptions.defer API.",
      id = "SubscriptionPurchasesDeferResponse",
      properties = {
        newExpiryTimeMillis = {
          description = "The new expiry time for the subscription in milliseconds since the Epoch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionTaxAndComplianceSettings = {
      description = "Details about taxation, Google Play policy and legal compliance for subscription products.",
      id = "SubscriptionTaxAndComplianceSettings",
      properties = {
        eeaWithdrawalRightType = {
          description = "Digital content or service classification for products distributed to users in the European Economic Area (EEA). The withdrawal regime under EEA consumer laws depends on this classification. Refer to the [Help Center article](https://support.google.com/googleplay/android-developer/answer/10463498) for more information.",
          enum = {
            "WITHDRAWAL_RIGHT_TYPE_UNSPECIFIED",
            "WITHDRAWAL_RIGHT_DIGITAL_CONTENT",
            "WITHDRAWAL_RIGHT_SERVICE",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        taxRateInfoByRegionCode = {
          additionalProperties = {
            ["$ref"] = "RegionalTaxRateInfo",
          },
          description = "A mapping from region code to tax rate details. The keys are region codes as defined by Unicode's \"CLDR\".",
          type = "object",
        },
      },
      type = "object",
    },
    SystemApksListResponse = {
      description = "Response to list previously created system APK variants.",
      id = "SystemApksListResponse",
      properties = {
        variants = {
          description = "All system APK variants created.",
          items = {
            ["$ref"] = "Variant",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SystemFeature = {
      description = "Representation of a system feature.",
      id = "SystemFeature",
      properties = {
        name = {
          description = "The name of the feature.",
          type = "string",
        },
      },
      type = "object",
    },
    SystemInitiatedCancellation = {
      description = "Information specific to cancellations initiated by Google system.",
      id = "SystemInitiatedCancellation",
      properties = {},
      type = "object",
    },
    TargetingRuleScope = {
      description = "Defines the scope of subscriptions which a targeting rule can match to target offers to users based on past or current entitlement.",
      id = "TargetingRuleScope",
      properties = {
        specificSubscriptionInApp = {
          description = "The scope of the current targeting rule is the subscription with the specified subscription ID. Must be a subscription within the same parent app.",
          type = "string",
        },
      },
      type = "object",
    },
    TestPurchase = {
      description = "Whether this subscription purchase is a test purchase.",
      id = "TestPurchase",
      properties = {},
      type = "object",
    },
    Testers = {
      description = "The testers of an app. The resource for TestersService. Note: while it is possible in the Play Console UI to add testers via email lists, email lists are not supported by this resource.",
      id = "Testers",
      properties = {
        googleGroups = {
          description = "All testing Google Groups, as email addresses.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Timestamp = {
      description = "A Timestamp represents a point in time independent of any time zone or local calendar, encoded as a count of seconds and fractions of seconds at nanosecond resolution. The count is relative to an epoch at UTC midnight on January 1, 1970.",
      id = "Timestamp",
      properties = {
        nanos = {
          description = "Non-negative fractions of a second at nanosecond resolution. Must be from 0 to 999,999,999 inclusive.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Represents seconds of UTC time since Unix epoch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    TokenPagination = {
      description = "Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next/previous token to get another page of the result. The presence or absence of next/previous token indicates whether a next/previous page is available and provides a mean of accessing this page. ListRequest.page_token should be set to either next_page_token or previous_page_token to access another page.",
      id = "TokenPagination",
      properties = {
        nextPageToken = {
          description = "Tokens to pass to the standard list field 'page_token'. Whenever available, tokens are preferred over manipulating start_index.",
          type = "string",
        },
        previousPageToken = {
          type = "string",
        },
      },
      type = "object",
    },
    Track = {
      description = "A track configuration. The resource for TracksService.",
      id = "Track",
      properties = {
        releases = {
          description = "In a read request, represents all active releases in the track. In an update request, represents desired changes.",
          items = {
            ["$ref"] = "TrackRelease",
          },
          type = "array",
        },
        track = {
          description = "Identifier of the track.",
          type = "string",
        },
      },
      type = "object",
    },
    TrackCountryAvailability = {
      description = "Resource for per-track country availability information.",
      id = "TrackCountryAvailability",
      properties = {
        countries = {
          description = "A list of one or more countries where artifacts in this track are available. This list includes all countries that are targeted by the track, even if only specific carriers are targeted in that country.",
          items = {
            ["$ref"] = "TrackTargetedCountry",
          },
          type = "array",
        },
        restOfWorld = {
          description = "Whether artifacts in this track are available to \"rest of the world\" countries.",
          type = "boolean",
        },
        syncWithProduction = {
          description = "Whether this track's availability is synced with the default production track. See https://support.google.com/googleplay/android-developer/answer/7550024 for more information on syncing country availability with production. Note that if this is true, the returned \"countries\" and \"rest_of_world\" fields will reflect the values for the default production track.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TrackRelease = {
      description = "A release within a track.",
      id = "TrackRelease",
      properties = {
        countryTargeting = {
          ["$ref"] = "CountryTargeting",
          description = "Restricts a release to a specific set of countries.",
        },
        inAppUpdatePriority = {
          description = "In-app update priority of the release. All newly added APKs in the release will be considered at this priority. Can take values in the range [0, 5], with 5 the highest priority. Defaults to 0. in_app_update_priority can not be updated once the release is rolled out. See https://developer.android.com/guide/playcore/in-app-updates.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The release name. Not required to be unique. If not set, the name is generated from the APK's version_name. If the release contains multiple APKs, the name is generated from the date.",
          type = "string",
        },
        releaseNotes = {
          description = "A description of what is new in this release.",
          items = {
            ["$ref"] = "LocalizedText",
          },
          type = "array",
        },
        status = {
          description = "The status of the release.",
          enum = {
            "statusUnspecified",
            "draft",
            "inProgress",
            "halted",
            "completed",
          },
          enumDescriptions = {
            "Unspecified status.",
            "The release's APKs are not being served to users.",
            "The release's APKs are being served to a fraction of users, determined by 'user_fraction'.",
            "The release's APKs will no longer be served to users. Users who already have these APKs are unaffected.",
            "The release will have no further changes. Its APKs are being served to all users, unless they are eligible to APKs of a more recent release.",
          },
          type = "string",
        },
        userFraction = {
          description = "Fraction of users who are eligible for a staged release. 0 < fraction < 1. Can only be set when status is \"inProgress\" or \"halted\".",
          format = "double",
          type = "number",
        },
        versionCodes = {
          description = "Version codes of all APKs in the release. Must include version codes to retain from previous releases.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TrackTargetedCountry = {
      description = "Representation of a single country where the contents of a track are available.",
      id = "TrackTargetedCountry",
      properties = {
        countryCode = {
          description = "The country to target, as a two-letter CLDR code.",
          type = "string",
        },
      },
      type = "object",
    },
    TracksListResponse = {
      description = "Response listing all tracks.",
      id = "TracksListResponse",
      properties = {
        kind = {
          description = "The kind of this response (\"androidpublisher#tracksListResponse\").",
          type = "string",
        },
        tracks = {
          description = "All tracks.",
          items = {
            ["$ref"] = "Track",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpgradeTargetingRule = {
      description = "Represents a targeting rule of the form: User currently has {scope} [with billing period {billing_period}].",
      id = "UpgradeTargetingRule",
      properties = {
        billingPeriodDuration = {
          description = "The specific billing period duration, specified in ISO 8601 format, that a user must be currently subscribed to to be eligible for this rule. If not specified, users subscribed to any billing period are matched.",
          type = "string",
        },
        oncePerUser = {
          description = "Limit this offer to only once per user. If set to true, a user can never be eligible for this offer again if they ever subscribed to this offer.",
          type = "boolean",
        },
        scope = {
          ["$ref"] = "TargetingRuleScope",
          description = "Required. The scope of subscriptions this rule considers. Only allows \"this subscription\" and \"specific subscription in app\".",
        },
      },
      type = "object",
    },
    User = {
      description = "A user resource.",
      id = "User",
      properties = {
        accessState = {
          description = "Output only. The state of the user's access to the Play Console.",
          enum = {
            "ACCESS_STATE_UNSPECIFIED",
            "INVITED",
            "INVITATION_EXPIRED",
            "ACCESS_GRANTED",
            "ACCESS_EXPIRED",
          },
          enumDescriptions = {
            "Unknown or unspecified access state.",
            "User is invited but has not yet accepted the invitation.",
            "Invitation has expired.",
            "User has accepted an invitation and has access to the Play Console.",
            "Account access has expired.",
          },
          readOnly = true,
          type = "string",
        },
        developerAccountPermissions = {
          description = "Permissions for the user which apply across the developer account.",
          items = {
            enum = {
              "DEVELOPER_LEVEL_PERMISSION_UNSPECIFIED",
              "CAN_SEE_ALL_APPS",
              "CAN_VIEW_FINANCIAL_DATA_GLOBAL",
              "CAN_MANAGE_PERMISSIONS_GLOBAL",
              "CAN_EDIT_GAMES_GLOBAL",
              "CAN_PUBLISH_GAMES_GLOBAL",
              "CAN_REPLY_TO_REVIEWS_GLOBAL",
              "CAN_MANAGE_PUBLIC_APKS_GLOBAL",
              "CAN_MANAGE_TRACK_APKS_GLOBAL",
              "CAN_MANAGE_TRACK_USERS_GLOBAL",
              "CAN_MANAGE_PUBLIC_LISTING_GLOBAL",
              "CAN_MANAGE_DRAFT_APPS_GLOBAL",
              "CAN_CREATE_MANAGED_PLAY_APPS_GLOBAL",
              "CAN_CHANGE_MANAGED_PLAY_SETTING_GLOBAL",
              "CAN_MANAGE_ORDERS_GLOBAL",
            },
            enumDescriptions = {
              "Unknown or unspecified permission.",
              "View app information and download bulk reports (read-only).",
              "View financial data, orders, and cancellation survey responses.",
              "Admin (all permissions).",
              "Edit Play Games Services projects.",
              "Publish Play Games Services projects.",
              "Reply to reviews.",
              "Release to production, exclude devices, and use app signing by Google Play.",
              "Release to testing tracks.",
              "Manage testing tracks and edit tester lists.",
              "Manage store presence.",
              "Create, edit, and delete draft apps.",
              "Create and publish private apps to your organization.",
              "Choose whether apps are public, or only available to your organization.",
              "Manage orders and subscriptions.",
            },
            type = "string",
          },
          type = "array",
        },
        email = {
          description = "Immutable. The user's email address.",
          type = "string",
        },
        expirationTime = {
          description = "The time at which the user's access expires, if set. When setting this value, it must always be in the future.",
          format = "google-datetime",
          type = "string",
        },
        grants = {
          description = "Output only. Per-app permissions for the user.",
          items = {
            ["$ref"] = "Grant",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Required. Resource name for this user, following the pattern \"developers/{developer}/users/{email}\".",
          type = "string",
        },
        partial = {
          description = "Output only. Whether there are more permissions for the user that are not represented here. This can happen if the caller does not have permission to manage all apps in the account. This is also `true` if this user is the account owner. If this field is `true`, it should be taken as a signal that this user cannot be fully managed via the API. That is, the API caller is not be able to manage all of the permissions this user holds, either because it doesn't know about them or because the user is the account owner.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    UserComment = {
      description = "User entry from conversation between user and developer.",
      id = "UserComment",
      properties = {
        androidOsVersion = {
          description = "Integer Android SDK version of the user's device at the time the review was written, e.g. 23 is Marshmallow. May be absent.",
          format = "int32",
          type = "integer",
        },
        appVersionCode = {
          description = "Integer version code of the app as installed at the time the review was written. May be absent.",
          format = "int32",
          type = "integer",
        },
        appVersionName = {
          description = "String version name of the app as installed at the time the review was written. May be absent.",
          type = "string",
        },
        device = {
          description = "Codename for the reviewer's device, e.g. klte, flounder. May be absent.",
          type = "string",
        },
        deviceMetadata = {
          ["$ref"] = "DeviceMetadata",
          description = "Information about the characteristics of the user's device.",
        },
        lastModified = {
          ["$ref"] = "Timestamp",
          description = "The last time at which this comment was updated.",
        },
        originalText = {
          description = "Untranslated text of the review, where the review was translated. If the review was not translated this is left blank.",
          type = "string",
        },
        reviewerLanguage = {
          description = "Language code for the reviewer. This is taken from the device settings so is not guaranteed to match the language the review is written in. May be absent.",
          type = "string",
        },
        starRating = {
          description = "The star rating associated with the review, from 1 to 5.",
          format = "int32",
          type = "integer",
        },
        text = {
          description = "The content of the comment, i.e. review body. In some cases users have been able to write a review with separate title and body; in those cases the title and body are concatenated and separated by a tab character.",
          type = "string",
        },
        thumbsDownCount = {
          description = "Number of users who have given this review a thumbs down.",
          format = "int32",
          type = "integer",
        },
        thumbsUpCount = {
          description = "Number of users who have given this review a thumbs up.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UserInitiatedCancellation = {
      description = "Information specific to cancellations initiated by users.",
      id = "UserInitiatedCancellation",
      properties = {
        cancelSurveyResult = {
          ["$ref"] = "CancelSurveyResult",
          description = "Information provided by the user when they complete the subscription cancellation flow (cancellation reason survey).",
        },
        cancelTime = {
          description = "The time at which the subscription was canceled by the user. The user might still have access to the subscription after this time. Use line_items.expiry_time to determine if a user still has access.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UsesPermission = {
      description = "A permission used by this APK.",
      id = "UsesPermission",
      properties = {
        maxSdkVersion = {
          description = "Optionally, the maximum SDK version for which the permission is required.",
          format = "int32",
          type = "integer",
        },
        name = {
          description = "The name of the permission requested.",
          type = "string",
        },
      },
      type = "object",
    },
    Variant = {
      description = "APK that is suitable for inclusion in a system image. The resource of SystemApksService.",
      id = "Variant",
      properties = {
        deviceSpec = {
          ["$ref"] = "DeviceSpec",
          description = "The device spec used to generate the APK.",
        },
        variantId = {
          description = "Output only. The ID of a previously created system APK variant.",
          format = "uint32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    VoidedPurchase = {
      description = "A VoidedPurchase resource indicates a purchase that was either canceled/refunded/charged-back.",
      id = "VoidedPurchase",
      properties = {
        kind = {
          description = "This kind represents a voided purchase object in the androidpublisher service.",
          type = "string",
        },
        orderId = {
          description = "The order id which uniquely identifies a one-time purchase, subscription purchase, or subscription renewal.",
          type = "string",
        },
        purchaseTimeMillis = {
          description = "The time at which the purchase was made, in milliseconds since the epoch (Jan 1, 1970).",
          format = "int64",
          type = "string",
        },
        purchaseToken = {
          description = "The token which uniquely identifies a one-time purchase or subscription. To uniquely identify subscription renewals use order_id (available starting from version 3 of the API).",
          type = "string",
        },
        voidedReason = {
          description = "The reason why the purchase was voided, possible values are: 0. Other 1. Remorse 2. Not_received 3. Defective 4. Accidental_purchase 5. Fraud 6. Friendly_fraud 7. Chargeback",
          format = "int32",
          type = "integer",
        },
        voidedSource = {
          description = "The initiator of voided purchase, possible values are: 0. User 1. Developer 2. Google",
          format = "int32",
          type = "integer",
        },
        voidedTimeMillis = {
          description = "The time at which the purchase was canceled/refunded/charged-back, in milliseconds since the epoch (Jan 1, 1970).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    VoidedPurchasesListResponse = {
      description = "Response for the voidedpurchases.list API.",
      id = "VoidedPurchasesListResponse",
      properties = {
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
          description = "Pagination information for token pagination.",
        },
        voidedPurchases = {
          items = {
            ["$ref"] = "VoidedPurchase",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Play Android Developer API",
  version = "v3",
}