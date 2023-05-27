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
  baseUrl = "https://dlp.googleapis.com/",
  batchPath = "batch",
  canonicalName = "DLP",
  description = "Provides methods for detection, risk analysis, and de-identification of privacy-sensitive fragments in text, images, and Google Cloud Platform storage repositories.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dlp/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "dlp:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://dlp.mtls.googleapis.com/",
  name = "dlp",
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
    infoTypes = {
      methods = {
        list = {
          description = "Returns a list of the sensitive information types that DLP API supports. See https://cloud.google.com/dlp/docs/infotypes-reference to learn more.",
          flatPath = "v2/infoTypes",
          httpMethod = "GET",
          id = "dlp.infoTypes.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT.",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en-US strings will be returned.",
              location = "query",
              type = "string",
            },
            locationId = {
              description = "Deprecated. This field has no effect.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "The parent resource name. The format of this value is as follows: locations/ LOCATION_ID",
              location = "query",
              type = "string",
            },
          },
          path = "v2/infoTypes",
          response = {
            ["$ref"] = "GooglePrivacyDlpV2ListInfoTypesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    locations = {
      resources = {
        infoTypes = {
          methods = {
            list = {
              description = "Returns a list of the sensitive information types that DLP API supports. See https://cloud.google.com/dlp/docs/infotypes-reference to learn more.",
              flatPath = "v2/locations/{locationsId}/infoTypes",
              httpMethod = "GET",
              id = "dlp.locations.infoTypes.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "filter to only return infoTypes supported by certain parts of the API. Defaults to supported_by=INSPECT.",
                  location = "query",
                  type = "string",
                },
                languageCode = {
                  description = "BCP-47 language code for localized infoType friendly names. If omitted, or if localized strings are not available, en-US strings will be returned.",
                  location = "query",
                  type = "string",
                },
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent resource name. The format of this value is as follows: locations/ LOCATION_ID",
                  location = "path",
                  pattern = "^locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/infoTypes",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListInfoTypesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    organizations = {
      resources = {
        deidentifyTemplates = {
          methods = {
            create = {
              description = "Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/organizations/{organizationsId}/deidentifyTemplates",
              httpMethod = "POST",
              id = "dlp.organizations.deidentifyTemplates.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/deidentifyTemplates",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateDeidentifyTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/organizations/{organizationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
              httpMethod = "DELETE",
              id = "dlp.organizations.deidentifyTemplates.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/deidentifyTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/organizations/{organizationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
              httpMethod = "GET",
              id = "dlp.organizations.deidentifyTemplates.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/deidentifyTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists DeidentifyTemplates. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/organizations/{organizationsId}/deidentifyTemplates",
              httpMethod = "GET",
              id = "dlp.organizations.deidentifyTemplates.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to continue retrieval. Comes from previous call to `ListDeidentifyTemplates`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/deidentifyTemplates",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListDeidentifyTemplatesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/organizations/{organizationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
              httpMethod = "PATCH",
              id = "dlp.organizations.deidentifyTemplates.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/deidentifyTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        inspectTemplates = {
          methods = {
            create = {
              description = "Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/organizations/{organizationsId}/inspectTemplates",
              httpMethod = "POST",
              id = "dlp.organizations.inspectTemplates.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/inspectTemplates",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateInspectTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/organizations/{organizationsId}/inspectTemplates/{inspectTemplatesId}",
              httpMethod = "DELETE",
              id = "dlp.organizations.inspectTemplates.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/inspectTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/organizations/{organizationsId}/inspectTemplates/{inspectTemplatesId}",
              httpMethod = "GET",
              id = "dlp.organizations.inspectTemplates.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/inspectTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists InspectTemplates. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/organizations/{organizationsId}/inspectTemplates",
              httpMethod = "GET",
              id = "dlp.organizations.inspectTemplates.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to continue retrieval. Comes from previous call to `ListInspectTemplates`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/inspectTemplates",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListInspectTemplatesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/organizations/{organizationsId}/inspectTemplates/{inspectTemplatesId}",
              httpMethod = "PATCH",
              id = "dlp.organizations.inspectTemplates.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/inspectTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2UpdateInspectTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        locations = {
          resources = {
            deidentifyTemplates = {
              methods = {
                create = {
                  description = "Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/deidentifyTemplates",
                  httpMethod = "POST",
                  id = "dlp.organizations.locations.deidentifyTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/deidentifyTemplates",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateDeidentifyTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
                  httpMethod = "DELETE",
                  id = "dlp.organizations.locations.deidentifyTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/deidentifyTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.deidentifyTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/deidentifyTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists DeidentifyTemplates. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/deidentifyTemplates",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.deidentifyTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to `ListDeidentifyTemplates`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/deidentifyTemplates",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListDeidentifyTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
                  httpMethod = "PATCH",
                  id = "dlp.organizations.locations.deidentifyTemplates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/deidentifyTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            dlpJobs = {
              methods = {
                list = {
                  description = "Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/dlpJobs",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.dlpJobs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by `AND` or `OR` logical operators. A sequence of restrictions implicitly uses `AND`. * A restriction has the form of `{field} {operator} {value}`. * Supported fields/values for inspect jobs: - `state` - PENDING|RUNNING|CANCELED|FINISHED|FAILED - `inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The name of the trigger that created the job. - 'end_time` - Corresponds to the time the job finished. - 'start_time` - Corresponds to the time the job finished. * Supported fields for risk analysis jobs: - `state` - RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time the job finished. - 'start_time` - Corresponds to the time the job finished. * The operator must be `=` or `!=`. Examples: * inspected_storage = cloud_storage AND state = done * inspected_storage = cloud_storage OR inspected_storage = bigquery * inspected_storage = cloud_storage AND (state = done OR state = canceled) * end_time > \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no more than 500 characters.",
                      location = "query",
                      type = "string",
                    },
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc, end_time asc, create_time desc` Supported fields are: - `create_time`: corresponds to the time the job was created. - `end_time`: corresponds to the time the job ended. - `name`: corresponds to the job's name. - `state`: corresponds to `state`",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "The type of job. Defaults to `DlpJobType.INSPECT`",
                      enum = {
                        "DLP_JOB_TYPE_UNSPECIFIED",
                        "INSPECT_JOB",
                        "RISK_ANALYSIS_JOB",
                      },
                      enumDescriptions = {
                        "Defaults to INSPECT_JOB.",
                        "The job inspected Google Cloud for sensitive data.",
                        "The job executed a Risk Analysis computation.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/dlpJobs",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListDlpJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            inspectTemplates = {
              methods = {
                create = {
                  description = "Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/inspectTemplates",
                  httpMethod = "POST",
                  id = "dlp.organizations.locations.inspectTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/inspectTemplates",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateInspectTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/inspectTemplates/{inspectTemplatesId}",
                  httpMethod = "DELETE",
                  id = "dlp.organizations.locations.inspectTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/inspectTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/inspectTemplates/{inspectTemplatesId}",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.inspectTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/inspectTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists InspectTemplates. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/inspectTemplates",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.inspectTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to `ListInspectTemplates`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/inspectTemplates",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListInspectTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/inspectTemplates/{inspectTemplatesId}",
                  httpMethod = "PATCH",
                  id = "dlp.organizations.locations.inspectTemplates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/inspectTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateInspectTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            jobTriggers = {
              methods = {
                create = {
                  description = "Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/jobTriggers",
                  httpMethod = "POST",
                  id = "dlp.organizations.locations.jobTriggers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/jobTriggers",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateJobTriggerRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}",
                  httpMethod = "DELETE",
                  id = "dlp.organizations.locations.jobTriggers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.jobTriggers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists job triggers. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/jobTriggers",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.jobTriggers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by `AND` or `OR` logical operators. A sequence of restrictions implicitly uses `AND`. * A restriction has the form of `{field} {operator} {value}`. * Supported fields/values for inspect triggers: - `status` - HEALTHY|PAUSED|CANCELLED - `inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time` - RFC 3339 formatted timestamp, surrounded by quotation marks. Nanoseconds are ignored. - 'error_count' - Number of errors that have occurred while running. * The operator must be `=` or `!=` for status and inspected_storage. Examples: * inspected_storage = cloud_storage AND status = HEALTHY * inspected_storage = cloud_storage OR inspected_storage = bigquery * inspected_storage = cloud_storage AND (state = PAUSED OR state = HEALTHY) * last_run_time > \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no more than 500 characters.",
                      location = "query",
                      type = "string",
                    },
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of triggeredJob fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the JobTrigger was created. - `update_time`: corresponds to the time the JobTrigger was last updated. - `last_run_time`: corresponds to the last time the JobTrigger ran. - `name`: corresponds to the JobTrigger's name. - `display_name`: corresponds to the JobTrigger's display name. - `status`: corresponds to JobTrigger's status.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by a server.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to ListJobTriggers. `order_by` field must not change for subsequent calls.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "The type of jobs. Will use `DlpJobType.INSPECT` if not set.",
                      enum = {
                        "DLP_JOB_TYPE_UNSPECIFIED",
                        "INSPECT_JOB",
                        "RISK_ANALYSIS_JOB",
                      },
                      enumDescriptions = {
                        "Defaults to INSPECT_JOB.",
                        "The job inspected Google Cloud for sensitive data.",
                        "The job executed a Risk Analysis computation.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/jobTriggers",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListJobTriggersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}",
                  httpMethod = "PATCH",
                  id = "dlp.organizations.locations.jobTriggers.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateJobTriggerRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            storedInfoTypes = {
              methods = {
                create = {
                  description = "Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/storedInfoTypes",
                  httpMethod = "POST",
                  id = "dlp.organizations.locations.storedInfoTypes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/storedInfoTypes",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateStoredInfoTypeRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/storedInfoTypes/{storedInfoTypesId}",
                  httpMethod = "DELETE",
                  id = "dlp.organizations.locations.storedInfoTypes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/storedInfoTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/storedInfoTypes/{storedInfoTypesId}",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.storedInfoTypes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/storedInfoTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists stored infoTypes. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/storedInfoTypes",
                  httpMethod = "GET",
                  id = "dlp.organizations.locations.storedInfoTypes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc, display_name, create_time desc` Supported fields are: - `create_time`: corresponds to the time the most recent version of the resource was created. - `state`: corresponds to the state of the resource. - `name`: corresponds to resource name. - `display_name`: corresponds to info type's display name.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to `ListStoredInfoTypes`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/storedInfoTypes",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListStoredInfoTypesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/organizations/{organizationsId}/locations/{locationsId}/storedInfoTypes/{storedInfoTypesId}",
                  httpMethod = "PATCH",
                  id = "dlp.organizations.locations.storedInfoTypes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+/storedInfoTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateStoredInfoTypeRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        storedInfoTypes = {
          methods = {
            create = {
              description = "Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/organizations/{organizationsId}/storedInfoTypes",
              httpMethod = "POST",
              id = "dlp.organizations.storedInfoTypes.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/storedInfoTypes",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateStoredInfoTypeRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/organizations/{organizationsId}/storedInfoTypes/{storedInfoTypesId}",
              httpMethod = "DELETE",
              id = "dlp.organizations.storedInfoTypes.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/storedInfoTypes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/organizations/{organizationsId}/storedInfoTypes/{storedInfoTypesId}",
              httpMethod = "GET",
              id = "dlp.organizations.storedInfoTypes.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/storedInfoTypes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists stored infoTypes. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/organizations/{organizationsId}/storedInfoTypes",
              httpMethod = "GET",
              id = "dlp.organizations.storedInfoTypes.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc, display_name, create_time desc` Supported fields are: - `create_time`: corresponds to the time the most recent version of the resource was created. - `state`: corresponds to the state of the resource. - `name`: corresponds to resource name. - `display_name`: corresponds to info type's display name.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to continue retrieval. Comes from previous call to `ListStoredInfoTypes`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/storedInfoTypes",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListStoredInfoTypesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/organizations/{organizationsId}/storedInfoTypes/{storedInfoTypesId}",
              httpMethod = "PATCH",
              id = "dlp.organizations.storedInfoTypes.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                  location = "path",
                  pattern = "^organizations/[^/]+/storedInfoTypes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2UpdateStoredInfoTypeRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    projects = {
      resources = {
        content = {
          methods = {
            deidentify = {
              description = "De-identifies potentially sensitive info from a ContentItem. This method has limits on input size and output size. See https://cloud.google.com/dlp/docs/deidentify-sensitive-data to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.",
              flatPath = "v2/projects/{projectsId}/content:deidentify",
              httpMethod = "POST",
              id = "dlp.projects.content.deidentify",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/content:deidentify",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyContentRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyContentResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            inspect = {
              description = "Finds potentially sensitive info in content. This method has limits on input size, processing time, and output size. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. For how to guides, see https://cloud.google.com/dlp/docs/inspecting-images and https://cloud.google.com/dlp/docs/inspecting-text,",
              flatPath = "v2/projects/{projectsId}/content:inspect",
              httpMethod = "POST",
              id = "dlp.projects.content.inspect",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/content:inspect",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2InspectContentRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2InspectContentResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            reidentify = {
              description = "Re-identifies content that has been de-identified. See https://cloud.google.com/dlp/docs/pseudonymization#re-identification_in_free_text_code_example to learn more.",
              flatPath = "v2/projects/{projectsId}/content:reidentify",
              httpMethod = "POST",
              id = "dlp.projects.content.reidentify",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/content:reidentify",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2ReidentifyContentRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ReidentifyContentResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        deidentifyTemplates = {
          methods = {
            create = {
              description = "Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/projects/{projectsId}/deidentifyTemplates",
              httpMethod = "POST",
              id = "dlp.projects.deidentifyTemplates.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/deidentifyTemplates",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateDeidentifyTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/projects/{projectsId}/deidentifyTemplates/{deidentifyTemplatesId}",
              httpMethod = "DELETE",
              id = "dlp.projects.deidentifyTemplates.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/deidentifyTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/projects/{projectsId}/deidentifyTemplates/{deidentifyTemplatesId}",
              httpMethod = "GET",
              id = "dlp.projects.deidentifyTemplates.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/deidentifyTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists DeidentifyTemplates. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/projects/{projectsId}/deidentifyTemplates",
              httpMethod = "GET",
              id = "dlp.projects.deidentifyTemplates.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to continue retrieval. Comes from previous call to `ListDeidentifyTemplates`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/deidentifyTemplates",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListDeidentifyTemplatesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
              flatPath = "v2/projects/{projectsId}/deidentifyTemplates/{deidentifyTemplatesId}",
              httpMethod = "PATCH",
              id = "dlp.projects.deidentifyTemplates.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/deidentifyTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        dlpJobs = {
          methods = {
            cancel = {
              description = "Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
              flatPath = "v2/projects/{projectsId}/dlpJobs/{dlpJobsId}:cancel",
              httpMethod = "POST",
              id = "dlp.projects.dlpJobs.cancel",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the DlpJob resource to be cancelled.",
                  location = "path",
                  pattern = "^projects/[^/]+/dlpJobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}:cancel",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CancelDlpJobRequest",
              },
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.",
              flatPath = "v2/projects/{projectsId}/dlpJobs",
              httpMethod = "POST",
              id = "dlp.projects.dlpJobs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/dlpJobs",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateDlpJobRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DlpJob",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a long-running DlpJob. This method indicates that the client is no longer interested in the DlpJob result. The job will be canceled if possible. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
              flatPath = "v2/projects/{projectsId}/dlpJobs/{dlpJobsId}",
              httpMethod = "DELETE",
              id = "dlp.projects.dlpJobs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the DlpJob resource to be deleted.",
                  location = "path",
                  pattern = "^projects/[^/]+/dlpJobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets the latest state of a long-running DlpJob. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
              flatPath = "v2/projects/{projectsId}/dlpJobs/{dlpJobsId}",
              httpMethod = "GET",
              id = "dlp.projects.dlpJobs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the DlpJob resource.",
                  location = "path",
                  pattern = "^projects/[^/]+/dlpJobs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DlpJob",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
              flatPath = "v2/projects/{projectsId}/dlpJobs",
              httpMethod = "GET",
              id = "dlp.projects.dlpJobs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by `AND` or `OR` logical operators. A sequence of restrictions implicitly uses `AND`. * A restriction has the form of `{field} {operator} {value}`. * Supported fields/values for inspect jobs: - `state` - PENDING|RUNNING|CANCELED|FINISHED|FAILED - `inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The name of the trigger that created the job. - 'end_time` - Corresponds to the time the job finished. - 'start_time` - Corresponds to the time the job finished. * Supported fields for risk analysis jobs: - `state` - RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time the job finished. - 'start_time` - Corresponds to the time the job finished. * The operator must be `=` or `!=`. Examples: * inspected_storage = cloud_storage AND state = done * inspected_storage = cloud_storage OR inspected_storage = bigquery * inspected_storage = cloud_storage AND (state = done OR state = canceled) * end_time > \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no more than 500 characters.",
                  location = "query",
                  type = "string",
                },
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc, end_time asc, create_time desc` Supported fields are: - `create_time`: corresponds to the time the job was created. - `end_time`: corresponds to the time the job ended. - `name`: corresponds to the job's name. - `state`: corresponds to `state`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The standard list page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The standard list page token.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                type = {
                  description = "The type of job. Defaults to `DlpJobType.INSPECT`",
                  enum = {
                    "DLP_JOB_TYPE_UNSPECIFIED",
                    "INSPECT_JOB",
                    "RISK_ANALYSIS_JOB",
                  },
                  enumDescriptions = {
                    "Defaults to INSPECT_JOB.",
                    "The job inspected Google Cloud for sensitive data.",
                    "The job executed a Risk Analysis computation.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+parent}/dlpJobs",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListDlpJobsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        image = {
          methods = {
            redact = {
              description = "Redacts potentially sensitive info from an image. This method has limits on input size, processing time, and output size. See https://cloud.google.com/dlp/docs/redacting-sensitive-data-images to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.",
              flatPath = "v2/projects/{projectsId}/image:redact",
              httpMethod = "POST",
              id = "dlp.projects.image.redact",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/image:redact",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2RedactImageRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2RedactImageResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        inspectTemplates = {
          methods = {
            create = {
              description = "Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/projects/{projectsId}/inspectTemplates",
              httpMethod = "POST",
              id = "dlp.projects.inspectTemplates.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/inspectTemplates",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateInspectTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/projects/{projectsId}/inspectTemplates/{inspectTemplatesId}",
              httpMethod = "DELETE",
              id = "dlp.projects.inspectTemplates.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/inspectTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/projects/{projectsId}/inspectTemplates/{inspectTemplatesId}",
              httpMethod = "GET",
              id = "dlp.projects.inspectTemplates.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/inspectTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists InspectTemplates. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/projects/{projectsId}/inspectTemplates",
              httpMethod = "GET",
              id = "dlp.projects.inspectTemplates.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to continue retrieval. Comes from previous call to `ListInspectTemplates`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/inspectTemplates",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListInspectTemplatesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
              flatPath = "v2/projects/{projectsId}/inspectTemplates/{inspectTemplatesId}",
              httpMethod = "PATCH",
              id = "dlp.projects.inspectTemplates.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/inspectTemplates/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2UpdateInspectTemplateRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        jobTriggers = {
          methods = {
            activate = {
              description = "Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigger event to occur.",
              flatPath = "v2/projects/{projectsId}/jobTriggers/{jobTriggersId}:activate",
              httpMethod = "POST",
              id = "dlp.projects.jobTriggers.activate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the trigger to activate, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobTriggers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}:activate",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2ActivateJobTriggerRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2DlpJob",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
              flatPath = "v2/projects/{projectsId}/jobTriggers",
              httpMethod = "POST",
              id = "dlp.projects.jobTriggers.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/jobTriggers",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateJobTriggerRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
              flatPath = "v2/projects/{projectsId}/jobTriggers/{jobTriggersId}",
              httpMethod = "DELETE",
              id = "dlp.projects.jobTriggers.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobTriggers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
              flatPath = "v2/projects/{projectsId}/jobTriggers/{jobTriggersId}",
              httpMethod = "GET",
              id = "dlp.projects.jobTriggers.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobTriggers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists job triggers. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
              flatPath = "v2/projects/{projectsId}/jobTriggers",
              httpMethod = "GET",
              id = "dlp.projects.jobTriggers.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by `AND` or `OR` logical operators. A sequence of restrictions implicitly uses `AND`. * A restriction has the form of `{field} {operator} {value}`. * Supported fields/values for inspect triggers: - `status` - HEALTHY|PAUSED|CANCELLED - `inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time` - RFC 3339 formatted timestamp, surrounded by quotation marks. Nanoseconds are ignored. - 'error_count' - Number of errors that have occurred while running. * The operator must be `=` or `!=` for status and inspected_storage. Examples: * inspected_storage = cloud_storage AND status = HEALTHY * inspected_storage = cloud_storage OR inspected_storage = bigquery * inspected_storage = cloud_storage AND (state = PAUSED OR state = HEALTHY) * last_run_time > \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no more than 500 characters.",
                  location = "query",
                  type = "string",
                },
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of triggeredJob fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the JobTrigger was created. - `update_time`: corresponds to the time the JobTrigger was last updated. - `last_run_time`: corresponds to the last time the JobTrigger ran. - `name`: corresponds to the JobTrigger's name. - `display_name`: corresponds to the JobTrigger's display name. - `status`: corresponds to JobTrigger's status.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Size of the page, can be limited by a server.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to continue retrieval. Comes from previous call to ListJobTriggers. `order_by` field must not change for subsequent calls.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                type = {
                  description = "The type of jobs. Will use `DlpJobType.INSPECT` if not set.",
                  enum = {
                    "DLP_JOB_TYPE_UNSPECIFIED",
                    "INSPECT_JOB",
                    "RISK_ANALYSIS_JOB",
                  },
                  enumDescriptions = {
                    "Defaults to INSPECT_JOB.",
                    "The job inspected Google Cloud for sensitive data.",
                    "The job executed a Risk Analysis computation.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+parent}/jobTriggers",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListJobTriggersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
              flatPath = "v2/projects/{projectsId}/jobTriggers/{jobTriggersId}",
              httpMethod = "PATCH",
              id = "dlp.projects.jobTriggers.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                  location = "path",
                  pattern = "^projects/[^/]+/jobTriggers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2UpdateJobTriggerRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        locations = {
          resources = {
            content = {
              methods = {
                deidentify = {
                  description = "De-identifies potentially sensitive info from a ContentItem. This method has limits on input size and output size. See https://cloud.google.com/dlp/docs/deidentify-sensitive-data to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/content:deidentify",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.content.deidentify",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/content:deidentify",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyContentRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyContentResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                inspect = {
                  description = "Finds potentially sensitive info in content. This method has limits on input size, processing time, and output size. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. For how to guides, see https://cloud.google.com/dlp/docs/inspecting-images and https://cloud.google.com/dlp/docs/inspecting-text,",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/content:inspect",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.content.inspect",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/content:inspect",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectContentRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectContentResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                reidentify = {
                  description = "Re-identifies content that has been de-identified. See https://cloud.google.com/dlp/docs/pseudonymization#re-identification_in_free_text_code_example to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/content:reidentify",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.content.reidentify",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/content:reidentify",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2ReidentifyContentRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ReidentifyContentResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            deidentifyTemplates = {
              methods = {
                create = {
                  description = "Creates a DeidentifyTemplate for reusing frequently used configuration for de-identifying content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/deidentifyTemplates",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.deidentifyTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/deidentifyTemplates",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateDeidentifyTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
                  httpMethod = "DELETE",
                  id = "dlp.projects.locations.deidentifyTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and deidentify template to be deleted, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deidentifyTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.deidentifyTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and deidentify template to be read, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deidentifyTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists DeidentifyTemplates. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/deidentifyTemplates",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.deidentifyTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to `ListDeidentifyTemplates`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/deidentifyTemplates",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListDeidentifyTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the DeidentifyTemplate. See https://cloud.google.com/dlp/docs/creating-templates-deid to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/deidentifyTemplates/{deidentifyTemplatesId}",
                  httpMethod = "PATCH",
                  id = "dlp.projects.locations.deidentifyTemplates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of organization and deidentify template to be updated, for example `organizations/433245324/deidentifyTemplates/432452342` or projects/project-id/deidentifyTemplates/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/deidentifyTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            dlpJobs = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running DlpJob. The server makes a best effort to cancel the DlpJob, but success is not guaranteed. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/dlpJobs/{dlpJobsId}:cancel",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.dlpJobs.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the DlpJob resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dlpJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:cancel",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CancelDlpJobRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a new job to inspect storage or calculate risk metrics. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more. When no InfoTypes or CustomInfoTypes are specified in inspect jobs, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/dlpJobs",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.dlpJobs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/dlpJobs",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateDlpJobRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DlpJob",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running DlpJob. This method indicates that the client is no longer interested in the DlpJob result. The job will be canceled if possible. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/dlpJobs/{dlpJobsId}",
                  httpMethod = "DELETE",
                  id = "dlp.projects.locations.dlpJobs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the DlpJob resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dlpJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                finish = {
                  description = "Finish a running hybrid DlpJob. Triggers the finalization steps and running of any enabled actions that have not yet run.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/dlpJobs/{dlpJobsId}:finish",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.dlpJobs.finish",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the DlpJob resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dlpJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:finish",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2FinishDlpJobRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running DlpJob. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/dlpJobs/{dlpJobsId}",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.dlpJobs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the DlpJob resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dlpJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DlpJob",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                hybridInspect = {
                  description = "Inspect hybrid content and store findings to a job. To review the findings, inspect the job. Inspection will occur asynchronously.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/dlpJobs/{dlpJobsId}:hybridInspect",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.dlpJobs.hybridInspect",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the job to execute a hybrid inspect on, for example `projects/dlp-test-project/dlpJob/53234423`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dlpJobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:hybridInspect",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2HybridInspectDlpJobRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2HybridInspectResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists DlpJobs that match the specified filter in the request. See https://cloud.google.com/dlp/docs/inspecting-storage and https://cloud.google.com/dlp/docs/compute-risk-analysis to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/dlpJobs",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.dlpJobs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by `AND` or `OR` logical operators. A sequence of restrictions implicitly uses `AND`. * A restriction has the form of `{field} {operator} {value}`. * Supported fields/values for inspect jobs: - `state` - PENDING|RUNNING|CANCELED|FINISHED|FAILED - `inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - `trigger_name` - The name of the trigger that created the job. - 'end_time` - Corresponds to the time the job finished. - 'start_time` - Corresponds to the time the job finished. * Supported fields for risk analysis jobs: - `state` - RUNNING|CANCELED|FINISHED|FAILED - 'end_time` - Corresponds to the time the job finished. - 'start_time` - Corresponds to the time the job finished. * The operator must be `=` or `!=`. Examples: * inspected_storage = cloud_storage AND state = done * inspected_storage = cloud_storage OR inspected_storage = bigquery * inspected_storage = cloud_storage AND (state = done OR state = canceled) * end_time > \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no more than 500 characters.",
                      location = "query",
                      type = "string",
                    },
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc, end_time asc, create_time desc` Supported fields are: - `create_time`: corresponds to the time the job was created. - `end_time`: corresponds to the time the job ended. - `name`: corresponds to the job's name. - `state`: corresponds to `state`",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The standard list page size.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The standard list page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "The type of job. Defaults to `DlpJobType.INSPECT`",
                      enum = {
                        "DLP_JOB_TYPE_UNSPECIFIED",
                        "INSPECT_JOB",
                        "RISK_ANALYSIS_JOB",
                      },
                      enumDescriptions = {
                        "Defaults to INSPECT_JOB.",
                        "The job inspected Google Cloud for sensitive data.",
                        "The job executed a Risk Analysis computation.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/dlpJobs",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListDlpJobsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            image = {
              methods = {
                redact = {
                  description = "Redacts potentially sensitive info from an image. This method has limits on input size, processing time, and output size. See https://cloud.google.com/dlp/docs/redacting-sensitive-data-images to learn more. When no InfoTypes or CustomInfoTypes are specified in this request, the system will automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/image:redact",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.image.redact",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/image:redact",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2RedactImageRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2RedactImageResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            inspectTemplates = {
              methods = {
                create = {
                  description = "Creates an InspectTemplate for reusing frequently used configuration for inspecting content, images, and storage. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/inspectTemplates",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.inspectTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/inspectTemplates",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateInspectTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/inspectTemplates/{inspectTemplatesId}",
                  httpMethod = "DELETE",
                  id = "dlp.projects.locations.inspectTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and inspectTemplate to be deleted, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/inspectTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets an InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/inspectTemplates/{inspectTemplatesId}",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.inspectTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and inspectTemplate to be read, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/inspectTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists InspectTemplates. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/inspectTemplates",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.inspectTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the template was created. - `update_time`: corresponds to the time the template was last updated. - `name`: corresponds to the template's name. - `display_name`: corresponds to the template's display name.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to `ListInspectTemplates`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/inspectTemplates",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListInspectTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the InspectTemplate. See https://cloud.google.com/dlp/docs/creating-templates to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/inspectTemplates/{inspectTemplatesId}",
                  httpMethod = "PATCH",
                  id = "dlp.projects.locations.inspectTemplates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of organization and inspectTemplate to be updated, for example `organizations/433245324/inspectTemplates/432452342` or projects/project-id/inspectTemplates/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/inspectTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateInspectTemplateRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            jobTriggers = {
              methods = {
                activate = {
                  description = "Activate a job trigger. Causes the immediate execute of a trigger instead of waiting on the trigger event to occur.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}:activate",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.jobTriggers.activate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the trigger to activate, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:activate",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2ActivateJobTriggerRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2DlpJob",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a job trigger to run DLP actions such as scanning storage for sensitive information on a set schedule. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobTriggers",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.jobTriggers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/jobTriggers",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateJobTriggerRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}",
                  httpMethod = "DELETE",
                  id = "dlp.projects.locations.jobTriggers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.jobTriggers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                hybridInspect = {
                  description = "Inspect hybrid content and store findings to a trigger. The inspection will be processed asynchronously. To review the findings monitor the jobs within the trigger.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}:hybridInspect",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.jobTriggers.hybridInspect",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the trigger to execute a hybrid inspect on, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}:hybridInspect",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2HybridInspectJobTriggerRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2HybridInspectResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists job triggers. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobTriggers",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.jobTriggers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Allows filtering. Supported syntax: * Filter expressions are made up of one or more restrictions. * Restrictions can be combined by `AND` or `OR` logical operators. A sequence of restrictions implicitly uses `AND`. * A restriction has the form of `{field} {operator} {value}`. * Supported fields/values for inspect triggers: - `status` - HEALTHY|PAUSED|CANCELLED - `inspected_storage` - DATASTORE|CLOUD_STORAGE|BIGQUERY - 'last_run_time` - RFC 3339 formatted timestamp, surrounded by quotation marks. Nanoseconds are ignored. - 'error_count' - Number of errors that have occurred while running. * The operator must be `=` or `!=` for status and inspected_storage. Examples: * inspected_storage = cloud_storage AND status = HEALTHY * inspected_storage = cloud_storage OR inspected_storage = bigquery * inspected_storage = cloud_storage AND (state = PAUSED OR state = HEALTHY) * last_run_time > \\\"2017-12-12T00:00:00+00:00\\\" The length of this field should be no more than 500 characters.",
                      location = "query",
                      type = "string",
                    },
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of triggeredJob fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc,update_time, create_time desc` Supported fields are: - `create_time`: corresponds to the time the JobTrigger was created. - `update_time`: corresponds to the time the JobTrigger was last updated. - `last_run_time`: corresponds to the last time the JobTrigger ran. - `name`: corresponds to the JobTrigger's name. - `display_name`: corresponds to the JobTrigger's display name. - `status`: corresponds to JobTrigger's status.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by a server.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to ListJobTriggers. `order_by` field must not change for subsequent calls.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "The type of jobs. Will use `DlpJobType.INSPECT` if not set.",
                      enum = {
                        "DLP_JOB_TYPE_UNSPECIFIED",
                        "INSPECT_JOB",
                        "RISK_ANALYSIS_JOB",
                      },
                      enumDescriptions = {
                        "Defaults to INSPECT_JOB.",
                        "The job inspected Google Cloud for sensitive data.",
                        "The job executed a Risk Analysis computation.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/jobTriggers",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListJobTriggersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a job trigger. See https://cloud.google.com/dlp/docs/creating-job-triggers to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/jobTriggers/{jobTriggersId}",
                  httpMethod = "PATCH",
                  id = "dlp.projects.locations.jobTriggers.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the project and the triggeredJob, for example `projects/dlp-test-project/jobTriggers/53234423`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobTriggers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateJobTriggerRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            storedInfoTypes = {
              methods = {
                create = {
                  description = "Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/storedInfoTypes",
                  httpMethod = "POST",
                  id = "dlp.projects.locations.storedInfoTypes.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/storedInfoTypes",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2CreateStoredInfoTypeRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/storedInfoTypes/{storedInfoTypesId}",
                  httpMethod = "DELETE",
                  id = "dlp.projects.locations.storedInfoTypes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/storedInfoTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/storedInfoTypes/{storedInfoTypesId}",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.storedInfoTypes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/storedInfoTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists stored infoTypes. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/storedInfoTypes",
                  httpMethod = "GET",
                  id = "dlp.projects.locations.storedInfoTypes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    locationId = {
                      description = "Deprecated. This field has no effect.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc, display_name, create_time desc` Supported fields are: - `create_time`: corresponds to the time the most recent version of the resource was created. - `state`: corresponds to the state of the resource. - `name`: corresponds to resource name. - `display_name`: corresponds to info type's display name.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token to continue retrieval. Comes from previous call to `ListStoredInfoTypes`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+parent}/storedInfoTypes",
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2ListStoredInfoTypesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
                  flatPath = "v2/projects/{projectsId}/locations/{locationsId}/storedInfoTypes/{storedInfoTypesId}",
                  httpMethod = "PATCH",
                  id = "dlp.projects.locations.storedInfoTypes.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/storedInfoTypes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v2/{+name}",
                  request = {
                    ["$ref"] = "GooglePrivacyDlpV2UpdateStoredInfoTypeRequest",
                  },
                  response = {
                    ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        storedInfoTypes = {
          methods = {
            create = {
              description = "Creates a pre-built stored infoType to be used for inspection. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/projects/{projectsId}/storedInfoTypes",
              httpMethod = "POST",
              id = "dlp.projects.storedInfoTypes.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID + Organizations scope, location specified: `organizations/`ORG_ID`/locations/`LOCATION_ID + Organizations scope, no location specified (defaults to global): `organizations/`ORG_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/storedInfoTypes",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2CreateStoredInfoTypeRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/projects/{projectsId}/storedInfoTypes/{storedInfoTypesId}",
              httpMethod = "DELETE",
              id = "dlp.projects.storedInfoTypes.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and storedInfoType to be deleted, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/storedInfoTypes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a stored infoType. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/projects/{projectsId}/storedInfoTypes/{storedInfoTypesId}",
              httpMethod = "GET",
              id = "dlp.projects.storedInfoTypes.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the organization and storedInfoType to be read, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/storedInfoTypes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists stored infoTypes. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/projects/{projectsId}/storedInfoTypes",
              httpMethod = "GET",
              id = "dlp.projects.storedInfoTypes.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                locationId = {
                  description = "Deprecated. This field has no effect.",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Comma separated list of fields to order by, followed by `asc` or `desc` postfix. This list is case-insensitive, default sorting order is ascending, redundant space characters are insignificant. Example: `name asc, display_name, create_time desc` Supported fields are: - `create_time`: corresponds to the time the most recent version of the resource was created. - `state`: corresponds to the state of the resource. - `name`: corresponds to resource name. - `display_name`: corresponds to info type's display name.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Size of the page, can be limited by the server. If zero server returns a page of max size 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to continue retrieval. Comes from previous call to `ListStoredInfoTypes`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Parent resource name. The format of this value varies depending on the scope of the request (project or organization) and whether you have [specified a processing location](https://cloud.google.com/dlp/docs/specifying-location): + Projects scope, location specified: `projects/`PROJECT_ID`/locations/`LOCATION_ID + Projects scope, no location specified (defaults to global): `projects/`PROJECT_ID The following example `parent` string specifies a parent project with the identifier `example-project`, and specifies the `europe-west3` location for processing data: parent=projects/example-project/locations/europe-west3",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/storedInfoTypes",
              response = {
                ["$ref"] = "GooglePrivacyDlpV2ListStoredInfoTypesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates the stored infoType by creating a new version. The existing version will continue to be used until the new version is ready. See https://cloud.google.com/dlp/docs/creating-stored-infotypes to learn more.",
              flatPath = "v2/projects/{projectsId}/storedInfoTypes/{storedInfoTypesId}",
              httpMethod = "PATCH",
              id = "dlp.projects.storedInfoTypes.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of organization and storedInfoType to be updated, for example `organizations/433245324/storedInfoTypes/432452342` or projects/project-id/storedInfoTypes/432452342.",
                  location = "path",
                  pattern = "^projects/[^/]+/storedInfoTypes/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GooglePrivacyDlpV2UpdateStoredInfoTypeRequest",
              },
              response = {
                ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230109",
  rootUrl = "https://dlp.googleapis.com/",
  schemas = {
    GooglePrivacyDlpV2Action = {
      description = "A task to execute on the completion of a job. See https://cloud.google.com/dlp/docs/concepts-actions to learn more.",
      id = "GooglePrivacyDlpV2Action",
      properties = {
        deidentify = {
          ["$ref"] = "GooglePrivacyDlpV2Deidentify",
          description = "Create a de-identified copy of the input data.",
        },
        jobNotificationEmails = {
          ["$ref"] = "GooglePrivacyDlpV2JobNotificationEmails",
          description = "Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).",
        },
        pubSub = {
          ["$ref"] = "GooglePrivacyDlpV2PublishToPubSub",
          description = "Publish a notification to a Pub/Sub topic.",
        },
        publishFindingsToCloudDataCatalog = {
          ["$ref"] = "GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog",
          description = "Publish findings to Cloud Datahub.",
        },
        publishSummaryToCscc = {
          ["$ref"] = "GooglePrivacyDlpV2PublishSummaryToCscc",
          description = "Publish summary to Cloud Security Command Center (Alpha).",
        },
        publishToStackdriver = {
          ["$ref"] = "GooglePrivacyDlpV2PublishToStackdriver",
          description = "Enable Stackdriver metric dlp.googleapis.com/finding_count.",
        },
        saveFindings = {
          ["$ref"] = "GooglePrivacyDlpV2SaveFindings",
          description = "Save resulting findings in a provided location.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ActivateJobTriggerRequest = {
      description = "Request message for ActivateJobTrigger.",
      id = "GooglePrivacyDlpV2ActivateJobTriggerRequest",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2AllInfoTypes = {
      description = "Apply transformation to all findings.",
      id = "GooglePrivacyDlpV2AllInfoTypes",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2AllText = {
      description = "Apply to all text.",
      id = "GooglePrivacyDlpV2AllText",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails = {
      description = "Result of a risk analysis operation request.",
      id = "GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails",
      properties = {
        categoricalStatsResult = {
          ["$ref"] = "GooglePrivacyDlpV2CategoricalStatsResult",
          description = "Categorical stats result",
        },
        deltaPresenceEstimationResult = {
          ["$ref"] = "GooglePrivacyDlpV2DeltaPresenceEstimationResult",
          description = "Delta-presence result",
        },
        kAnonymityResult = {
          ["$ref"] = "GooglePrivacyDlpV2KAnonymityResult",
          description = "K-anonymity result",
        },
        kMapEstimationResult = {
          ["$ref"] = "GooglePrivacyDlpV2KMapEstimationResult",
          description = "K-map result",
        },
        lDiversityResult = {
          ["$ref"] = "GooglePrivacyDlpV2LDiversityResult",
          description = "L-divesity result",
        },
        numericalStatsResult = {
          ["$ref"] = "GooglePrivacyDlpV2NumericalStatsResult",
          description = "Numerical stats result",
        },
        requestedOptions = {
          ["$ref"] = "GooglePrivacyDlpV2RequestedRiskAnalysisOptions",
          description = "The configuration used for this job.",
        },
        requestedPrivacyMetric = {
          ["$ref"] = "GooglePrivacyDlpV2PrivacyMetric",
          description = "Privacy metric to compute.",
        },
        requestedSourceTable = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Input dataset to compute metrics over.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2AuxiliaryTable = {
      description = "An auxiliary table contains statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).",
      id = "GooglePrivacyDlpV2AuxiliaryTable",
      properties = {
        quasiIds = {
          description = "Required. Quasi-identifier columns.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2QuasiIdField",
          },
          type = "array",
        },
        relativeFrequency = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Required. The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.",
        },
        table = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Required. Auxiliary table location.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2BigQueryField = {
      description = "Message defining a field of a BigQuery table.",
      id = "GooglePrivacyDlpV2BigQueryField",
      properties = {
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Designated field in the BigQuery table.",
        },
        table = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Source table of the field.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2BigQueryKey = {
      description = "Row key for identifying a record in BigQuery table.",
      id = "GooglePrivacyDlpV2BigQueryKey",
      properties = {
        rowNumber = {
          description = "Row number inferred at the time the table was scanned. This value is nondeterministic, cannot be queried, and may be null for inspection jobs. To locate findings within a table, specify `inspect_job.storage_config.big_query_options.identifying_fields` in `CreateDlpJobRequest`.",
          format = "int64",
          type = "string",
        },
        tableReference = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Complete BigQuery table reference.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2BigQueryOptions = {
      description = "Options defining BigQuery table and row identifiers.",
      id = "GooglePrivacyDlpV2BigQueryOptions",
      properties = {
        excludedFields = {
          description = "References to fields excluded from scanning. This allows you to skip inspection of entire columns which you know have no findings.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
        identifyingFields = {
          description = "Table fields that may uniquely identify a row within the table. When `actions.saveFindings.outputConfig.table` is specified, the values of columns specified here are available in the output table under `location.content_locations.record_location.record_key.id_values`. Nested fields such as `person.birthdate.year` are allowed.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
        includedFields = {
          description = "Limit scanning only to these fields.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
        rowsLimit = {
          description = "Max number of rows to scan. If the table has more rows than this value, the rest of the rows are omitted. If not set, or if set to 0, all rows will be scanned. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.",
          format = "int64",
          type = "string",
        },
        rowsLimitPercent = {
          description = "Max percentage of rows to scan. The rest are omitted. The number of rows scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of rows_limit and rows_limit_percent can be specified. Cannot be used in conjunction with TimespanConfig.",
          format = "int32",
          type = "integer",
        },
        sampleMethod = {
          enum = {
            "SAMPLE_METHOD_UNSPECIFIED",
            "TOP",
            "RANDOM_START",
          },
          enumDescriptions = {
            "",
            "Scan groups of rows in the order BigQuery provides (default). Multiple groups of rows may be scanned in parallel, so results may not appear in the same order the rows are read.",
            "Randomly pick groups of rows to scan.",
          },
          type = "string",
        },
        tableReference = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Complete BigQuery table reference.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2BigQueryTable = {
      description = "Message defining the location of a BigQuery table. A table is uniquely identified by its project_id, dataset_id, and table_name. Within a query a table is often referenced with a string in the format of: `:.` or `..`.",
      id = "GooglePrivacyDlpV2BigQueryTable",
      properties = {
        datasetId = {
          description = "Dataset ID of the table.",
          type = "string",
        },
        projectId = {
          description = "The Google Cloud Platform project ID of the project containing the table. If omitted, project ID is inferred from the API call.",
          type = "string",
        },
        tableId = {
          description = "Name of the table.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2BoundingBox = {
      description = "Bounding box encompassing detected text within an image.",
      id = "GooglePrivacyDlpV2BoundingBox",
      properties = {
        height = {
          description = "Height of the bounding box in pixels.",
          format = "int32",
          type = "integer",
        },
        left = {
          description = "Left coordinate of the bounding box. (0,0) is upper left.",
          format = "int32",
          type = "integer",
        },
        top = {
          description = "Top coordinate of the bounding box. (0,0) is upper left.",
          format = "int32",
          type = "integer",
        },
        width = {
          description = "Width of the bounding box in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Bucket = {
      description = "Bucket is represented as a range, along with replacement values.",
      id = "GooglePrivacyDlpV2Bucket",
      properties = {
        max = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Upper bound of the range, exclusive; type must match min.",
        },
        min = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Lower bound of the range, inclusive. Type should be the same as max if used.",
        },
        replacementValue = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Required. Replacement value for this bucket.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2BucketingConfig = {
      description = "Generalization function that buckets values based on ranges. The ranges and replacement values are dynamically provided by the user for custom behavior, such as 1-30 -> LOW 31-65 -> MEDIUM 66-100 -> HIGH This can be used on data of type: number, long, string, timestamp. If the bound `Value` type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.",
      id = "GooglePrivacyDlpV2BucketingConfig",
      properties = {
        buckets = {
          description = "Set of buckets. Ranges must be non-overlapping.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Bucket",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ByteContentItem = {
      description = "Container for bytes to inspect or redact.",
      id = "GooglePrivacyDlpV2ByteContentItem",
      properties = {
        data = {
          description = "Content data to inspect or redact.",
          format = "byte",
          type = "string",
        },
        type = {
          description = "The type of data stored in the bytes string. Default will be TEXT_UTF8.",
          enum = {
            "BYTES_TYPE_UNSPECIFIED",
            "IMAGE",
            "IMAGE_JPEG",
            "IMAGE_BMP",
            "IMAGE_PNG",
            "IMAGE_SVG",
            "TEXT_UTF8",
            "WORD_DOCUMENT",
            "PDF",
            "POWERPOINT_DOCUMENT",
            "EXCEL_DOCUMENT",
            "AVRO",
            "CSV",
            "TSV",
          },
          enumDescriptions = {
            "Unused",
            "Any image type.",
            "jpeg",
            "bmp",
            "png",
            "svg",
            "plain text",
            "docx, docm, dotx, dotm",
            "pdf",
            "pptx, pptm, potx, potm, pot",
            "xlsx, xlsm, xltx, xltm",
            "avro",
            "csv",
            "tsv",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CancelDlpJobRequest = {
      description = "The request message for canceling a DLP job.",
      id = "GooglePrivacyDlpV2CancelDlpJobRequest",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2CategoricalStatsConfig = {
      description = "Compute numerical stats over an individual column, including number of distinct values and value count distribution.",
      id = "GooglePrivacyDlpV2CategoricalStatsConfig",
      properties = {
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Field to compute categorical stats on. All column types are supported except for arrays and structs. However, it may be more informative to use NumericalStats when the field type is supported, depending on the data.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CategoricalStatsHistogramBucket = {
      description = "Histogram of value frequencies in the column.",
      id = "GooglePrivacyDlpV2CategoricalStatsHistogramBucket",
      properties = {
        bucketSize = {
          description = "Total number of values in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValueCount = {
          description = "Total number of distinct values in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValues = {
          description = "Sample of value frequencies in this bucket. The total number of values returned per bucket is capped at 20.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2ValueFrequency",
          },
          type = "array",
        },
        valueFrequencyLowerBound = {
          description = "Lower bound on the value frequency of the values in this bucket.",
          format = "int64",
          type = "string",
        },
        valueFrequencyUpperBound = {
          description = "Upper bound on the value frequency of the values in this bucket.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CategoricalStatsResult = {
      description = "Result of the categorical stats computation.",
      id = "GooglePrivacyDlpV2CategoricalStatsResult",
      properties = {
        valueFrequencyHistogramBuckets = {
          description = "Histogram of value frequencies in the column.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2CategoricalStatsHistogramBucket",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CharacterMaskConfig = {
      description = "Partially mask a string by replacing a given number of characters with a fixed character. Masking can start from the beginning or end of the string. This can be used on data of any type (numbers, longs, and so on) and when de-identifying structured data we'll attempt to preserve the original data's type. (This allows you to take a long like 123 and modify it to a string like **3.",
      id = "GooglePrivacyDlpV2CharacterMaskConfig",
      properties = {
        charactersToIgnore = {
          description = "When masking a string, items in this list will be skipped when replacing characters. For example, if the input string is `555-555-5555` and you instruct Cloud DLP to skip `-` and mask 5 characters with `*`, Cloud DLP returns `***-**5-5555`.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2CharsToIgnore",
          },
          type = "array",
        },
        maskingCharacter = {
          description = "Character to use to mask the sensitive values—for example, `*` for an alphabetic string such as a name, or `0` for a numeric string such as ZIP code or credit card number. This string must have a length of 1. If not supplied, this value defaults to `*` for strings, and `0` for digits.",
          type = "string",
        },
        numberToMask = {
          description = "Number of characters to mask. If not set, all matching chars will be masked. Skipped characters do not count towards this tally. If `number_to_mask` is negative, this denotes inverse masking. Cloud DLP masks all but a number of characters. For example, suppose you have the following values: - `masking_character` is `*` - `number_to_mask` is `-4` - `reverse_order` is `false` - `CharsToIgnore` includes `-` - Input string is `1234-5678-9012-3456` The resulting de-identified string is `****-****-****-3456`. Cloud DLP masks all but the last four characters. If `reverse_order` is `true`, all but the first four characters are masked as `1234-****-****-****`.",
          format = "int32",
          type = "integer",
        },
        reverseOrder = {
          description = "Mask characters in reverse order. For example, if `masking_character` is `0`, `number_to_mask` is `14`, and `reverse_order` is `false`, then the input string `1234-5678-9012-3456` is masked as `00000000000000-3456`. If `masking_character` is `*`, `number_to_mask` is `3`, and `reverse_order` is `true`, then the string `12345` is masked as `12***`.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CharsToIgnore = {
      description = "Characters to skip when doing deidentification of a value. These will be left alone and skipped.",
      id = "GooglePrivacyDlpV2CharsToIgnore",
      properties = {
        charactersToSkip = {
          description = "Characters to not transform when masking.",
          type = "string",
        },
        commonCharactersToIgnore = {
          description = "Common characters to not transform when masking. Useful to avoid removing punctuation.",
          enum = {
            "COMMON_CHARS_TO_IGNORE_UNSPECIFIED",
            "NUMERIC",
            "ALPHA_UPPER_CASE",
            "ALPHA_LOWER_CASE",
            "PUNCTUATION",
            "WHITESPACE",
          },
          enumDescriptions = {
            "Unused.",
            "0-9",
            "A-Z",
            "a-z",
            "US Punctuation, one of !\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~",
            "Whitespace character, one of [ \\t\\n\\x0B\\f\\r]",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CloudStorageFileSet = {
      description = "Message representing a set of files in Cloud Storage.",
      id = "GooglePrivacyDlpV2CloudStorageFileSet",
      properties = {
        url = {
          description = "The url, in the format `gs:///`. Trailing wildcard in the path is allowed.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CloudStorageOptions = {
      description = "Options defining a file or a set of files within a Cloud Storage bucket.",
      id = "GooglePrivacyDlpV2CloudStorageOptions",
      properties = {
        bytesLimitPerFile = {
          description = "Max number of bytes to scan from a file. If a scanned file's size is bigger than this value then the rest of the bytes are omitted. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. Cannot be set if de-identification is requested.",
          format = "int64",
          type = "string",
        },
        bytesLimitPerFilePercent = {
          description = "Max percentage of bytes to scan from a file. The rest are omitted. The number of bytes scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0. Only one of bytes_limit_per_file and bytes_limit_per_file_percent can be specified. Cannot be set if de-identification is requested.",
          format = "int32",
          type = "integer",
        },
        fileSet = {
          ["$ref"] = "GooglePrivacyDlpV2FileSet",
          description = "The set of one or more files to scan.",
        },
        fileTypes = {
          description = "List of file type groups to include in the scan. If empty, all files are scanned and available data format processors are applied. In addition, the binary content of the selected files is always scanned as well. Images are scanned only as binary if the specified region does not support image inspection and no file_types were specified. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.",
          items = {
            enum = {
              "FILE_TYPE_UNSPECIFIED",
              "BINARY_FILE",
              "TEXT_FILE",
              "IMAGE",
              "WORD",
              "PDF",
              "AVRO",
              "CSV",
              "TSV",
              "POWERPOINT",
              "EXCEL",
            },
            enumDescriptions = {
              "Includes all files.",
              "Includes all file extensions not covered by another entry. Binary scanning attempts to convert the content of the file to utf_8 to scan the file. If you wish to avoid this fall back, specify one or more of the other FileType's in your storage scan.",
              "Included file extensions: asc,asp, aspx, brf, c, cc,cfm, cgi, cpp, csv, cxx, c++, cs, css, dart, dat, dot, eml,, epbub, ged, go, h, hh, hpp, hxx, h++, hs, html, htm, mkd, markdown, m, ml, mli, perl, pl, plist, pm, php, phtml, pht, properties, py, pyw, rb, rbw, rs, rss, rc, scala, sh, sql, swift, tex, shtml, shtm, xhtml, lhs, ics, ini, java, js, json, kix, kml, ocaml, md, txt, text, tsv, vb, vcard, vcs, wml, xcodeproj, xml, xsl, xsd, yml, yaml.",
              "Included file extensions: bmp, gif, jpg, jpeg, jpe, png. bytes_limit_per_file has no effect on image files. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.",
              "Word files >30 MB will be scanned as binary files. Included file extensions: docx, dotx, docm, dotm",
              "PDF files >30 MB will be scanned as binary files. Included file extensions: pdf",
              "Included file extensions: avro",
              "Included file extensions: csv",
              "Included file extensions: tsv",
              "Powerpoint files >30 MB will be scanned as binary files. Included file extensions: pptx, pptm, potx, potm, pot",
              "Excel files >30 MB will be scanned as binary files. Included file extensions: xlsx, xlsm, xltx, xltm",
            },
            type = "string",
          },
          type = "array",
        },
        filesLimitPercent = {
          description = "Limits the number of files to scan to this percentage of the input FileSet. Number of files scanned is rounded down. Must be between 0 and 100, inclusively. Both 0 and 100 means no limit. Defaults to 0.",
          format = "int32",
          type = "integer",
        },
        sampleMethod = {
          enum = {
            "SAMPLE_METHOD_UNSPECIFIED",
            "TOP",
            "RANDOM_START",
          },
          enumDescriptions = {
            "",
            "Scan from the top (default).",
            "For each file larger than bytes_limit_per_file, randomly pick the offset to start scanning. The scanned bytes are contiguous.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CloudStoragePath = {
      description = "Message representing a single file or path in Cloud Storage.",
      id = "GooglePrivacyDlpV2CloudStoragePath",
      properties = {
        path = {
          description = "A url representing a file or path (no wildcards) in Cloud Storage. Example: gs://[BUCKET_NAME]/dictionary.txt",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CloudStorageRegexFileSet = {
      description = "Message representing a set of files in a Cloud Storage bucket. Regular expressions are used to allow fine-grained control over which files in the bucket to include. Included files are those that match at least one item in `include_regex` and do not match any items in `exclude_regex`. Note that a file that matches items from both lists will _not_ be included. For a match to occur, the entire file path (i.e., everything in the url after the bucket name) must match the regular expression. For example, given the input `{bucket_name: \"mybucket\", include_regex: [\"directory1/.*\"], exclude_regex: [\"directory1/excluded.*\"]}`: * `gs://mybucket/directory1/myfile` will be included * `gs://mybucket/directory1/directory2/myfile` will be included (`.*` matches across `/`) * `gs://mybucket/directory0/directory1/myfile` will _not_ be included (the full path doesn't match any items in `include_regex`) * `gs://mybucket/directory1/excludedfile` will _not_ be included (the path matches an item in `exclude_regex`) If `include_regex` is left empty, it will match all files by default (this is equivalent to setting `include_regex: [\".*\"]`). Some other common use cases: * `{bucket_name: \"mybucket\", exclude_regex: [\".*\\.pdf\"]}` will include all files in `mybucket` except for .pdf files * `{bucket_name: \"mybucket\", include_regex: [\"directory/[^/]+\"]}` will include all files directly under `gs://mybucket/directory/`, without matching across `/`",
      id = "GooglePrivacyDlpV2CloudStorageRegexFileSet",
      properties = {
        bucketName = {
          description = "The name of a Cloud Storage bucket. Required.",
          type = "string",
        },
        excludeRegex = {
          description = "A list of regular expressions matching file paths to exclude. All files in the bucket that match at least one of these regular expressions will be excluded from the scan. Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.",
          items = {
            type = "string",
          },
          type = "array",
        },
        includeRegex = {
          description = "A list of regular expressions matching file paths to include. All files in the bucket that match at least one of these regular expressions will be included in the set of files, except for those that also match an item in `exclude_regex`. Leaving this field empty will match all files by default (this is equivalent to including `.*` in the list). Regular expressions use RE2 [syntax](https://github.com/google/re2/wiki/Syntax); a guide can be found under the google/re2 repository on GitHub.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Color = {
      description = "Represents a color in the RGB color space.",
      id = "GooglePrivacyDlpV2Color",
      properties = {
        blue = {
          description = "The amount of blue in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        green = {
          description = "The amount of green in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
        red = {
          description = "The amount of red in the color as a value in the interval [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Condition = {
      description = "The field type of `value` and `field` do not need to match to be considered equal, but not all comparisons are possible. EQUAL_TO and NOT_EQUAL_TO attempt to compare even with incompatible types, but all other comparisons are invalid with incompatible types. A `value` of type: - `string` can be compared against all other types - `boolean` can only be compared against other booleans - `integer` can be compared against doubles or a string if the string value can be parsed as an integer. - `double` can be compared against integers or a string if the string can be parsed as a double. - `Timestamp` can be compared against strings in RFC 3339 date string format. - `TimeOfDay` can be compared against timestamps and strings in the format of 'HH:mm:ss'. If we fail to compare do to type mismatch, a warning will be given and the condition will evaluate to false.",
      id = "GooglePrivacyDlpV2Condition",
      properties = {
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Required. Field within the record this condition is evaluated against.",
        },
        operator = {
          description = "Required. Operator used to compare the field or infoType to the value.",
          enum = {
            "RELATIONAL_OPERATOR_UNSPECIFIED",
            "EQUAL_TO",
            "NOT_EQUAL_TO",
            "GREATER_THAN",
            "LESS_THAN",
            "GREATER_THAN_OR_EQUALS",
            "LESS_THAN_OR_EQUALS",
            "EXISTS",
          },
          enumDescriptions = {
            "Unused",
            "Equal. Attempts to match even with incompatible types.",
            "Not equal to. Attempts to match even with incompatible types.",
            "Greater than.",
            "Less than.",
            "Greater than or equals.",
            "Less than or equals.",
            "Exists",
          },
          type = "string",
        },
        value = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Value to compare against. [Mandatory, except for `EXISTS` tests.]",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Conditions = {
      description = "A collection of conditions.",
      id = "GooglePrivacyDlpV2Conditions",
      properties = {
        conditions = {
          description = "A collection of conditions.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Condition",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Container = {
      description = "Represents a container that may contain DLP findings. Examples of a container include a file, table, or database record.",
      id = "GooglePrivacyDlpV2Container",
      properties = {
        fullPath = {
          description = "A string representation of the full container name. Examples: - BigQuery: 'Project:DataSetId.TableId' - Cloud Storage: 'gs://Bucket/folders/filename.txt'",
          type = "string",
        },
        projectId = {
          description = "Project where the finding was found. Can be different from the project that owns the finding.",
          type = "string",
        },
        relativePath = {
          description = "The rest of the path after the root. Examples: - For BigQuery table `project_id:dataset_id.table_id`, the relative path is `table_id` - For Cloud Storage file `gs://bucket/folder/filename.txt`, the relative path is `folder/filename.txt`",
          type = "string",
        },
        rootPath = {
          description = "The root of the container. Examples: - For BigQuery table `project_id:dataset_id.table_id`, the root is `dataset_id` - For Cloud Storage file `gs://bucket/folder/filename.txt`, the root is `gs://bucket`",
          type = "string",
        },
        type = {
          description = "Container type, for example BigQuery or Cloud Storage.",
          type = "string",
        },
        updateTime = {
          description = "Findings container modification timestamp, if applicable. For Cloud Storage, this field contains the last file modification timestamp. For a BigQuery table, this field contains the last_modified_time property. For Datastore, this field isn't populated.",
          format = "google-datetime",
          type = "string",
        },
        version = {
          description = "Findings container version, if available (\"generation\" for Cloud Storage).",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ContentItem = {
      id = "GooglePrivacyDlpV2ContentItem",
      properties = {
        byteItem = {
          ["$ref"] = "GooglePrivacyDlpV2ByteContentItem",
          description = "Content data to inspect or redact. Replaces `type` and `data`.",
        },
        table = {
          ["$ref"] = "GooglePrivacyDlpV2Table",
          description = "Structured content for inspection. See https://cloud.google.com/dlp/docs/inspecting-text#inspecting_a_table to learn more.",
        },
        value = {
          description = "String data to inspect or redact.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ContentLocation = {
      description = "Precise location of the finding within a document, record, image, or metadata container.",
      id = "GooglePrivacyDlpV2ContentLocation",
      properties = {
        containerName = {
          description = "Name of the container where the finding is located. The top level name is the source file name or table name. Names of some common storage containers are formatted as follows: * BigQuery tables: `{project_id}:{dataset_id}.{table_id}` * Cloud Storage files: `gs://{bucket}/{path}` * Datastore namespace: {namespace} Nested names could be absent if the embedded object has no string identifier (for example, an image contained within a document).",
          type = "string",
        },
        containerTimestamp = {
          description = "Finding container modification timestamp, if applicable. For Cloud Storage, this field contains the last file modification timestamp. For a BigQuery table, this field contains the last_modified_time property. For Datastore, this field isn't populated.",
          format = "google-datetime",
          type = "string",
        },
        containerVersion = {
          description = "Finding container version, if available (\"generation\" for Cloud Storage).",
          type = "string",
        },
        documentLocation = {
          ["$ref"] = "GooglePrivacyDlpV2DocumentLocation",
          description = "Location data for document files.",
        },
        imageLocation = {
          ["$ref"] = "GooglePrivacyDlpV2ImageLocation",
          description = "Location within an image's pixels.",
        },
        metadataLocation = {
          ["$ref"] = "GooglePrivacyDlpV2MetadataLocation",
          description = "Location within the metadata for inspected content.",
        },
        recordLocation = {
          ["$ref"] = "GooglePrivacyDlpV2RecordLocation",
          description = "Location within a row or record of a database table.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CreateDeidentifyTemplateRequest = {
      description = "Request message for CreateDeidentifyTemplate.",
      id = "GooglePrivacyDlpV2CreateDeidentifyTemplateRequest",
      properties = {
        deidentifyTemplate = {
          ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
          description = "Required. The DeidentifyTemplate to create.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
        templateId = {
          description = "The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CreateDlpJobRequest = {
      description = "Request message for CreateDlpJobRequest. Used to initiate long running jobs such as calculating risk metrics or inspecting Google Cloud Storage.",
      id = "GooglePrivacyDlpV2CreateDlpJobRequest",
      properties = {
        inspectJob = {
          ["$ref"] = "GooglePrivacyDlpV2InspectJobConfig",
          description = "An inspection job scans a storage repository for InfoTypes.",
        },
        jobId = {
          description = "The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.",
          type = "string",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
        riskJob = {
          ["$ref"] = "GooglePrivacyDlpV2RiskAnalysisJobConfig",
          description = "A risk analysis job calculates re-identification risk metrics for a BigQuery table.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CreateInspectTemplateRequest = {
      description = "Request message for CreateInspectTemplate.",
      id = "GooglePrivacyDlpV2CreateInspectTemplateRequest",
      properties = {
        inspectTemplate = {
          ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
          description = "Required. The InspectTemplate to create.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
        templateId = {
          description = "The template id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CreateJobTriggerRequest = {
      description = "Request message for CreateJobTrigger.",
      id = "GooglePrivacyDlpV2CreateJobTriggerRequest",
      properties = {
        jobTrigger = {
          ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
          description = "Required. The JobTrigger to create.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
        triggerId = {
          description = "The trigger id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CreateStoredInfoTypeRequest = {
      description = "Request message for CreateStoredInfoType.",
      id = "GooglePrivacyDlpV2CreateStoredInfoTypeRequest",
      properties = {
        config = {
          ["$ref"] = "GooglePrivacyDlpV2StoredInfoTypeConfig",
          description = "Required. Configuration of the storedInfoType to create.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
        storedInfoTypeId = {
          description = "The storedInfoType ID can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CryptoDeterministicConfig = {
      description = "Pseudonymization method that generates deterministic encryption for the given input. Outputs a base64 encoded representation of the encrypted output. Uses AES-SIV based on the RFC https://tools.ietf.org/html/rfc5297.",
      id = "GooglePrivacyDlpV2CryptoDeterministicConfig",
      properties = {
        context = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "A context may be used for higher security and maintaining referential integrity such that the same identifier in two different contexts will be given a distinct surrogate. The context is appended to plaintext value being encrypted. On decryption the provided context is validated against the value used during encryption. If a context was provided during encryption, same context must be provided during decryption as well. If the context is not set, plaintext would be used as is for encryption. If the context is set but: 1. there is no record present when transforming a given value or 2. the field is not present when transforming a given value, plaintext would be used as is for encryption. Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and unstructured `ContentItem`s.",
        },
        cryptoKey = {
          ["$ref"] = "GooglePrivacyDlpV2CryptoKey",
          description = "The key used by the encryption function. For deterministic encryption using AES-SIV, the provided key is internally expanded to 64 bytes prior to use.",
        },
        surrogateInfoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "The custom info type to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom info type followed by the number of characters comprising the surrogate. The following scheme defines the format: {info type name}({surrogate character count}):{surrogate} For example, if the name of custom info type is 'MY_TOKEN_INFO_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc' This annotation identifies the surrogate when inspecting content using the custom info type 'Surrogate'. This facilitates reversal of the surrogate when it occurs in free text. Note: For record transformations where the entire cell in a table is being transformed, surrogates are not mandatory. Surrogates are used to denote the location of the token and are necessary for re-identification in free form text. In order for inspection to work properly, the name of this info type must not occur naturally anywhere in your data; otherwise, inspection may either - reverse a surrogate that does not correspond to an actual identifier - be unable to parse the surrogate and result in an error Therefore, choose your custom info type name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CryptoHashConfig = {
      description = "Pseudonymization method that generates surrogates via cryptographic hashing. Uses SHA-256. The key size must be either 32 or 64 bytes. Outputs a base64 encoded representation of the hashed output (for example, L7k0BHmF1ha5U3NfGykjro4xWi1MPVQPjhMAZbSV9mM=). Currently, only string and integer values can be hashed. See https://cloud.google.com/dlp/docs/pseudonymization to learn more.",
      id = "GooglePrivacyDlpV2CryptoHashConfig",
      properties = {
        cryptoKey = {
          ["$ref"] = "GooglePrivacyDlpV2CryptoKey",
          description = "The key used by the hash function.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CryptoKey = {
      description = "This is a data encryption key (DEK) (as opposed to a key encryption key (KEK) stored by Cloud Key Management Service (Cloud KMS). When using Cloud KMS to wrap or unwrap a DEK, be sure to set an appropriate IAM policy on the KEK to ensure an attacker cannot unwrap the DEK.",
      id = "GooglePrivacyDlpV2CryptoKey",
      properties = {
        kmsWrapped = {
          ["$ref"] = "GooglePrivacyDlpV2KmsWrappedCryptoKey",
          description = "Key wrapped using Cloud KMS",
        },
        transient = {
          ["$ref"] = "GooglePrivacyDlpV2TransientCryptoKey",
          description = "Transient crypto key",
        },
        unwrapped = {
          ["$ref"] = "GooglePrivacyDlpV2UnwrappedCryptoKey",
          description = "Unwrapped crypto key",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig = {
      description = "Replaces an identifier with a surrogate using Format Preserving Encryption (FPE) with the FFX mode of operation; however when used in the `ReidentifyContent` API method, it serves the opposite function by reversing the surrogate back into the original identifier. The identifier must be encoded as ASCII. For a given crypto key and context, the same identifier will be replaced with the same surrogate. Identifiers must be at least two characters long. In the case that the identifier is the empty string, it will be skipped. See https://cloud.google.com/dlp/docs/pseudonymization to learn more. Note: We recommend using CryptoDeterministicConfig for all use cases which do not require preserving the input alphabet space and size, plus warrant referential integrity.",
      id = "GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig",
      properties = {
        commonAlphabet = {
          description = "Common alphabets.",
          enum = {
            "FFX_COMMON_NATIVE_ALPHABET_UNSPECIFIED",
            "NUMERIC",
            "HEXADECIMAL",
            "UPPER_CASE_ALPHA_NUMERIC",
            "ALPHA_NUMERIC",
          },
          enumDescriptions = {
            "Unused.",
            "`[0-9]` (radix of 10)",
            "`[0-9A-F]` (radix of 16)",
            "`[0-9A-Z]` (radix of 36)",
            "`[0-9A-Za-z]` (radix of 62)",
          },
          type = "string",
        },
        context = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "The 'tweak', a context may be used for higher security since the same identifier in two different contexts won't be given the same surrogate. If the context is not set, a default tweak will be used. If the context is set but: 1. there is no record present when transforming a given value or 1. the field is not present when transforming a given value, a default tweak will be used. Note that case (1) is expected when an `InfoTypeTransformation` is applied to both structured and unstructured `ContentItem`s. Currently, the referenced field may be of value type integer or string. The tweak is constructed as a sequence of bytes in big endian byte order such that: - a 64 bit integer is encoded followed by a single byte of value 1 - a string is encoded in UTF-8 format followed by a single byte of value 2",
        },
        cryptoKey = {
          ["$ref"] = "GooglePrivacyDlpV2CryptoKey",
          description = "Required. The key used by the encryption algorithm.",
        },
        customAlphabet = {
          description = "This is supported by mapping these to the alphanumeric characters that the FFX mode natively supports. This happens before/after encryption/decryption. Each character listed must appear only once. Number of characters must be in the range [2, 95]. This must be encoded as ASCII. The order of characters does not matter. The full list of allowed characters is: 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ~`!@#$%^&*()_-+={[}]|\\:;\"'<,>.?/",
          type = "string",
        },
        radix = {
          description = "The native way to select the alphabet. Must be in the range [2, 95].",
          format = "int32",
          type = "integer",
        },
        surrogateInfoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "The custom infoType to annotate the surrogate with. This annotation will be applied to the surrogate by prefixing it with the name of the custom infoType followed by the number of characters comprising the surrogate. The following scheme defines the format: info_type_name(surrogate_character_count):surrogate For example, if the name of custom infoType is 'MY_TOKEN_INFO_TYPE' and the surrogate is 'abc', the full replacement value will be: 'MY_TOKEN_INFO_TYPE(3):abc' This annotation identifies the surrogate when inspecting content using the custom infoType [`SurrogateType`](https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#surrogatetype). This facilitates reversal of the surrogate when it occurs in free text. In order for inspection to work properly, the name of this infoType must not occur naturally anywhere in your data; otherwise, inspection may find a surrogate that does not correspond to an actual identifier. Therefore, choose your custom infoType name carefully after considering what your data looks like. One way to select a name that has a high chance of yielding reliable detection is to include one or more unicode characters that are highly improbable to exist in your data. For example, assuming your data is entered from a regular ASCII keyboard, the symbol with the hex code point 29DD might be used like so: ⧝MY_TOKEN_TYPE",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2CustomInfoType = {
      description = "Custom information type provided by the user. Used to find domain-specific sensitive information configurable to the data in question.",
      id = "GooglePrivacyDlpV2CustomInfoType",
      properties = {
        detectionRules = {
          description = "Set of detection rules to apply to all findings of this CustomInfoType. Rules are applied in order that they are specified. Not supported for the `surrogate_type` CustomInfoType.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2DetectionRule",
          },
          type = "array",
        },
        dictionary = {
          ["$ref"] = "GooglePrivacyDlpV2Dictionary",
          description = "A list of phrases to detect as a CustomInfoType.",
        },
        exclusionType = {
          description = "If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching.",
          enum = {
            "EXCLUSION_TYPE_UNSPECIFIED",
            "EXCLUSION_TYPE_EXCLUDE",
          },
          enumDescriptions = {
            "A finding of this custom info type will not be excluded from results.",
            "A finding of this custom info type will be excluded from final results, but can still affect rule execution.",
          },
          type = "string",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing infoTypes and that infoType is specified in `InspectContent.info_types` field. Specifying the latter adds findings to the one detected by the system. If built-in info type is not specified in `InspectContent.info_types` list then the name is treated as a custom info type.",
        },
        likelihood = {
          description = "Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria specified by the rule. Defaults to `VERY_LIKELY` if not specified.",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Default value; same as POSSIBLE.",
            "Few matching elements.",
            "",
            "Some matching elements.",
            "",
            "Many matching elements.",
          },
          type = "string",
        },
        regex = {
          ["$ref"] = "GooglePrivacyDlpV2Regex",
          description = "Regular expression based CustomInfoType.",
        },
        storedType = {
          ["$ref"] = "GooglePrivacyDlpV2StoredType",
          description = "Load an existing `StoredInfoType` resource for use in `InspectDataSource`. Not currently supported in `InspectContent`.",
        },
        surrogateType = {
          ["$ref"] = "GooglePrivacyDlpV2SurrogateType",
          description = "Message for detecting output from deidentification transformations that support reversing.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DataProfileAction = {
      description = "A task to execute when a data profile has been generated.",
      id = "GooglePrivacyDlpV2DataProfileAction",
      properties = {
        exportData = {
          ["$ref"] = "GooglePrivacyDlpV2Export",
          description = "Export data profiles into a provided location.",
        },
        pubSubNotification = {
          ["$ref"] = "GooglePrivacyDlpV2PubSubNotification",
          description = "Publish a message into the Pub/Sub topic.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DataProfileConfigSnapshot = {
      description = "Snapshot of the configurations used to generate the profile.",
      id = "GooglePrivacyDlpV2DataProfileConfigSnapshot",
      properties = {
        dataProfileJob = {
          ["$ref"] = "GooglePrivacyDlpV2DataProfileJobConfig",
          description = "A copy of the configuration used to generate this profile.",
        },
        inspectConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectConfig",
          description = "A copy of the inspection config used to generate this profile. This is a copy of the inspect_template specified in `DataProfileJobConfig`.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DataProfileJobConfig = {
      description = "Configuration for setting up a job to scan resources for profile generation. Only one data profile configuration may exist per organization, folder, or project. The generated data profiles are retained according to the [data retention policy] (https://cloud.google.com/dlp/docs/data-profiles#retention).",
      id = "GooglePrivacyDlpV2DataProfileJobConfig",
      properties = {
        dataProfileActions = {
          description = "Actions to execute at the completion of the job.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2DataProfileAction",
          },
          type = "array",
        },
        inspectTemplates = {
          description = "Detection logic for profile generation. Not all template features are used by profiles. FindingLimits, include_quote and exclude_info_types have no impact on data profiling. Multiple templates may be provided if there is data in multiple regions. At most one template must be specified per-region (including \"global\"). Each region is scanned using the applicable template. If no region-specific template is specified, but a \"global\" template is specified, it will be copied to that region and used instead. If no global or region-specific template is provided for a region with data, that region's data will not be scanned. For more information, see https://cloud.google.com/dlp/docs/data-profiles#data_residency.",
          items = {
            type = "string",
          },
          type = "array",
        },
        location = {
          ["$ref"] = "GooglePrivacyDlpV2DataProfileLocation",
          description = "The data to scan.",
        },
        projectId = {
          description = "The project that will run the scan. The DLP service account that exists within this project must have access to all resources that are profiled, and the Cloud DLP API must be enabled.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DataProfileLocation = {
      description = "The data that will be profiled.",
      id = "GooglePrivacyDlpV2DataProfileLocation",
      properties = {
        folderId = {
          description = "The ID of the Folder within an organization to scan.",
          format = "int64",
          type = "string",
        },
        organizationId = {
          description = "The ID of an organization to scan.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DataProfilePubSubCondition = {
      description = "A condition for determining whether a Pub/Sub should be triggered.",
      id = "GooglePrivacyDlpV2DataProfilePubSubCondition",
      properties = {
        expressions = {
          ["$ref"] = "GooglePrivacyDlpV2PubSubExpressions",
          description = "An expression.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DataProfilePubSubMessage = {
      description = "Pub/Sub topic message for a DataProfileAction.PubSubNotification event. To receive a message of protocol buffer schema type, convert the message data to an object of this proto class.",
      id = "GooglePrivacyDlpV2DataProfilePubSubMessage",
      properties = {
        event = {
          description = "The event that caused the Pub/Sub message to be sent.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "NEW_PROFILE",
            "CHANGED_PROFILE",
            "SCORE_INCREASED",
            "ERROR_CHANGED",
          },
          enumDescriptions = {
            "Unused.",
            "New profile (not a re-profile).",
            "Changed one of the following profile metrics: * Table data risk score * Table sensitivity score * Table resource visibility * Table encryption type * Table predicted infoTypes * Table other infoTypes",
            "Table data risk score or sensitivity score increased.",
            "A user (non-internal) error occurred.",
          },
          type = "string",
        },
        profile = {
          ["$ref"] = "GooglePrivacyDlpV2TableDataProfile",
          description = "If `DetailLevel` is `TABLE_PROFILE` this will be fully populated. Otherwise, if `DetailLevel` is `RESOURCE_NAME`, then only `name` and `full_resource` will be populated.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DataRiskLevel = {
      description = "Score is a summary of all elements in the data profile. A higher number means more risk.",
      id = "GooglePrivacyDlpV2DataRiskLevel",
      properties = {
        score = {
          description = "The score applied to the resource.",
          enum = {
            "RISK_SCORE_UNSPECIFIED",
            "RISK_LOW",
            "RISK_MODERATE",
            "RISK_HIGH",
          },
          enumDescriptions = {
            "Unused.",
            "Low risk - Lower indication of sensitive data that appears to have additional access restrictions in place or no indication of sensitive data found.",
            "Medium risk - Sensitive data may be present but additional access or fine grain access restrictions appear to be present. Consider limiting access even further or transform data to mask.",
            "High risk – SPII may be present. Access controls may include public ACLs. Exfiltration of data may lead to user data loss. Re-identification of users may be possible. Consider limiting usage and or removing SPII.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DatastoreKey = {
      description = "Record key for a finding in Cloud Datastore.",
      id = "GooglePrivacyDlpV2DatastoreKey",
      properties = {
        entityKey = {
          ["$ref"] = "GooglePrivacyDlpV2Key",
          description = "Datastore entity key.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DatastoreOptions = {
      description = "Options defining a data set within Google Cloud Datastore.",
      id = "GooglePrivacyDlpV2DatastoreOptions",
      properties = {
        kind = {
          ["$ref"] = "GooglePrivacyDlpV2KindExpression",
          description = "The kind to process.",
        },
        partitionId = {
          ["$ref"] = "GooglePrivacyDlpV2PartitionId",
          description = "A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DateShiftConfig = {
      description = "Shifts dates by random number of days, with option to be consistent for the same context. See https://cloud.google.com/dlp/docs/concepts-date-shifting to learn more.",
      id = "GooglePrivacyDlpV2DateShiftConfig",
      properties = {
        context = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Points to the field that contains the context, for example, an entity id. If set, must also set cryptoKey. If set, shift will be consistent for the given context.",
        },
        cryptoKey = {
          ["$ref"] = "GooglePrivacyDlpV2CryptoKey",
          description = "Causes the shift to be computed based on this key and the context. This results in the same shift for the same context and crypto_key. If set, must also set context. Can only be applied to table items.",
        },
        lowerBoundDays = {
          description = "Required. For example, -5 means shift date to at most 5 days back in the past.",
          format = "int32",
          type = "integer",
        },
        upperBoundDays = {
          description = "Required. Range of shift in days. Actual shift will be selected at random within this range (inclusive ends). Negative means shift to earlier in time. Must not be more than 365250 days (1000 years) each direction. For example, 3 means shift date to at most 3 days into the future.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DateTime = {
      description = "Message for a date time object. e.g. 2018-01-01, 5th August.",
      id = "GooglePrivacyDlpV2DateTime",
      properties = {
        date = {
          ["$ref"] = "GoogleTypeDate",
          description = "One or more of the following must be set. Must be a valid date or time value.",
        },
        dayOfWeek = {
          description = "Day of week",
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
          type = "string",
        },
        time = {
          ["$ref"] = "GoogleTypeTimeOfDay",
          description = "Time of day",
        },
        timeZone = {
          ["$ref"] = "GooglePrivacyDlpV2TimeZone",
          description = "Time zone",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Deidentify = {
      description = "Create a de-identified copy of the requested table or files. A TransformationDetail will be created for each transformation. If any rows in BigQuery are skipped during de-identification (transformation errors or row size exceeds BigQuery insert API limits) they are placed in the failure output table. If the original row exceeds the BigQuery insert API limit it will be truncated when written to the failure output table. The failure output table can be set in the action.deidentify.output.big_query_output.deidentified_failure_output_table field, if no table is set, a table will be automatically created in the same project and dataset as the original table. Compatible with: Inspect",
      id = "GooglePrivacyDlpV2Deidentify",
      properties = {
        cloudStorageOutput = {
          description = "Required. User settable Cloud Storage bucket and folders to store de-identified files. This field must be set for cloud storage deidentification. The output Cloud Storage bucket must be different from the input bucket. De-identified files will overwrite files in the output path. Form of: gs://bucket/folder/ or gs://bucket",
          type = "string",
        },
        fileTypesToTransform = {
          description = "List of user-specified file type groups to transform. If specified, only the files with these filetypes will be transformed. If empty, all supported files will be transformed. Supported types may be automatically added over time. If a file type is set in this field that isn't supported by the Deidentify action then the job will fail and will not be successfully created/started. Currently the only filetypes supported are: IMAGES, TEXT_FILES, CSV, TSV.",
          items = {
            enum = {
              "FILE_TYPE_UNSPECIFIED",
              "BINARY_FILE",
              "TEXT_FILE",
              "IMAGE",
              "WORD",
              "PDF",
              "AVRO",
              "CSV",
              "TSV",
              "POWERPOINT",
              "EXCEL",
            },
            enumDescriptions = {
              "Includes all files.",
              "Includes all file extensions not covered by another entry. Binary scanning attempts to convert the content of the file to utf_8 to scan the file. If you wish to avoid this fall back, specify one or more of the other FileType's in your storage scan.",
              "Included file extensions: asc,asp, aspx, brf, c, cc,cfm, cgi, cpp, csv, cxx, c++, cs, css, dart, dat, dot, eml,, epbub, ged, go, h, hh, hpp, hxx, h++, hs, html, htm, mkd, markdown, m, ml, mli, perl, pl, plist, pm, php, phtml, pht, properties, py, pyw, rb, rbw, rs, rss, rc, scala, sh, sql, swift, tex, shtml, shtm, xhtml, lhs, ics, ini, java, js, json, kix, kml, ocaml, md, txt, text, tsv, vb, vcard, vcs, wml, xcodeproj, xml, xsl, xsd, yml, yaml.",
              "Included file extensions: bmp, gif, jpg, jpeg, jpe, png. bytes_limit_per_file has no effect on image files. Image inspection is restricted to 'global', 'us', 'asia', and 'europe'.",
              "Word files >30 MB will be scanned as binary files. Included file extensions: docx, dotx, docm, dotm",
              "PDF files >30 MB will be scanned as binary files. Included file extensions: pdf",
              "Included file extensions: avro",
              "Included file extensions: csv",
              "Included file extensions: tsv",
              "Powerpoint files >30 MB will be scanned as binary files. Included file extensions: pptx, pptm, potx, potm, pot",
              "Excel files >30 MB will be scanned as binary files. Included file extensions: xlsx, xlsm, xltx, xltm",
            },
            type = "string",
          },
          type = "array",
        },
        transformationConfig = {
          ["$ref"] = "GooglePrivacyDlpV2TransformationConfig",
          description = "User specified deidentify templates and configs for structured, unstructured, and image files.",
        },
        transformationDetailsStorageConfig = {
          ["$ref"] = "GooglePrivacyDlpV2TransformationDetailsStorageConfig",
          description = "Config for storing transformation details. This is separate from the de-identified content, and contains metadata about the successful transformations and/or failures that occurred while de-identifying. This needs to be set in order for users to access information about the status of each transformation (see TransformationDetails message for more information about what is noted).",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeidentifyConfig = {
      description = "The configuration that controls how the data will change.",
      id = "GooglePrivacyDlpV2DeidentifyConfig",
      properties = {
        imageTransformations = {
          ["$ref"] = "GooglePrivacyDlpV2ImageTransformations",
          description = "Treat the dataset as an image and redact.",
        },
        infoTypeTransformations = {
          ["$ref"] = "GooglePrivacyDlpV2InfoTypeTransformations",
          description = "Treat the dataset as free-form text and apply the same free text transformation everywhere.",
        },
        recordTransformations = {
          ["$ref"] = "GooglePrivacyDlpV2RecordTransformations",
          description = "Treat the dataset as structured. Transformations can be applied to specific locations within structured datasets, such as transforming a column within a table.",
        },
        transformationErrorHandling = {
          ["$ref"] = "GooglePrivacyDlpV2TransformationErrorHandling",
          description = "Mode for handling transformation errors. If left unspecified, the default mode is `TransformationErrorHandling.ThrowError`.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeidentifyContentRequest = {
      description = "Request to de-identify a ContentItem.",
      id = "GooglePrivacyDlpV2DeidentifyContentRequest",
      properties = {
        deidentifyConfig = {
          ["$ref"] = "GooglePrivacyDlpV2DeidentifyConfig",
          description = "Configuration for the de-identification of the content item. Items specified here will override the template referenced by the deidentify_template_name argument.",
        },
        deidentifyTemplateName = {
          description = "Template to use. Any configuration directly specified in deidentify_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.",
          type = "string",
        },
        inspectConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectConfig",
          description = "Configuration for the inspector. Items specified here will override the template referenced by the inspect_template_name argument.",
        },
        inspectTemplateName = {
          description = "Template to use. Any configuration directly specified in inspect_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.",
          type = "string",
        },
        item = {
          ["$ref"] = "GooglePrivacyDlpV2ContentItem",
          description = "The item to de-identify. Will be treated as text. This value must be of type Table if your deidentify_config is a RecordTransformations object.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeidentifyContentResponse = {
      description = "Results of de-identifying a ContentItem.",
      id = "GooglePrivacyDlpV2DeidentifyContentResponse",
      properties = {
        item = {
          ["$ref"] = "GooglePrivacyDlpV2ContentItem",
          description = "The de-identified item.",
        },
        overview = {
          ["$ref"] = "GooglePrivacyDlpV2TransformationOverview",
          description = "An overview of the changes that were made on the `item`.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeidentifyTemplate = {
      description = "DeidentifyTemplates contains instructions on how to de-identify content. See https://cloud.google.com/dlp/docs/concepts-templates to learn more.",
      id = "GooglePrivacyDlpV2DeidentifyTemplate",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of an inspectTemplate.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deidentifyConfig = {
          ["$ref"] = "GooglePrivacyDlpV2DeidentifyConfig",
          description = "The core content of the template.",
        },
        description = {
          description = "Short description (max 256 chars).",
          type = "string",
        },
        displayName = {
          description = "Display name (max 256 chars).",
          type = "string",
        },
        name = {
          description = "Output only. The template name. The template will have one of the following formats: `projects/PROJECT_ID/deidentifyTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/deidentifyTemplates/TEMPLATE_ID`",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of an inspectTemplate.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeltaPresenceEstimationConfig = {
      description = "δ-presence metric, used to estimate how likely it is for an attacker to figure out that one given individual appears in a de-identified dataset. Similarly to the k-map metric, we cannot compute δ-presence exactly without knowing the attack dataset, so we use a statistical model instead.",
      id = "GooglePrivacyDlpV2DeltaPresenceEstimationConfig",
      properties = {
        auxiliaryTables = {
          description = "Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers field must appear in exactly one field of one auxiliary table.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2StatisticalTable",
          },
          type = "array",
        },
        quasiIds = {
          description = "Required. Fields considered to be quasi-identifiers. No two fields can have the same tag.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2QuasiId",
          },
          type = "array",
        },
        regionCode = {
          description = "ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket = {
      description = "A DeltaPresenceEstimationHistogramBucket message with the following values: min_probability: 0.1 max_probability: 0.2 frequency: 42 means that there are 42 records for which δ is in [0.1, 0.2). An important particular case is when min_probability = max_probability = 1: then, every individual who shares this quasi-identifier combination is in the dataset.",
      id = "GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket",
      properties = {
        bucketSize = {
          description = "Number of records within these probability bounds.",
          format = "int64",
          type = "string",
        },
        bucketValueCount = {
          description = "Total number of distinct quasi-identifier tuple values in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValues = {
          description = "Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues",
          },
          type = "array",
        },
        maxProbability = {
          description = "Always greater than or equal to min_probability.",
          format = "double",
          type = "number",
        },
        minProbability = {
          description = "Between 0 and 1.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues = {
      description = "A tuple of values for the quasi-identifier columns.",
      id = "GooglePrivacyDlpV2DeltaPresenceEstimationQuasiIdValues",
      properties = {
        estimatedProbability = {
          description = "The estimated probability that a given individual sharing these quasi-identifier values is in the dataset. This value, typically called δ, is the ratio between the number of records in the dataset with these quasi-identifier values, and the total number of individuals (inside *and* outside the dataset) with these quasi-identifier values. For example, if there are 15 individuals in the dataset who share the same quasi-identifier values, and an estimated 100 people in the entire population with these values, then δ is 0.15.",
          format = "double",
          type = "number",
        },
        quasiIdsValues = {
          description = "The quasi-identifier values.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DeltaPresenceEstimationResult = {
      description = "Result of the δ-presence computation. Note that these results are an estimation, not exact values.",
      id = "GooglePrivacyDlpV2DeltaPresenceEstimationResult",
      properties = {
        deltaPresenceEstimationHistogram = {
          description = "The intervals [min_probability, max_probability) do not overlap. If a value doesn't correspond to any such interval, the associated frequency is zero. For example, the following records: {min_probability: 0, max_probability: 0.1, frequency: 17} {min_probability: 0.2, max_probability: 0.3, frequency: 42} {min_probability: 0.3, max_probability: 0.4, frequency: 99} mean that there are no record with an estimated probability in [0.1, 0.2) nor larger or equal to 0.4.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2DeltaPresenceEstimationHistogramBucket",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DetectionRule = {
      description = "Deprecated; use `InspectionRuleSet` instead. Rule for modifying a `CustomInfoType` to alter behavior under certain circumstances, depending on the specific details of the rule. Not supported for the `surrogate_type` custom infoType.",
      id = "GooglePrivacyDlpV2DetectionRule",
      properties = {
        hotwordRule = {
          ["$ref"] = "GooglePrivacyDlpV2HotwordRule",
          description = "Hotword-based detection rule.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Dictionary = {
      description = "Custom information type based on a dictionary of words or phrases. This can be used to match sensitive information specific to the data, such as a list of employee IDs or job titles. Dictionary words are case-insensitive and all characters other than letters and digits in the unicode [Basic Multilingual Plane](https://en.wikipedia.org/wiki/Plane_%28Unicode%29#Basic_Multilingual_Plane) will be replaced with whitespace when scanning for matches, so the dictionary phrase \"Sam Johnson\" will match all three phrases \"sam johnson\", \"Sam, Johnson\", and \"Sam (Johnson)\". Additionally, the characters surrounding any match must be of a different type than the adjacent characters within the word, so letters must be next to non-letters and digits next to non-digits. For example, the dictionary word \"jen\" will match the first three letters of the text \"jen123\" but will return no matches for \"jennifer\". Dictionary words containing a large number of characters that are not letters or digits may result in unexpected findings because such characters are treated as whitespace. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries. For dictionaries that do not fit within these constraints, consider using `LargeCustomDictionaryConfig` in the `StoredInfoType` API.",
      id = "GooglePrivacyDlpV2Dictionary",
      properties = {
        cloudStoragePath = {
          ["$ref"] = "GooglePrivacyDlpV2CloudStoragePath",
          description = "Newline-delimited file of words in Cloud Storage. Only a single file is accepted.",
        },
        wordList = {
          ["$ref"] = "GooglePrivacyDlpV2WordList",
          description = "List of words or phrases to search for.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DlpJob = {
      description = "Combines all of the information about a DLP job.",
      id = "GooglePrivacyDlpV2DlpJob",
      properties = {
        createTime = {
          description = "Time when the job was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "Time when the job finished.",
          format = "google-datetime",
          type = "string",
        },
        errors = {
          description = "A stream of errors encountered running the job.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Error",
          },
          type = "array",
        },
        inspectDetails = {
          ["$ref"] = "GooglePrivacyDlpV2InspectDataSourceDetails",
          description = "Results from inspecting a data source.",
        },
        jobTriggerName = {
          description = "If created by a job trigger, the resource name of the trigger that instantiated the job.",
          type = "string",
        },
        name = {
          description = "The server-assigned name.",
          type = "string",
        },
        riskDetails = {
          ["$ref"] = "GooglePrivacyDlpV2AnalyzeDataSourceRiskDetails",
          description = "Results from analyzing risk of a data source.",
        },
        startTime = {
          description = "Time when the job started.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "State of a job.",
          enum = {
            "JOB_STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "DONE",
            "CANCELED",
            "FAILED",
            "ACTIVE",
          },
          enumDescriptions = {
            "Unused.",
            "The job has not yet started.",
            "The job is currently running. Once a job has finished it will transition to FAILED or DONE.",
            "The job is no longer running.",
            "The job was canceled before it could be completed.",
            "The job had an error and did not complete.",
            "The job is currently accepting findings via hybridInspect. A hybrid job in ACTIVE state may continue to have findings added to it through the calling of hybridInspect. After the job has finished no more calls to hybridInspect may be made. ACTIVE jobs can transition to DONE.",
          },
          type = "string",
        },
        type = {
          description = "The type of job.",
          enum = {
            "DLP_JOB_TYPE_UNSPECIFIED",
            "INSPECT_JOB",
            "RISK_ANALYSIS_JOB",
          },
          enumDescriptions = {
            "Defaults to INSPECT_JOB.",
            "The job inspected Google Cloud for sensitive data.",
            "The job executed a Risk Analysis computation.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2DocumentLocation = {
      description = "Location of a finding within a document.",
      id = "GooglePrivacyDlpV2DocumentLocation",
      properties = {
        fileOffset = {
          description = "Offset of the line, from the beginning of the file, where the finding is located.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2EntityId = {
      description = "An entity in a dataset is a field or set of fields that correspond to a single person. For example, in medical records the `EntityId` might be a patient identifier, or for financial records it might be an account identifier. This message is used when generalizations or analysis must take into account that multiple rows correspond to the same entity.",
      id = "GooglePrivacyDlpV2EntityId",
      properties = {
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Composite key indicating which field contains the entity identifier.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Error = {
      description = "Details information about an error encountered during job execution or the results of an unsuccessful activation of the JobTrigger.",
      id = "GooglePrivacyDlpV2Error",
      properties = {
        details = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Detailed error codes and messages.",
        },
        timestamps = {
          description = "The times the error occurred.",
          items = {
            format = "google-datetime",
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ExcludeByHotword = {
      description = "The rule to exclude findings based on a hotword. For record inspection of tables, column names are considered hotwords. An example of this is to exclude a finding if it belongs to a BigQuery column that matches a specific pattern.",
      id = "GooglePrivacyDlpV2ExcludeByHotword",
      properties = {
        hotwordRegex = {
          ["$ref"] = "GooglePrivacyDlpV2Regex",
          description = "Regular expression pattern defining what qualifies as a hotword.",
        },
        proximity = {
          ["$ref"] = "GooglePrivacyDlpV2Proximity",
          description = "Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The windowBefore property in proximity should be set to 1 if the hotword needs to be included in a column header.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ExcludeInfoTypes = {
      description = "List of excluded infoTypes.",
      id = "GooglePrivacyDlpV2ExcludeInfoTypes",
      properties = {
        infoTypes = {
          description = "InfoType list in ExclusionRule rule drops a finding when it overlaps or contained within with a finding of an infoType from this list. For example, for `InspectionRuleSet.info_types` containing \"PHONE_NUMBER\"` and `exclusion_rule` containing `exclude_info_types.info_types` with \"EMAIL_ADDRESS\" the phone number findings are dropped if they overlap with EMAIL_ADDRESS finding. That leads to \"555-222-2222@example.org\" to generate only a single finding, namely email address.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ExclusionRule = {
      description = "The rule that specifies conditions when findings of infoTypes specified in `InspectionRuleSet` are removed from results.",
      id = "GooglePrivacyDlpV2ExclusionRule",
      properties = {
        dictionary = {
          ["$ref"] = "GooglePrivacyDlpV2Dictionary",
          description = "Dictionary which defines the rule.",
        },
        excludeByHotword = {
          ["$ref"] = "GooglePrivacyDlpV2ExcludeByHotword",
          description = "Drop if the hotword rule is contained in the proximate context. For tabular data, the context includes the column name.",
        },
        excludeInfoTypes = {
          ["$ref"] = "GooglePrivacyDlpV2ExcludeInfoTypes",
          description = "Set of infoTypes for which findings would affect this rule.",
        },
        matchingType = {
          description = "How the rule is applied, see MatchingType documentation for details.",
          enum = {
            "MATCHING_TYPE_UNSPECIFIED",
            "MATCHING_TYPE_FULL_MATCH",
            "MATCHING_TYPE_PARTIAL_MATCH",
            "MATCHING_TYPE_INVERSE_MATCH",
          },
          enumDescriptions = {
            "Invalid.",
            "Full match. - Dictionary: join of Dictionary results matched complete finding quote - Regex: all regex matches fill a finding quote start to end - Exclude info type: completely inside affecting info types findings",
            "Partial match. - Dictionary: at least one of the tokens in the finding matches - Regex: substring of the finding matches - Exclude info type: intersects with affecting info types findings",
            "Inverse match. - Dictionary: no tokens in the finding match the dictionary - Regex: finding doesn't match the regex - Exclude info type: no intersection with affecting info types findings",
          },
          type = "string",
        },
        regex = {
          ["$ref"] = "GooglePrivacyDlpV2Regex",
          description = "Regular expression which defines the rule.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Export = {
      description = "If set, the detailed data profiles will be persisted to the location of your choice whenever updated.",
      id = "GooglePrivacyDlpV2Export",
      properties = {
        profileTable = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Store all table and column profiles in an existing table or a new table in an existing dataset. Each re-generation will result in a new row in BigQuery.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Expressions = {
      description = "An expression, consisting of an operator and conditions.",
      id = "GooglePrivacyDlpV2Expressions",
      properties = {
        conditions = {
          ["$ref"] = "GooglePrivacyDlpV2Conditions",
          description = "Conditions to apply to the expression.",
        },
        logicalOperator = {
          description = "The operator to apply to the result of conditions. Default and currently only supported value is `AND`.",
          enum = {
            "LOGICAL_OPERATOR_UNSPECIFIED",
            "AND",
          },
          enumDescriptions = {
            "Unused",
            "Conditional AND",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2FieldId = {
      description = "General identifier of a data field in a storage service.",
      id = "GooglePrivacyDlpV2FieldId",
      properties = {
        name = {
          description = "Name describing the field.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2FieldTransformation = {
      description = "The transformation to apply to the field.",
      id = "GooglePrivacyDlpV2FieldTransformation",
      properties = {
        condition = {
          ["$ref"] = "GooglePrivacyDlpV2RecordCondition",
          description = "Only apply the transformation if the condition evaluates to true for the given `RecordCondition`. The conditions are allowed to reference fields that are not used in the actual transformation. Example Use Cases: - Apply a different bucket transformation to an age column if the zip code column for the same record is within a specific range. - Redact a field if the date of birth field is greater than 85.",
        },
        fields = {
          description = "Required. Input field(s) to apply the transformation to. When you have columns that reference their position within a list, omit the index from the FieldId. FieldId name matching ignores the index. For example, instead of \"contact.nums[0].type\", use \"contact.nums.type\".",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
        infoTypeTransformations = {
          ["$ref"] = "GooglePrivacyDlpV2InfoTypeTransformations",
          description = "Treat the contents of the field as free text, and selectively transform content that matches an `InfoType`.",
        },
        primitiveTransformation = {
          ["$ref"] = "GooglePrivacyDlpV2PrimitiveTransformation",
          description = "Apply the transformation to the entire field.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2FileSet = {
      description = "Set of files to scan.",
      id = "GooglePrivacyDlpV2FileSet",
      properties = {
        regexFileSet = {
          ["$ref"] = "GooglePrivacyDlpV2CloudStorageRegexFileSet",
          description = "The regex-filtered set of files to scan. Exactly one of `url` or `regex_file_set` must be set.",
        },
        url = {
          description = "The Cloud Storage url of the file(s) to scan, in the format `gs:///`. Trailing wildcard in the path is allowed. If the url ends in a trailing slash, the bucket or directory represented by the url will be scanned non-recursively (content in sub-directories will not be scanned). This means that `gs://mybucket/` is equivalent to `gs://mybucket/*`, and `gs://mybucket/directory/` is equivalent to `gs://mybucket/directory/*`. Exactly one of `url` or `regex_file_set` must be set.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Finding = {
      description = "Represents a piece of potentially sensitive content.",
      id = "GooglePrivacyDlpV2Finding",
      properties = {
        createTime = {
          description = "Timestamp when finding was detected.",
          format = "google-datetime",
          type = "string",
        },
        findingId = {
          description = "The unique finding id.",
          type = "string",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "The type of content that might have been found. Provided if `excluded_types` is false.",
        },
        jobCreateTime = {
          description = "Time the job started that produced this finding.",
          format = "google-datetime",
          type = "string",
        },
        jobName = {
          description = "The job that stored the finding.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this `Finding`. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels can be associated with a given finding. Examples: * `\"environment\" : \"production\"` * `\"pipeline\" : \"etl\"`",
          type = "object",
        },
        likelihood = {
          description = "Confidence of how likely it is that the `info_type` is correct.",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Default value; same as POSSIBLE.",
            "Few matching elements.",
            "",
            "Some matching elements.",
            "",
            "Many matching elements.",
          },
          type = "string",
        },
        location = {
          ["$ref"] = "GooglePrivacyDlpV2Location",
          description = "Where the content was found.",
        },
        name = {
          description = "Resource name in format projects/{project}/locations/{location}/findings/{finding} Populated only when viewing persisted findings.",
          type = "string",
        },
        quote = {
          description = "The content that was found. Even if the content is not textual, it may be converted to a textual representation here. Provided if `include_quote` is true and the finding is less than or equal to 4096 bytes long. If the finding exceeds 4096 bytes in length, the quote may be omitted.",
          type = "string",
        },
        quoteInfo = {
          ["$ref"] = "GooglePrivacyDlpV2QuoteInfo",
          description = "Contains data parsed from quotes. Only populated if include_quote was set to true and a supported infoType was requested. Currently supported infoTypes: DATE, DATE_OF_BIRTH and TIME.",
        },
        resourceName = {
          description = "The job that stored the finding.",
          type = "string",
        },
        triggerName = {
          description = "Job trigger name, if applicable, for this finding.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2FindingLimits = {
      description = "Configuration to control the number of findings returned for inspection. This is not used for de-identification or data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error.",
      id = "GooglePrivacyDlpV2FindingLimits",
      properties = {
        maxFindingsPerInfoType = {
          description = "Configuration of findings limit given for specified infoTypes.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoTypeLimit",
          },
          type = "array",
        },
        maxFindingsPerItem = {
          description = "Max number of findings that will be returned for each item scanned. When set within `InspectJobConfig`, the maximum returned is 2000 regardless if this is set higher. When set within `InspectContentRequest`, this field is ignored.",
          format = "int32",
          type = "integer",
        },
        maxFindingsPerRequest = {
          description = "Max number of findings that will be returned per request/job. When set within `InspectContentRequest`, the maximum returned is 2000 regardless if this is set higher.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2FinishDlpJobRequest = {
      description = "The request message for finishing a DLP hybrid job.",
      id = "GooglePrivacyDlpV2FinishDlpJobRequest",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2FixedSizeBucketingConfig = {
      description = "Buckets values based on fixed size ranges. The Bucketing transformation can provide all of this functionality, but requires more configuration. This message is provided as a convenience to the user for simple bucketing strategies. The transformed value will be a hyphenated string of {lower_bound}-{upper_bound}. For example, if lower_bound = 10 and upper_bound = 20, all values that are within this bucket will be replaced with \"10-20\". This can be used on data of type: double, long. If the bound Value type differs from the type of data being transformed, we will first attempt converting the type of the data to be transformed to match the type of the bound before comparing. See https://cloud.google.com/dlp/docs/concepts-bucketing to learn more.",
      id = "GooglePrivacyDlpV2FixedSizeBucketingConfig",
      properties = {
        bucketSize = {
          description = "Required. Size of each bucket (except for minimum and maximum buckets). So if `lower_bound` = 10, `upper_bound` = 89, and `bucket_size` = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+. Precision up to 2 decimals works.",
          format = "double",
          type = "number",
        },
        lowerBound = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Required. Lower bound value of buckets. All values less than `lower_bound` are grouped together into a single bucket; for example if `lower_bound` = 10, then all values less than 10 are replaced with the value \"-10\".",
        },
        upperBound = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Required. Upper bound value of buckets. All values greater than upper_bound are grouped together into a single bucket; for example if `upper_bound` = 89, then all values greater than 89 are replaced with the value \"89+\".",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2HotwordRule = {
      description = "The rule that adjusts the likelihood of findings within a certain proximity of hotwords.",
      id = "GooglePrivacyDlpV2HotwordRule",
      properties = {
        hotwordRegex = {
          ["$ref"] = "GooglePrivacyDlpV2Regex",
          description = "Regular expression pattern defining what qualifies as a hotword.",
        },
        likelihoodAdjustment = {
          ["$ref"] = "GooglePrivacyDlpV2LikelihoodAdjustment",
          description = "Likelihood adjustment to apply to all matching findings.",
        },
        proximity = {
          ["$ref"] = "GooglePrivacyDlpV2Proximity",
          description = "Range of characters within which the entire hotword must reside. The total length of the window cannot exceed 1000 characters. The finding itself will be included in the window, so that hotwords can be used to match substrings of the finding itself. Suppose you want Cloud DLP to promote the likelihood of the phone number regex \"\\(\\d{3}\\) \\d{3}-\\d{4}\" if the area code is known to be the area code of a company's office. In this case, use the hotword regex \"\\(xxx\\)\", where \"xxx\" is the area code in question. For tabular data, if you want to modify the likelihood of an entire column of findngs, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2HybridContentItem = {
      description = "An individual hybrid item to inspect. Will be stored temporarily during processing.",
      id = "GooglePrivacyDlpV2HybridContentItem",
      properties = {
        findingDetails = {
          ["$ref"] = "GooglePrivacyDlpV2HybridFindingDetails",
          description = "Supplementary information that will be added to each finding.",
        },
        item = {
          ["$ref"] = "GooglePrivacyDlpV2ContentItem",
          description = "The item to inspect.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2HybridFindingDetails = {
      description = "Populate to associate additional data with each finding.",
      id = "GooglePrivacyDlpV2HybridFindingDetails",
      properties = {
        containerDetails = {
          ["$ref"] = "GooglePrivacyDlpV2Container",
          description = "Details about the container where the content being inspected is from.",
        },
        fileOffset = {
          description = "Offset in bytes of the line, from the beginning of the file, where the finding is located. Populate if the item being scanned is only part of a bigger item, such as a shard of a file and you want to track the absolute position of the finding.",
          format = "int64",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels to represent user provided metadata about the data being inspected. If configured by the job, some key values may be required. The labels associated with `Finding`'s produced by hybrid inspection. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels can be associated with a given finding. Examples: * `\"environment\" : \"production\"` * `\"pipeline\" : \"etl\"`",
          type = "object",
        },
        rowOffset = {
          description = "Offset of the row for tables. Populate if the row(s) being scanned are part of a bigger dataset and you want to keep track of their absolute position.",
          format = "int64",
          type = "string",
        },
        tableOptions = {
          ["$ref"] = "GooglePrivacyDlpV2TableOptions",
          description = "If the container is a table, additional information to make findings meaningful such as the columns that are primary keys. If not known ahead of time, can also be set within each inspect hybrid call and the two will be merged. Note that identifying_fields will only be stored to BigQuery, and only if the BigQuery action has been included.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2HybridInspectDlpJobRequest = {
      description = "Request to search for potentially sensitive info in a custom location.",
      id = "GooglePrivacyDlpV2HybridInspectDlpJobRequest",
      properties = {
        hybridItem = {
          ["$ref"] = "GooglePrivacyDlpV2HybridContentItem",
          description = "The item to inspect.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2HybridInspectJobTriggerRequest = {
      description = "Request to search for potentially sensitive info in a custom location.",
      id = "GooglePrivacyDlpV2HybridInspectJobTriggerRequest",
      properties = {
        hybridItem = {
          ["$ref"] = "GooglePrivacyDlpV2HybridContentItem",
          description = "The item to inspect.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2HybridInspectResponse = {
      description = "Quota exceeded errors will be thrown once quota has been met.",
      id = "GooglePrivacyDlpV2HybridInspectResponse",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2HybridInspectStatistics = {
      description = "Statistics related to processing hybrid inspect requests.",
      id = "GooglePrivacyDlpV2HybridInspectStatistics",
      properties = {
        abortedCount = {
          description = "The number of hybrid inspection requests aborted because the job ran out of quota or was ended before they could be processed.",
          format = "int64",
          type = "string",
        },
        pendingCount = {
          description = "The number of hybrid requests currently being processed. Only populated when called via method `getDlpJob`. A burst of traffic may cause hybrid inspect requests to be enqueued. Processing will take place as quickly as possible, but resource limitations may impact how long a request is enqueued for.",
          format = "int64",
          type = "string",
        },
        processedCount = {
          description = "The number of hybrid inspection requests processed within this job.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2HybridOptions = {
      description = "Configuration to control jobs where the content being inspected is outside of Google Cloud Platform.",
      id = "GooglePrivacyDlpV2HybridOptions",
      properties = {
        description = {
          description = "A short description of where the data is coming from. Will be stored once in the job. 256 max length.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "To organize findings, these labels will be added to each finding. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`. No more than 10 labels can be associated with a given finding. Examples: * `\"environment\" : \"production\"` * `\"pipeline\" : \"etl\"`",
          type = "object",
        },
        requiredFindingLabelKeys = {
          description = "These are labels that each inspection request must include within their 'finding_labels' map. Request may contain others, but any missing one of these will be rejected. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`. No more than 10 keys can be required.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tableOptions = {
          ["$ref"] = "GooglePrivacyDlpV2TableOptions",
          description = "If the container is a table, additional information to make findings meaningful such as the columns that are primary keys.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ImageLocation = {
      description = "Location of the finding within an image.",
      id = "GooglePrivacyDlpV2ImageLocation",
      properties = {
        boundingBoxes = {
          description = "Bounding boxes locating the pixels within the image containing the finding.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2BoundingBox",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ImageRedactionConfig = {
      description = "Configuration for determining how redaction of images should occur.",
      id = "GooglePrivacyDlpV2ImageRedactionConfig",
      properties = {
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "Only one per info_type should be provided per request. If not specified, and redact_all_text is false, the DLP API will redact all text that it matches against all info_types that are found, but not specified in another ImageRedactionConfig.",
        },
        redactAllText = {
          description = "If true, all text found in the image, regardless whether it matches an info_type, is redacted. Only one should be provided.",
          type = "boolean",
        },
        redactionColor = {
          ["$ref"] = "GooglePrivacyDlpV2Color",
          description = "The color to use when redacting content from an image. If not specified, the default is black.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ImageTransformation = {
      description = "Configuration for determining how redaction of images should occur.",
      id = "GooglePrivacyDlpV2ImageTransformation",
      properties = {
        allInfoTypes = {
          ["$ref"] = "GooglePrivacyDlpV2AllInfoTypes",
          description = "Apply transformation to all findings not specified in other ImageTransformation's selected_info_types. Only one instance is allowed within the ImageTransformations message.",
        },
        allText = {
          ["$ref"] = "GooglePrivacyDlpV2AllText",
          description = "Apply transformation to all text that doesn't match an infoType. Only one instance is allowed within the ImageTransformations message.",
        },
        redactionColor = {
          ["$ref"] = "GooglePrivacyDlpV2Color",
          description = "The color to use when redacting content from an image. If not specified, the default is black.",
        },
        selectedInfoTypes = {
          ["$ref"] = "GooglePrivacyDlpV2SelectedInfoTypes",
          description = "Apply transformation to the selected info_types.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ImageTransformations = {
      description = "A type of transformation that is applied over images.",
      id = "GooglePrivacyDlpV2ImageTransformations",
      properties = {
        transforms = {
          items = {
            ["$ref"] = "GooglePrivacyDlpV2ImageTransformation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoType = {
      description = "Type of information detected by the API.",
      id = "GooglePrivacyDlpV2InfoType",
      properties = {
        name = {
          description = "Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type. When sending Cloud DLP results to Data Catalog, infoType names should conform to the pattern `[A-Za-z0-9$_-]{1,64}`.",
          type = "string",
        },
        version = {
          description = "Optional version name for this InfoType.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoTypeCategory = {
      description = "Classification of infoTypes to organize them according to geographic location, industry, and data type.",
      id = "GooglePrivacyDlpV2InfoTypeCategory",
      properties = {
        industryCategory = {
          description = "The group of relevant businesses where this infoType is commonly used",
          enum = {
            "INDUSTRY_UNSPECIFIED",
            "FINANCE",
            "HEALTH",
            "TELECOMMUNICATIONS",
          },
          enumDescriptions = {
            "Unused industry",
            "The infoType is typically used in the finance industry.",
            "The infoType is typically used in the health industry.",
            "The infoType is typically used in the telecommunications industry.",
          },
          type = "string",
        },
        locationCategory = {
          description = "The region or country that issued the ID or document represented by the infoType.",
          enum = {
            "LOCATION_UNSPECIFIED",
            "GLOBAL",
            "ARGENTINA",
            "AUSTRALIA",
            "BELGIUM",
            "BRAZIL",
            "CANADA",
            "CHILE",
            "CHINA",
            "COLOMBIA",
            "DENMARK",
            "FRANCE",
            "FINLAND",
            "GERMANY",
            "HONG_KONG",
            "INDIA",
            "INDONESIA",
            "IRELAND",
            "ISRAEL",
            "ITALY",
            "JAPAN",
            "KOREA",
            "MEXICO",
            "THE_NETHERLANDS",
            "NORWAY",
            "PARAGUAY",
            "PERU",
            "POLAND",
            "PORTUGAL",
            "SINGAPORE",
            "SOUTH_AFRICA",
            "SPAIN",
            "SWEDEN",
            "TAIWAN",
            "THAILAND",
            "TURKEY",
            "UNITED_KINGDOM",
            "UNITED_STATES",
            "URUGUAY",
            "VENEZUELA",
            "INTERNAL",
            "NEW_ZEALAND",
          },
          enumDescriptions = {
            "Unused location",
            "The infoType is not issued by or tied to a specific region, but is used almost everywhere.",
            "The infoType is typically used in Argentina.",
            "The infoType is typically used in Australia.",
            "The infoType is typically used in Belgium.",
            "The infoType is typically used in Brazil.",
            "The infoType is typically used in Canada.",
            "The infoType is typically used in Chile.",
            "The infoType is typically used in China.",
            "The infoType is typically used in Colombia.",
            "The infoType is typically used in Denmark.",
            "The infoType is typically used in France.",
            "The infoType is typically used in Finland.",
            "The infoType is typically used in Germany.",
            "The infoType is typically used in Hong Kong.",
            "The infoType is typically used in India.",
            "The infoType is typically used in Indonesia.",
            "The infoType is typically used in Ireland.",
            "The infoType is typically used in Israel.",
            "The infoType is typically used in Italy.",
            "The infoType is typically used in Japan.",
            "The infoType is typically used in Korea.",
            "The infoType is typically used in Mexico.",
            "The infoType is typically used in the Netherlands.",
            "The infoType is typically used in Norway.",
            "The infoType is typically used in Paraguay.",
            "The infoType is typically used in Peru.",
            "The infoType is typically used in Poland.",
            "The infoType is typically used in Portugal.",
            "The infoType is typically used in Singapore.",
            "The infoType is typically used in South Africa.",
            "The infoType is typically used in Spain.",
            "The infoType is typically used in Sweden.",
            "The infoType is typically used in Taiwan.",
            "The infoType is typically used in Thailand.",
            "The infoType is typically used in Turkey.",
            "The infoType is typically used in the United Kingdom.",
            "The infoType is typically used in the United States.",
            "The infoType is typically used in Uruguay.",
            "The infoType is typically used in Venezuela.",
            "The infoType is typically used in Google internally.",
            "The infoType is typically used in New Zealand.",
          },
          type = "string",
        },
        typeCategory = {
          description = "The class of identifiers where this infoType belongs",
          enum = {
            "TYPE_UNSPECIFIED",
            "PII",
            "SPII",
            "DEMOGRAPHIC",
            "CREDENTIAL",
            "GOVERNMENT_ID",
            "DOCUMENT",
            "CONTEXTUAL_INFORMATION",
          },
          enumDescriptions = {
            "Unused type",
            "Personally identifiable information, for example, a name or phone number",
            "Personally identifiable information that is especially sensitive, for example, a passport number.",
            "Attributes that can partially identify someone, especially in combination with other attributes, like age, height, and gender.",
            "Confidential or secret information, for example, a password.",
            "An identification document issued by a government.",
            "A document, for example, a resume or source code.",
            "Information that is not sensitive on its own, but provides details about the circumstances surrounding an entity or an event.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoTypeDescription = {
      description = "InfoType description.",
      id = "GooglePrivacyDlpV2InfoTypeDescription",
      properties = {
        categories = {
          description = "The category of the infoType.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoTypeCategory",
          },
          type = "array",
        },
        description = {
          description = "Description of the infotype. Translated when language is provided in the request.",
          type = "string",
        },
        displayName = {
          description = "Human readable form of the infoType name.",
          type = "string",
        },
        name = {
          description = "Internal name of the infoType.",
          type = "string",
        },
        sensitivityScore = {
          ["$ref"] = "GooglePrivacyDlpV2SensitivityScore",
          description = "The default sensitivity of the infoType.",
        },
        supportedBy = {
          description = "Which parts of the API supports this InfoType.",
          items = {
            enum = {
              "ENUM_TYPE_UNSPECIFIED",
              "INSPECT",
              "RISK_ANALYSIS",
            },
            enumDescriptions = {
              "Unused.",
              "Supported by the inspect operations.",
              "Supported by the risk analysis operations.",
            },
            type = "string",
          },
          type = "array",
        },
        versions = {
          description = "A list of available versions for the infotype.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2VersionDescription",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoTypeLimit = {
      description = "Max findings configuration per infoType, per content item or long running DlpJob.",
      id = "GooglePrivacyDlpV2InfoTypeLimit",
      properties = {
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "Type of information the findings limit applies to. Only one limit per info_type should be provided. If InfoTypeLimit does not have an info_type, the DLP API applies the limit against all info_types that are found but not specified in another InfoTypeLimit.",
        },
        maxFindings = {
          description = "Max findings limit for the given infoType.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoTypeStats = {
      description = "Statistics regarding a specific InfoType.",
      id = "GooglePrivacyDlpV2InfoTypeStats",
      properties = {
        count = {
          description = "Number of findings for this infoType.",
          format = "int64",
          type = "string",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "The type of finding this stat is for.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoTypeSummary = {
      description = "The infoType details for this column.",
      id = "GooglePrivacyDlpV2InfoTypeSummary",
      properties = {
        estimatedPrevalence = {
          description = "Not populated for predicted infotypes.",
          format = "int32",
          type = "integer",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "The infoType.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoTypeTransformation = {
      description = "A transformation to apply to text that is identified as a specific info_type.",
      id = "GooglePrivacyDlpV2InfoTypeTransformation",
      properties = {
        infoTypes = {
          description = "InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in `InspectConfig`.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoType",
          },
          type = "array",
        },
        primitiveTransformation = {
          ["$ref"] = "GooglePrivacyDlpV2PrimitiveTransformation",
          description = "Required. Primitive transformation to apply to the infoType.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InfoTypeTransformations = {
      description = "A type of transformation that will scan unstructured text and apply various `PrimitiveTransformation`s to each finding, where the transformation is applied to only values that were identified as a specific info_type.",
      id = "GooglePrivacyDlpV2InfoTypeTransformations",
      properties = {
        transformations = {
          description = "Required. Transformation for each infoType. Cannot specify more than one for a given infoType.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoTypeTransformation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectConfig = {
      description = "Configuration description of the scanning process. When used with redactContent only info_types and min_likelihood are currently used.",
      id = "GooglePrivacyDlpV2InspectConfig",
      properties = {
        contentOptions = {
          description = "Deprecated and unused.",
          items = {
            enum = {
              "CONTENT_UNSPECIFIED",
              "CONTENT_TEXT",
              "CONTENT_IMAGE",
            },
            enumDescriptions = {
              "Includes entire content of a file or a data stream.",
              "Text content within the data, excluding any metadata.",
              "Images found in the data.",
            },
            type = "string",
          },
          type = "array",
        },
        customInfoTypes = {
          description = "CustomInfoTypes provided by the user. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2CustomInfoType",
          },
          type = "array",
        },
        excludeInfoTypes = {
          description = "When true, excludes type information of the findings. This is not used for data profiling.",
          type = "boolean",
        },
        includeQuote = {
          description = "When true, a contextual quote from the data that triggered a finding is included in the response; see Finding.quote. This is not used for data profiling.",
          type = "boolean",
        },
        infoTypes = {
          description = "Restricts what info_types to look for. The values must correspond to InfoType values returned by ListInfoTypes or listed at https://cloud.google.com/dlp/docs/infotypes-reference. When no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run. By default this may be all types, but may change over time as detectors are updated. If you need precise control and predictability as to what detectors are run you should specify specific InfoTypes listed in the reference, otherwise a default list will be used, which may change over time.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoType",
          },
          type = "array",
        },
        limits = {
          ["$ref"] = "GooglePrivacyDlpV2FindingLimits",
          description = "Configuration to control the number of findings returned. This is not used for data profiling. When redacting sensitive data from images, finding limits don't apply. They can cause unexpected or inconsistent results, where only some data is redacted. Don't include finding limits in RedactImage requests. Otherwise, Cloud DLP returns an error.",
        },
        minLikelihood = {
          description = "Only returns findings equal or above this threshold. The default is POSSIBLE. See https://cloud.google.com/dlp/docs/likelihood to learn more.",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Default value; same as POSSIBLE.",
            "Few matching elements.",
            "",
            "Some matching elements.",
            "",
            "Many matching elements.",
          },
          type = "string",
        },
        ruleSet = {
          description = "Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end, other rules are executed in the order they are specified for each info type.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InspectionRuleSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectContentRequest = {
      description = "Request to search for potentially sensitive info in a ContentItem.",
      id = "GooglePrivacyDlpV2InspectContentRequest",
      properties = {
        inspectConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectConfig",
          description = "Configuration for the inspector. What specified here will override the template referenced by the inspect_template_name argument.",
        },
        inspectTemplateName = {
          description = "Template to use. Any configuration directly specified in inspect_config will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.",
          type = "string",
        },
        item = {
          ["$ref"] = "GooglePrivacyDlpV2ContentItem",
          description = "The item to inspect.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectContentResponse = {
      description = "Results of inspecting an item.",
      id = "GooglePrivacyDlpV2InspectContentResponse",
      properties = {
        result = {
          ["$ref"] = "GooglePrivacyDlpV2InspectResult",
          description = "The findings.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectDataSourceDetails = {
      description = "The results of an inspect DataSource job.",
      id = "GooglePrivacyDlpV2InspectDataSourceDetails",
      properties = {
        requestedOptions = {
          ["$ref"] = "GooglePrivacyDlpV2RequestedOptions",
          description = "The configuration used for this job.",
        },
        result = {
          ["$ref"] = "GooglePrivacyDlpV2Result",
          description = "A summary of the outcome of this inspection job.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectJobConfig = {
      description = "Controls what and how to inspect for findings.",
      id = "GooglePrivacyDlpV2InspectJobConfig",
      properties = {
        actions = {
          description = "Actions to execute at the completion of the job.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Action",
          },
          type = "array",
        },
        inspectConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectConfig",
          description = "How and what to scan for.",
        },
        inspectTemplateName = {
          description = "If provided, will be used as the default for all values in InspectConfig. `inspect_config` will be merged into the values persisted as part of the template.",
          type = "string",
        },
        storageConfig = {
          ["$ref"] = "GooglePrivacyDlpV2StorageConfig",
          description = "The data to scan.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectResult = {
      description = "All the findings for a single scanned item.",
      id = "GooglePrivacyDlpV2InspectResult",
      properties = {
        findings = {
          description = "List of findings for an item.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Finding",
          },
          type = "array",
        },
        findingsTruncated = {
          description = "If true, then this item might have more findings than were returned, and the findings returned are an arbitrary subset of all findings. The findings list might be truncated because the input items were too large, or because the server reached the maximum amount of resources allowed for a single API call. For best results, divide the input into smaller batches.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectTemplate = {
      description = "The inspectTemplate contains a configuration (set of types of sensitive data to be detected) to be used anywhere you otherwise would normally specify InspectConfig. See https://cloud.google.com/dlp/docs/concepts-templates to learn more.",
      id = "GooglePrivacyDlpV2InspectTemplate",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of an inspectTemplate.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Short description (max 256 chars).",
          type = "string",
        },
        displayName = {
          description = "Display name (max 256 chars).",
          type = "string",
        },
        inspectConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectConfig",
          description = "The core content of the template. Configuration of the scanning process.",
        },
        name = {
          description = "Output only. The template name. The template will have one of the following formats: `projects/PROJECT_ID/inspectTemplates/TEMPLATE_ID` OR `organizations/ORGANIZATION_ID/inspectTemplates/TEMPLATE_ID`;",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of an inspectTemplate.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectionRule = {
      description = "A single inspection rule to be applied to infoTypes, specified in `InspectionRuleSet`.",
      id = "GooglePrivacyDlpV2InspectionRule",
      properties = {
        exclusionRule = {
          ["$ref"] = "GooglePrivacyDlpV2ExclusionRule",
          description = "Exclusion rule.",
        },
        hotwordRule = {
          ["$ref"] = "GooglePrivacyDlpV2HotwordRule",
          description = "Hotword-based detection rule.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2InspectionRuleSet = {
      description = "Rule set for modifying a set of infoTypes to alter behavior under certain circumstances, depending on the specific details of the rules within the set.",
      id = "GooglePrivacyDlpV2InspectionRuleSet",
      properties = {
        infoTypes = {
          description = "List of infoTypes this rule set is applied to.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoType",
          },
          type = "array",
        },
        rules = {
          description = "Set of rules to be applied to infoTypes. The rules are applied in order.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InspectionRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2JobNotificationEmails = {
      description = "Sends an email when the job completes. The email goes to IAM project owners and technical [Essential Contacts](https://cloud.google.com/resource-manager/docs/managing-notification-contacts).",
      id = "GooglePrivacyDlpV2JobNotificationEmails",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2JobTrigger = {
      description = "Contains a configuration to make dlp api calls on a repeating basis. See https://cloud.google.com/dlp/docs/concepts-job-triggers to learn more.",
      id = "GooglePrivacyDlpV2JobTrigger",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of a triggeredJob.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "User provided description (max 256 chars)",
          type = "string",
        },
        displayName = {
          description = "Display name (max 100 chars)",
          type = "string",
        },
        errors = {
          description = "Output only. A stream of errors encountered when the trigger was activated. Repeated errors may result in the JobTrigger automatically being paused. Will return the last 100 errors. Whenever the JobTrigger is modified this list will be cleared.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Error",
          },
          readOnly = true,
          type = "array",
        },
        inspectJob = {
          ["$ref"] = "GooglePrivacyDlpV2InspectJobConfig",
          description = "For inspect jobs, a snapshot of the configuration.",
        },
        lastRunTime = {
          description = "Output only. The timestamp of the last time this trigger executed.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Unique resource name for the triggeredJob, assigned by the service when the triggeredJob is created, for example `projects/dlp-test-project/jobTriggers/53234423`.",
          type = "string",
        },
        status = {
          description = "Required. A status for this trigger.",
          enum = {
            "STATUS_UNSPECIFIED",
            "HEALTHY",
            "PAUSED",
            "CANCELLED",
          },
          enumDescriptions = {
            "Unused.",
            "Trigger is healthy.",
            "Trigger is temporarily paused.",
            "Trigger is cancelled and can not be resumed.",
          },
          type = "string",
        },
        triggers = {
          description = "A list of triggers which will be OR'ed together. Only one in the list needs to trigger for a job to be started. The list may contain only a single Schedule trigger and must have at least one object.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Trigger",
          },
          type = "array",
        },
        updateTime = {
          description = "Output only. The last update timestamp of a triggeredJob.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KAnonymityConfig = {
      description = "k-anonymity metric, used for analysis of reidentification risk.",
      id = "GooglePrivacyDlpV2KAnonymityConfig",
      properties = {
        entityId = {
          ["$ref"] = "GooglePrivacyDlpV2EntityId",
          description = "Message indicating that multiple rows might be associated to a single individual. If the same entity_id is associated to multiple quasi-identifier tuples over distinct rows, we consider the entire collection of tuples as the composite quasi-identifier. This collection is a multiset: the order in which the different tuples appear in the dataset is ignored, but their frequency is taken into account. Important note: a maximum of 1000 rows can be associated to a single entity ID. If more rows are associated with the same entity ID, some might be ignored.",
        },
        quasiIds = {
          description = "Set of fields to compute k-anonymity over. When multiple fields are specified, they are considered a single composite key. Structs and repeated data types are not supported; however, nested fields are supported so long as they are not structs themselves or nested within a repeated field.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KAnonymityEquivalenceClass = {
      description = "The set of columns' values that share the same ldiversity value",
      id = "GooglePrivacyDlpV2KAnonymityEquivalenceClass",
      properties = {
        equivalenceClassSize = {
          description = "Size of the equivalence class, for example number of rows with the above set of values.",
          format = "int64",
          type = "string",
        },
        quasiIdsValues = {
          description = "Set of values defining the equivalence class. One value per quasi-identifier column in the original KAnonymity metric message. The order is always the same as the original request.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KAnonymityHistogramBucket = {
      description = "Histogram of k-anonymity equivalence classes.",
      id = "GooglePrivacyDlpV2KAnonymityHistogramBucket",
      properties = {
        bucketSize = {
          description = "Total number of equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValueCount = {
          description = "Total number of distinct equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValues = {
          description = "Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2KAnonymityEquivalenceClass",
          },
          type = "array",
        },
        equivalenceClassSizeLowerBound = {
          description = "Lower bound on the size of the equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
        equivalenceClassSizeUpperBound = {
          description = "Upper bound on the size of the equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KAnonymityResult = {
      description = "Result of the k-anonymity computation.",
      id = "GooglePrivacyDlpV2KAnonymityResult",
      properties = {
        equivalenceClassHistogramBuckets = {
          description = "Histogram of k-anonymity equivalence classes.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2KAnonymityHistogramBucket",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KMapEstimationConfig = {
      description = "Reidentifiability metric. This corresponds to a risk model similar to what is called \"journalist risk\" in the literature, except the attack dataset is statistically modeled instead of being perfectly known. This can be done using publicly available data (like the US Census), or using a custom statistical model (indicated as one or several BigQuery tables), or by extrapolating from the distribution of values in the input dataset.",
      id = "GooglePrivacyDlpV2KMapEstimationConfig",
      properties = {
        auxiliaryTables = {
          description = "Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers column must appear in exactly one column of one auxiliary table.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2AuxiliaryTable",
          },
          type = "array",
        },
        quasiIds = {
          description = "Required. Fields considered to be quasi-identifiers. No two columns can have the same tag.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2TaggedField",
          },
          type = "array",
        },
        regionCode = {
          description = "ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KMapEstimationHistogramBucket = {
      description = "A KMapEstimationHistogramBucket message with the following values: min_anonymity: 3 max_anonymity: 5 frequency: 42 means that there are 42 records whose quasi-identifier values correspond to 3, 4 or 5 people in the overlying population. An important particular case is when min_anonymity = max_anonymity = 1: the frequency field then corresponds to the number of uniquely identifiable records.",
      id = "GooglePrivacyDlpV2KMapEstimationHistogramBucket",
      properties = {
        bucketSize = {
          description = "Number of records within these anonymity bounds.",
          format = "int64",
          type = "string",
        },
        bucketValueCount = {
          description = "Total number of distinct quasi-identifier tuple values in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValues = {
          description = "Sample of quasi-identifier tuple values in this bucket. The total number of classes returned per bucket is capped at 20.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2KMapEstimationQuasiIdValues",
          },
          type = "array",
        },
        maxAnonymity = {
          description = "Always greater than or equal to min_anonymity.",
          format = "int64",
          type = "string",
        },
        minAnonymity = {
          description = "Always positive.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KMapEstimationQuasiIdValues = {
      description = "A tuple of values for the quasi-identifier columns.",
      id = "GooglePrivacyDlpV2KMapEstimationQuasiIdValues",
      properties = {
        estimatedAnonymity = {
          description = "The estimated anonymity for these quasi-identifier values.",
          format = "int64",
          type = "string",
        },
        quasiIdsValues = {
          description = "The quasi-identifier values.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KMapEstimationResult = {
      description = "Result of the reidentifiability analysis. Note that these results are an estimation, not exact values.",
      id = "GooglePrivacyDlpV2KMapEstimationResult",
      properties = {
        kMapEstimationHistogram = {
          description = "The intervals [min_anonymity, max_anonymity] do not overlap. If a value doesn't correspond to any such interval, the associated frequency is zero. For example, the following records: {min_anonymity: 1, max_anonymity: 1, frequency: 17} {min_anonymity: 2, max_anonymity: 3, frequency: 42} {min_anonymity: 5, max_anonymity: 10, frequency: 99} mean that there are no record with an estimated anonymity of 4, 5, or larger than 10.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2KMapEstimationHistogramBucket",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Key = {
      description = "A unique identifier for a Datastore entity. If a key's partition ID or any of its path kinds or names are reserved/read-only, the key is reserved/read-only. A reserved/read-only key is forbidden in certain documented contexts.",
      id = "GooglePrivacyDlpV2Key",
      properties = {
        partitionId = {
          ["$ref"] = "GooglePrivacyDlpV2PartitionId",
          description = "Entities are partitioned into subsets, currently identified by a project ID and namespace ID. Queries are scoped to a single partition.",
        },
        path = {
          description = "The entity path. An entity path consists of one or more elements composed of a kind and a string or numerical identifier, which identify entities. The first element identifies a _root entity_, the second element identifies a _child_ of the root entity, the third element identifies a child of the second entity, and so forth. The entities identified by all prefixes of the path are called the element's _ancestors_. A path can never be empty, and a path can have at most 100 elements.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2PathElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KindExpression = {
      description = "A representation of a Datastore kind.",
      id = "GooglePrivacyDlpV2KindExpression",
      properties = {
        name = {
          description = "The name of the kind.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2KmsWrappedCryptoKey = {
      description = "Include to use an existing data crypto key wrapped by KMS. The wrapped key must be a 128-, 192-, or 256-bit key. Authorization requires the following IAM permissions when sending a request to perform a crypto transformation using a KMS-wrapped crypto key: dlp.kms.encrypt For more information, see [Creating a wrapped key] (https://cloud.google.com/dlp/docs/create-wrapped-key). Note: When you use Cloud KMS for cryptographic operations, [charges apply](https://cloud.google.com/kms/pricing).",
      id = "GooglePrivacyDlpV2KmsWrappedCryptoKey",
      properties = {
        cryptoKeyName = {
          description = "Required. The resource name of the KMS CryptoKey to use for unwrapping.",
          type = "string",
        },
        wrappedKey = {
          description = "Required. The wrapped data crypto key.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2LDiversityConfig = {
      description = "l-diversity metric, used for analysis of reidentification risk.",
      id = "GooglePrivacyDlpV2LDiversityConfig",
      properties = {
        quasiIds = {
          description = "Set of quasi-identifiers indicating how equivalence classes are defined for the l-diversity computation. When multiple fields are specified, they are considered a single composite key.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
        sensitiveAttribute = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Sensitive field for computing the l-value.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2LDiversityEquivalenceClass = {
      description = "The set of columns' values that share the same ldiversity value.",
      id = "GooglePrivacyDlpV2LDiversityEquivalenceClass",
      properties = {
        equivalenceClassSize = {
          description = "Size of the k-anonymity equivalence class.",
          format = "int64",
          type = "string",
        },
        numDistinctSensitiveValues = {
          description = "Number of distinct sensitive values in this equivalence class.",
          format = "int64",
          type = "string",
        },
        quasiIdsValues = {
          description = "Quasi-identifier values defining the k-anonymity equivalence class. The order is always the same as the original request.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Value",
          },
          type = "array",
        },
        topSensitiveValues = {
          description = "Estimated frequencies of top sensitive values.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2ValueFrequency",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2LDiversityHistogramBucket = {
      description = "Histogram of l-diversity equivalence class sensitive value frequencies.",
      id = "GooglePrivacyDlpV2LDiversityHistogramBucket",
      properties = {
        bucketSize = {
          description = "Total number of equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValueCount = {
          description = "Total number of distinct equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
        bucketValues = {
          description = "Sample of equivalence classes in this bucket. The total number of classes returned per bucket is capped at 20.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2LDiversityEquivalenceClass",
          },
          type = "array",
        },
        sensitiveValueFrequencyLowerBound = {
          description = "Lower bound on the sensitive value frequencies of the equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
        sensitiveValueFrequencyUpperBound = {
          description = "Upper bound on the sensitive value frequencies of the equivalence classes in this bucket.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2LDiversityResult = {
      description = "Result of the l-diversity computation.",
      id = "GooglePrivacyDlpV2LDiversityResult",
      properties = {
        sensitiveValueFrequencyHistogramBuckets = {
          description = "Histogram of l-diversity equivalence class sensitive value frequencies.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2LDiversityHistogramBucket",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2LargeCustomDictionaryConfig = {
      description = "Configuration for a custom dictionary created from a data source of any size up to the maximum size defined in the [limits](https://cloud.google.com/dlp/limits) page. The artifacts of dictionary creation are stored in the specified Cloud Storage location. Consider using `CustomInfoType.Dictionary` for smaller dictionaries that satisfy the size requirements.",
      id = "GooglePrivacyDlpV2LargeCustomDictionaryConfig",
      properties = {
        bigQueryField = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryField",
          description = "Field in a BigQuery table where each cell represents a dictionary phrase.",
        },
        cloudStorageFileSet = {
          ["$ref"] = "GooglePrivacyDlpV2CloudStorageFileSet",
          description = "Set of files containing newline-delimited lists of dictionary phrases.",
        },
        outputPath = {
          ["$ref"] = "GooglePrivacyDlpV2CloudStoragePath",
          description = "Location to store dictionary artifacts in Cloud Storage. These files will only be accessible by project owners and the DLP API. If any of these artifacts are modified, the dictionary is considered invalid and can no longer be used.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2LargeCustomDictionaryStats = {
      description = "Summary statistics of a custom dictionary.",
      id = "GooglePrivacyDlpV2LargeCustomDictionaryStats",
      properties = {
        approxNumPhrases = {
          description = "Approximate number of distinct phrases in the dictionary.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2LeaveUntransformed = {
      description = "Skips the data without modifying it if the requested transformation would cause an error. For example, if a `DateShift` transformation were applied an an IP address, this mode would leave the IP address unchanged in the response.",
      id = "GooglePrivacyDlpV2LeaveUntransformed",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2LikelihoodAdjustment = {
      description = "Message for specifying an adjustment to the likelihood of a finding as part of a detection rule.",
      id = "GooglePrivacyDlpV2LikelihoodAdjustment",
      properties = {
        fixedLikelihood = {
          description = "Set the likelihood of a finding to a fixed value.",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Default value; same as POSSIBLE.",
            "Few matching elements.",
            "",
            "Some matching elements.",
            "",
            "Many matching elements.",
          },
          type = "string",
        },
        relativeLikelihood = {
          description = "Increase or decrease the likelihood by the specified number of levels. For example, if a finding would be `POSSIBLE` without the detection rule and `relative_likelihood` is 1, then it is upgraded to `LIKELY`, while a value of -1 would downgrade it to `UNLIKELY`. Likelihood may never drop below `VERY_UNLIKELY` or exceed `VERY_LIKELY`, so applying an adjustment of 1 followed by an adjustment of -1 when base likelihood is `VERY_LIKELY` will result in a final likelihood of `LIKELY`.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ListDeidentifyTemplatesResponse = {
      description = "Response message for ListDeidentifyTemplates.",
      id = "GooglePrivacyDlpV2ListDeidentifyTemplatesResponse",
      properties = {
        deidentifyTemplates = {
          description = "List of deidentify templates, up to page_size in ListDeidentifyTemplatesRequest.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the next page is available then the next page token to be used in following ListDeidentifyTemplates request.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ListDlpJobsResponse = {
      description = "The response message for listing DLP jobs.",
      id = "GooglePrivacyDlpV2ListDlpJobsResponse",
      properties = {
        jobs = {
          description = "A list of DlpJobs that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2DlpJob",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ListInfoTypesResponse = {
      description = "Response to the ListInfoTypes request.",
      id = "GooglePrivacyDlpV2ListInfoTypesResponse",
      properties = {
        infoTypes = {
          description = "Set of sensitive infoTypes.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoTypeDescription",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ListInspectTemplatesResponse = {
      description = "Response message for ListInspectTemplates.",
      id = "GooglePrivacyDlpV2ListInspectTemplatesResponse",
      properties = {
        inspectTemplates = {
          description = "List of inspectTemplates, up to page_size in ListInspectTemplatesRequest.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the next page is available then the next page token to be used in following ListInspectTemplates request.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ListJobTriggersResponse = {
      description = "Response message for ListJobTriggers.",
      id = "GooglePrivacyDlpV2ListJobTriggersResponse",
      properties = {
        jobTriggers = {
          description = "List of triggeredJobs, up to page_size in ListJobTriggersRequest.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the next page is available then the next page token to be used in following ListJobTriggers request.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ListStoredInfoTypesResponse = {
      description = "Response message for ListStoredInfoTypes.",
      id = "GooglePrivacyDlpV2ListStoredInfoTypesResponse",
      properties = {
        nextPageToken = {
          description = "If the next page is available then the next page token to be used in following ListStoredInfoTypes request.",
          type = "string",
        },
        storedInfoTypes = {
          description = "List of storedInfoTypes, up to page_size in ListStoredInfoTypesRequest.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2StoredInfoType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Location = {
      description = "Specifies the location of the finding.",
      id = "GooglePrivacyDlpV2Location",
      properties = {
        byteRange = {
          ["$ref"] = "GooglePrivacyDlpV2Range",
          description = "Zero-based byte offsets delimiting the finding. These are relative to the finding's containing element. Note that when the content is not textual, this references the UTF-8 encoded textual representation of the content. Omitted if content is an image.",
        },
        codepointRange = {
          ["$ref"] = "GooglePrivacyDlpV2Range",
          description = "Unicode character offsets delimiting the finding. These are relative to the finding's containing element. Provided when the content is text.",
        },
        container = {
          ["$ref"] = "GooglePrivacyDlpV2Container",
          description = "Information about the container where this finding occurred, if available.",
        },
        contentLocations = {
          description = "List of nested objects pointing to the precise location of the finding within the file or record.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2ContentLocation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Manual = {
      description = "Job trigger option for hybrid jobs. Jobs must be manually created and finished.",
      id = "GooglePrivacyDlpV2Manual",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2MetadataLocation = {
      description = "Metadata Location",
      id = "GooglePrivacyDlpV2MetadataLocation",
      properties = {
        storageLabel = {
          ["$ref"] = "GooglePrivacyDlpV2StorageMetadataLabel",
          description = "Storage metadata.",
        },
        type = {
          description = "Type of metadata containing the finding.",
          enum = {
            "METADATATYPE_UNSPECIFIED",
            "STORAGE_METADATA",
          },
          enumDescriptions = {
            "Unused",
            "General file metadata provided by Cloud Storage.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2NumericalStatsConfig = {
      description = "Compute numerical stats over an individual column, including min, max, and quantiles.",
      id = "GooglePrivacyDlpV2NumericalStatsConfig",
      properties = {
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Field to compute numerical stats on. Supported types are integer, float, date, datetime, timestamp, time.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2NumericalStatsResult = {
      description = "Result of the numerical stats computation.",
      id = "GooglePrivacyDlpV2NumericalStatsResult",
      properties = {
        maxValue = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Maximum value appearing in the column.",
        },
        minValue = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Minimum value appearing in the column.",
        },
        quantileValues = {
          description = "List of 99 values that partition the set of field values into 100 equal sized buckets.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2OtherInfoTypeSummary = {
      description = "Infotype details for other infoTypes found within a column.",
      id = "GooglePrivacyDlpV2OtherInfoTypeSummary",
      properties = {
        estimatedPrevalence = {
          description = "Approximate percentage of non-null rows that contained data detected by this infotype.",
          format = "int32",
          type = "integer",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "The other infoType.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2OutputStorageConfig = {
      description = "Cloud repository for storing output.",
      id = "GooglePrivacyDlpV2OutputStorageConfig",
      properties = {
        outputSchema = {
          description = "Schema used for writing the findings for Inspect jobs. This field is only used for Inspect and must be unspecified for Risk jobs. Columns are derived from the `Finding` object. If appending to an existing table, any columns from the predefined schema that are missing will be added. No columns in the existing table will be deleted. If unspecified, then all available columns will be used for a new table or an (existing) table with no schema, and no changes will be made to an existing table that has a schema. Only for use with external storage.",
          enum = {
            "OUTPUT_SCHEMA_UNSPECIFIED",
            "BASIC_COLUMNS",
            "GCS_COLUMNS",
            "DATASTORE_COLUMNS",
            "BIG_QUERY_COLUMNS",
            "ALL_COLUMNS",
          },
          enumDescriptions = {
            "Unused.",
            "Basic schema including only `info_type`, `quote`, `certainty`, and `timestamp`.",
            "Schema tailored to findings from scanning Cloud Storage.",
            "Schema tailored to findings from scanning Google Datastore.",
            "Schema tailored to findings from scanning Google BigQuery.",
            "Schema containing all columns.",
          },
          type = "string",
        },
        table = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Store findings in an existing table or a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details. For Inspect, each column in an existing output table must have the same name, type, and mode of a field in the `Finding` object. For Risk, an existing output table should be the output of a previous Risk analysis job run on the same source table, with the same privacy metric and quasi-identifiers. Risk jobs that analyze the same table but compute a different privacy metric, or use different sets of quasi-identifiers, cannot store their results in the same table.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PartitionId = {
      description = "Datastore partition ID. A partition ID identifies a grouping of entities. The grouping is always by project and namespace, however the namespace ID may be empty. A partition ID contains several dimensions: project ID and namespace ID.",
      id = "GooglePrivacyDlpV2PartitionId",
      properties = {
        namespaceId = {
          description = "If not empty, the ID of the namespace to which the entities belong.",
          type = "string",
        },
        projectId = {
          description = "The ID of the project to which the entities belong.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PathElement = {
      description = "A (kind, ID/name) pair used to construct a key path. If either name or ID is set, the element is complete. If neither is set, the element is incomplete.",
      id = "GooglePrivacyDlpV2PathElement",
      properties = {
        id = {
          description = "The auto-allocated ID of the entity. Never equal to zero. Values less than zero are discouraged and may not be supported in the future.",
          format = "int64",
          type = "string",
        },
        kind = {
          description = "The kind of the entity. A kind matching regex `__.*__` is reserved/read-only. A kind must not contain more than 1500 bytes when UTF-8 encoded. Cannot be `\"\"`.",
          type = "string",
        },
        name = {
          description = "The name of the entity. A name matching regex `__.*__` is reserved/read-only. A name must not be more than 1500 bytes when UTF-8 encoded. Cannot be `\"\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PrimitiveTransformation = {
      description = "A rule for transforming a value.",
      id = "GooglePrivacyDlpV2PrimitiveTransformation",
      properties = {
        bucketingConfig = {
          ["$ref"] = "GooglePrivacyDlpV2BucketingConfig",
          description = "Bucketing",
        },
        characterMaskConfig = {
          ["$ref"] = "GooglePrivacyDlpV2CharacterMaskConfig",
          description = "Mask",
        },
        cryptoDeterministicConfig = {
          ["$ref"] = "GooglePrivacyDlpV2CryptoDeterministicConfig",
          description = "Deterministic Crypto",
        },
        cryptoHashConfig = {
          ["$ref"] = "GooglePrivacyDlpV2CryptoHashConfig",
          description = "Crypto",
        },
        cryptoReplaceFfxFpeConfig = {
          ["$ref"] = "GooglePrivacyDlpV2CryptoReplaceFfxFpeConfig",
          description = "Ffx-Fpe",
        },
        dateShiftConfig = {
          ["$ref"] = "GooglePrivacyDlpV2DateShiftConfig",
          description = "Date Shift",
        },
        fixedSizeBucketingConfig = {
          ["$ref"] = "GooglePrivacyDlpV2FixedSizeBucketingConfig",
          description = "Fixed size bucketing",
        },
        redactConfig = {
          ["$ref"] = "GooglePrivacyDlpV2RedactConfig",
          description = "Redact",
        },
        replaceConfig = {
          ["$ref"] = "GooglePrivacyDlpV2ReplaceValueConfig",
          description = "Replace with a specified value.",
        },
        replaceDictionaryConfig = {
          ["$ref"] = "GooglePrivacyDlpV2ReplaceDictionaryConfig",
          description = "Replace with a value randomly drawn (with replacement) from a dictionary.",
        },
        replaceWithInfoTypeConfig = {
          ["$ref"] = "GooglePrivacyDlpV2ReplaceWithInfoTypeConfig",
          description = "Replace with infotype",
        },
        timePartConfig = {
          ["$ref"] = "GooglePrivacyDlpV2TimePartConfig",
          description = "Time extraction",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PrivacyMetric = {
      description = "Privacy metric to compute for reidentification risk analysis.",
      id = "GooglePrivacyDlpV2PrivacyMetric",
      properties = {
        categoricalStatsConfig = {
          ["$ref"] = "GooglePrivacyDlpV2CategoricalStatsConfig",
          description = "Categorical stats",
        },
        deltaPresenceEstimationConfig = {
          ["$ref"] = "GooglePrivacyDlpV2DeltaPresenceEstimationConfig",
          description = "delta-presence",
        },
        kAnonymityConfig = {
          ["$ref"] = "GooglePrivacyDlpV2KAnonymityConfig",
          description = "K-anonymity",
        },
        kMapEstimationConfig = {
          ["$ref"] = "GooglePrivacyDlpV2KMapEstimationConfig",
          description = "k-map",
        },
        lDiversityConfig = {
          ["$ref"] = "GooglePrivacyDlpV2LDiversityConfig",
          description = "l-diversity",
        },
        numericalStatsConfig = {
          ["$ref"] = "GooglePrivacyDlpV2NumericalStatsConfig",
          description = "Numerical stats",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ProfileStatus = {
      id = "GooglePrivacyDlpV2ProfileStatus",
      properties = {
        status = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Profiling status code and optional message",
        },
        timestamp = {
          description = "Time when the profile generation status was updated",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Proximity = {
      description = "Message for specifying a window around a finding to apply a detection rule.",
      id = "GooglePrivacyDlpV2Proximity",
      properties = {
        windowAfter = {
          description = "Number of characters after the finding to consider.",
          format = "int32",
          type = "integer",
        },
        windowBefore = {
          description = "Number of characters before the finding to consider. For tabular data, if you want to modify the likelihood of an entire column of findngs, set this to 1. For more information, see [Hotword example: Set the match likelihood of a table column] (https://cloud.google.com/dlp/docs/creating-custom-infotypes-likelihood#match-column-values).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PubSubCondition = {
      description = "A condition consisting of a value.",
      id = "GooglePrivacyDlpV2PubSubCondition",
      properties = {
        minimumRiskScore = {
          description = "The minimum data risk score that triggers the condition.",
          enum = {
            "PROFILE_SCORE_BUCKET_UNSPECIFIED",
            "HIGH",
            "MEDIUM_OR_HIGH",
          },
          enumDescriptions = {
            "Unused.",
            "High risk/sensitivity detected.",
            "Medium or high risk/sensitivity detected.",
          },
          type = "string",
        },
        minimumSensitivityScore = {
          description = "The minimum sensitivity level that triggers the condition.",
          enum = {
            "PROFILE_SCORE_BUCKET_UNSPECIFIED",
            "HIGH",
            "MEDIUM_OR_HIGH",
          },
          enumDescriptions = {
            "Unused.",
            "High risk/sensitivity detected.",
            "Medium or high risk/sensitivity detected.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PubSubExpressions = {
      description = "An expression, consisting of an operator and conditions.",
      id = "GooglePrivacyDlpV2PubSubExpressions",
      properties = {
        conditions = {
          description = "Conditions to apply to the expression.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2PubSubCondition",
          },
          type = "array",
        },
        logicalOperator = {
          description = "The operator to apply to the collection of conditions.",
          enum = {
            "LOGICAL_OPERATOR_UNSPECIFIED",
            "OR",
            "AND",
          },
          enumDescriptions = {
            "Unused.",
            "Conditional OR.",
            "Conditional AND.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PubSubNotification = {
      description = "Send a Pub/Sub message into the given Pub/Sub topic to connect other systems to data profile generation. The message payload data will be the byte serialization of `DataProfilePubSubMessage`.",
      id = "GooglePrivacyDlpV2PubSubNotification",
      properties = {
        detailOfMessage = {
          description = "How much data to include in the Pub/Sub message. If the user wishes to limit the size of the message, they can use resource_name and fetch the profile fields they wish to. Per table profile (not per column).",
          enum = {
            "DETAIL_LEVEL_UNSPECIFIED",
            "TABLE_PROFILE",
            "RESOURCE_NAME",
          },
          enumDescriptions = {
            "Unused.",
            "The full table data profile.",
            "The resource name of the table.",
          },
          type = "string",
        },
        event = {
          description = "The type of event that triggers a Pub/Sub. At most one `PubSubNotification` per EventType is permitted.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "NEW_PROFILE",
            "CHANGED_PROFILE",
            "SCORE_INCREASED",
            "ERROR_CHANGED",
          },
          enumDescriptions = {
            "Unused.",
            "New profile (not a re-profile).",
            "Changed one of the following profile metrics: * Table data risk score * Table sensitivity score * Table resource visibility * Table encryption type * Table predicted infoTypes * Table other infoTypes",
            "Table data risk score or sensitivity score increased.",
            "A user (non-internal) error occurred.",
          },
          type = "string",
        },
        pubsubCondition = {
          ["$ref"] = "GooglePrivacyDlpV2DataProfilePubSubCondition",
          description = "Conditions (e.g., data risk or sensitivity level) for triggering a Pub/Sub.",
        },
        topic = {
          description = "Cloud Pub/Sub topic to send notifications to. Format is projects/{project}/topics/{topic}.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog = {
      description = "Publish findings of a DlpJob to Data Catalog. In Data Catalog, tag templates are applied to the resource that Cloud DLP scanned. Data Catalog tag templates are stored in the same project and region where the BigQuery table exists. For Cloud DLP to create and apply the tag template, the Cloud DLP service agent must have the `roles/datacatalog.tagTemplateOwner` permission on the project. The tag template contains fields summarizing the results of the DlpJob. Any field values previously written by another DlpJob are deleted. InfoType naming patterns are strictly enforced when using this feature. Findings are persisted in Data Catalog storage and are governed by service-specific policies for Data Catalog. For more information, see [Service Specific Terms](https://cloud.google.com/terms/service-terms). Only a single instance of this action can be specified. This action is allowed only if all resources being scanned are BigQuery tables. Compatible with: Inspect",
      id = "GooglePrivacyDlpV2PublishFindingsToCloudDataCatalog",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2PublishSummaryToCscc = {
      description = "Publish the result summary of a DlpJob to [Security Command Center](https://cloud.google.com/security-command-center). This action is available for only projects that belong to an organization. This action publishes the count of finding instances and their infoTypes. The summary of findings are persisted in Security Command Center and are governed by [service-specific policies for Security Command Center](https://cloud.google.com/terms/service-terms). Only a single instance of this action can be specified. Compatible with: Inspect",
      id = "GooglePrivacyDlpV2PublishSummaryToCscc",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2PublishToPubSub = {
      description = "Publish a message into a given Pub/Sub topic when DlpJob has completed. The message contains a single field, `DlpJobName`, which is equal to the finished job's [`DlpJob.name`](https://cloud.google.com/dlp/docs/reference/rest/v2/projects.dlpJobs#DlpJob). Compatible with: Inspect, Risk",
      id = "GooglePrivacyDlpV2PublishToPubSub",
      properties = {
        topic = {
          description = "Cloud Pub/Sub topic to send notifications to. The topic must have given publishing access rights to the DLP API service account executing the long running DlpJob sending the notifications. Format is projects/{project}/topics/{topic}.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2PublishToStackdriver = {
      description = "Enable Stackdriver metric dlp.googleapis.com/finding_count. This will publish a metric to stack driver on each infotype requested and how many findings were found for it. CustomDetectors will be bucketed as 'Custom' under the Stackdriver label 'info_type'.",
      id = "GooglePrivacyDlpV2PublishToStackdriver",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2QuasiId = {
      description = "A column with a semantic tag attached.",
      id = "GooglePrivacyDlpV2QuasiId",
      properties = {
        customTag = {
          description = "A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).",
          type = "string",
        },
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Required. Identifies the column.",
        },
        inferred = {
          ["$ref"] = "GoogleProtobufEmpty",
          description = "If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported_by=RISK_ANALYSIS filter.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2QuasiIdField = {
      description = "A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.",
      id = "GooglePrivacyDlpV2QuasiIdField",
      properties = {
        customTag = {
          description = "A auxiliary field.",
          type = "string",
        },
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Identifies the column.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2QuasiIdentifierField = {
      description = "A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.",
      id = "GooglePrivacyDlpV2QuasiIdentifierField",
      properties = {
        customTag = {
          description = "A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).",
          type = "string",
        },
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Identifies the column.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2QuoteInfo = {
      description = "Message for infoType-dependent details parsed from quote.",
      id = "GooglePrivacyDlpV2QuoteInfo",
      properties = {
        dateTime = {
          ["$ref"] = "GooglePrivacyDlpV2DateTime",
          description = "The date time indicated by the quote.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Range = {
      description = "Generic half-open interval [start, end)",
      id = "GooglePrivacyDlpV2Range",
      properties = {
        ["end"] = {
          description = "Index of the last character of the range (exclusive).",
          format = "int64",
          type = "string",
        },
        start = {
          description = "Index of the first character of the range (inclusive).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RecordCondition = {
      description = "A condition for determining whether a transformation should be applied to a field.",
      id = "GooglePrivacyDlpV2RecordCondition",
      properties = {
        expressions = {
          ["$ref"] = "GooglePrivacyDlpV2Expressions",
          description = "An expression.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RecordKey = {
      description = "Message for a unique key indicating a record that contains a finding.",
      id = "GooglePrivacyDlpV2RecordKey",
      properties = {
        bigQueryKey = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryKey",
        },
        datastoreKey = {
          ["$ref"] = "GooglePrivacyDlpV2DatastoreKey",
        },
        idValues = {
          description = "Values of identifying columns in the given row. Order of values matches the order of `identifying_fields` specified in the scanning request.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RecordLocation = {
      description = "Location of a finding within a row or record.",
      id = "GooglePrivacyDlpV2RecordLocation",
      properties = {
        fieldId = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Field id of the field containing the finding.",
        },
        recordKey = {
          ["$ref"] = "GooglePrivacyDlpV2RecordKey",
          description = "Key of the finding.",
        },
        tableLocation = {
          ["$ref"] = "GooglePrivacyDlpV2TableLocation",
          description = "Location within a `ContentItem.Table`.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RecordSuppression = {
      description = "Configuration to suppress records whose suppression conditions evaluate to true.",
      id = "GooglePrivacyDlpV2RecordSuppression",
      properties = {
        condition = {
          ["$ref"] = "GooglePrivacyDlpV2RecordCondition",
          description = "A condition that when it evaluates to true will result in the record being evaluated to be suppressed from the transformed content.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RecordTransformation = {
      id = "GooglePrivacyDlpV2RecordTransformation",
      properties = {
        containerTimestamp = {
          description = "Findings container modification timestamp, if applicable.",
          format = "google-datetime",
          type = "string",
        },
        containerVersion = {
          description = "Container version, if available (\"generation\" for Cloud Storage).",
          type = "string",
        },
        fieldId = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "For record transformations, provide a field.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RecordTransformations = {
      description = "A type of transformation that is applied over structured data such as a table.",
      id = "GooglePrivacyDlpV2RecordTransformations",
      properties = {
        fieldTransformations = {
          description = "Transform the record by applying various field transformations.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldTransformation",
          },
          type = "array",
        },
        recordSuppressions = {
          description = "Configuration defining which records get suppressed entirely. Records that match any suppression rule are omitted from the output.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2RecordSuppression",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RedactConfig = {
      description = "Redact a given value. For example, if used with an `InfoTypeTransformation` transforming PHONE_NUMBER, and input 'My phone number is 206-555-0123', the output would be 'My phone number is '.",
      id = "GooglePrivacyDlpV2RedactConfig",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2RedactImageRequest = {
      description = "Request to search for potentially sensitive info in an image and redact it by covering it with a colored rectangle.",
      id = "GooglePrivacyDlpV2RedactImageRequest",
      properties = {
        byteItem = {
          ["$ref"] = "GooglePrivacyDlpV2ByteContentItem",
          description = "The content must be PNG, JPEG, SVG or BMP.",
        },
        imageRedactionConfigs = {
          description = "The configuration for specifying what content to redact from images.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2ImageRedactionConfig",
          },
          type = "array",
        },
        includeFindings = {
          description = "Whether the response should include findings along with the redacted image.",
          type = "boolean",
        },
        inspectConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectConfig",
          description = "Configuration for the inspector.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RedactImageResponse = {
      description = "Results of redacting an image.",
      id = "GooglePrivacyDlpV2RedactImageResponse",
      properties = {
        extractedText = {
          description = "If an image was being inspected and the InspectConfig's include_quote was set to true, then this field will include all text, if any, that was found in the image.",
          type = "string",
        },
        inspectResult = {
          ["$ref"] = "GooglePrivacyDlpV2InspectResult",
          description = "The findings. Populated when include_findings in the request is true.",
        },
        redactedImage = {
          description = "The redacted image. The type will be the same as the original image.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Regex = {
      description = "Message defining a custom regular expression.",
      id = "GooglePrivacyDlpV2Regex",
      properties = {
        groupIndexes = {
          description = "The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        pattern = {
          description = "Pattern defining the regular expression. Its syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ReidentifyContentRequest = {
      description = "Request to re-identify an item.",
      id = "GooglePrivacyDlpV2ReidentifyContentRequest",
      properties = {
        inspectConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectConfig",
          description = "Configuration for the inspector.",
        },
        inspectTemplateName = {
          description = "Template to use. Any configuration directly specified in `inspect_config` will override those set in the template. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.",
          type = "string",
        },
        item = {
          ["$ref"] = "GooglePrivacyDlpV2ContentItem",
          description = "The item to re-identify. Will be treated as text.",
        },
        locationId = {
          description = "Deprecated. This field has no effect.",
          type = "string",
        },
        reidentifyConfig = {
          ["$ref"] = "GooglePrivacyDlpV2DeidentifyConfig",
          description = "Configuration for the re-identification of the content item. This field shares the same proto message type that is used for de-identification, however its usage here is for the reversal of the previous de-identification. Re-identification is performed by examining the transformations used to de-identify the items and executing the reverse. This requires that only reversible transformations be provided here. The reversible transformations are: - `CryptoDeterministicConfig` - `CryptoReplaceFfxFpeConfig`",
        },
        reidentifyTemplateName = {
          description = "Template to use. References an instance of `DeidentifyTemplate`. Any configuration directly specified in `reidentify_config` or `inspect_config` will override those set in the template. The `DeidentifyTemplate` used must include only reversible transformations. Singular fields that are set in this request will replace their corresponding fields in the template. Repeated fields are appended. Singular sub-messages and groups are recursively merged.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ReidentifyContentResponse = {
      description = "Results of re-identifying an item.",
      id = "GooglePrivacyDlpV2ReidentifyContentResponse",
      properties = {
        item = {
          ["$ref"] = "GooglePrivacyDlpV2ContentItem",
          description = "The re-identified item.",
        },
        overview = {
          ["$ref"] = "GooglePrivacyDlpV2TransformationOverview",
          description = "An overview of the changes that were made to the `item`.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ReplaceDictionaryConfig = {
      description = "Replace each input value with a value randomly selected from the dictionary.",
      id = "GooglePrivacyDlpV2ReplaceDictionaryConfig",
      properties = {
        wordList = {
          ["$ref"] = "GooglePrivacyDlpV2WordList",
          description = "A list of words to select from for random replacement. The [limits](https://cloud.google.com/dlp/limits) page contains details about the size limits of dictionaries.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ReplaceValueConfig = {
      description = "Replace each input value with a given `Value`.",
      id = "GooglePrivacyDlpV2ReplaceValueConfig",
      properties = {
        newValue = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "Value to replace it with.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ReplaceWithInfoTypeConfig = {
      description = "Replace each matching finding with the name of the info_type.",
      id = "GooglePrivacyDlpV2ReplaceWithInfoTypeConfig",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2RequestedOptions = {
      description = "Snapshot of the inspection configuration.",
      id = "GooglePrivacyDlpV2RequestedOptions",
      properties = {
        jobConfig = {
          ["$ref"] = "GooglePrivacyDlpV2InspectJobConfig",
          description = "Inspect config.",
        },
        snapshotInspectTemplate = {
          ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
          description = "If run with an InspectTemplate, a snapshot of its state at the time of this run.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RequestedRiskAnalysisOptions = {
      description = "Risk analysis options.",
      id = "GooglePrivacyDlpV2RequestedRiskAnalysisOptions",
      properties = {
        jobConfig = {
          ["$ref"] = "GooglePrivacyDlpV2RiskAnalysisJobConfig",
          description = "The job config for the risk job.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Result = {
      description = "All result fields mentioned below are updated while the job is processing.",
      id = "GooglePrivacyDlpV2Result",
      properties = {
        hybridStats = {
          ["$ref"] = "GooglePrivacyDlpV2HybridInspectStatistics",
          description = "Statistics related to the processing of hybrid inspect.",
        },
        infoTypeStats = {
          description = "Statistics of how many instances of each info type were found during inspect job.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoTypeStats",
          },
          type = "array",
        },
        processedBytes = {
          description = "Total size in bytes that were processed.",
          format = "int64",
          type = "string",
        },
        totalEstimatedBytes = {
          description = "Estimate of the number of bytes to process.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2RiskAnalysisJobConfig = {
      description = "Configuration for a risk analysis job. See https://cloud.google.com/dlp/docs/concepts-risk-analysis to learn more.",
      id = "GooglePrivacyDlpV2RiskAnalysisJobConfig",
      properties = {
        actions = {
          description = "Actions to execute at the completion of the job. Are executed in the order provided.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Action",
          },
          type = "array",
        },
        privacyMetric = {
          ["$ref"] = "GooglePrivacyDlpV2PrivacyMetric",
          description = "Privacy metric to compute.",
        },
        sourceTable = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Input dataset to compute metrics over.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Row = {
      description = "Values of the row.",
      id = "GooglePrivacyDlpV2Row",
      properties = {
        values = {
          description = "Individual cells.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Value",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2SaveFindings = {
      description = "If set, the detailed findings will be persisted to the specified OutputStorageConfig. Only a single instance of this action can be specified. Compatible with: Inspect, Risk",
      id = "GooglePrivacyDlpV2SaveFindings",
      properties = {
        outputConfig = {
          ["$ref"] = "GooglePrivacyDlpV2OutputStorageConfig",
          description = "Location to store findings outside of DLP.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Schedule = {
      description = "Schedule for inspect job triggers.",
      id = "GooglePrivacyDlpV2Schedule",
      properties = {
        recurrencePeriodDuration = {
          description = "With this option a job is started on a regular periodic basis. For example: every day (86400 seconds). A scheduled start time will be skipped if the previous execution has not ended when its scheduled time occurs. This value must be set to a time duration greater than or equal to 1 day and can be no longer than 60 days.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2SelectedInfoTypes = {
      description = "Apply transformation to the selected info_types.",
      id = "GooglePrivacyDlpV2SelectedInfoTypes",
      properties = {
        infoTypes = {
          description = "Required. InfoTypes to apply the transformation to. Required. Provided InfoType must be unique within the ImageTransformations message.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoType",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2SensitivityScore = {
      description = "Score is a summary of all elements in the data profile. A higher number means more sensitive.",
      id = "GooglePrivacyDlpV2SensitivityScore",
      properties = {
        score = {
          description = "The score applied to the resource.",
          enum = {
            "SENSITIVITY_SCORE_UNSPECIFIED",
            "SENSITIVITY_LOW",
            "SENSITIVITY_MODERATE",
            "SENSITIVITY_HIGH",
          },
          enumDescriptions = {
            "Unused.",
            "No sensitive information detected. Limited access.",
            "Medium risk - PII, potentially sensitive data, or fields with free-text data that are at higher risk of having intermittent sensitive data. Consider limiting access.",
            "High risk – SPII may be present. Exfiltration of data may lead to user data loss. Re-identification of users may be possible. Consider limiting usage and or removing SPII.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StatisticalTable = {
      description = "An auxiliary table containing statistical information on the relative frequency of different quasi-identifiers values. It has one or several quasi-identifiers columns, and one column that indicates the relative frequency of each quasi-identifier tuple. If a tuple is present in the data but not in the auxiliary table, the corresponding relative frequency is assumed to be zero (and thus, the tuple is highly reidentifiable).",
      id = "GooglePrivacyDlpV2StatisticalTable",
      properties = {
        quasiIds = {
          description = "Required. Quasi-identifier columns.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2QuasiIdentifierField",
          },
          type = "array",
        },
        relativeFrequency = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Required. The relative frequency column must contain a floating-point number between 0 and 1 (inclusive). Null values are assumed to be zero.",
        },
        table = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "Required. Auxiliary table location.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StorageConfig = {
      description = "Shared message indicating Cloud storage type.",
      id = "GooglePrivacyDlpV2StorageConfig",
      properties = {
        bigQueryOptions = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryOptions",
          description = "BigQuery options.",
        },
        cloudStorageOptions = {
          ["$ref"] = "GooglePrivacyDlpV2CloudStorageOptions",
          description = "Cloud Storage options.",
        },
        datastoreOptions = {
          ["$ref"] = "GooglePrivacyDlpV2DatastoreOptions",
          description = "Google Cloud Datastore options.",
        },
        hybridOptions = {
          ["$ref"] = "GooglePrivacyDlpV2HybridOptions",
          description = "Hybrid inspection options.",
        },
        timespanConfig = {
          ["$ref"] = "GooglePrivacyDlpV2TimespanConfig",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StorageMetadataLabel = {
      description = "Storage metadata label to indicate which metadata entry contains findings.",
      id = "GooglePrivacyDlpV2StorageMetadataLabel",
      properties = {
        key = {
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StoredInfoType = {
      description = "StoredInfoType resource message that contains information about the current version and any pending updates.",
      id = "GooglePrivacyDlpV2StoredInfoType",
      properties = {
        currentVersion = {
          ["$ref"] = "GooglePrivacyDlpV2StoredInfoTypeVersion",
          description = "Current version of the stored info type.",
        },
        name = {
          description = "Resource name.",
          type = "string",
        },
        pendingVersions = {
          description = "Pending versions of the stored info type. Empty if no versions are pending.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2StoredInfoTypeVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StoredInfoTypeConfig = {
      description = "Configuration for stored infoTypes. All fields and subfield are provided by the user. For more information, see https://cloud.google.com/dlp/docs/creating-custom-infotypes.",
      id = "GooglePrivacyDlpV2StoredInfoTypeConfig",
      properties = {
        description = {
          description = "Description of the StoredInfoType (max 256 characters).",
          type = "string",
        },
        dictionary = {
          ["$ref"] = "GooglePrivacyDlpV2Dictionary",
          description = "Store dictionary-based CustomInfoType.",
        },
        displayName = {
          description = "Display name of the StoredInfoType (max 256 characters).",
          type = "string",
        },
        largeCustomDictionary = {
          ["$ref"] = "GooglePrivacyDlpV2LargeCustomDictionaryConfig",
          description = "StoredInfoType where findings are defined by a dictionary of phrases.",
        },
        regex = {
          ["$ref"] = "GooglePrivacyDlpV2Regex",
          description = "Store regular expression-based StoredInfoType.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StoredInfoTypeStats = {
      description = "Statistics for a StoredInfoType.",
      id = "GooglePrivacyDlpV2StoredInfoTypeStats",
      properties = {
        largeCustomDictionary = {
          ["$ref"] = "GooglePrivacyDlpV2LargeCustomDictionaryStats",
          description = "StoredInfoType where findings are defined by a dictionary of phrases.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StoredInfoTypeVersion = {
      description = "Version of a StoredInfoType, including the configuration used to build it, create timestamp, and current state.",
      id = "GooglePrivacyDlpV2StoredInfoTypeVersion",
      properties = {
        config = {
          ["$ref"] = "GooglePrivacyDlpV2StoredInfoTypeConfig",
          description = "StoredInfoType configuration.",
        },
        createTime = {
          description = "Create timestamp of the version. Read-only, determined by the system when the version is created.",
          format = "google-datetime",
          type = "string",
        },
        errors = {
          description = "Errors that occurred when creating this storedInfoType version, or anomalies detected in the storedInfoType data that render it unusable. Only the five most recent errors will be displayed, with the most recent error appearing first. For example, some of the data for stored custom dictionaries is put in the user's Cloud Storage bucket, and if this data is modified or deleted by the user or another system, the dictionary becomes invalid. If any errors occur, fix the problem indicated by the error message and use the UpdateStoredInfoType API method to create another version of the storedInfoType to continue using it, reusing the same `config` if it was not the source of the error.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Error",
          },
          type = "array",
        },
        state = {
          description = "Stored info type version state. Read-only, updated by the system during dictionary creation.",
          enum = {
            "STORED_INFO_TYPE_STATE_UNSPECIFIED",
            "PENDING",
            "READY",
            "FAILED",
            "INVALID",
          },
          enumDescriptions = {
            "Unused",
            "StoredInfoType version is being created.",
            "StoredInfoType version is ready for use.",
            "StoredInfoType creation failed. All relevant error messages are returned in the `StoredInfoTypeVersion` message.",
            "StoredInfoType is no longer valid because artifacts stored in user-controlled storage were modified. To fix an invalid StoredInfoType, use the `UpdateStoredInfoType` method to create a new version.",
          },
          type = "string",
        },
        stats = {
          ["$ref"] = "GooglePrivacyDlpV2StoredInfoTypeStats",
          description = "Statistics about this storedInfoType version.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2StoredType = {
      description = "A reference to a StoredInfoType to use with scanning.",
      id = "GooglePrivacyDlpV2StoredType",
      properties = {
        createTime = {
          description = "Timestamp indicating when the version of the `StoredInfoType` used for inspection was created. Output-only field, populated by the system.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "Resource name of the requested `StoredInfoType`, for example `organizations/433245324/storedInfoTypes/432452342` or `projects/project-id/storedInfoTypes/432452342`.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2SummaryResult = {
      description = "A collection that informs the user the number of times a particular `TransformationResultCode` and error details occurred.",
      id = "GooglePrivacyDlpV2SummaryResult",
      properties = {
        code = {
          description = "Outcome of the transformation.",
          enum = {
            "TRANSFORMATION_RESULT_CODE_UNSPECIFIED",
            "SUCCESS",
            "ERROR",
          },
          enumDescriptions = {
            "Unused",
            "Transformation completed without an error.",
            "Transformation had an error.",
          },
          type = "string",
        },
        count = {
          description = "Number of transformations counted by this result.",
          format = "int64",
          type = "string",
        },
        details = {
          description = "A place for warnings or errors to show up if a transformation didn't work as expected.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2SurrogateType = {
      description = "Message for detecting output from deidentification transformations such as [`CryptoReplaceFfxFpeConfig`](https://cloud.google.com/dlp/docs/reference/rest/v2/organizations.deidentifyTemplates#cryptoreplaceffxfpeconfig). These types of transformations are those that perform pseudonymization, thereby producing a \"surrogate\" as output. This should be used in conjunction with a field on the transformation such as `surrogate_info_type`. This CustomInfoType does not support the use of `detection_rules`.",
      id = "GooglePrivacyDlpV2SurrogateType",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2Table = {
      description = "Structured content to inspect. Up to 50,000 `Value`s per request allowed. See https://cloud.google.com/dlp/docs/inspecting-structured-text#inspecting_a_table to learn more.",
      id = "GooglePrivacyDlpV2Table",
      properties = {
        headers = {
          description = "Headers of the table.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
        rows = {
          description = "Rows of the table.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2Row",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TableDataProfile = {
      description = "The profile for a scanned table.",
      id = "GooglePrivacyDlpV2TableDataProfile",
      properties = {
        configSnapshot = {
          ["$ref"] = "GooglePrivacyDlpV2DataProfileConfigSnapshot",
          description = "The snapshot of the configurations used to generate the profile.",
        },
        createTime = {
          description = "The time at which the table was created.",
          format = "google-datetime",
          type = "string",
        },
        dataRiskLevel = {
          ["$ref"] = "GooglePrivacyDlpV2DataRiskLevel",
          description = "The data risk level of this table.",
        },
        datasetId = {
          description = "The BigQuery dataset ID.",
          type = "string",
        },
        datasetLocation = {
          description = "The BigQuery location where the dataset's data is stored. See https://cloud.google.com/bigquery/docs/locations for supported locations.",
          type = "string",
        },
        datasetProjectId = {
          description = "The GCP project ID that owns the BigQuery dataset.",
          type = "string",
        },
        encryptionStatus = {
          description = "How the table is encrypted.",
          enum = {
            "ENCRYPTION_STATUS_UNSPECIFIED",
            "ENCRYPTION_GOOGLE_MANAGED",
            "ENCRYPTION_CUSTOMER_MANAGED",
          },
          enumDescriptions = {
            "Unused.",
            "Google manages server-side encryption keys on your behalf.",
            "Customer provides the key.",
          },
          type = "string",
        },
        expirationTime = {
          description = "Optional. The time when this table expires.",
          format = "google-datetime",
          type = "string",
        },
        failedColumnCount = {
          description = "The number of columns skipped in the table because of an error.",
          format = "int64",
          type = "string",
        },
        fullResource = {
          description = "The resource name of the table. https://cloud.google.com/apis/design/resource_names#full_resource_name",
          type = "string",
        },
        lastModifiedTime = {
          description = "The time when this table was last modified",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The name of the profile.",
          type = "string",
        },
        otherInfoTypes = {
          description = "Other infoTypes found in this table's data.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2OtherInfoTypeSummary",
          },
          type = "array",
        },
        predictedInfoTypes = {
          description = "The infoTypes predicted from this table's data.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2InfoTypeSummary",
          },
          type = "array",
        },
        profileLastGenerated = {
          description = "The last time the profile was generated.",
          format = "google-datetime",
          type = "string",
        },
        profileStatus = {
          ["$ref"] = "GooglePrivacyDlpV2ProfileStatus",
          description = "Success or error status from the most recent profile generation attempt. May be empty if the profile is still being generated.",
        },
        projectDataProfile = {
          description = "The resource name to the project data profile for this table.",
          type = "string",
        },
        resourceLabels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels applied to the resource at the time the profile was generated.",
          type = "object",
        },
        resourceVisibility = {
          description = "How broadly a resource has been shared.",
          enum = {
            "RESOURCE_VISIBILITY_UNSPECIFIED",
            "RESOURCE_VISIBILITY_PUBLIC",
            "RESOURCE_VISIBILITY_RESTRICTED",
          },
          enumDescriptions = {
            "Unused.",
            "Visible to any user.",
            "Visible only to specific users.",
          },
          type = "string",
        },
        rowCount = {
          description = "Number of rows in the table when the profile was generated. This will not be populated for BigLake tables.",
          format = "int64",
          type = "string",
        },
        scannedColumnCount = {
          description = "The number of columns profiled in the table.",
          format = "int64",
          type = "string",
        },
        sensitivityScore = {
          ["$ref"] = "GooglePrivacyDlpV2SensitivityScore",
          description = "The sensitivity score of this table.",
        },
        state = {
          description = "State of a profile.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "DONE",
          },
          enumDescriptions = {
            "Unused.",
            "The profile is currently running. Once a profile has finished it will transition to DONE.",
            "The profile is no longer generating. If profile_status.status.code is 0, the profile succeeded, otherwise, it failed.",
          },
          type = "string",
        },
        tableId = {
          description = "The BigQuery table ID.",
          type = "string",
        },
        tableSizeBytes = {
          description = "The size of the table when the profile was generated.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TableLocation = {
      description = "Location of a finding within a table.",
      id = "GooglePrivacyDlpV2TableLocation",
      properties = {
        rowIndex = {
          description = "The zero-based index of the row where the finding is located. Only populated for resources that have a natural ordering, not BigQuery. In BigQuery, to identify the row a finding came from, populate BigQueryOptions.identifying_fields with your primary key column names and when you store the findings the value of those columns will be stored inside of Finding.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TableOptions = {
      description = "Instructions regarding the table content being inspected.",
      id = "GooglePrivacyDlpV2TableOptions",
      properties = {
        identifyingFields = {
          description = "The columns that are the primary keys for table objects included in ContentItem. A copy of this cell's value will stored alongside alongside each finding so that the finding can be traced to the specific row it came from. No more than 3 may be provided.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldId",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TaggedField = {
      description = "A column with a semantic tag attached.",
      id = "GooglePrivacyDlpV2TaggedField",
      properties = {
        customTag = {
          description = "A column can be tagged with a custom tag. In this case, the user must indicate an auxiliary table that contains statistical information on the possible values of this column (below).",
          type = "string",
        },
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Required. Identifies the column.",
        },
        inferred = {
          ["$ref"] = "GoogleProtobufEmpty",
          description = "If no semantic tag is indicated, we infer the statistical model from the distribution of values in the input data",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "A column can be tagged with a InfoType to use the relevant public dataset as a statistical model of population, if available. We currently support US ZIP codes, region codes, ages and genders. To programmatically obtain the list of supported InfoTypes, use ListInfoTypes with the supported_by=RISK_ANALYSIS filter.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ThrowError = {
      description = "Throw an error and fail the request when a transformation error occurs.",
      id = "GooglePrivacyDlpV2ThrowError",
      properties = {},
      type = "object",
    },
    GooglePrivacyDlpV2TimePartConfig = {
      description = "For use with `Date`, `Timestamp`, and `TimeOfDay`, extract or preserve a portion of the value.",
      id = "GooglePrivacyDlpV2TimePartConfig",
      properties = {
        partToExtract = {
          description = "The part of the time to keep.",
          enum = {
            "TIME_PART_UNSPECIFIED",
            "YEAR",
            "MONTH",
            "DAY_OF_MONTH",
            "DAY_OF_WEEK",
            "WEEK_OF_YEAR",
            "HOUR_OF_DAY",
          },
          enumDescriptions = {
            "Unused",
            "[0-9999]",
            "[1-12]",
            "[1-31]",
            "[1-7]",
            "[1-53]",
            "[0-23]",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TimeZone = {
      description = "Time zone of the date time object.",
      id = "GooglePrivacyDlpV2TimeZone",
      properties = {
        offsetMinutes = {
          description = "Set only if the offset can be determined. Positive for time ahead of UTC. E.g. For \"UTC-9\", this value is -540.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TimespanConfig = {
      description = "Configuration of the timespan of the items to include in scanning. Currently only supported when inspecting Cloud Storage and BigQuery.",
      id = "GooglePrivacyDlpV2TimespanConfig",
      properties = {
        enableAutoPopulationOfTimespanConfig = {
          description = "When the job is started by a JobTrigger we will automatically figure out a valid start_time to avoid scanning files that have not been modified since the last time the JobTrigger executed. This will be based on the time of the execution of the last run of the JobTrigger or the timespan end_time used in the last run of the JobTrigger.",
          type = "boolean",
        },
        endTime = {
          description = "Exclude files, tables, or rows newer than this value. If not set, no upper time limit is applied.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Exclude files, tables, or rows older than this value. If not set, no lower time limit is applied.",
          format = "google-datetime",
          type = "string",
        },
        timestampField = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Specification of the field containing the timestamp of scanned items. Used for data sources like Datastore and BigQuery. *For BigQuery* If this value is not specified and the table was modified between the given start and end times, the entire table will be scanned. If this value is specified, then rows are filtered based on the given start and end times. Rows with a `NULL` value in the provided BigQuery column are skipped. Valid data types of the provided BigQuery column are: `INTEGER`, `DATE`, `TIMESTAMP`, and `DATETIME`. If your BigQuery table is [partitioned at ingestion time](https://cloud.google.com/bigquery/docs/partitioned-tables#ingestion_time), you can use any of the following pseudo-columns as your timestamp field. When used with Cloud DLP, these pseudo-column names are case sensitive. - _PARTITIONTIME - _PARTITIONDATE - _PARTITION_LOAD_TIME *For Datastore* If this value is specified, then entities are filtered based on the given start and end times. If an entity does not contain the provided timestamp property or contains empty or invalid values, then it is included. Valid data types of the provided timestamp property are: `TIMESTAMP`. See the [known issue](https://cloud.google.com/dlp/docs/known-issues#bq-timespan) related to this operation.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationConfig = {
      description = "User specified templates and configs for how to deidentify structured, unstructures, and image files. User must provide either a unstructured deidentify template or at least one redact image config.",
      id = "GooglePrivacyDlpV2TransformationConfig",
      properties = {
        deidentifyTemplate = {
          description = "De-identify template. If this template is specified, it will serve as the default de-identify template. This template cannot contain `record_transformations` since it can be used for unstructured content such as free-form text files. If this template is not set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify unstructured content.",
          type = "string",
        },
        imageRedactTemplate = {
          description = "Image redact template. If this template is specified, it will serve as the de-identify template for images. If this template is not set, all findings in the image will be redacted with a black box.",
          type = "string",
        },
        structuredDeidentifyTemplate = {
          description = "Structured de-identify template. If this template is specified, it will serve as the de-identify template for structured content such as delimited files and tables. If this template is not set but the `deidentify_template` is set, then `deidentify_template` will also apply to the structured content. If neither template is set, a default `ReplaceWithInfoTypeConfig` will be used to de-identify structured content.",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationDescription = {
      description = "A flattened description of a `PrimitiveTransformation` or `RecordSuppression`.",
      id = "GooglePrivacyDlpV2TransformationDescription",
      properties = {
        condition = {
          description = "A human-readable string representation of the `RecordCondition` corresponding to this transformation. Set if a `RecordCondition` was used to determine whether or not to apply this transformation. Examples: * (age_field > 85) * (age_field <= 18) * (zip_field exists) * (zip_field == 01234) && (city_field != \"Springville\") * (zip_field == 01234) && (age_field <= 18) && (city_field exists)",
          type = "string",
        },
        description = {
          description = "A description of the transformation. This is empty for a RECORD_SUPPRESSION, or is the output of calling toString() on the `PrimitiveTransformation` protocol buffer message for any other type of transformation.",
          type = "string",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "Set if the transformation was limited to a specific `InfoType`.",
        },
        type = {
          description = "The transformation type.",
          enum = {
            "TRANSFORMATION_TYPE_UNSPECIFIED",
            "RECORD_SUPPRESSION",
            "REPLACE_VALUE",
            "REPLACE_DICTIONARY",
            "REDACT",
            "CHARACTER_MASK",
            "CRYPTO_REPLACE_FFX_FPE",
            "FIXED_SIZE_BUCKETING",
            "BUCKETING",
            "REPLACE_WITH_INFO_TYPE",
            "TIME_PART",
            "CRYPTO_HASH",
            "DATE_SHIFT",
            "CRYPTO_DETERMINISTIC_CONFIG",
            "REDACT_IMAGE",
          },
          enumDescriptions = {
            "Unused",
            "Record suppression",
            "Replace value",
            "Replace value using a dictionary.",
            "Redact",
            "Character mask",
            "FFX-FPE",
            "Fixed size bucketing",
            "Bucketing",
            "Replace with info type",
            "Time part",
            "Crypto hash",
            "Date shift",
            "Deterministic crypto",
            "Redact image",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationDetails = {
      description = "Details about a single transformation. This object contains a description of the transformation, information about whether the transformation was successfully applied, and the precise location where the transformation occurred. These details are stored in a user-specified BigQuery table.",
      id = "GooglePrivacyDlpV2TransformationDetails",
      properties = {
        containerName = {
          description = "The top level name of the container where the transformation is located (this will be the source file name or table name).",
          type = "string",
        },
        resourceName = {
          description = "The name of the job that completed the transformation.",
          type = "string",
        },
        statusDetails = {
          ["$ref"] = "GooglePrivacyDlpV2TransformationResultStatus",
          description = "Status of the transformation, if transformation was not successful, this will specify what caused it to fail, otherwise it will show that the transformation was successful.",
        },
        transformation = {
          description = "Description of transformation. This would only contain more than one element if there were multiple matching transformations and which one to apply was ambiguous. Not set for states that contain no transformation, currently only state that contains no transformation is TransformationResultStateType.METADATA_UNRETRIEVABLE.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2TransformationDescription",
          },
          type = "array",
        },
        transformationLocation = {
          ["$ref"] = "GooglePrivacyDlpV2TransformationLocation",
          description = "The precise location of the transformed content in the original container.",
        },
        transformedBytes = {
          description = "The number of bytes that were transformed. If transformation was unsuccessful or did not take place because there was no content to transform, this will be zero.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationDetailsStorageConfig = {
      description = "Config for storing transformation details.",
      id = "GooglePrivacyDlpV2TransformationDetailsStorageConfig",
      properties = {
        table = {
          ["$ref"] = "GooglePrivacyDlpV2BigQueryTable",
          description = "The BigQuery table in which to store the output. This may be an existing table or in a new table in an existing dataset. If table_id is not set a new one will be generated for you with the following format: dlp_googleapis_transformation_details_yyyy_mm_dd_[dlp_job_id]. Pacific time zone will be used for generating the date details.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationErrorHandling = {
      description = "How to handle transformation errors during de-identification. A transformation error occurs when the requested transformation is incompatible with the data. For example, trying to de-identify an IP address using a `DateShift` transformation would result in a transformation error, since date info cannot be extracted from an IP address. Information about any incompatible transformations, and how they were handled, is returned in the response as part of the `TransformationOverviews`.",
      id = "GooglePrivacyDlpV2TransformationErrorHandling",
      properties = {
        leaveUntransformed = {
          ["$ref"] = "GooglePrivacyDlpV2LeaveUntransformed",
          description = "Ignore errors",
        },
        throwError = {
          ["$ref"] = "GooglePrivacyDlpV2ThrowError",
          description = "Throw an error",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationLocation = {
      description = "Specifies the location of a transformation.",
      id = "GooglePrivacyDlpV2TransformationLocation",
      properties = {
        containerType = {
          description = "Information about the functionality of the container where this finding occurred, if available.",
          enum = {
            "TRANSFORM_UNKNOWN_CONTAINER",
            "TRANSFORM_BODY",
            "TRANSFORM_METADATA",
            "TRANSFORM_TABLE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        findingId = {
          description = "For infotype transformations, link to the corresponding findings ID so that location information does not need to be duplicated. Each findings ID correlates to an entry in the findings output table, this table only gets created when users specify to save findings (add the save findings action to the request).",
          type = "string",
        },
        recordTransformation = {
          ["$ref"] = "GooglePrivacyDlpV2RecordTransformation",
          description = "For record transformations, provide a field and container information.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationOverview = {
      description = "Overview of the modifications that occurred.",
      id = "GooglePrivacyDlpV2TransformationOverview",
      properties = {
        transformationSummaries = {
          description = "Transformations applied to the dataset.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2TransformationSummary",
          },
          type = "array",
        },
        transformedBytes = {
          description = "Total size in bytes that were transformed in some way.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationResultStatus = {
      id = "GooglePrivacyDlpV2TransformationResultStatus",
      properties = {
        details = {
          ["$ref"] = "GoogleRpcStatus",
          description = "Detailed error codes and messages",
        },
        resultStatusType = {
          description = "Transformation result status type, this will be either SUCCESS, or it will be the reason for why the transformation was not completely successful.",
          enum = {
            "STATE_TYPE_UNSPECIFIED",
            "INVALID_TRANSFORM",
            "BIGQUERY_MAX_ROW_SIZE_EXCEEDED",
            "METADATA_UNRETRIEVABLE",
            "SUCCESS",
          },
          enumDescriptions = {
            "",
            "This will be set when a finding could not be transformed (i.e. outside user set bucket range).",
            "This will be set when a BigQuery transformation was successful but could not be stored back in BigQuery because the transformed row exceeds BigQuery's max row size.",
            "This will be set when there is a finding in the custom metadata of a file, but at the write time of the transformed file, this key / value pair is unretrievable.",
            "This will be set when the transformation and storing of it is successful.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransformationSummary = {
      description = "Summary of a single transformation. Only one of 'transformation', 'field_transformation', or 'record_suppress' will be set.",
      id = "GooglePrivacyDlpV2TransformationSummary",
      properties = {
        field = {
          ["$ref"] = "GooglePrivacyDlpV2FieldId",
          description = "Set if the transformation was limited to a specific FieldId.",
        },
        fieldTransformations = {
          description = "The field transformation that was applied. If multiple field transformations are requested for a single field, this list will contain all of them; otherwise, only one is supplied.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2FieldTransformation",
          },
          type = "array",
        },
        infoType = {
          ["$ref"] = "GooglePrivacyDlpV2InfoType",
          description = "Set if the transformation was limited to a specific InfoType.",
        },
        recordSuppress = {
          ["$ref"] = "GooglePrivacyDlpV2RecordSuppression",
          description = "The specific suppression option these stats apply to.",
        },
        results = {
          description = "Collection of all transformations that took place or had an error.",
          items = {
            ["$ref"] = "GooglePrivacyDlpV2SummaryResult",
          },
          type = "array",
        },
        transformation = {
          ["$ref"] = "GooglePrivacyDlpV2PrimitiveTransformation",
          description = "The specific transformation these stats apply to.",
        },
        transformedBytes = {
          description = "Total size in bytes that were transformed in some way.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2TransientCryptoKey = {
      description = "Use this to have a random data crypto key generated. It will be discarded after the request finishes.",
      id = "GooglePrivacyDlpV2TransientCryptoKey",
      properties = {
        name = {
          description = "Required. Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate `TransientCryptoKey` protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Trigger = {
      description = "What event needs to occur for a new job to be started.",
      id = "GooglePrivacyDlpV2Trigger",
      properties = {
        manual = {
          ["$ref"] = "GooglePrivacyDlpV2Manual",
          description = "For use with hybrid jobs. Jobs must be manually created and finished.",
        },
        schedule = {
          ["$ref"] = "GooglePrivacyDlpV2Schedule",
          description = "Create a job on a repeating basis based on the elapse of time.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2UnwrappedCryptoKey = {
      description = "Using raw keys is prone to security risks due to accidentally leaking the key. Choose another type of key if possible.",
      id = "GooglePrivacyDlpV2UnwrappedCryptoKey",
      properties = {
        key = {
          description = "Required. A 128/192/256 bit key.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest = {
      description = "Request message for UpdateDeidentifyTemplate.",
      id = "GooglePrivacyDlpV2UpdateDeidentifyTemplateRequest",
      properties = {
        deidentifyTemplate = {
          ["$ref"] = "GooglePrivacyDlpV2DeidentifyTemplate",
          description = "New DeidentifyTemplate value.",
        },
        updateMask = {
          description = "Mask to control which fields get updated.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2UpdateInspectTemplateRequest = {
      description = "Request message for UpdateInspectTemplate.",
      id = "GooglePrivacyDlpV2UpdateInspectTemplateRequest",
      properties = {
        inspectTemplate = {
          ["$ref"] = "GooglePrivacyDlpV2InspectTemplate",
          description = "New InspectTemplate value.",
        },
        updateMask = {
          description = "Mask to control which fields get updated.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2UpdateJobTriggerRequest = {
      description = "Request message for UpdateJobTrigger.",
      id = "GooglePrivacyDlpV2UpdateJobTriggerRequest",
      properties = {
        jobTrigger = {
          ["$ref"] = "GooglePrivacyDlpV2JobTrigger",
          description = "New JobTrigger value.",
        },
        updateMask = {
          description = "Mask to control which fields get updated.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2UpdateStoredInfoTypeRequest = {
      description = "Request message for UpdateStoredInfoType.",
      id = "GooglePrivacyDlpV2UpdateStoredInfoTypeRequest",
      properties = {
        config = {
          ["$ref"] = "GooglePrivacyDlpV2StoredInfoTypeConfig",
          description = "Updated configuration for the storedInfoType. If not provided, a new version of the storedInfoType will be created with the existing configuration.",
        },
        updateMask = {
          description = "Mask to control which fields get updated.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2Value = {
      description = "Set of primitive values supported by the system. Note that for the purposes of inspection or transformation, the number of bytes considered to comprise a 'Value' is based on its representation as a UTF-8 encoded string. For example, if 'integer_value' is set to 123456789, the number of bytes would be counted as 9, even though an int64 only holds up to 8 bytes of data.",
      id = "GooglePrivacyDlpV2Value",
      properties = {
        booleanValue = {
          description = "boolean",
          type = "boolean",
        },
        dateValue = {
          ["$ref"] = "GoogleTypeDate",
          description = "date",
        },
        dayOfWeekValue = {
          description = "day of week",
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
          type = "string",
        },
        floatValue = {
          description = "float",
          format = "double",
          type = "number",
        },
        integerValue = {
          description = "integer",
          format = "int64",
          type = "string",
        },
        stringValue = {
          description = "string",
          type = "string",
        },
        timeValue = {
          ["$ref"] = "GoogleTypeTimeOfDay",
          description = "time of day",
        },
        timestampValue = {
          description = "timestamp",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2ValueFrequency = {
      description = "A value of a field, including its frequency.",
      id = "GooglePrivacyDlpV2ValueFrequency",
      properties = {
        count = {
          description = "How many times the value is contained in the field.",
          format = "int64",
          type = "string",
        },
        value = {
          ["$ref"] = "GooglePrivacyDlpV2Value",
          description = "A value contained in the field in question.",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2VersionDescription = {
      description = "Details about each available version for an infotype.",
      id = "GooglePrivacyDlpV2VersionDescription",
      properties = {
        description = {
          description = "Description of the version.",
          type = "string",
        },
        version = {
          description = "Name of the version",
          type = "string",
        },
      },
      type = "object",
    },
    GooglePrivacyDlpV2WordList = {
      description = "Message defining a list of words or phrases to search for in the data.",
      id = "GooglePrivacyDlpV2WordList",
      properties = {
        words = {
          description = "Words or phrases defining the dictionary. The dictionary must contain at least one phrase and every phrase must contain at least 2 characters that are letters or digits. [required]",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
    GoogleRpcStatus = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpcStatus",
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
    GoogleTypeDate = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "GoogleTypeDate",
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
    GoogleTypeTimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "GoogleTypeTimeOfDay",
      properties = {
        hours = {
          description = "Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value \"24:00:00\" for scenarios like business closing time.",
          format = "int32",
          type = "integer",
        },
        minutes = {
          description = "Minutes of hour of day. Must be from 0 to 59.",
          format = "int32",
          type = "integer",
        },
        nanos = {
          description = "Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.",
          format = "int32",
          type = "integer",
        },
        seconds = {
          description = "Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Data Loss Prevention (DLP) API",
  version = "v2",
  version_module = true,
}