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
  baseUrl = "https://servicedirectory.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Service Directory",
  description = "Service Directory is a platform for discovering, publishing, and connecting services. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/service-directory",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "servicedirectory:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://servicedirectory.mtls.googleapis.com/",
  name = "servicedirectory",
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
              id = "servicedirectory.projects.locations.get",
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
              id = "servicedirectory.projects.locations.list",
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
            namespaces = {
              methods = {
                create = {
                  description = "Creates a namespace, and returns the new namespace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces",
                  httpMethod = "POST",
                  id = "servicedirectory.projects.locations.namespaces.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    namespaceId = {
                      description = "Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the project and location the namespace will be created in.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/namespaces",
                  request = {
                    ["$ref"] = "Namespace",
                  },
                  response = {
                    ["$ref"] = "Namespace",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a namespace. This also deletes all services and endpoints in the namespace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}",
                  httpMethod = "DELETE",
                  id = "servicedirectory.projects.locations.namespaces.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the namespace to delete.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
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
                  description = "Gets a namespace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}",
                  httpMethod = "GET",
                  id = "servicedirectory.projects.locations.namespaces.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the namespace to retrieve.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Namespace",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getIamPolicy = {
                  description = "Gets the IAM Policy for a resource (namespace or service only).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}:getIamPolicy",
                  httpMethod = "POST",
                  id = "servicedirectory.projects.locations.namespaces.getIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all namespaces.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces",
                  httpMethod = "GET",
                  id = "servicedirectory.projects.locations.namespaces.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. The filter to list results by. General `filter` string syntax: ` ()` * `` can be `name` or `labels.` for map field * `` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:` means `HAS`, and is roughly the same as `=` * `` must be the same data type as field * `` can be `AND`, `OR`, `NOT` Examples of valid filters: * `labels.owner` returns namespaces that have a label with the key `owner`, this is the same as `labels:owner` * `labels.owner=sd` returns namespaces that have key/value `owner=sd` * `name>projects/my-project/locations/us-east1/namespaces/namespace-c` returns namespaces that have name that is alphabetically later than the string, so \"namespace-e\" is returned but \"namespace-a\" is not * `labels.owner!=sd AND labels.foo=bar` returns namespaces that have `owner` in label key but value is not `sd` AND have key/value `foo=bar` * `doesnotexist.foo=bar` returns an empty list. Note that namespace doesn't have a field called \"doesnotexist\". Since the filter does not match any namespaces, it returns no results For more information about filtering, see [API Filtering](https://aip.dev/160).",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Optional. The order to list results by. General `order_by` string syntax: ` () (,)` * `` allows value: `name` * `` ascending or descending order by ``. If this is left blank, `asc` is used Note that an empty `order_by` string results in default order, which is order by `name` in ascending order.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. The next_page_token value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name of the project and location whose namespaces you'd like to list.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/namespaces",
                  response = {
                    ["$ref"] = "ListNamespacesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a namespace.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}",
                  httpMethod = "PATCH",
                  id = "servicedirectory.projects.locations.namespaces.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. List of fields to be updated in this request.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "Namespace",
                  },
                  response = {
                    ["$ref"] = "Namespace",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                setIamPolicy = {
                  description = "Sets the IAM Policy for a resource (namespace or service only).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}:setIamPolicy",
                  httpMethod = "POST",
                  id = "servicedirectory.projects.locations.namespaces.setIamPolicy",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                testIamPermissions = {
                  description = "Tests IAM permissions for a resource (namespace or service only).",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}:testIamPermissions",
                  httpMethod = "POST",
                  id = "servicedirectory.projects.locations.namespaces.testIamPermissions",
                  parameterOrder = {
                    "resource",
                  },
                  parameters = {
                    resource = {
                      description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
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
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                services = {
                  methods = {
                    create = {
                      description = "Creates a service, and returns the new service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services",
                      httpMethod = "POST",
                      id = "servicedirectory.projects.locations.namespaces.services.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. The resource name of the namespace this service will belong to.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        serviceId = {
                          description = "Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/services",
                      request = {
                        ["$ref"] = "Service",
                      },
                      response = {
                        ["$ref"] = "Service",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a service. This also deletes all endpoints associated with the service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}",
                      httpMethod = "DELETE",
                      id = "servicedirectory.projects.locations.namespaces.services.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the service to delete.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
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
                      description = "Gets a service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}",
                      httpMethod = "GET",
                      id = "servicedirectory.projects.locations.namespaces.services.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the service to get.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Service",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the IAM Policy for a resource (namespace or service only).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}:getIamPolicy",
                      httpMethod = "POST",
                      id = "servicedirectory.projects.locations.namespaces.services.getIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all services belonging to a namespace.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services",
                      httpMethod = "GET",
                      id = "servicedirectory.projects.locations.namespaces.services.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. The filter to list results by. General `filter` string syntax: ` ()` * `` can be `name` or `annotations.` for map field * `` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:` means `HAS`, and is roughly the same as `=` * `` must be the same data type as field * `` can be `AND`, `OR`, `NOT` Examples of valid filters: * `annotations.owner` returns services that have a annotation with the key `owner`, this is the same as `annotations:owner` * `annotations.protocol=gRPC` returns services that have key/value `protocol=gRPC` * `name>projects/my-project/locations/us-east1/namespaces/my-namespace/services/service-c` returns services that have name that is alphabetically later than the string, so \"service-e\" is returned but \"service-a\" is not * `annotations.owner!=sd AND annotations.foo=bar` returns services that have `owner` in annotation key but value is not `sd` AND have key/value `foo=bar` * `doesnotexist.foo=bar` returns an empty list. Note that service doesn't have a field called \"doesnotexist\". Since the filter does not match any services, it returns no results For more information about filtering, see [API Filtering](https://aip.dev/160).",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. The order to list results by. General `order_by` string syntax: ` () (,)` * `` allows value: `name` * `` ascending or descending order by ``. If this is left blank, `asc` is used Note that an empty `order_by` string results in default order, which is order by `name` in ascending order.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of items to return.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. The next_page_token value returned from a previous List request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the namespace whose services you'd like to list.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/services",
                      response = {
                        ["$ref"] = "ListServicesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a service.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}",
                      httpMethod = "PATCH",
                      id = "servicedirectory.projects.locations.namespaces.services.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. List of fields to be updated in this request.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Service",
                      },
                      response = {
                        ["$ref"] = "Service",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    resolve = {
                      description = "Returns a service and its associated endpoints. Resolving a service is not considered an active developer method.",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}:resolve",
                      httpMethod = "POST",
                      id = "servicedirectory.projects.locations.namespaces.services.resolve",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The name of the service to resolve.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:resolve",
                      request = {
                        ["$ref"] = "ResolveServiceRequest",
                      },
                      response = {
                        ["$ref"] = "ResolveServiceResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the IAM Policy for a resource (namespace or service only).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "servicedirectory.projects.locations.namespaces.services.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    testIamPermissions = {
                      description = "Tests IAM permissions for a resource (namespace or service only).",
                      flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "servicedirectory.projects.locations.namespaces.services.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
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
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    endpoints = {
                      methods = {
                        create = {
                          description = "Creates an endpoint, and returns the new endpoint.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}/endpoints",
                          httpMethod = "POST",
                          id = "servicedirectory.projects.locations.namespaces.services.endpoints.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            endpointId = {
                              description = "Required. The Resource ID must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the service that this endpoint provides.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/endpoints",
                          request = {
                            ["$ref"] = "Endpoint",
                          },
                          response = {
                            ["$ref"] = "Endpoint",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes an endpoint.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}/endpoints/{endpointsId}",
                          httpMethod = "DELETE",
                          id = "servicedirectory.projects.locations.namespaces.services.endpoints.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the endpoint to delete.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+/endpoints/[^/]+$",
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
                          description = "Gets an endpoint.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}/endpoints/{endpointsId}",
                          httpMethod = "GET",
                          id = "servicedirectory.projects.locations.namespaces.services.endpoints.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the endpoint to get.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+/endpoints/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Endpoint",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists all endpoints.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}/endpoints",
                          httpMethod = "GET",
                          id = "servicedirectory.projects.locations.namespaces.services.endpoints.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. The filter to list results by. General `filter` string syntax: ` ()` * `` can be `name`, `address`, `port`, or `annotations.` for map field * `` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:` means `HAS`, and is roughly the same as `=` * `` must be the same data type as field * `` can be `AND`, `OR`, `NOT` Examples of valid filters: * `annotations.owner` returns endpoints that have a annotation with the key `owner`, this is the same as `annotations:owner` * `annotations.protocol=gRPC` returns endpoints that have key/value `protocol=gRPC` * `address=192.108.1.105` returns endpoints that have this address * `port>8080` returns endpoints that have port number larger than 8080 * `name>projects/my-project/locations/us-east1/namespaces/my-namespace/services/my-service/endpoints/endpoint-c` returns endpoints that have name that is alphabetically later than the string, so \"endpoint-e\" is returned but \"endpoint-a\" is not * `annotations.owner!=sd AND annotations.foo=bar` returns endpoints that have `owner` in annotation key but value is not `sd` AND have key/value `foo=bar` * `doesnotexist.foo=bar` returns an empty list. Note that endpoint doesn't have a field called \"doesnotexist\". Since the filter does not match any endpoints, it returns no results For more information about filtering, see [API Filtering](https://aip.dev/160).",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. The order to list results by. General `order_by` string syntax: ` () (,)` * `` allows values: `name`, `address`, `port` * `` ascending or descending order by ``. If this is left blank, `asc` is used Note that an empty `order_by` string results in default order, which is order by `name` in ascending order.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The maximum number of items to return.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. The next_page_token value returned from a previous List request, if any.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The resource name of the service whose endpoints you'd like to list.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/endpoints",
                          response = {
                            ["$ref"] = "ListEndpointsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates an endpoint.",
                          flatPath = "v1/projects/{projectsId}/locations/{locationsId}/namespaces/{namespacesId}/services/{servicesId}/endpoints/{endpointsId}",
                          httpMethod = "PATCH",
                          id = "servicedirectory.projects.locations.namespaces.services.endpoints.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/[^/]+/namespaces/[^/]+/services/[^/]+/endpoints/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. List of fields to be updated in this request.",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "Endpoint",
                          },
                          response = {
                            ["$ref"] = "Endpoint",
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
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://servicedirectory.googleapis.com/",
  schemas = {
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
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    Endpoint = {
      description = "An individual endpoint that provides a service. The service must already exist to create an endpoint.",
      id = "Endpoint",
      properties = {
        address = {
          description = "Optional. An IPv4 or IPv6 address. Service Directory rejects bad addresses like: * `8.8.8` * `8.8.8.8:53` * `test:bad:address` * `[::1]` * `[::1]:8080` Limited to 45 characters.",
          type = "string",
        },
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Annotations for the endpoint. This data can be consumed by service clients. Restrictions: * The entire annotations dictionary may contain up to 512 characters, spread accoss all key-value pairs. Annotations that go beyond this limit are rejected * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/) Annotations that fails to meet these requirements are rejected. Note: This field is equivalent to the `metadata` field in the v1beta1 API. They have the same syntax and read/write to the same location in Service Directory.",
          type = "object",
        },
        name = {
          description = "Immutable. The resource name for the endpoint in the format `projects/*/locations/*/namespaces/*/services/*/endpoints/*`.",
          type = "string",
        },
        network = {
          description = "Immutable. The Google Compute Engine network (VPC) of the endpoint in the format `projects//locations/global/networks/*`. The project must be specified by project number (project id is rejected). Incorrectly formatted networks are rejected, we also check to make sure that you have the servicedirectory.networks.attach permission on the project specified.",
          type = "string",
        },
        port = {
          description = "Optional. Service Directory rejects values outside of `[0, 65535]`.",
          format = "int32",
          type = "integer",
        },
        uid = {
          description = "Output only. The globally unique identifier of the endpoint in the UUID4 format.",
          readOnly = true,
          type = "string",
        },
      },
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
    ListEndpointsResponse = {
      description = "The response message for RegistrationService.ListEndpoints.",
      id = "ListEndpointsResponse",
      properties = {
        endpoints = {
          description = "The list of endpoints.",
          items = {
            ["$ref"] = "Endpoint",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
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
    ListNamespacesResponse = {
      description = "The response message for RegistrationService.ListNamespaces.",
      id = "ListNamespacesResponse",
      properties = {
        namespaces = {
          description = "The list of namespaces.",
          items = {
            ["$ref"] = "Namespace",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListServicesResponse = {
      description = "The response message for RegistrationService.ListServices.",
      id = "ListServicesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        services = {
          description = "The list of services.",
          items = {
            ["$ref"] = "Service",
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
    Namespace = {
      description = "A container for services. Namespaces allow administrators to group services together and define permissions for a collection of services.",
      id = "Namespace",
      properties = {
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels associated with this namespace. No more than 64 user labels can be associated with a given resource. Label keys and values can be no longer than 63 characters.",
          type = "object",
        },
        name = {
          description = "Immutable. The resource name for the namespace in the format `projects/*/locations/*/namespaces/*`.",
          type = "string",
        },
        uid = {
          description = "Output only. The globally unique identifier of the namespace in the UUID4 format.",
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
    ResolveServiceRequest = {
      description = "The request message for LookupService.ResolveService. Looks up a service by its name, returns the service and its endpoints.",
      id = "ResolveServiceRequest",
      properties = {
        endpointFilter = {
          description = "Optional. The filter applied to the endpoints of the resolved service. General `filter` string syntax: ` ()` * `` can be `name`, `address`, `port`, or `annotations.` for map field * `` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:` means `HAS`, and is roughly the same as `=` * `` must be the same data type as field * `` can be `AND`, `OR`, `NOT` Examples of valid filters: * `annotations.owner` returns endpoints that have a annotation with the key `owner`, this is the same as `annotations:owner` * `annotations.protocol=gRPC` returns endpoints that have key/value `protocol=gRPC` * `address=192.108.1.105` returns endpoints that have this address * `port>8080` returns endpoints that have port number larger than 8080 * `name>projects/my-project/locations/us-east1/namespaces/my-namespace/services/my-service/endpoints/endpoint-c` returns endpoints that have name that is alphabetically later than the string, so \"endpoint-e\" is returned but \"endpoint-a\" is not * `name=projects/my-project/locations/us-central1/namespaces/my-namespace/services/my-service/endpoints/ep-1` returns the endpoint that has an endpoint_id equal to `ep-1` * `annotations.owner!=sd AND annotations.foo=bar` returns endpoints that have `owner` in annotation key but value is not `sd` AND have key/value `foo=bar` * `doesnotexist.foo=bar` returns an empty list. Note that endpoint doesn't have a field called \"doesnotexist\". Since the filter does not match any endpoint, it returns no results For more information about filtering, see [API Filtering](https://aip.dev/160).",
          type = "string",
        },
        maxEndpoints = {
          description = "Optional. The maximum number of endpoints to return. Defaults to 25. Maximum is 100. If a value less than one is specified, the Default is used. If a value greater than the Maximum is specified, the Maximum is used.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ResolveServiceResponse = {
      description = "The response message for LookupService.ResolveService.",
      id = "ResolveServiceResponse",
      properties = {
        service = {
          ["$ref"] = "Service",
        },
      },
      type = "object",
    },
    Service = {
      description = "An individual service. A service contains a name and optional metadata. A service must exist before endpoints can be added to it.",
      id = "Service",
      properties = {
        annotations = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Annotations for the service. This data can be consumed by service clients. Restrictions: * The entire annotations dictionary may contain up to 2000 characters, spread accoss all key-value pairs. Annotations that go beyond this limit are rejected * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (/). The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots (.), not longer than 253 characters in total, followed by a slash (/). Annotations that fails to meet these requirements are rejected Note: This field is equivalent to the `metadata` field in the v1beta1 API. They have the same syntax and read/write to the same location in Service Directory.",
          type = "object",
        },
        endpoints = {
          description = "Output only. Endpoints associated with this service. Returned on LookupService.ResolveService. Control plane clients should use RegistrationService.ListEndpoints.",
          items = {
            ["$ref"] = "Endpoint",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Immutable. The resource name for the service in the format `projects/*/locations/*/namespaces/*/services/*`.",
          type = "string",
        },
        uid = {
          description = "Output only. The globally unique identifier of the service in the UUID4 format.",
          readOnly = true,
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
      },
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
  title = "Service Directory API",
  version = "v1",
  version_module = true,
}
