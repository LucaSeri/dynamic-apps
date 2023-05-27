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
  baseUrl = "https://certificatemanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Certificate Manager",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/certificate-manager",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "certificatemanager:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://certificatemanager.mtls.googleapis.com/",
  name = "certificatemanager",
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
    projects = {
      resources = {
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "certificatemanager.projects.locations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the location.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/projects/{projectsId}/locations",
              httpMethod = "GET",
              id = "certificatemanager.projects.locations.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like `\"displayName=tokyo\"`, and is documented in more detail in [AIP-160](https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "The resource that owns the locations collection, if applicable.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            certificateIssuanceConfigs = {
              methods = {
                create = {
                  description = "Creates a new CertificateIssuanceConfig in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateIssuanceConfigs",
                  httpMethod = "POST",
                  id = "certificatemanager.projects.locations.certificateIssuanceConfigs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    certificateIssuanceConfigId = {
                      description = "Required. A user-provided name of the certificate config.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the certificate issuance config. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificateIssuanceConfigs",
                  request = {
                    ["$ref"] = "CertificateIssuanceConfig",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single CertificateIssuanceConfig.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateIssuanceConfigs/{certificateIssuanceConfigsId}",
                  httpMethod = "DELETE",
                  id = "certificatemanager.projects.locations.certificateIssuanceConfigs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the certificate issuance config to delete. Must be in the format `projects/*/locations/*/certificateIssuanceConfigs/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateIssuanceConfigs/[^/]+$",
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
                get = {
                  description = "Gets details of a single CertificateIssuanceConfig.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateIssuanceConfigs/{certificateIssuanceConfigsId}",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.certificateIssuanceConfigs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the certificate issuance config to describe. Must be in the format `projects/*/locations/*/certificateIssuanceConfigs/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateIssuanceConfigs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "CertificateIssuanceConfig",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists CertificateIssuanceConfigs in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateIssuanceConfigs",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.certificateIssuanceConfigs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter expression to restrict the Certificates Configs returned.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "A list of Certificate Config field names used to specify the order of the returned results. The default sorting order is ascending. To specify descending order for a field, add a suffix \" desc\".",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of certificate configs to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListCertificateIssuanceConfigsResponse`. Indicates that this is a continuation of a prior `ListCertificateIssuanceConfigs` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the certificate should be listed, specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificateIssuanceConfigs",
                  response = {
                    ["$ref"] = "ListCertificateIssuanceConfigsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            certificateMaps = {
              methods = {
                create = {
                  description = "Creates a new CertificateMap in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps",
                  httpMethod = "POST",
                  id = "certificatemanager.projects.locations.certificateMaps.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    certificateMapId = {
                      description = "Required. A user-provided name of the certificate map.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the certificate map. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificateMaps",
                  request = {
                    ["$ref"] = "CertificateMap",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single CertificateMap. A Certificate Map can't be deleted if it contains Certificate Map Entries. Remove all the entries from the map before calling this method.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}",
                  httpMethod = "DELETE",
                  id = "certificatemanager.projects.locations.certificateMaps.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the certificate map to delete. Must be in the format `projects/*/locations/*/certificateMaps/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+$",
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
                get = {
                  description = "Gets details of a single CertificateMap.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.certificateMaps.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the certificate map to describe. Must be in the format `projects/*/locations/*/certificateMaps/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "CertificateMap",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists CertificateMaps in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.certificateMaps.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter expression to restrict the Certificates Maps returned.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "A list of Certificate Map field names used to specify the order of the returned results. The default sorting order is ascending. To specify descending order for a field, add a suffix \" desc\".",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of certificate maps to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListCertificateMapsResponse`. Indicates that this is a continuation of a prior `ListCertificateMaps` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the certificate maps should be listed, specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificateMaps",
                  response = {
                    ["$ref"] = "ListCertificateMapsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a CertificateMap.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}",
                  httpMethod = "PATCH",
                  id = "certificatemanager.projects.locations.certificateMaps.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "CertificateMap",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                certificateMapEntries = {
                  methods = {
                    create = {
                      description = "Creates a new CertificateMapEntry in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}/certificateMapEntries",
                      httpMethod = "POST",
                      id = "certificatemanager.projects.locations.certificateMaps.certificateMapEntries.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        certificateMapEntryId = {
                          description = "Required. A user-provided name of the certificate map entry.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource of the certificate map entry. Must be in the format `projects/*/locations/*/certificateMaps/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/certificateMapEntries",
                      request = {
                        ["$ref"] = "CertificateMapEntry",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a single CertificateMapEntry.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}/certificateMapEntries/{certificateMapEntriesId}",
                      httpMethod = "DELETE",
                      id = "certificatemanager.projects.locations.certificateMaps.certificateMapEntries.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. A name of the certificate map entry to delete. Must be in the format `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+/certificateMapEntries/[^/]+$",
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
                    get = {
                      description = "Gets details of a single CertificateMapEntry.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}/certificateMapEntries/{certificateMapEntriesId}",
                      httpMethod = "GET",
                      id = "certificatemanager.projects.locations.certificateMaps.certificateMapEntries.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. A name of the certificate map entry to describe. Must be in the format `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+/certificateMapEntries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "CertificateMapEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists CertificateMapEntries in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}/certificateMapEntries",
                      httpMethod = "GET",
                      id = "certificatemanager.projects.locations.certificateMaps.certificateMapEntries.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Filter expression to restrict the returned Certificate Map Entries.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "A list of Certificate Map Entry field names used to specify the order of the returned results. The default sorting order is ascending. To specify descending order for a field, add a suffix \" desc\".",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Maximum number of certificate map entries to return. The service may return fewer than this value. If unspecified, at most 50 certificate map entries will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "The value returned by the last `ListCertificateMapEntriesResponse`. Indicates that this is a continuation of a prior `ListCertificateMapEntries` call, and that the system should return the next page of data.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The project, location and certificate map from which the certificate map entries should be listed, specified in the format `projects/*/locations/*/certificateMaps/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/certificateMapEntries",
                      response = {
                        ["$ref"] = "ListCertificateMapEntriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a CertificateMapEntry.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificateMaps/{certificateMapsId}/certificateMapEntries/{certificateMapEntriesId}",
                      httpMethod = "PATCH",
                      id = "certificatemanager.projects.locations.certificateMaps.certificateMapEntries.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/certificateMaps/[^/]+/certificateMapEntries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "CertificateMapEntry",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            certificates = {
              methods = {
                create = {
                  description = "Creates a new Certificate in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates",
                  httpMethod = "POST",
                  id = "certificatemanager.projects.locations.certificates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    certificateId = {
                      description = "Required. A user-provided name of the certificate.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the certificate. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificates",
                  request = {
                    ["$ref"] = "Certificate",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single Certificate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates/{certificatesId}",
                  httpMethod = "DELETE",
                  id = "certificatemanager.projects.locations.certificates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the certificate to delete. Must be in the format `projects/*/locations/*/certificates/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificates/[^/]+$",
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
                get = {
                  description = "Gets details of a single Certificate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates/{certificatesId}",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.certificates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the certificate to describe. Must be in the format `projects/*/locations/*/certificates/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Certificate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists Certificates in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.certificates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter expression to restrict the Certificates returned.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "A list of Certificate field names used to specify the order of the returned results. The default sorting order is ascending. To specify descending order for a field, add a suffix \" desc\".",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of certificates to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListCertificatesResponse`. Indicates that this is a continuation of a prior `ListCertificates` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the certificate should be listed, specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/certificates",
                  response = {
                    ["$ref"] = "ListCertificatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a Certificate.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/certificates/{certificatesId}",
                  httpMethod = "PATCH",
                  id = "certificatemanager.projects.locations.certificates.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/certificates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Certificate",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            dnsAuthorizations = {
              methods = {
                create = {
                  description = "Creates a new DnsAuthorization in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dnsAuthorizations",
                  httpMethod = "POST",
                  id = "certificatemanager.projects.locations.dnsAuthorizations.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dnsAuthorizationId = {
                      description = "Required. A user-provided name of the dns authorization.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource of the dns authorization. Must be in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/dnsAuthorizations",
                  request = {
                    ["$ref"] = "DnsAuthorization",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a single DnsAuthorization.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dnsAuthorizations/{dnsAuthorizationsId}",
                  httpMethod = "DELETE",
                  id = "certificatemanager.projects.locations.dnsAuthorizations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the dns authorization to delete. Must be in the format `projects/*/locations/*/dnsAuthorizations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dnsAuthorizations/[^/]+$",
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
                get = {
                  description = "Gets details of a single DnsAuthorization.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dnsAuthorizations/{dnsAuthorizationsId}",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.dnsAuthorizations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. A name of the dns authorization to describe. Must be in the format `projects/*/locations/*/dnsAuthorizations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dnsAuthorizations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "DnsAuthorization",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists DnsAuthorizations in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dnsAuthorizations",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.dnsAuthorizations.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filter expression to restrict the Dns Authorizations returned.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "A list of Dns Authorization field names used to specify the order of the returned results. The default sorting order is ascending. To specify descending order for a field, add a suffix \" desc\".",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum number of dns authorizations to return per call.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The value returned by the last `ListDnsAuthorizationsResponse`. Indicates that this is a continuation of a prior `ListDnsAuthorizations` call, and that the system should return the next page of data.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The project and location from which the dns authorizations should be listed, specified in the format `projects/*/locations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/dnsAuthorizations",
                  response = {
                    ["$ref"] = "ListDnsAuthorizationsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a DnsAuthorization.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dnsAuthorizations/{dnsAuthorizationsId}",
                  httpMethod = "PATCH",
                  id = "certificatemanager.projects.locations.dnsAuthorizations.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dnsAuthorizations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The update mask applies to the resource. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "DnsAuthorization",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "certificatemanager.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  request = {
                    ["$ref"] = "CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "certificatemanager.projects.locations.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
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
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
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
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "certificatemanager.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
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
                  },
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
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
    },
  },
  revision = "20230104",
  rootUrl = "https://certificatemanager.googleapis.com/",
  schemas = {
    AuthorizationAttemptInfo = {
      description = "State of the latest attempt to authorize a domain for certificate issuance.",
      id = "AuthorizationAttemptInfo",
      properties = {
        details = {
          description = "Output only. Human readable explanation for reaching the state. Provided to help address the configuration issues. Not guaranteed to be stable. For programmatic access use FailureReason enum.",
          readOnly = true,
          type = "string",
        },
        domain = {
          description = "Domain name of the authorization attempt.",
          type = "string",
        },
        failureReason = {
          description = "Output only. Reason for failure of the authorization attempt for the domain.",
          enum = {
            "FAILURE_REASON_UNSPECIFIED",
            "CONFIG",
            "CAA",
            "RATE_LIMITED",
          },
          enumDescriptions = {
            "",
            "There was a problem with the user's DNS or load balancer configuration for this domain.",
            "Certificate issuance forbidden by an explicit CAA record for the domain or a failure to check CAA records for the domain.",
            "Reached a CA or internal rate-limit for the domain, e.g. for certificates per top-level private domain.",
          },
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. State of the domain for managed certificate issuance.",
          enum = {
            "STATE_UNSPECIFIED",
            "AUTHORIZING",
            "AUTHORIZED",
            "FAILED",
          },
          enumDescriptions = {
            "",
            "Certificate provisioning for this domain is under way. GCP will attempt to authorize the domain.",
            "A managed certificate can be provisioned, no issues for this domain.",
            "Attempt to authorize the domain failed. This prevents the Managed Certificate from being issued. See `failure_reason` and `details` fields for more information.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    Certificate = {
      description = "Defines TLS certificate.",
      id = "Certificate",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of a Certificate.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "One or more paragraphs of text description of a certificate.",
          type = "string",
        },
        expireTime = {
          description = "Output only. The expiry timestamp of a Certificate.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Set of labels associated with a Certificate.",
          type = "object",
        },
        managed = {
          ["$ref"] = "ManagedCertificate",
          description = "If set, contains configuration and state of a managed certificate.",
        },
        name = {
          description = "A user-defined name of the certificate. Certificate names must be unique globally and match pattern `projects/*/locations/*/certificates/*`.",
          type = "string",
        },
        pemCertificate = {
          description = "Output only. The PEM-encoded certificate chain.",
          readOnly = true,
          type = "string",
        },
        sanDnsnames = {
          description = "Output only. The list of Subject Alternative Names of dnsName type defined in the certificate (see RFC 5280 4.2.1.6). Managed certificates that haven't been provisioned yet have this field populated with a value of the managed.domains field.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        scope = {
          description = "Immutable. The scope of the certificate.",
          enum = {
            "DEFAULT",
            "EDGE_CACHE",
          },
          enumDescriptions = {
            "Certificates with default scope are served from core Google data centers. If unsure, choose this option.",
            "Certificates with scope EDGE_CACHE are special-purposed certificates, served from non-core Google data centers.",
          },
          type = "string",
        },
        selfManaged = {
          ["$ref"] = "SelfManagedCertificate",
          description = "If set, defines data of a self-managed certificate.",
        },
        updateTime = {
          description = "Output only. The last update timestamp of a Certificate.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CertificateAuthorityConfig = {
      description = "The CA that issues the workload certificate. It includes CA address, type, authentication to CA service, etc.",
      id = "CertificateAuthorityConfig",
      properties = {
        certificateAuthorityServiceConfig = {
          ["$ref"] = "CertificateAuthorityServiceConfig",
          description = "Defines a CertificateAuthorityServiceConfig.",
        },
      },
      type = "object",
    },
    CertificateAuthorityServiceConfig = {
      description = "Contains information required to contact CA service.",
      id = "CertificateAuthorityServiceConfig",
      properties = {
        caPool = {
          description = "Required. A CA pool resource used to issue a certificate. The CA pool string has a relative resource path following the form \"projects/{project}/locations/{location}/caPools/{ca_pool}\".",
          type = "string",
        },
      },
      type = "object",
    },
    CertificateIssuanceConfig = {
      description = "CertificateIssuanceConfig specifies how to issue and manage a certificate.",
      id = "CertificateIssuanceConfig",
      properties = {
        certificateAuthorityConfig = {
          ["$ref"] = "CertificateAuthorityConfig",
          description = "Required. The CA that issues the workload certificate. It includes the CA address, type, authentication to CA service, etc.",
        },
        createTime = {
          description = "Output only. The creation timestamp of a CertificateIssuanceConfig.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "One or more paragraphs of text description of a CertificateIssuanceConfig.",
          type = "string",
        },
        keyAlgorithm = {
          description = "Required. The key algorithm to use when generating the private key.",
          enum = {
            "KEY_ALGORITHM_UNSPECIFIED",
            "RSA_2048",
            "ECDSA_P256",
          },
          enumDescriptions = {
            "Unspecified key algorithm.",
            "Specifies RSA with a 2048-bit modulus.",
            "Specifies ECDSA with curve P256.",
          },
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Set of labels associated with a CertificateIssuanceConfig.",
          type = "object",
        },
        lifetime = {
          description = "Required. Workload certificate lifetime requested.",
          format = "google-duration",
          type = "string",
        },
        name = {
          description = "A user-defined name of the certificate issuance config. CertificateIssuanceConfig names must be unique globally and match pattern `projects/*/locations/*/certificateIssuanceConfigs/*`.",
          type = "string",
        },
        rotationWindowPercentage = {
          description = "Required. Specifies the percentage of elapsed time of the certificate lifetime to wait before renewing the certificate. Must be a number between 1-99, inclusive.",
          format = "int32",
          type = "integer",
        },
        updateTime = {
          description = "Output only. The last update timestamp of a CertificateIssuanceConfig.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CertificateMap = {
      description = "Defines a collection of certificate configurations.",
      id = "CertificateMap",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of a Certificate Map.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "One or more paragraphs of text description of a certificate map.",
          type = "string",
        },
        gclbTargets = {
          description = "Output only. A list of GCLB targets that use this Certificate Map. A Target Proxy is only present on this list if it's attached to a Forwarding Rule.",
          items = {
            ["$ref"] = "GclbTarget",
          },
          readOnly = true,
          type = "array",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Set of labels associated with a Certificate Map.",
          type = "object",
        },
        name = {
          description = "A user-defined name of the Certificate Map. Certificate Map names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*`.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The update timestamp of a Certificate Map.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CertificateMapEntry = {
      description = "Defines a certificate map entry.",
      id = "CertificateMapEntry",
      properties = {
        certificates = {
          description = "A set of Certificates defines for the given `hostname`. There can be defined up to fifteen certificates in each Certificate Map Entry. Each certificate must match pattern `projects/*/locations/*/certificates/*`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. The creation timestamp of a Certificate Map Entry.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "One or more paragraphs of text description of a certificate map entry.",
          type = "string",
        },
        hostname = {
          description = "A Hostname (FQDN, e.g. `example.com`) or a wildcard hostname expression (`*.example.com`) for a set of hostnames with common suffix. Used as Server Name Indication (SNI) for selecting a proper certificate.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Set of labels associated with a Certificate Map Entry.",
          type = "object",
        },
        matcher = {
          description = "A predefined matcher for particular cases, other than SNI selection.",
          enum = {
            "MATCHER_UNSPECIFIED",
            "PRIMARY",
          },
          enumDescriptions = {
            "A matcher has't been recognized.",
            "A primary certificate that is served when SNI wasn't specified in the request or SNI couldn't be found in the map.",
          },
          type = "string",
        },
        name = {
          description = "A user-defined name of the Certificate Map Entry. Certificate Map Entry names must be unique globally and match pattern `projects/*/locations/*/certificateMaps/*/certificateMapEntries/*`.",
          type = "string",
        },
        state = {
          description = "Output only. A serving state of this Certificate Map Entry.",
          enum = {
            "SERVING_STATE_UNSPECIFIED",
            "ACTIVE",
            "PENDING",
          },
          enumDescriptions = {
            "The status is undefined.",
            "The configuration is serving.",
            "Update is in progress. Some frontends may serve this configuration.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The update timestamp of a Certificate Map Entry.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DnsAuthorization = {
      description = "A DnsAuthorization resource describes a way to perform domain authorization for certificate issuance.",
      id = "DnsAuthorization",
      properties = {
        createTime = {
          description = "Output only. The creation timestamp of a DnsAuthorization.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "One or more paragraphs of text description of a DnsAuthorization.",
          type = "string",
        },
        dnsResourceRecord = {
          ["$ref"] = "DnsResourceRecord",
          description = "Output only. DNS Resource Record that needs to be added to DNS configuration.",
          readOnly = true,
        },
        domain = {
          description = "Required. Immutable. A domain that is being authorized. A DnsAuthorization resource covers a single domain and its wildcard, e.g. authorization for `example.com` can be used to issue certificates for `example.com` and `*.example.com`.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Set of labels associated with a DnsAuthorization.",
          type = "object",
        },
        name = {
          description = "A user-defined name of the dns authorization. DnsAuthorization names must be unique globally and match pattern `projects/*/locations/*/dnsAuthorizations/*`.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update timestamp of a DnsAuthorization.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DnsResourceRecord = {
      description = "The structure describing the DNS Resource Record that needs to be added to DNS configuration for the authorization to be usable by certificate.",
      id = "DnsResourceRecord",
      properties = {
        data = {
          description = "Output only. Data of the DNS Resource Record.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Fully qualified name of the DNS Resource Record. e.g. `_acme-challenge.example.com`",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. Type of the DNS Resource Record. Currently always set to \"CNAME\".",
          readOnly = true,
          type = "string",
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
    GclbTarget = {
      description = "Describes a Target Proxy that uses this Certificate Map.",
      id = "GclbTarget",
      properties = {
        ipConfigs = {
          description = "Output only. IP configurations for this Target Proxy where the Certificate Map is serving.",
          items = {
            ["$ref"] = "IpConfig",
          },
          readOnly = true,
          type = "array",
        },
        targetHttpsProxy = {
          description = "Output only. This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetHttpsProxies/*`.",
          readOnly = true,
          type = "string",
        },
        targetSslProxy = {
          description = "Output only. This field returns the resource name in the following format: `//compute.googleapis.com/projects/*/global/targetSslProxies/*`.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    IpConfig = {
      description = "Defines IP configuration where this Certificate Map is serving.",
      id = "IpConfig",
      properties = {
        ipAddress = {
          description = "Output only. An external IP address.",
          readOnly = true,
          type = "string",
        },
        ports = {
          description = "Output only. Ports.",
          items = {
            format = "uint32",
            type = "integer",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificateIssuanceConfigsResponse = {
      description = "Response for the `ListCertificateIssuanceConfigs` method.",
      id = "ListCertificateIssuanceConfigsResponse",
      properties = {
        certificateIssuanceConfigs = {
          description = "A list of certificate configs for the parent resource.",
          items = {
            ["$ref"] = "CertificateIssuanceConfig",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificateMapEntriesResponse = {
      description = "Response for the `ListCertificateMapEntries` method.",
      id = "ListCertificateMapEntriesResponse",
      properties = {
        certificateMapEntries = {
          description = "A list of certificate map entries for the parent resource.",
          items = {
            ["$ref"] = "CertificateMapEntry",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificateMapsResponse = {
      description = "Response for the `ListCertificateMaps` method.",
      id = "ListCertificateMapsResponse",
      properties = {
        certificateMaps = {
          description = "A list of certificate maps for the parent resource.",
          items = {
            ["$ref"] = "CertificateMap",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListCertificatesResponse = {
      description = "Response for the `ListCertificates` method.",
      id = "ListCertificatesResponse",
      properties = {
        certificates = {
          description = "A list of certificates for the parent resource.",
          items = {
            ["$ref"] = "Certificate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        unreachable = {
          description = "A list of locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDnsAuthorizationsResponse = {
      description = "Response for the `ListDnsAuthorizations` method.",
      id = "ListDnsAuthorizationsResponse",
      properties = {
        dnsAuthorizations = {
          description = "A list of dns authorizations for the parent resource.",
          items = {
            ["$ref"] = "DnsAuthorization",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there might be more results than those appearing in this response, then `next_page_token` is included. To get the next set of results, call this method again using the value of `next_page_token` as `page_token`.",
          type = "string",
        },
        unreachable = {
          description = "Locations that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListLocationsResponse = {
      description = "The response message for Locations.ListLocations.",
      id = "ListLocationsResponse",
      properties = {
        locations = {
          description = "A list of locations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Location",
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
    ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "A resource that represents Google Cloud Platform location.",
      id = "Location",
      properties = {
        displayName = {
          description = "The friendly name for this location, typically a nearby city name. For example, \"Tokyo\".",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"}",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: `\"us-east1\"`.",
          type = "string",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata. For example the available capacity at the given location.",
          type = "object",
        },
        name = {
          description = "Resource name for the location, which may vary between implementations. For example: `\"projects/example-project/locations/us-east1\"`",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedCertificate = {
      description = "Configuration and state of a Managed Certificate. Certificate Manager provisions and renews Managed Certificates automatically, for as long as it's authorized to do so.",
      id = "ManagedCertificate",
      properties = {
        authorizationAttemptInfo = {
          description = "Output only. Detailed state of the latest authorization attempt for each domain specified for managed certificate resource.",
          items = {
            ["$ref"] = "AuthorizationAttemptInfo",
          },
          readOnly = true,
          type = "array",
        },
        dnsAuthorizations = {
          description = "Immutable. Authorizations that will be used for performing domain authorization.",
          items = {
            type = "string",
          },
          type = "array",
        },
        domains = {
          description = "Immutable. The domains for which a managed SSL certificate will be generated. Wildcard domains are only supported with DNS challenge resolution.",
          items = {
            type = "string",
          },
          type = "array",
        },
        issuanceConfig = {
          description = "Immutable. The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format `projects/*/locations/*/certificateIssuanceConfigs/*`. If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.",
          type = "string",
        },
        provisioningIssue = {
          ["$ref"] = "ProvisioningIssue",
          description = "Output only. Information about issues with provisioning a Managed Certificate.",
          readOnly = true,
        },
        state = {
          description = "Output only. State of the managed certificate resource.",
          enum = {
            "STATE_UNSPECIFIED",
            "PROVISIONING",
            "FAILED",
            "ACTIVE",
          },
          enumDescriptions = {
            "",
            "Certificate Manager attempts to provision or renew the certificate. If the process takes longer than expected, consult the `provisioning_issue` field.",
            "Multiple certificate provisioning attempts failed and Certificate Manager gave up. To try again, delete and create a new managed Certificate resource. For details see the `provisioning_issue` field.",
            "The certificate management is working, and a certificate has been provisioned.",
          },
          readOnly = true,
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
    OperationMetadata = {
      description = "Represents the metadata of the long-running operation. Output only.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "API version used to start the operation.",
          type = "string",
        },
        createTime = {
          description = "The time the operation was created.",
          format = "google-datetime",
          type = "string",
        },
        endTime = {
          description = "The time the operation finished running.",
          format = "google-datetime",
          type = "string",
        },
        requestedCancellation = {
          description = "Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          type = "boolean",
        },
        statusMessage = {
          description = "Human-readable status of the operation, if any.",
          type = "string",
        },
        target = {
          description = "Server-defined resource path for the target of the operation.",
          type = "string",
        },
        verb = {
          description = "Name of the verb executed by the operation.",
          type = "string",
        },
      },
      type = "object",
    },
    ProvisioningIssue = {
      description = "Information about issues with provisioning a Managed Certificate.",
      id = "ProvisioningIssue",
      properties = {
        details = {
          description = "Output only. Human readable explanation about the issue. Provided to help address the configuration issues. Not guaranteed to be stable. For programmatic access use Reason enum.",
          readOnly = true,
          type = "string",
        },
        reason = {
          description = "Output only. Reason for provisioning failures.",
          enum = {
            "REASON_UNSPECIFIED",
            "AUTHORIZATION_ISSUE",
            "RATE_LIMITED",
          },
          enumDescriptions = {
            "",
            "Certificate provisioning failed due to an issue with one or more of the domains on the certificate. For details of which domains failed, consult the `authorization_attempt_info` field.",
            "Exceeded Certificate Authority quotas or internal rate limits of the system. Provisioning may take longer to complete.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    SelfManagedCertificate = {
      description = "Certificate data for a SelfManaged Certificate. SelfManaged Certificates are uploaded by the user. Updating such certificates before they expire remains the user's responsibility.",
      id = "SelfManagedCertificate",
      properties = {
        pemCertificate = {
          description = "Input only. The PEM-encoded certificate chain. Leaf certificate comes first, followed by intermediate ones if any.",
          type = "string",
        },
        pemPrivateKey = {
          description = "Input only. The PEM-encoded private key of the leaf certificate.",
          type = "string",
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
  },
  servicePath = "",
  title = "Certificate Manager API",
  version = "v1",
  version_module = true,
}
