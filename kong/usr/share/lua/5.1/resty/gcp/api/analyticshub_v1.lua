return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/bigquery"] = {
          description = "View and manage your data in Google BigQuery and see the email address for your Google Account",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://analyticshub.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Analytics Hub",
  description = "Exchange data and analytics assets securely and efficiently.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/bigquery/docs/analytics-hub-introduction",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "analyticshub:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://analyticshub.mtls.googleapis.com/",
  name = "analyticshub",
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
    organizations = {
      resources = {
        locations = {
          resources = {
            dataExchanges = {
              methods = {
                list = {
                  description = "Lists all data exchanges from projects in a given organization and location.",
                  flatPath = "v1/organizations/{organizationsId}/locations/{locationsId}/dataExchanges",
                  httpMethod = "GET",
                  id = "analyticshub.organizations.locations.dataExchanges.list",
                  parameterOrder = {
                    "organization",
                  },
                  parameters = {
                    organization = {
                      description = "Required. The organization resource path of the projects containing DataExchanges. e.g. `organizations/myorg/locations/US`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token, returned by a previous call, to request the next page of results.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+organization}/dataExchanges",
                  response = {
                    ["$ref"] = "ListOrgDataExchangesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
      },
    },
    projects = {
      resources = {
        locations = {
          resources = {
            dataExchanges = {
              methods = {
                create = {
                  description = "Creates a new data exchange.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges",
                  httpMethod = "POST",
                  id = "analyticshub.projects.locations.dataExchanges.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dataExchangeId = {
                      description = "Required. The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource path of the data exchange. e.g. `projects/myproject/locations/US`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/dataExchanges",
                  request = {
                    ["$ref"] = "DataExchange",
                  },
                  response = {
                    ["$ref"] = "DataExchange",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an existing data exchange.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}",
                  httpMethod = "DELETE",
                  id = "analyticshub.projects.locations.dataExchanges.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The full name of the data exchange resource that you want to delete. For example, `projects/myproject/locations/US/dataExchanges/123`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a data exchange.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}",
                  httpMethod = "GET",
                  id = "analyticshub.projects.locations.dataExchanges.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "DataExchange",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "analyticshub.projects.locations.dataExchanges.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:getIamPolicy",
                  request = {
                    ["$ref"] = "GetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all data exchanges in a given project and location.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges",
                  httpMethod = "GET",
                  id = "analyticshub.projects.locations.dataExchanges.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token, returned by a previous call, to request the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource path of the data exchanges. e.g. `projects/myproject/locations/US`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/dataExchanges",
                  response = {
                    ["$ref"] = "ListDataExchangesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing data exchange.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}",
                  httpMethod = "PATCH",
                  id = "analyticshub.projects.locations.dataExchanges.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Output only. The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. Field mask specifies the fields to update in the data exchange resource. The fields specified in the `updateMask` are relative to the resource and are not a full request.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "DataExchange",
                  },
                  response = {
                    ["$ref"] = "DataExchange",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM policy.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "analyticshub.projects.locations.dataExchanges.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:setIamPolicy",
                  request = {
                    ["$ref"] = "SetIamPolicyRequest",
                  },
                  response = {
                    ["$ref"] = "Policy",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Returns the permissions that a caller has.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "analyticshub.projects.locations.dataExchanges.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+resource}:testIamPermissions",
                  request = {
                    ["$ref"] = "TestIamPermissionsRequest",
                  },
                  response = {
                    ["$ref"] = "TestIamPermissionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/bigquery",
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                listings = {
                  methods = {
                    create = {
                      description = "Creates a new listing.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings",
                      httpMethod = "POST",
                      id = "analyticshub.projects.locations.dataExchanges.listings.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        listingId = {
                          description = "Required. The ID of the listing to create. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource path of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/listings",
                      request = {
                        ["$ref"] = "Listing",
                      },
                      response = {
                        ["$ref"] = "Listing",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a listing.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings/{listingsId}",
                      httpMethod = "DELETE",
                      id = "analyticshub.projects.locations.dataExchanges.listings.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name of the listing to delete. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+/listings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the details of a listing.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings/{listingsId}",
                      httpMethod = "GET",
                      id = "analyticshub.projects.locations.dataExchanges.listings.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+/listings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Listing",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the IAM policy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings/{listingsId}:getIamPolicy",
                      httpMethod = "POST",
                      id = "analyticshub.projects.locations.dataExchanges.listings.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+/listings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      request = {
                        ["$ref"] = "GetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all listings in a given project and location.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings",
                      httpMethod = "GET",
                      id = "analyticshub.projects.locations.dataExchanges.listings.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "The maximum number of results to return in a single response page. Leverage the page tokens to iterate through the entire collection.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Page token, returned by a previous call, to request the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The parent resource path of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/listings",
                      response = {
                        ["$ref"] = "ListListingsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates an existing listing.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings/{listingsId}",
                      httpMethod = "PATCH",
                      id = "analyticshub.projects.locations.dataExchanges.listings.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+/listings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Field mask specifies the fields to update in the listing resource. The fields specified in the `updateMask` are relative to the resource and are not a full request.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Listing",
                      },
                      response = {
                        ["$ref"] = "Listing",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the IAM policy.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings/{listingsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "analyticshub.projects.locations.dataExchanges.listings.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+/listings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:setIamPolicy",
                      request = {
                        ["$ref"] = "SetIamPolicyRequest",
                      },
                      response = {
                        ["$ref"] = "Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    subscribe = {
                      description = "Subscribes to a listing. Currently, with Analytics Hub, you can create listings that reference only BigQuery datasets. Upon subscription to a listing for a BigQuery dataset, Analytics Hub creates a linked dataset in the subscriber's project.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings/{listingsId}:subscribe",
                      httpMethod = "POST",
                      id = "analyticshub.projects.locations.dataExchanges.listings.subscribe",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name of the listing that you want to subscribe to. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+/listings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:subscribe",
                      request = {
                        ["$ref"] = "SubscribeListingRequest",
                      },
                      response = {
                        ["$ref"] = "SubscribeListingResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Returns the permissions that a caller has.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/dataExchanges/{dataExchangesId}/listings/{listingsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "analyticshub.projects.locations.dataExchanges.listings.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/dataExchanges/[^/]+/listings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:testIamPermissions",
                      request = {
                        ["$ref"] = "TestIamPermissionsRequest",
                      },
                      response = {
                        ["$ref"] = "TestIamPermissionsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/bigquery",
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
    },
  },
  revision = "20230108",
  rootUrl = "https://analyticshub.googleapis.com/",
  schemas = {
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
    BigQueryDatasetSource = {
      description = "A reference to a shared dataset. It is an existing BigQuery dataset with a collection of objects such as tables and views that you want to share with subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a linked dataset in the subscriber's project. A Linked dataset is an opaque, read-only BigQuery dataset that serves as a _symbolic link_ to a shared dataset.",
      id = "BigQueryDatasetSource",
      properties = {
        dataset = {
          description = "Resource name of the dataset source for this listing. e.g. `projects/myproject/datasets/123`",
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
    DataExchange = {
      description = "A data exchange is a container that lets you share data. Along with the descriptive information about the data exchange, it contains listings that reference shared datasets.",
      id = "DataExchange",
      properties = {
        description = {
          description = "Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.",
          type = "string",
        },
        displayName = {
          description = "Required. Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.",
          type = "string",
        },
        documentation = {
          description = "Optional. Documentation describing the data exchange.",
          type = "string",
        },
        icon = {
          description = "Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.",
          format = "byte",
          type = "string",
        },
        listingCount = {
          description = "Output only. Number of listings contained in the data exchange.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        name = {
          description = "Output only. The resource name of the data exchange. e.g. `projects/myproject/locations/US/dataExchanges/123`.",
          readOnly = true,
          type = "string",
        },
        primaryContact = {
          description = "Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    DataProvider = {
      description = "Contains details of the data provider.",
      id = "DataProvider",
      properties = {
        name = {
          description = "Optional. Name of the data provider.",
          type = "string",
        },
        primaryContact = {
          description = "Optional. Email or URL of the data provider. Max Length: 1000 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    DestinationDataset = {
      description = "Defines the destination bigquery dataset.",
      id = "DestinationDataset",
      properties = {
        datasetReference = {
          ["$ref"] = "DestinationDatasetReference",
          description = "Required. A reference that identifies the destination dataset.",
        },
        description = {
          description = "Optional. A user-friendly description of the dataset.",
          type = "string",
        },
        friendlyName = {
          description = "Optional. A descriptive name for the dataset.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels associated with this dataset. You can use these to organize and group your datasets. You can set this property when inserting or updating a dataset. See https://cloud.google.com/resource-manager/docs/creating-managing-labels for more information.",
          type = "object",
        },
        location = {
          description = "Required. The geographic location where the dataset should reside. See https://cloud.google.com/bigquery/docs/locations for supported locations.",
          type = "string",
        },
      },
      type = "object",
    },
    DestinationDatasetReference = {
      description = "Contains the reference that identifies a destination bigquery dataset.",
      id = "DestinationDatasetReference",
      properties = {
        datasetId = {
          description = "Required. A unique ID for this dataset, without the project name. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 1,024 characters.",
          type = "string",
        },
        projectId = {
          description = "Required. The ID of the project containing this dataset.",
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
    GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListDataExchangesResponse = {
      description = "Message for response to the list of data exchanges.",
      id = "ListDataExchangesResponse",
      properties = {
        dataExchanges = {
          description = "The list of data exchanges.",
          items = {
            ["$ref"] = "DataExchange",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListListingsResponse = {
      description = "Message for response to the list of Listings.",
      id = "ListListingsResponse",
      properties = {
        listings = {
          description = "The list of Listing.",
          items = {
            ["$ref"] = "Listing",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListOrgDataExchangesResponse = {
      description = "Message for response to listing data exchanges in an organization and location.",
      id = "ListOrgDataExchangesResponse",
      properties = {
        dataExchanges = {
          description = "The list of data exchanges.",
          items = {
            ["$ref"] = "DataExchange",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to request the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    Listing = {
      description = "A listing is what gets published into a data exchange that a subscriber can subscribe to. It contains a reference to the data source along with descriptive information that will help subscribers find and subscribe the data.",
      id = "Listing",
      properties = {
        bigqueryDataset = {
          ["$ref"] = "BigQueryDatasetSource",
          description = "Required. Shared dataset i.e. BigQuery dataset source.",
        },
        categories = {
          description = "Optional. Categories of the listing. Up to two categories are allowed.",
          items = {
            enum = {
              "CATEGORY_UNSPECIFIED",
              "CATEGORY_OTHERS",
              "CATEGORY_ADVERTISING_AND_MARKETING",
              "CATEGORY_COMMERCE",
              "CATEGORY_CLIMATE_AND_ENVIRONMENT",
              "CATEGORY_DEMOGRAPHICS",
              "CATEGORY_ECONOMICS",
              "CATEGORY_EDUCATION",
              "CATEGORY_ENERGY",
              "CATEGORY_FINANCIAL",
              "CATEGORY_GAMING",
              "CATEGORY_GEOSPATIAL",
              "CATEGORY_HEALTHCARE_AND_LIFE_SCIENCE",
              "CATEGORY_MEDIA",
              "CATEGORY_PUBLIC_SECTOR",
              "CATEGORY_RETAIL",
              "CATEGORY_SPORTS",
              "CATEGORY_SCIENCE_AND_RESEARCH",
              "CATEGORY_TRANSPORTATION_AND_LOGISTICS",
              "CATEGORY_TRAVEL_AND_TOURISM",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
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
        dataProvider = {
          ["$ref"] = "DataProvider",
          description = "Optional. Details of the data provider who owns the source data.",
        },
        description = {
          description = "Optional. Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.",
          type = "string",
        },
        displayName = {
          description = "Required. Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces. Default value is an empty string. Max length: 63 bytes.",
          type = "string",
        },
        documentation = {
          description = "Optional. Documentation describing the listing.",
          type = "string",
        },
        icon = {
          description = "Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the contents of the field are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.",
          format = "byte",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the listing. e.g. `projects/myproject/locations/US/dataExchanges/123/listings/456`",
          readOnly = true,
          type = "string",
        },
        primaryContact = {
          description = "Optional. Email or URL of the primary point of contact of the listing. Max Length: 1000 bytes.",
          type = "string",
        },
        publisher = {
          ["$ref"] = "Publisher",
          description = "Optional. Details of the publisher who owns the listing and who can share the source data.",
        },
        requestAccess = {
          description = "Optional. Email or URL of the request access of the listing. Subscribers can use this reference to request access. Max Length: 1000 bytes.",
          type = "string",
        },
        state = {
          description = "Output only. Current state of the listing.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
          },
          enumDescriptions = {
            "Default value. This value is unused.",
            "Subscribable state. Users with dataexchange.listings.subscribe permission can subscribe to this listing.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "OperationMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
        },
        cancelRequested = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have been cancelled successfully have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
        },
        createTime = {
          description = "Output only. The time the operation was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the operation finished running.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        statusDetail = {
          description = "Output only. Human-readable status of the operation, if any.",
          readOnly = true,
          type = "string",
        },
        target = {
          description = "Output only. Server-defined resource path for the target of the operation.",
          readOnly = true,
          type = "string",
        },
        verb = {
          description = "Output only. Name of the verb executed by the operation.",
          readOnly = true,
          type = "string",
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
    Publisher = {
      description = "Contains details of the listing publisher.",
      id = "Publisher",
      properties = {
        name = {
          description = "Optional. Name of the listing publisher.",
          type = "string",
        },
        primaryContact = {
          description = "Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.",
          type = "string",
        },
      },
      type = "object",
    },
    SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "Policy",
          description = "REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited to a few 10s of KB. An empty policy is a valid policy but certain Google Cloud services (such as Projects) might reject them.",
        },
        updateMask = {
          description = "OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mask will be modified. If no mask is provided, the following default mask is used: `paths: \"bindings, etag\"`",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    SubscribeListingRequest = {
      description = "Message for subscribing to a listing.",
      id = "SubscribeListingRequest",
      properties = {
        destinationDataset = {
          ["$ref"] = "DestinationDataset",
          description = "BigQuery destination dataset to create for the subscriber.",
        },
      },
      type = "object",
    },
    SubscribeListingResponse = {
      description = "Message for response when you subscribe to a listing.",
      id = "SubscribeListingResponse",
      properties = {},
      type = "object",
    },
    TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "TestIamPermissionsRequest",
      properties = {
        permissions = {
          description = "The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `storage.*`) are not allowed. For more information see [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "TestIamPermissionsResponse",
      properties = {
        permissions = {
          description = "A subset of `TestPermissionsRequest.permissions` that the caller is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Analytics Hub API",
  version = "v1",
  version_module = true,
}
