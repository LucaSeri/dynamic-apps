return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/monitoring"] = {
          description = "View and write monitoring data for all of your Google and third-party Cloud and API projects",
        },
        ["https://www.googleapis.com/auth/monitoring.read"] = {
          description = "View monitoring data for all of your Google Cloud and third-party projects",
        },
        ["https://www.googleapis.com/auth/monitoring.write"] = {
          description = "Publish metric data to your Google Cloud projects",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://monitoring.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Monitoring",
  description = "Manages your Cloud Monitoring data and configurations.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/monitoring/api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "monitoring:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://monitoring.mtls.googleapis.com/",
  name = "monitoring",
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
      resources = {
        global = {
          resources = {
            metricsScopes = {
              methods = {
                get = {
                  description = "Returns a specific Metrics Scope, including the list of projects monitored by the specified Metrics Scope.",
                  flatPath = "v1/locations/global/metricsScopes/{metricsScopesId}",
                  httpMethod = "GET",
                  id = "monitoring.locations.global.metricsScopes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of the Metrics Scope. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}",
                      location = "path",
                      pattern = "^locations/global/metricsScopes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "MetricsScope",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/monitoring",
                    "https://www.googleapis.com/auth/monitoring.read",
                  },
                },
                listMetricsScopesByMonitoredProject = {
                  description = "Returns a list of every Metrics Scope that a specific MonitoredProject has been added to. The metrics scope representing the specified monitored project will always be the first entry in the response.",
                  flatPath = "v1/locations/global/metricsScopes:listMetricsScopesByMonitoredProject",
                  httpMethod = "GET",
                  id = "monitoring.locations.global.metricsScopes.listMetricsScopesByMonitoredProject",
                  parameterOrder = {},
                  parameters = {
                    monitoredResourceContainer = {
                      description = "Required. The resource name of the Monitored Project being requested. Example: projects/{MONITORED_PROJECT_ID_OR_NUMBER}",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/locations/global/metricsScopes:listMetricsScopesByMonitoredProject",
                  response = {
                    ["$ref"] = "ListMetricsScopesByMonitoredProjectResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/monitoring",
                    "https://www.googleapis.com/auth/monitoring.read",
                  },
                },
              },
              resources = {
                projects = {
                  methods = {
                    create = {
                      description = "Adds a MonitoredProject with the given project ID to the specified Metrics Scope.",
                      flatPath = "v1/locations/global/metricsScopes/{metricsScopesId}/projects",
                      httpMethod = "POST",
                      id = "monitoring.locations.global.metricsScopes.projects.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The resource name of the existing Metrics Scope that will monitor this project. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}",
                          location = "path",
                          pattern = "^locations/global/metricsScopes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/projects",
                      request = {
                        ["$ref"] = "MonitoredProject",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/monitoring",
                        "https://www.googleapis.com/auth/monitoring.write",
                      },
                    },
                    delete = {
                      description = "Deletes a MonitoredProject from the specified Metrics Scope.",
                      flatPath = "v1/locations/global/metricsScopes/{metricsScopesId}/projects/{projectsId}",
                      httpMethod = "DELETE",
                      id = "monitoring.locations.global.metricsScopes.projects.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource name of the MonitoredProject. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}Authorization requires the following Google IAM (https://cloud.google.com/iam) permissions on both the Metrics Scope and on the MonitoredProject: monitoring.metricsScopes.link",
                          location = "path",
                          pattern = "^locations/global/metricsScopes/[^/]+/projects/[^/]+$",
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
                        "https://www.googleapis.com/auth/monitoring",
                        "https://www.googleapis.com/auth/monitoring.write",
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
    operations = {
      methods = {
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "monitoring.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^operations/.*$",
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
            "https://www.googleapis.com/auth/monitoring",
            "https://www.googleapis.com/auth/monitoring.read",
          },
        },
      },
    },
    projects = {
      resources = {
        dashboards = {
          methods = {
            create = {
              description = "Creates a new custom dashboard. For examples on how you can use this API to create dashboards, see Managing dashboards by API (https://cloud.google.com/monitoring/dashboards/api-dashboard). This method requires the monitoring.dashboards.create permission on the specified project. For more information about permissions, see Cloud Identity and Access Management (https://cloud.google.com/iam).",
              flatPath = "v1/projects/{projectsId}/dashboards",
              httpMethod = "POST",
              id = "monitoring.projects.dashboards.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The project on which to execute the request. The format is: projects/[PROJECT_ID_OR_NUMBER] The [PROJECT_ID_OR_NUMBER] must match the dashboard resource name.",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "If set, validate the request and preview the review, but do not actually save it.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v1/{+parent}/dashboards",
              request = {
                ["$ref"] = "Dashboard",
              },
              response = {
                ["$ref"] = "Dashboard",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            delete = {
              description = "Deletes an existing custom dashboard.This method requires the monitoring.dashboards.delete permission on the specified dashboard. For more information, see Cloud Identity and Access Management (https://cloud.google.com/iam).",
              flatPath = "v1/projects/{projectsId}/dashboards/{dashboardsId}",
              httpMethod = "DELETE",
              id = "monitoring.projects.dashboards.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the Dashboard. The format is: projects/[PROJECT_ID_OR_NUMBER]/dashboards/[DASHBOARD_ID] ",
                  location = "path",
                  pattern = "^projects/[^/]+/dashboards/[^/]+$",
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
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
            get = {
              description = "Fetches a specific dashboard.This method requires the monitoring.dashboards.get permission on the specified dashboard. For more information, see Cloud Identity and Access Management (https://cloud.google.com/iam).",
              flatPath = "v1/projects/{projectsId}/dashboards/{dashboardsId}",
              httpMethod = "GET",
              id = "monitoring.projects.dashboards.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the Dashboard. The format is one of: dashboards/[DASHBOARD_ID] (for system dashboards) projects/[PROJECT_ID_OR_NUMBER]/dashboards/[DASHBOARD_ID] (for custom dashboards).",
                  location = "path",
                  pattern = "^projects/[^/]+/dashboards/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Dashboard",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            list = {
              description = "Lists the existing dashboards.This method requires the monitoring.dashboards.list permission on the specified project. For more information, see Cloud Identity and Access Management (https://cloud.google.com/iam).",
              flatPath = "v1/projects/{projectsId}/dashboards",
              httpMethod = "GET",
              id = "monitoring.projects.dashboards.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "A positive number that is the maximum number of results to return. If unspecified, a default of 1000 is used.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The scope of the dashboards to list. The format is: projects/[PROJECT_ID_OR_NUMBER] ",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dashboards",
              response = {
                ["$ref"] = "ListDashboardsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.read",
              },
            },
            patch = {
              description = "Replaces an existing custom dashboard with a new definition.This method requires the monitoring.dashboards.update permission on the specified dashboard. For more information, see Cloud Identity and Access Management (https://cloud.google.com/iam).",
              flatPath = "v1/projects/{projectsId}/dashboards/{dashboardsId}",
              httpMethod = "PATCH",
              id = "monitoring.projects.dashboards.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The resource name of the dashboard.",
                  location = "path",
                  pattern = "^projects/[^/]+/dashboards/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "If set, validate the request and preview the review, but do not actually save it.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Dashboard",
              },
              response = {
                ["$ref"] = "Dashboard",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/monitoring",
                "https://www.googleapis.com/auth/monitoring.write",
              },
            },
          },
        },
        location = {
          resources = {
            prometheus = {
              resources = {
                api = {
                  resources = {
                    v1 = {
                      methods = {
                        labels = {
                          description = "Lists labels for metrics.",
                          flatPath = "v1/projects/{projectsId}/location/{location}/prometheus/api/v1/labels",
                          httpMethod = "POST",
                          id = "monitoring.projects.location.prometheus.api.v1.labels",
                          parameterOrder = {
                            "name",
                            "location",
                          },
                          parameters = {
                            location = {
                              description = "Location of the resource information. Has to be \"global\" now.",
                              location = "path",
                              required = true,
                              type = "string",
                            },
                            name = {
                              description = "The workspace on which to execute the request. It is not part of the open source API but used as a request path prefix to distinguish different virtual Prometheus instances of Google Prometheus Engine. The format is: projects/PROJECT_ID_OR_NUMBER.",
                              location = "path",
                              pattern = "^projects/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/location/{location}/prometheus/api/v1/labels",
                          request = {
                            ["$ref"] = "ListLabelsRequest",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/monitoring",
                            "https://www.googleapis.com/auth/monitoring.read",
                          },
                        },
                        query = {
                          description = "Evaluate a PromQL query at a single point in time.",
                          flatPath = "v1/projects/{projectsId}/location/{location}/prometheus/api/v1/query",
                          httpMethod = "POST",
                          id = "monitoring.projects.location.prometheus.api.v1.query",
                          parameterOrder = {
                            "name",
                            "location",
                          },
                          parameters = {
                            location = {
                              description = "Location of the resource information. Has to be \"global\" now.",
                              location = "path",
                              required = true,
                              type = "string",
                            },
                            name = {
                              description = "The project on which to execute the request. Data associcated with the project's workspace stored under the The format is: projects/PROJECT_ID_OR_NUMBER. Open source API but used as a request path prefix to distinguish different virtual Prometheus instances of Google Prometheus Engine.",
                              location = "path",
                              pattern = "^projects/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/location/{location}/prometheus/api/v1/query",
                          request = {
                            ["$ref"] = "QueryInstantRequest",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/monitoring",
                            "https://www.googleapis.com/auth/monitoring.read",
                          },
                        },
                        query_range = {
                          description = "Evaluate a PromQL query with start, end time range.",
                          flatPath = "v1/projects/{projectsId}/location/{location}/prometheus/api/v1/query_range",
                          httpMethod = "POST",
                          id = "monitoring.projects.location.prometheus.api.v1.query_range",
                          parameterOrder = {
                            "name",
                            "location",
                          },
                          parameters = {
                            location = {
                              description = "Location of the resource information. Has to be \"global\" now.",
                              location = "path",
                              required = true,
                              type = "string",
                            },
                            name = {
                              description = "The project on which to execute the request. Data associcated with the project's workspace stored under the The format is: projects/PROJECT_ID_OR_NUMBER. Open source API but used as a request path prefix to distinguish different virtual Prometheus instances of Google Prometheus Engine.",
                              location = "path",
                              pattern = "^projects/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/location/{location}/prometheus/api/v1/query_range",
                          request = {
                            ["$ref"] = "QueryRangeRequest",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/monitoring",
                            "https://www.googleapis.com/auth/monitoring.read",
                          },
                        },
                        series = {
                          description = "Lists metadata for metrics.",
                          flatPath = "v1/projects/{projectsId}/location/{location}/prometheus/api/v1/series",
                          httpMethod = "POST",
                          id = "monitoring.projects.location.prometheus.api.v1.series",
                          parameterOrder = {
                            "name",
                            "location",
                          },
                          parameters = {
                            location = {
                              description = "Location of the resource information. Has to be \"global\" for now.",
                              location = "path",
                              required = true,
                              type = "string",
                            },
                            name = {
                              description = "Required. The workspace on which to execute the request. It is not part of the open source API but used as a request path prefix to distinguish different virtual Prometheus instances of Google Prometheus Engine. The format is: projects/PROJECT_ID_OR_NUMBER.",
                              location = "path",
                              pattern = "^projects/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/location/{location}/prometheus/api/v1/series",
                          request = {
                            ["$ref"] = "QuerySeriesRequest",
                          },
                          response = {
                            ["$ref"] = "HttpBody",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                            "https://www.googleapis.com/auth/monitoring",
                            "https://www.googleapis.com/auth/monitoring.read",
                          },
                        },
                      },
                      resources = {
                        label = {
                          methods = {
                            values = {
                              description = "Lists possible values for a given label name.",
                              flatPath = "v1/projects/{projectsId}/location/{location}/prometheus/api/v1/label/{label}/values",
                              httpMethod = "GET",
                              id = "monitoring.projects.location.prometheus.api.v1.label.values",
                              parameterOrder = {
                                "name",
                                "location",
                                "label",
                              },
                              parameters = {
                                ["end"] = {
                                  description = "The end time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
                                  location = "query",
                                  type = "string",
                                },
                                label = {
                                  description = "The label name for which values are queried.",
                                  location = "path",
                                  required = true,
                                  type = "string",
                                },
                                location = {
                                  description = "Location of the resource information. Has to be \"global\" now.",
                                  location = "path",
                                  required = true,
                                  type = "string",
                                },
                                match = {
                                  description = "A list of matchers encoded in the Prometheus label matcher format to constrain the values to series that satisfy them.",
                                  location = "query",
                                  type = "string",
                                },
                                name = {
                                  description = "The workspace on which to execute the request. It is not part of the open source API but used as a request path prefix to distinguish different virtual Prometheus instances of Google Prometheus Engine. The format is: projects/PROJECT_ID_OR_NUMBER.",
                                  location = "path",
                                  pattern = "^projects/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                                start = {
                                  description = "The start time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
                                  location = "query",
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}/location/{location}/prometheus/api/v1/label/{label}/values",
                              response = {
                                ["$ref"] = "HttpBody",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/monitoring",
                                "https://www.googleapis.com/auth/monitoring.read",
                              },
                            },
                          },
                        },
                        labels = {
                          methods = {
                            list = {
                              description = "Lists labels for metrics.",
                              flatPath = "v1/projects/{projectsId}/location/{location}/prometheus/api/v1/labels",
                              httpMethod = "GET",
                              id = "monitoring.projects.location.prometheus.api.v1.labels.list",
                              parameterOrder = {
                                "name",
                                "location",
                              },
                              parameters = {
                                ["end"] = {
                                  description = "The end time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
                                  location = "query",
                                  type = "string",
                                },
                                location = {
                                  description = "Location of the resource information. Has to be \"global\" now.",
                                  location = "path",
                                  required = true,
                                  type = "string",
                                },
                                match = {
                                  description = "A list of matchers encoded in the Prometheus label matcher format to constrain the values to series that satisfy them.",
                                  location = "query",
                                  type = "string",
                                },
                                name = {
                                  description = "The workspace on which to execute the request. It is not part of the open source API but used as a request path prefix to distinguish different virtual Prometheus instances of Google Prometheus Engine. The format is: projects/PROJECT_ID_OR_NUMBER.",
                                  location = "path",
                                  pattern = "^projects/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                                start = {
                                  description = "The start time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
                                  location = "query",
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}/location/{location}/prometheus/api/v1/labels",
                              response = {
                                ["$ref"] = "HttpBody",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/monitoring",
                                "https://www.googleapis.com/auth/monitoring.read",
                              },
                            },
                          },
                        },
                        metadata = {
                          methods = {
                            list = {
                              description = "Lists metadata for metrics.",
                              flatPath = "v1/projects/{projectsId}/location/{location}/prometheus/api/v1/metadata",
                              httpMethod = "GET",
                              id = "monitoring.projects.location.prometheus.api.v1.metadata.list",
                              parameterOrder = {
                                "name",
                                "location",
                              },
                              parameters = {
                                limit = {
                                  description = "Maximum number of metrics to return.",
                                  format = "int64",
                                  location = "query",
                                  type = "string",
                                },
                                location = {
                                  description = "Location of the resource information. Has to be \"global\" for now.",
                                  location = "path",
                                  required = true,
                                  type = "string",
                                },
                                metric = {
                                  description = "The metric name for which to query metadata. If unset, all metric metadata is returned.",
                                  location = "query",
                                  type = "string",
                                },
                                name = {
                                  description = "Required. The workspace on which to execute the request. It is not part of the open source API but used as a request path prefix to distinguish different virtual Prometheus instances of Google Prometheus Engine. The format is: projects/PROJECT_ID_OR_NUMBER.",
                                  location = "path",
                                  pattern = "^projects/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}/location/{location}/prometheus/api/v1/metadata",
                              response = {
                                ["$ref"] = "HttpBody",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                                "https://www.googleapis.com/auth/monitoring",
                                "https://www.googleapis.com/auth/monitoring.read",
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
        },
      },
    },
  },
  revision = "20230102",
  rootUrl = "https://monitoring.googleapis.com/",
  schemas = {
    Aggregation = {
      description = "Describes how to combine multiple time series to provide a different view of the data. Aggregation of time series is done in two steps. First, each time series in the set is aligned to the same time interval boundaries, then the set of time series is optionally reduced in number.Alignment consists of applying the per_series_aligner operation to each time series after its data has been divided into regular alignment_period time intervals. This process takes all of the data points in an alignment period, applies a mathematical transformation such as averaging, minimum, maximum, delta, etc., and converts them into a single data point per period.Reduction is when the aligned and transformed time series can optionally be combined, reducing the number of time series through similar mathematical transformations. Reduction involves applying a cross_series_reducer to all the time series, optionally sorting the time series into subsets with group_by_fields, and applying the reducer to each subset.The raw time series data can contain a huge amount of information from multiple sources. Alignment and reduction transforms this mass of data into a more manageable and representative collection of data, for example \"the 95% latency across the average of all tasks in a cluster\". This representative data can be more easily graphed and comprehended, and the individual time series data is still available for later drilldown. For more details, see Filtering and aggregation (https://cloud.google.com/monitoring/api/v3/aggregation).",
      id = "Aggregation",
      properties = {
        alignmentPeriod = {
          description = "The alignment_period specifies a time interval, in seconds, that is used to divide the data in all the time series into consistent blocks of time. This will be done before the per-series aligner can be applied to the data.The value must be at least 60 seconds. If a per-series aligner other than ALIGN_NONE is specified, this field is required or an error is returned. If no per-series aligner is specified, or the aligner ALIGN_NONE is specified, then this field is ignored.The maximum value of the alignment_period is 2 years, or 104 weeks.",
          format = "google-duration",
          type = "string",
        },
        crossSeriesReducer = {
          description = "The reduction operation to be used to combine time series into a single time series, where the value of each data point in the resulting series is a function of all the already aligned values in the input time series.Not all reducer operations can be applied to all time series. The valid choices depend on the metric_kind and the value_type of the original time series. Reduction can yield a time series with a different metric_kind or value_type than the input time series.Time series data must first be aligned (see per_series_aligner) in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified, and must not be ALIGN_NONE. An alignment_period must also be specified; otherwise, an error is returned.",
          enum = {
            "REDUCE_NONE",
            "REDUCE_MEAN",
            "REDUCE_MIN",
            "REDUCE_MAX",
            "REDUCE_SUM",
            "REDUCE_STDDEV",
            "REDUCE_COUNT",
            "REDUCE_COUNT_TRUE",
            "REDUCE_COUNT_FALSE",
            "REDUCE_FRACTION_TRUE",
            "REDUCE_PERCENTILE_99",
            "REDUCE_PERCENTILE_95",
            "REDUCE_PERCENTILE_50",
            "REDUCE_PERCENTILE_05",
          },
          enumDescriptions = {
            "No cross-time series reduction. The output of the Aligner is returned.",
            "Reduce by computing the mean value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
            "Reduce by computing the minimum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
            "Reduce by computing the maximum value across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric values. The value_type of the output is the same as the value_type of the input.",
            "Reduce by computing the sum across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric and distribution values. The value_type of the output is the same as the value_type of the input.",
            "Reduce by computing the standard deviation across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics with numeric or distribution values. The value_type of the output is DOUBLE.",
            "Reduce by computing the number of data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of numeric, Boolean, distribution, and string value_type. The value_type of the output is INT64.",
            "Reduce by computing the number of True-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
            "Reduce by computing the number of False-valued data points across time series for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The value_type of the output is INT64.",
            "Reduce by computing the ratio of the number of True-valued data points to the total number of data points for each alignment period. This reducer is valid for DELTA and GAUGE metrics of Boolean value_type. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
            "Reduce by computing the 99th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
            "Reduce by computing the 95th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
            "Reduce by computing the 50th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
            "Reduce by computing the 5th percentile (https://en.wikipedia.org/wiki/Percentile) of data points across time series for each alignment period. This reducer is valid for GAUGE and DELTA metrics of numeric and distribution type. The value of the output is DOUBLE.",
          },
          type = "string",
        },
        groupByFields = {
          description = "The set of fields to preserve when cross_series_reducer is specified. The group_by_fields determine how the time series are partitioned into subsets prior to applying the aggregation operation. Each subset contains time series that have the same value for each of the grouping fields. Each individual time series is a member of exactly one subset. The cross_series_reducer is applied to each subset of time series. It is not possible to reduce across different resource types, so this field implicitly contains resource.type. Fields not specified in group_by_fields are aggregated away. If group_by_fields is not specified and all the time series have the same resource type, then the time series are aggregated into a single output time series. If cross_series_reducer is not defined, this field is ignored.",
          items = {
            type = "string",
          },
          type = "array",
        },
        perSeriesAligner = {
          description = "An Aligner describes how to bring the data points in a single time series into temporal alignment. Except for ALIGN_NONE, all alignments cause all the data points in an alignment_period to be mathematically grouped together, resulting in a single data point for each alignment_period with end timestamp at the end of the period.Not all alignment operations may be applied to all time series. The valid choices depend on the metric_kind and value_type of the original time series. Alignment can change the metric_kind or the value_type of the time series.Time series data must be aligned in order to perform cross-time series reduction. If cross_series_reducer is specified, then per_series_aligner must be specified and not equal to ALIGN_NONE and alignment_period must be specified; otherwise, an error is returned.",
          enum = {
            "ALIGN_NONE",
            "ALIGN_DELTA",
            "ALIGN_RATE",
            "ALIGN_INTERPOLATE",
            "ALIGN_NEXT_OLDER",
            "ALIGN_MIN",
            "ALIGN_MAX",
            "ALIGN_MEAN",
            "ALIGN_COUNT",
            "ALIGN_SUM",
            "ALIGN_STDDEV",
            "ALIGN_COUNT_TRUE",
            "ALIGN_COUNT_FALSE",
            "ALIGN_FRACTION_TRUE",
            "ALIGN_PERCENTILE_99",
            "ALIGN_PERCENTILE_95",
            "ALIGN_PERCENTILE_50",
            "ALIGN_PERCENTILE_05",
            "ALIGN_PERCENT_CHANGE",
          },
          enumDescriptions = {
            "No alignment. Raw data is returned. Not valid if cross-series reduction is requested. The value_type of the result is the same as the value_type of the input.",
            "Align and convert to DELTA. The output is delta = y1 - y0.This alignment is valid for CUMULATIVE and DELTA metrics. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The value_type of the aligned result is the same as the value_type of the input.",
            "Align and convert to a rate. The result is computed as rate = (y1 - y0)/(t1 - t0), or \"delta over time\". Think of this aligner as providing the slope of the line that passes through the value at the start and at the end of the alignment_period.This aligner is valid for CUMULATIVE and DELTA metrics with numeric values. If the selected alignment period results in periods with no data, then the aligned value for such a period is created by interpolation. The output is a GAUGE metric with value_type DOUBLE.If, by \"rate\", you mean \"percentage change\", see the ALIGN_PERCENT_CHANGE aligner instead.",
            "Align by interpolating between adjacent points around the alignment period boundary. This aligner is valid for GAUGE metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align by moving the most recent data point before the end of the alignment period to the boundary at the end of the alignment period. This aligner is valid for GAUGE metrics. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the minimum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the maximum value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the mean value in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the aligned result is DOUBLE.",
            "Align the time series by returning the number of values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric or Boolean values. The value_type of the aligned result is INT64.",
            "Align the time series by returning the sum of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric and distribution values. The value_type of the aligned result is the same as the value_type of the input.",
            "Align the time series by returning the standard deviation of the values in each alignment period. This aligner is valid for GAUGE and DELTA metrics with numeric values. The value_type of the output is DOUBLE.",
            "Align the time series by returning the number of True values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
            "Align the time series by returning the number of False values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The value_type of the output is INT64.",
            "Align the time series by returning the ratio of the number of True values to the total number of values in each alignment period. This aligner is valid for GAUGE metrics with Boolean values. The output value is in the range 0.0, 1.0 and has value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 99th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 95th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 50th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align the time series by using percentile aggregation (https://en.wikipedia.org/wiki/Percentile). The resulting data point in each alignment period is the 5th percentile of all data points in the period. This aligner is valid for GAUGE and DELTA metrics with distribution values. The output is a GAUGE metric with value_type DOUBLE.",
            "Align and convert to a percentage change. This aligner is valid for GAUGE and DELTA metrics with numeric values. This alignment returns ((current - previous)/previous) * 100, where the value of previous is determined based on the alignment_period.If the values of current and previous are both 0, then the returned value is 0. If only previous is 0, the returned value is infinity.A 10-minute moving mean is computed at each point of the alignment period prior to the above calculation to smooth the metric and prevent false positives from very short-lived spikes. The moving mean is only applicable for data whose values are >= 0. Any values < 0 are treated as a missing datapoint, and are ignored. While DELTA metrics are accepted by this alignment, special care should be taken that the values for the metric will always be positive. The output is a GAUGE metric with value_type DOUBLE.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AlertChart = {
      description = "A chart that displays alert policy data.",
      id = "AlertChart",
      properties = {
        name = {
          description = "Required. The resource name of the alert policy. The format is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] ",
          type = "string",
        },
      },
      type = "object",
    },
    Axis = {
      description = "A chart axis.",
      id = "Axis",
      properties = {
        label = {
          description = "The label of the axis.",
          type = "string",
        },
        scale = {
          description = "The axis scale. By default, a linear scale is used.",
          enum = {
            "SCALE_UNSPECIFIED",
            "LINEAR",
            "LOG10",
          },
          enumDescriptions = {
            "Scale is unspecified. The view will default to LINEAR.",
            "Linear scale.",
            "Logarithmic scale (base 10).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ChartOptions = {
      description = "Options to control visual rendering of a chart.",
      id = "ChartOptions",
      properties = {
        mode = {
          description = "The chart mode.",
          enum = {
            "MODE_UNSPECIFIED",
            "COLOR",
            "X_RAY",
            "STATS",
          },
          enumDescriptions = {
            "Mode is unspecified. The view will default to COLOR.",
            "The chart distinguishes data series using different color. Line colors may get reused when there are many lines in the chart.",
            "The chart uses the Stackdriver x-ray mode, in which each data set is plotted using the same semi-transparent color.",
            "The chart displays statistics such as average, median, 95th percentile, and more.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CollapsibleGroup = {
      description = "A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.",
      id = "CollapsibleGroup",
      properties = {
        collapsed = {
          description = "The collapsed state of the widget on first page load.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Column = {
      description = "Defines the layout properties and content for a column.",
      id = "Column",
      properties = {
        weight = {
          description = "The relative weight of this column. The column weight is used to adjust the width of columns on the screen (relative to peers). Greater the weight, greater the width of the column on the screen. If omitted, a value of 1 is used while rendering.",
          format = "int64",
          type = "string",
        },
        widgets = {
          description = "The display widgets arranged vertically in this column.",
          items = {
            ["$ref"] = "Widget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ColumnLayout = {
      description = "A simplified layout that divides the available space into vertical columns and arranges a set of widgets vertically in each column.",
      id = "ColumnLayout",
      properties = {
        columns = {
          description = "The columns of content to display.",
          items = {
            ["$ref"] = "Column",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ColumnSettings = {
      description = "The persistent settings for a table's columns.",
      id = "ColumnSettings",
      properties = {
        column = {
          description = "Required. The id of the column.",
          type = "string",
        },
        visible = {
          description = "Required. Whether the column should be visible on page load.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Dashboard = {
      description = "A Google Stackdriver dashboard. Dashboards define the content and layout of pages in the Stackdriver web application.",
      id = "Dashboard",
      properties = {
        columnLayout = {
          ["$ref"] = "ColumnLayout",
          description = "The content is divided into equally spaced columns and the widgets are arranged vertically.",
        },
        dashboardFilters = {
          description = "Filters to reduce the amount of data charted based on the filter criteria.",
          items = {
            ["$ref"] = "DashboardFilter",
          },
          type = "array",
        },
        displayName = {
          description = "Required. The mutable, human-readable name.",
          type = "string",
        },
        etag = {
          description = "etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a policy from overwriting each other. An etag is returned in the response to GetDashboard, and users are expected to put that etag in the request to UpdateDashboard to ensure that their change will be applied to the same version of the Dashboard configuration. The field should not be passed during dashboard creation.",
          type = "string",
        },
        gridLayout = {
          ["$ref"] = "GridLayout",
          description = "Content is arranged with a basic layout that re-flows a simple list of informational elements like widgets or tiles.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Labels applied to the dashboard",
          type = "object",
        },
        mosaicLayout = {
          ["$ref"] = "MosaicLayout",
          description = "The content is arranged as a grid of tiles, with each content widget occupying one or more grid blocks.",
        },
        name = {
          description = "Immutable. The resource name of the dashboard.",
          type = "string",
        },
        rowLayout = {
          ["$ref"] = "RowLayout",
          description = "The content is divided into equally spaced rows and the widgets are arranged horizontally.",
        },
      },
      type = "object",
    },
    DashboardFilter = {
      description = "A filter to reduce the amount of data charted in relevant widgets.",
      id = "DashboardFilter",
      properties = {
        filterType = {
          description = "The specified filter type",
          enum = {
            "FILTER_TYPE_UNSPECIFIED",
            "RESOURCE_LABEL",
            "METRIC_LABEL",
            "USER_METADATA_LABEL",
            "SYSTEM_METADATA_LABEL",
            "GROUP",
          },
          enumDescriptions = {
            "Filter type is unspecified. This is not valid in a well-formed request.",
            "Filter on a resource label value",
            "Filter on a metrics label value",
            "Filter on a user metadata label value",
            "Filter on a system metadata label value",
            "Filter on a group id",
          },
          type = "string",
        },
        labelKey = {
          description = "Required. The key for the label",
          type = "string",
        },
        stringValue = {
          description = "A variable-length string value.",
          type = "string",
        },
        templateVariable = {
          description = "The placeholder text that can be referenced in a filter string or MQL query. If omitted, the dashboard filter will be applied to all relevant widgets in the dashboard.",
          type = "string",
        },
      },
      type = "object",
    },
    DataSet = {
      description = "Groups a time series query definition with charting options.",
      id = "DataSet",
      properties = {
        legendTemplate = {
          description = "A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value.",
          type = "string",
        },
        minAlignmentPeriod = {
          description = "Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.",
          format = "google-duration",
          type = "string",
        },
        plotType = {
          description = "How this data should be plotted on the chart.",
          enum = {
            "PLOT_TYPE_UNSPECIFIED",
            "LINE",
            "STACKED_AREA",
            "STACKED_BAR",
            "HEATMAP",
          },
          enumDescriptions = {
            "Plot type is unspecified. The view will default to LINE.",
            "The data is plotted as a set of lines (one line per series).",
            "The data is plotted as a set of filled areas (one area per series), with the areas stacked vertically (the base of each area is the top of its predecessor, and the base of the first area is the X axis). Since the areas do not overlap, each is filled with a different opaque color.",
            "The data is plotted as a set of rectangular boxes (one box per series), with the boxes stacked vertically (the base of each box is the top of its predecessor, and the base of the first box is the X axis). Since the boxes do not overlap, each is filled with a different opaque color.",
            "The data is plotted as a heatmap. The series being plotted must have a DISTRIBUTION value type. The value of each bucket in the distribution is displayed as a color. This type is not currently available in the Stackdriver Monitoring application.",
          },
          type = "string",
        },
        targetAxis = {
          description = "Optional. The target axis to use for plotting the metric.",
          enum = {
            "TARGET_AXIS_UNSPECIFIED",
            "Y1",
            "Y2",
          },
          enumDescriptions = {
            "The target axis was not specified. Defaults to Y1.",
            "The y_axis (the right axis of chart).",
            "The y2_axis (the left axis of chart).",
          },
          type = "string",
        },
        timeSeriesQuery = {
          ["$ref"] = "TimeSeriesQuery",
          description = "Required. Fields for querying time series data from the Stackdriver metrics API.",
        },
      },
      type = "object",
    },
    DroppedLabels = {
      description = "A set of (label, value) pairs that were removed from a Distribution time series during aggregation and then added as an attachment to a Distribution.Exemplar.The full label set for the exemplars is constructed by using the dropped pairs in combination with the label values that remain on the aggregated Distribution time series. The constructed full label set can be used to identify the specific entity, such as the instance or job, which might be contributing to a long-tail. However, with dropped labels, the storage requirements are reduced because only the aggregated distribution values for a large group of time series are stored.Note that there are no guarantees on ordering of the labels from exemplar-to-exemplar and from distribution-to-distribution in the same stream, and there may be duplicates. It is up to clients to resolve any ambiguities.",
      id = "DroppedLabels",
      properties = {
        label = {
          additionalProperties = {
            type = "string",
          },
          description = "Map from label to its value, for all labels dropped in any aggregation.",
          type = "object",
        },
      },
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } ",
      id = "Empty",
      properties = {},
      type = "object",
    },
    Field = {
      description = "A single field of a message type.",
      id = "Field",
      properties = {
        cardinality = {
          description = "The field cardinality.",
          enum = {
            "CARDINALITY_UNKNOWN",
            "CARDINALITY_OPTIONAL",
            "CARDINALITY_REQUIRED",
            "CARDINALITY_REPEATED",
          },
          enumDescriptions = {
            "For fields with unknown cardinality.",
            "For optional fields.",
            "For required fields. Proto2 syntax only.",
            "For repeated fields.",
          },
          type = "string",
        },
        defaultValue = {
          description = "The string value of the default value of this field. Proto2 syntax only.",
          type = "string",
        },
        jsonName = {
          description = "The field JSON name.",
          type = "string",
        },
        kind = {
          description = "The field type.",
          enum = {
            "TYPE_UNKNOWN",
            "TYPE_DOUBLE",
            "TYPE_FLOAT",
            "TYPE_INT64",
            "TYPE_UINT64",
            "TYPE_INT32",
            "TYPE_FIXED64",
            "TYPE_FIXED32",
            "TYPE_BOOL",
            "TYPE_STRING",
            "TYPE_GROUP",
            "TYPE_MESSAGE",
            "TYPE_BYTES",
            "TYPE_UINT32",
            "TYPE_ENUM",
            "TYPE_SFIXED32",
            "TYPE_SFIXED64",
            "TYPE_SINT32",
            "TYPE_SINT64",
          },
          enumDescriptions = {
            "Field type unknown.",
            "Field type double.",
            "Field type float.",
            "Field type int64.",
            "Field type uint64.",
            "Field type int32.",
            "Field type fixed64.",
            "Field type fixed32.",
            "Field type bool.",
            "Field type string.",
            "Field type group. Proto2 syntax only, and deprecated.",
            "Field type message.",
            "Field type bytes.",
            "Field type uint32.",
            "Field type enum.",
            "Field type sfixed32.",
            "Field type sfixed64.",
            "Field type sint32.",
            "Field type sint64.",
          },
          type = "string",
        },
        name = {
          description = "The field name.",
          type = "string",
        },
        number = {
          description = "The field number.",
          format = "int32",
          type = "integer",
        },
        oneofIndex = {
          description = "The index of the field type in Type.oneofs, for message or enumeration types. The first type has index 1; zero means the type is not in the list.",
          format = "int32",
          type = "integer",
        },
        options = {
          description = "The protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        packed = {
          description = "Whether to use alternative packed wire representation.",
          type = "boolean",
        },
        typeUrl = {
          description = "The field type URL, without the scheme, for message or enumeration types. Example: \"type.googleapis.com/google.protobuf.Timestamp\".",
          type = "string",
        },
      },
      type = "object",
    },
    GaugeView = {
      description = "A gauge chart shows where the current value sits within a pre-defined range. The upper and lower bounds should define the possible range of values for the scorecard's query (inclusive).",
      id = "GaugeView",
      properties = {
        lowerBound = {
          description = "The lower bound for this gauge chart. The value of the chart should always be greater than or equal to this.",
          format = "double",
          type = "number",
        },
        upperBound = {
          description = "The upper bound for this gauge chart. The value of the chart should always be less than or equal to this.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    GridLayout = {
      description = "A basic layout divides the available space into vertical columns of equal width and arranges a list of widgets using a row-first strategy.",
      id = "GridLayout",
      properties = {
        columns = {
          description = "The number of columns into which the view's width is divided. If omitted or set to zero, a system default will be used while rendering.",
          format = "int64",
          type = "string",
        },
        widgets = {
          description = "The informational elements that are arranged into the columns row-first.",
          items = {
            ["$ref"] = "Widget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HttpBody = {
      description = "Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page.This message can be used both in streaming and non-streaming API methods in the request as well as the response.It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body.Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.",
      id = "HttpBody",
      properties = {
        contentType = {
          description = "The HTTP Content-Type header value specifying the content type of the body.",
          type = "string",
        },
        data = {
          description = "The HTTP request/response body as raw binary.",
          format = "byte",
          type = "string",
        },
        extensions = {
          description = "Application specific response metadata. Must be set in the first response for streaming APIs.",
          items = {
            additionalProperties = {
              description = "Properties of the object. Contains field @type with type URL.",
              type = "any",
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDashboardsResponse = {
      description = "The ListDashboards request.",
      id = "ListDashboardsResponse",
      properties = {
        dashboards = {
          description = "The list of requested dashboards.",
          items = {
            ["$ref"] = "Dashboard",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If there are more results than have been returned, then this field is set to a non-empty value. To see the additional results, use that value as page_token in the next call to this method.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLabelsRequest = {
      description = "ListLabelsRequest holds all parameters of the Prometheus upstream API for returning a list of label names.",
      id = "ListLabelsRequest",
      properties = {
        ["end"] = {
          description = "The end time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
          type = "string",
        },
        match = {
          description = "A list of matchers encoded in the Prometheus label matcher format to constrain the values to series that satisfy them.",
          type = "string",
        },
        start = {
          description = "The start time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMetricsScopesByMonitoredProjectResponse = {
      description = "Response for the ListMetricsScopesByMonitoredProject method.",
      id = "ListMetricsScopesByMonitoredProjectResponse",
      properties = {
        metricsScopes = {
          description = "A set of all metrics scopes that the specified monitored project has been added to.",
          items = {
            ["$ref"] = "MetricsScope",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LogsPanel = {
      description = "A widget that displays a stream of log.",
      id = "LogsPanel",
      properties = {
        filter = {
          description = "A filter that chooses which log entries to return. See Advanced Logs Queries (https://cloud.google.com/logging/docs/view/advanced-queries). Only log entries that match the filter are returned. An empty filter matches all log entries.",
          type = "string",
        },
        resourceNames = {
          description = "The names of logging resources to collect logs for. Currently only projects are supported. If empty, the widget will default to the host project.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MetricsScope = {
      description = "Represents a Metrics Scope (https://cloud.google.com/monitoring/settings#concept-scope) in Cloud Monitoring, which specifies one or more Google projects and zero or more AWS accounts to monitor together.",
      id = "MetricsScope",
      properties = {
        createTime = {
          description = "Output only. The time when this Metrics Scope was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        monitoredProjects = {
          description = "Output only. The list of projects monitored by this Metrics Scope.",
          items = {
            ["$ref"] = "MonitoredProject",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Immutable. The resource name of the Monitoring Metrics Scope. On input, the resource name can be specified with the scoping project ID or number. On output, the resource name is specified with the scoping project number. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}",
          type = "string",
        },
        updateTime = {
          description = "Output only. The time when this Metrics Scope record was last updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    MonitoredProject = {
      description = "A project being monitored (https://cloud.google.com/monitoring/settings/multiple-projects#create-multi) by a Metrics Scope.",
      id = "MonitoredProject",
      properties = {
        createTime = {
          description = "Output only. The time when this MonitoredProject was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The resource name of the MonitoredProject. On input, the resource name includes the scoping project ID and monitored project ID. On output, it contains the equivalent project numbers. Example: locations/global/metricsScopes/{SCOPING_PROJECT_ID_OR_NUMBER}/projects/{MONITORED_PROJECT_ID_OR_NUMBER}",
          type = "string",
        },
      },
      type = "object",
    },
    MosaicLayout = {
      description = "A mosaic layout divides the available space into a grid of blocks, and overlays the grid with tiles. Unlike GridLayout, tiles may span multiple grid blocks and can be placed at arbitrary locations in the grid.",
      id = "MosaicLayout",
      properties = {
        columns = {
          description = "The number of columns in the mosaic grid. The number of columns must be between 1 and 12, inclusive.",
          format = "int32",
          type = "integer",
        },
        tiles = {
          description = "The tiles to display.",
          items = {
            ["$ref"] = "Tile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "Operation",
      properties = {
        done = {
          description = "If the value is false, it means the operation is still in progress. If true, the operation is completed, and either error or response is available.",
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
          description = "The server-assigned name, which is only unique within the same service that originally returns it. If you use the default HTTP mapping, the name should be a resource name ending with operations/{unique_id}.",
          type = "string",
        },
        response = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as Delete, the response is google.protobuf.Empty. If the original method is standard Get/Create/Update, the response should be the resource. For other methods, the response should have the type XxxResponse, where Xxx is the original method name. For example, if the original method name is TakeSnapshot(), the inferred response type is TakeSnapshotResponse.",
          type = "object",
        },
      },
      type = "object",
    },
    OperationMetadata = {
      description = "Contains metadata for longrunning operation for the edit Metrics Scope endpoints.",
      id = "OperationMetadata",
      properties = {
        createTime = {
          description = "The time when the batch request was received.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Current state of the batch operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATED",
            "RUNNING",
            "DONE",
            "CANCELLED",
          },
          enumDescriptions = {
            "Invalid.",
            "Request has been received.",
            "Request is actively being processed.",
            "The batch processing is done.",
            "The batch processing was cancelled.",
          },
          type = "string",
        },
        updateTime = {
          description = "The time when the operation result was last updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Option = {
      description = "A protocol buffer option, which can be attached to a message, field, enumeration, etc.",
      id = "Option",
      properties = {
        name = {
          description = "The option's name. For protobuf built-in options (options defined in descriptor.proto), this is the short name. For example, \"map_entry\". For custom options, it should be the fully-qualified name. For example, \"google.api.http\".",
          type = "string",
        },
        value = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "The option's value packed in an Any message. If the value is a primitive, the corresponding wrapper type defined in google/protobuf/wrappers.proto should be used. If the value is an enum, it should be stored as an int32 value using the google.protobuf.Int32Value type.",
          type = "object",
        },
      },
      type = "object",
    },
    PickTimeSeriesFilter = {
      description = "Describes a ranking-based time series filter. Each input time series is ranked with an aligner. The filter will allow up to num_time_series time series to pass through it, selecting them based on the relative ranking.For example, if ranking_method is METHOD_MEAN,direction is BOTTOM, and num_time_series is 3, then the 3 times series with the lowest mean values will pass through the filter.",
      id = "PickTimeSeriesFilter",
      properties = {
        direction = {
          description = "How to use the ranking to select time series that pass through the filter.",
          enum = {
            "DIRECTION_UNSPECIFIED",
            "TOP",
            "BOTTOM",
          },
          enumDescriptions = {
            "Not allowed. You must specify a different Direction if you specify a PickTimeSeriesFilter.",
            "Pass the highest num_time_series ranking inputs.",
            "Pass the lowest num_time_series ranking inputs.",
          },
          type = "string",
        },
        numTimeSeries = {
          description = "How many time series to allow to pass through the filter.",
          format = "int32",
          type = "integer",
        },
        rankingMethod = {
          description = "ranking_method is applied to each time series independently to produce the value which will be used to compare the time series to other time series.",
          enum = {
            "METHOD_UNSPECIFIED",
            "METHOD_MEAN",
            "METHOD_MAX",
            "METHOD_MIN",
            "METHOD_SUM",
            "METHOD_LATEST",
          },
          enumDescriptions = {
            "Not allowed. You must specify a different Method if you specify a PickTimeSeriesFilter.",
            "Select the mean of all values.",
            "Select the maximum value.",
            "Select the minimum value.",
            "Compute the sum of all values.",
            "Select the most recent value.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    QueryInstantRequest = {
      description = "QueryInstantRequest holds all parameters of the Prometheus upstream instant query API plus GCM specific parameters.",
      id = "QueryInstantRequest",
      properties = {
        query = {
          description = "A PromQL query string. Query lanauge documentation: https://prometheus.io/docs/prometheus/latest/querying/basics/.",
          type = "string",
        },
        time = {
          description = "The single point in time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
          type = "string",
        },
        timeout = {
          description = "An upper bound timeout for the query. Either a Prometheus duration string (https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations) or floating point seconds. This non-standard encoding must be used for compatibility with the open source API. Clients may still implement timeouts at the connection level while ignoring this field.",
          type = "string",
        },
      },
      type = "object",
    },
    QueryRangeRequest = {
      description = "QueryRangeRequest holds all parameters of the Prometheus upstream range query API plus GCM specific parameters.",
      id = "QueryRangeRequest",
      properties = {
        ["end"] = {
          description = "The end time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
          type = "string",
        },
        query = {
          description = "A PromQL query string. Query lanauge documentation: https://prometheus.io/docs/prometheus/latest/querying/basics/.",
          type = "string",
        },
        start = {
          description = "The start time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
          type = "string",
        },
        step = {
          description = "The resolution of query result. Either a Prometheus duration string (https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations) or floating point seconds. This non-standard encoding must be used for compatibility with the open source API. Clients may still implement timeouts at the connection level while ignoring this field.",
          type = "string",
        },
        timeout = {
          description = "An upper bound timeout for the query. Either a Prometheus duration string (https://prometheus.io/docs/prometheus/latest/querying/basics/#time-durations) or floating point seconds. This non-standard encoding must be used for compatibility with the open source API. Clients may still implement timeouts at the connection level while ignoring this field.",
          type = "string",
        },
      },
      type = "object",
    },
    QuerySeriesRequest = {
      description = "QuerySeries holds all parameters of the Prometheus upstream API for querying series.",
      id = "QuerySeriesRequest",
      properties = {
        ["end"] = {
          description = "The end time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
          type = "string",
        },
        start = {
          description = "The start time to evaluate the query for. Either floating point UNIX seconds or RFC3339 formatted timestamp.",
          type = "string",
        },
      },
      type = "object",
    },
    RatioPart = {
      description = "Describes a query to build the numerator or denominator of a TimeSeriesFilterRatio.",
      id = "RatioPart",
      properties = {
        aggregation = {
          ["$ref"] = "Aggregation",
          description = "By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.",
        },
        filter = {
          description = "Required. The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.",
          type = "string",
        },
      },
      type = "object",
    },
    Row = {
      description = "Defines the layout properties and content for a row.",
      id = "Row",
      properties = {
        weight = {
          description = "The relative weight of this row. The row weight is used to adjust the height of rows on the screen (relative to peers). Greater the weight, greater the height of the row on the screen. If omitted, a value of 1 is used while rendering.",
          format = "int64",
          type = "string",
        },
        widgets = {
          description = "The display widgets arranged horizontally in this row.",
          items = {
            ["$ref"] = "Widget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RowLayout = {
      description = "A simplified layout that divides the available space into rows and arranges a set of widgets horizontally in each row.",
      id = "RowLayout",
      properties = {
        rows = {
          description = "The rows of content to display.",
          items = {
            ["$ref"] = "Row",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Scorecard = {
      description = "A widget showing the latest value of a metric, and how this value relates to one or more thresholds.",
      id = "Scorecard",
      properties = {
        gaugeView = {
          ["$ref"] = "GaugeView",
          description = "Will cause the scorecard to show a gauge chart.",
        },
        sparkChartView = {
          ["$ref"] = "SparkChartView",
          description = "Will cause the scorecard to show a spark chart.",
        },
        thresholds = {
          description = "The thresholds used to determine the state of the scorecard given the time series' current value. For an actual value x, the scorecard is in a danger state if x is less than or equal to a danger threshold that triggers below, or greater than or equal to a danger threshold that triggers above. Similarly, if x is above/below a warning threshold that triggers above/below, then the scorecard is in a warning state - unless x also puts it in a danger state. (Danger trumps warning.)As an example, consider a scorecard with the following four thresholds: { value: 90, category: 'DANGER', trigger: 'ABOVE', }, { value: 70, category: 'WARNING', trigger: 'ABOVE', }, { value: 10, category: 'DANGER', trigger: 'BELOW', }, { value: 20, category: 'WARNING', trigger: 'BELOW', } Then: values less than or equal to 10 would put the scorecard in a DANGER state, values greater than 10 but less than or equal to 20 a WARNING state, values strictly between 20 and 70 an OK state, values greater than or equal to 70 but less than 90 a WARNING state, and values greater than or equal to 90 a DANGER state.",
          items = {
            ["$ref"] = "Threshold",
          },
          type = "array",
        },
        timeSeriesQuery = {
          ["$ref"] = "TimeSeriesQuery",
          description = "Required. Fields for querying time series data from the Stackdriver metrics API.",
        },
      },
      type = "object",
    },
    SourceContext = {
      description = "SourceContext represents information about the source of a protobuf element, like the file in which it is defined.",
      id = "SourceContext",
      properties = {
        fileName = {
          description = "The path-qualified name of the .proto file that contained the associated protobuf element. For example: \"google/protobuf/source_context.proto\".",
          type = "string",
        },
      },
      type = "object",
    },
    SpanContext = {
      description = "The context of a span. This is attached to an Exemplar in Distribution values during aggregation.It contains the name of a span with format: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID] ",
      id = "SpanContext",
      properties = {
        spanName = {
          description = "The resource name of the span. The format is: projects/[PROJECT_ID_OR_NUMBER]/traces/[TRACE_ID]/spans/[SPAN_ID] [TRACE_ID] is a unique identifier for a trace within a project; it is a 32-character hexadecimal encoding of a 16-byte array.[SPAN_ID] is a unique identifier for a span within a trace; it is a 16-character hexadecimal encoding of an 8-byte array.",
          type = "string",
        },
      },
      type = "object",
    },
    SparkChartView = {
      description = "A sparkChart is a small chart suitable for inclusion in a table-cell or inline in text. This message contains the configuration for a sparkChart to show up on a Scorecard, showing recent trends of the scorecard's timeseries.",
      id = "SparkChartView",
      properties = {
        minAlignmentPeriod = {
          description = "The lower bound on data point frequency in the chart implemented by specifying the minimum alignment period to use in a time series query. For example, if the data is published once every 10 minutes it would not make sense to fetch and align data at one minute intervals. This field is optional and exists only as a hint.",
          format = "google-duration",
          type = "string",
        },
        sparkChartType = {
          description = "Required. The type of sparkchart to show in this chartView.",
          enum = {
            "SPARK_CHART_TYPE_UNSPECIFIED",
            "SPARK_LINE",
            "SPARK_BAR",
          },
          enumDescriptions = {
            "Not allowed in well-formed requests.",
            "The sparkline will be rendered as a small line chart.",
            "The sparkbar will be rendered as a small bar chart.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    StatisticalTimeSeriesFilter = {
      description = "A filter that ranks streams based on their statistical relation to other streams in a request. Note: This field is deprecated and completely ignored by the API.",
      id = "StatisticalTimeSeriesFilter",
      properties = {
        numTimeSeries = {
          description = "How many time series to output.",
          format = "int32",
          type = "integer",
        },
        rankingMethod = {
          description = "rankingMethod is applied to a set of time series, and then the produced value for each individual time series is used to compare a given time series to others. These are methods that cannot be applied stream-by-stream, but rather require the full context of a request to evaluate time series.",
          enum = {
            "METHOD_UNSPECIFIED",
            "METHOD_CLUSTER_OUTLIER",
          },
          enumDescriptions = {
            "Not allowed in well-formed requests.",
            "Compute the outlier score of each stream.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Status = {
      description = "The Status type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by gRPC (https://github.com/grpc). Each Status message contains three pieces of data: error code, error message, and error details.You can find out more about this error model and how to work with it in the API Design Guide (https://cloud.google.com/apis/design/errors).",
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
    TableDataSet = {
      description = "Groups a time series query definition with table options.",
      id = "TableDataSet",
      properties = {
        minAlignmentPeriod = {
          description = "Optional. The lower bound on data point frequency for this data set, implemented by specifying the minimum alignment period to use in a time series query For example, if the data is published once every 10 minutes, the min_alignment_period should be at least 10 minutes. It would not make sense to fetch and align data at one minute intervals.",
          format = "google-duration",
          type = "string",
        },
        tableDisplayOptions = {
          ["$ref"] = "TableDisplayOptions",
          description = "Optional. Table display options for configuring how the table is rendered.",
        },
        tableTemplate = {
          description = "Optional. A template string for naming TimeSeries in the resulting data set. This should be a string with interpolations of the form ${label_name}, which will resolve to the label's value i.e. \"${resource.labels.project_id}.\"",
          type = "string",
        },
        timeSeriesQuery = {
          ["$ref"] = "TimeSeriesQuery",
          description = "Required. Fields for querying time series data from the Stackdriver metrics API.",
        },
      },
      type = "object",
    },
    TableDisplayOptions = {
      description = "Table display options that can be reused.",
      id = "TableDisplayOptions",
      properties = {
        shownColumns = {
          description = "Optional. This field is unused and has been replaced by TimeSeriesTable.column_settings",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Text = {
      description = "A widget that displays textual content.",
      id = "Text",
      properties = {
        content = {
          description = "The text content to be displayed.",
          type = "string",
        },
        format = {
          description = "How the text content is formatted.",
          enum = {
            "FORMAT_UNSPECIFIED",
            "MARKDOWN",
            "RAW",
          },
          enumDescriptions = {
            "Format is unspecified. Defaults to MARKDOWN.",
            "The text contains Markdown formatting.",
            "The text contains no special formatting.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Threshold = {
      description = "Defines a threshold for categorizing time series values.",
      id = "Threshold",
      properties = {
        color = {
          description = "The state color for this threshold. Color is not allowed in a XyChart.",
          enum = {
            "COLOR_UNSPECIFIED",
            "YELLOW",
            "RED",
          },
          enumDescriptions = {
            "Color is unspecified. Not allowed in well-formed requests.",
            "Crossing the threshold is \"concerning\" behavior.",
            "Crossing the threshold is \"emergency\" behavior.",
          },
          type = "string",
        },
        direction = {
          description = "The direction for the current threshold. Direction is not allowed in a XyChart.",
          enum = {
            "DIRECTION_UNSPECIFIED",
            "ABOVE",
            "BELOW",
          },
          enumDescriptions = {
            "Not allowed in well-formed requests.",
            "The threshold will be considered crossed if the actual value is above the threshold value.",
            "The threshold will be considered crossed if the actual value is below the threshold value.",
          },
          type = "string",
        },
        label = {
          description = "A label for the threshold.",
          type = "string",
        },
        targetAxis = {
          description = "The target axis to use for plotting the threshold. Target axis is not allowed in a Scorecard.",
          enum = {
            "TARGET_AXIS_UNSPECIFIED",
            "Y1",
            "Y2",
          },
          enumDescriptions = {
            "The target axis was not specified. Defaults to Y1.",
            "The y_axis (the right axis of chart).",
            "The y2_axis (the left axis of chart).",
          },
          type = "string",
        },
        value = {
          description = "The value of the threshold. The value should be defined in the native scale of the metric.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Tile = {
      description = "A single tile in the mosaic. The placement and size of the tile are configurable.",
      id = "Tile",
      properties = {
        height = {
          description = "The height of the tile, measured in grid blocks. Tiles must have a minimum height of 1.",
          format = "int32",
          type = "integer",
        },
        widget = {
          ["$ref"] = "Widget",
          description = "The informational widget contained in the tile. For example an XyChart.",
        },
        width = {
          description = "The width of the tile, measured in grid blocks. Tiles must have a minimum width of 1.",
          format = "int32",
          type = "integer",
        },
        xPos = {
          description = "The zero-indexed position of the tile in grid blocks relative to the left edge of the grid. Tiles must be contained within the specified number of columns. x_pos cannot be negative.",
          format = "int32",
          type = "integer",
        },
        yPos = {
          description = "The zero-indexed position of the tile in grid blocks relative to the top edge of the grid. y_pos cannot be negative.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TimeSeriesFilter = {
      description = "A filter that defines a subset of time series data that is displayed in a widget. Time series data is fetched using the ListTimeSeries (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list) method.",
      id = "TimeSeriesFilter",
      properties = {
        aggregation = {
          ["$ref"] = "Aggregation",
          description = "By default, the raw time series data is returned. Use this field to combine multiple time series for different views of the data.",
        },
        filter = {
          description = "Required. The monitoring filter (https://cloud.google.com/monitoring/api/v3/filters) that identifies the metric types, resources, and projects to query.",
          type = "string",
        },
        pickTimeSeriesFilter = {
          ["$ref"] = "PickTimeSeriesFilter",
          description = "Ranking based time series filter.",
        },
        secondaryAggregation = {
          ["$ref"] = "Aggregation",
          description = "Apply a second aggregation after aggregation is applied.",
        },
        statisticalTimeSeriesFilter = {
          ["$ref"] = "StatisticalTimeSeriesFilter",
          description = "Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.",
        },
      },
      type = "object",
    },
    TimeSeriesFilterRatio = {
      description = "A pair of time series filters that define a ratio computation. The output time series is the pair-wise division of each aligned element from the numerator and denominator time series.",
      id = "TimeSeriesFilterRatio",
      properties = {
        denominator = {
          ["$ref"] = "RatioPart",
          description = "The denominator of the ratio.",
        },
        numerator = {
          ["$ref"] = "RatioPart",
          description = "The numerator of the ratio.",
        },
        pickTimeSeriesFilter = {
          ["$ref"] = "PickTimeSeriesFilter",
          description = "Ranking based time series filter.",
        },
        secondaryAggregation = {
          ["$ref"] = "Aggregation",
          description = "Apply a second aggregation after the ratio is computed.",
        },
        statisticalTimeSeriesFilter = {
          ["$ref"] = "StatisticalTimeSeriesFilter",
          description = "Statistics based time series filter. Note: This field is deprecated and completely ignored by the API.",
        },
      },
      type = "object",
    },
    TimeSeriesQuery = {
      description = "TimeSeriesQuery collects the set of supported methods for querying time series data from the Stackdriver metrics API.",
      id = "TimeSeriesQuery",
      properties = {
        prometheusQuery = {
          description = "A query used to fetch time series with PromQL.",
          type = "string",
        },
        timeSeriesFilter = {
          ["$ref"] = "TimeSeriesFilter",
          description = "Filter parameters to fetch time series.",
        },
        timeSeriesFilterRatio = {
          ["$ref"] = "TimeSeriesFilterRatio",
          description = "Parameters to fetch a ratio between two time series filters.",
        },
        timeSeriesQueryLanguage = {
          description = "A query used to fetch time series with MQL.",
          type = "string",
        },
        unitOverride = {
          description = "The unit of data contained in fetched time series. If non-empty, this unit will override any unit that accompanies fetched data. The format is the same as the unit (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.metricDescriptors) field in MetricDescriptor.",
          type = "string",
        },
      },
      type = "object",
    },
    TimeSeriesTable = {
      description = "A table that displays time series data.",
      id = "TimeSeriesTable",
      properties = {
        columnSettings = {
          description = "Optional. The list of the persistent column settings for the table.",
          items = {
            ["$ref"] = "ColumnSettings",
          },
          type = "array",
        },
        dataSets = {
          description = "Required. The data displayed in this table.",
          items = {
            ["$ref"] = "TableDataSet",
          },
          type = "array",
        },
        metricVisualization = {
          description = "Optional. Store rendering strategy",
          enum = {
            "METRIC_VISUALIZATION_UNSPECIFIED",
            "NUMBER",
            "BAR",
          },
          enumDescriptions = {
            "Unspecified state",
            "Default text rendering",
            "Horizontal bar rendering",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Type = {
      description = "A protocol buffer message type.",
      id = "Type",
      properties = {
        fields = {
          description = "The list of fields.",
          items = {
            ["$ref"] = "Field",
          },
          type = "array",
        },
        name = {
          description = "The fully qualified message name.",
          type = "string",
        },
        oneofs = {
          description = "The list of types appearing in oneof definitions in this type.",
          items = {
            type = "string",
          },
          type = "array",
        },
        options = {
          description = "The protocol buffer options.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        sourceContext = {
          ["$ref"] = "SourceContext",
          description = "The source context.",
        },
        syntax = {
          description = "The source syntax.",
          enum = {
            "SYNTAX_PROTO2",
            "SYNTAX_PROTO3",
          },
          enumDescriptions = {
            "Syntax proto2.",
            "Syntax proto3.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Widget = {
      description = "Widget contains a single dashboard component and configuration of how to present the component in the dashboard.",
      id = "Widget",
      properties = {
        alertChart = {
          ["$ref"] = "AlertChart",
          description = "A chart of alert policy data.",
        },
        blank = {
          ["$ref"] = "Empty",
          description = "A blank space.",
        },
        collapsibleGroup = {
          ["$ref"] = "CollapsibleGroup",
          description = "A widget that groups the other widgets. All widgets that are within the area spanned by the grouping widget are considered member widgets.",
        },
        logsPanel = {
          ["$ref"] = "LogsPanel",
          description = "A widget that shows a stream of logs.",
        },
        scorecard = {
          ["$ref"] = "Scorecard",
          description = "A scorecard summarizing time series data.",
        },
        text = {
          ["$ref"] = "Text",
          description = "A raw string or markdown displaying textual content.",
        },
        timeSeriesTable = {
          ["$ref"] = "TimeSeriesTable",
          description = "A widget that displays time series data in a tabular format.",
        },
        title = {
          description = "Optional. The title of the widget.",
          type = "string",
        },
        xyChart = {
          ["$ref"] = "XyChart",
          description = "A chart of time series data.",
        },
      },
      type = "object",
    },
    XyChart = {
      description = "A chart that displays data on a 2D (X and Y axes) plane.",
      id = "XyChart",
      properties = {
        chartOptions = {
          ["$ref"] = "ChartOptions",
          description = "Display options for the chart.",
        },
        dataSets = {
          description = "Required. The data displayed in this chart.",
          items = {
            ["$ref"] = "DataSet",
          },
          type = "array",
        },
        thresholds = {
          description = "Threshold lines drawn horizontally across the chart.",
          items = {
            ["$ref"] = "Threshold",
          },
          type = "array",
        },
        timeshiftDuration = {
          description = "The duration used to display a comparison chart. A comparison chart simultaneously shows values from two similar-length time periods (e.g., week-over-week metrics). The duration must be positive, and it can only be applied to charts with data sets of LINE plot type.",
          format = "google-duration",
          type = "string",
        },
        xAxis = {
          ["$ref"] = "Axis",
          description = "The properties applied to the X axis.",
        },
        y2Axis = {
          ["$ref"] = "Axis",
          description = "The properties applied to the Y2 axis.",
        },
        yAxis = {
          ["$ref"] = "Axis",
          description = "The properties applied to the Y axis.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Monitoring API",
  version = "v1",
  version_module = true,
}