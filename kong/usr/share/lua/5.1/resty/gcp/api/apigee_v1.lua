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
  baseUrl = "https://apigee.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Apigee",
  description = "Use the Apigee API to programmatically develop and manage APIs with a set of RESTful operations. Develop and secure API proxies, deploy and undeploy API proxy revisions, monitor APIs, configure environments, manage users, and more. Note: This product is available as a free trial for a time period of 60 days.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/apigee-api-management/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "apigee:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://apigee.mtls.googleapis.com/",
  name = "apigee",
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
    hybrid = {
      resources = {
        issuers = {
          methods = {
            list = {
              description = "Lists hybrid services and its trusted issuers service account ids. This api is authenticated and unauthorized(allow all the users) and used by runtime authn-authz service to query control plane's issuer service account ids.",
              flatPath = "v1/hybrid/issuers",
              httpMethod = "GET",
              id = "apigee.hybrid.issuers.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Must be of the form `hybrid/issuers`.",
                  location = "path",
                  pattern = "^hybrid/issuers$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListHybridIssuersResponse",
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
      methods = {
        create = {
          description = "Creates an Apigee organization. See [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).",
          flatPath = "v1/organizations",
          httpMethod = "POST",
          id = "apigee.organizations.create",
          parameterOrder = {},
          parameters = {
            parent = {
              description = "Required. Name of the Google Cloud project in which to associate the Apigee organization. Pass the information as a query parameter using the following structure in your request: `projects/`",
              location = "query",
              type = "string",
            },
          },
          path = "v1/organizations",
          request = {
            ["$ref"] = "GoogleCloudApigeeV1Organization",
          },
          response = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Delete an Apigee organization. For organizations with BillingType EVALUATION, an immediate deletion is performed. For paid organizations, a soft-deletion is performed. The organization can be restored within the soft-deletion period which can be controlled using the retention field in the request.",
          flatPath = "v1/organizations/{organizationsId}",
          httpMethod = "DELETE",
          id = "apigee.organizations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the organization. Use the following structure in your request: `organizations/{org}`",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
            retention = {
              description = "Optional. This setting is applicable only for organizations that are soft-deleted (i.e., BillingType is not EVALUATION). It controls how long Organization data will be retained after the initial delete operation completes. During this period, the Organization may be restored to its last known state. After this period, the Organization will no longer be able to be restored.",
              enum = {
                "DELETION_RETENTION_UNSPECIFIED",
                "MINIMUM",
              },
              enumDescriptions = {
                "Default data retention setting of seven days will be applied.",
                "Organization data will be retained for the minimum period of 24 hours.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets the profile for an Apigee organization. See [Understanding organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).",
          flatPath = "v1/organizations/{organizationsId}",
          httpMethod = "GET",
          id = "apigee.organizations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Apigee organization name in the following format: `organizations/{org}`",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleCloudApigeeV1Organization",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getDeployedIngressConfig = {
          description = "Gets the deployed ingress configuration for an organization.",
          flatPath = "v1/organizations/{organizationsId}/deployedIngressConfig",
          httpMethod = "GET",
          id = "apigee.organizations.getDeployedIngressConfig",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the deployed configuration for the organization in the following format: 'organizations/{org}/deployedIngressConfig'.",
              location = "path",
              pattern = "^organizations/[^/]+/deployedIngressConfig$",
              required = true,
              type = "string",
            },
            view = {
              description = "When set to FULL, additional details about the specific deployments receiving traffic will be included in the IngressConfig response's RoutingRules.",
              enum = {
                "INGRESS_CONFIG_VIEW_UNSPECIFIED",
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "The default/unset value. The API will default to the BASIC view.",
                "Include all ingress config data necessary for the runtime to configure ingress, but no more. Routing rules will include only basepath and destination environment. This the default value.",
                "Include all ingress config data, including internal debug info for each routing rule such as the proxy claiming a particular basepath and when the routing rule first appeared in the env group.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleCloudApigeeV1IngressConfig",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getProjectMapping = {
          description = "Gets the project ID and region for an Apigee organization.",
          flatPath = "v1/organizations/{organizationsId}:getProjectMapping",
          httpMethod = "GET",
          id = "apigee.organizations.getProjectMapping",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Apigee organization name in the following format: `organizations/{org}`",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:getProjectMapping",
          response = {
            ["$ref"] = "GoogleCloudApigeeV1OrganizationProjectMapping",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getRuntimeConfig = {
          description = "Get runtime config for an organization.",
          flatPath = "v1/organizations/{organizationsId}/runtimeConfig",
          httpMethod = "GET",
          id = "apigee.organizations.getRuntimeConfig",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the runtime config for the organization in the following format: 'organizations/{org}/runtimeConfig'.",
              location = "path",
              pattern = "^organizations/[^/]+/runtimeConfig$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "GoogleCloudApigeeV1RuntimeConfig",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getSyncAuthorization = {
          description = "Lists the service accounts with the permissions required to allow the Synchronizer to download environment data from the control plane. An ETag is returned in the response to `getSyncAuthorization`. Pass that ETag when calling [setSyncAuthorization](setSyncAuthorization) to ensure that you are updating the correct version. If you don't pass the ETag in the call to `setSyncAuthorization`, then the existing authorization is overwritten indiscriminately. For more information, see [Configure the Synchronizer](https://cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access). **Note**: Available to Apigee hybrid only.",
          flatPath = "v1/organizations/{organizationsId}:getSyncAuthorization",
          httpMethod = "POST",
          id = "apigee.organizations.getSyncAuthorization",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the Apigee organization. Use the following structure in your request: `organizations/{org}`",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:getSyncAuthorization",
          request = {
            ["$ref"] = "GoogleCloudApigeeV1GetSyncAuthorizationRequest",
          },
          response = {
            ["$ref"] = "GoogleCloudApigeeV1SyncAuthorization",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists the Apigee organizations and associated Google Cloud projects that you have permission to access. See [Understanding organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).",
          flatPath = "v1/organizations",
          httpMethod = "GET",
          id = "apigee.organizations.list",
          parameterOrder = {
            "parent",
          },
          parameters = {
            parent = {
              description = "Required. Use the following structure in your request: `organizations`",
              location = "path",
              pattern = "^organizations$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+parent}",
          response = {
            ["$ref"] = "GoogleCloudApigeeV1ListOrganizationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setAddons = {
          description = "Configures the add-ons for the Apigee organization. The existing add-on configuration will be fully replaced.",
          flatPath = "v1/organizations/{organizationsId}:setAddons",
          httpMethod = "POST",
          id = "apigee.organizations.setAddons",
          parameterOrder = {
            "org",
          },
          parameters = {
            org = {
              description = "Required. Name of the organization. Use the following structure in your request: `organizations/{org}`",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+org}:setAddons",
          request = {
            ["$ref"] = "GoogleCloudApigeeV1SetAddonsRequest",
          },
          response = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setSyncAuthorization = {
          description = "Sets the permissions required to allow the Synchronizer to download environment data from the control plane. You must call this API to enable proper functioning of hybrid. Pass the ETag when calling `setSyncAuthorization` to ensure that you are updating the correct version. To get an ETag, call [getSyncAuthorization](getSyncAuthorization). If you don't pass the ETag in the call to `setSyncAuthorization`, then the existing authorization is overwritten indiscriminately. For more information, see [Configure the Synchronizer](https://cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access). **Note**: Available to Apigee hybrid only.",
          flatPath = "v1/organizations/{organizationsId}:setSyncAuthorization",
          httpMethod = "POST",
          id = "apigee.organizations.setSyncAuthorization",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Name of the Apigee organization. Use the following structure in your request: `organizations/{org}`",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:setSyncAuthorization",
          request = {
            ["$ref"] = "GoogleCloudApigeeV1SyncAuthorization",
          },
          response = {
            ["$ref"] = "GoogleCloudApigeeV1SyncAuthorization",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        update = {
          description = "Updates the properties for an Apigee organization. No other fields in the organization profile will be updated.",
          flatPath = "v1/organizations/{organizationsId}",
          httpMethod = "PUT",
          id = "apigee.organizations.update",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Apigee organization name in the following format: `organizations/{org}`",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "GoogleCloudApigeeV1Organization",
          },
          response = {
            ["$ref"] = "GoogleCloudApigeeV1Organization",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        analytics = {
          resources = {
            datastores = {
              methods = {
                create = {
                  description = "Create a Datastore for an org",
                  flatPath = "v1/organizations/{organizationsId}/analytics/datastores",
                  httpMethod = "POST",
                  id = "apigee.organizations.analytics.datastores.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent organization name. Must be of the form `organizations/{org}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/analytics/datastores",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Datastore",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Datastore",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a Datastore from an org.",
                  flatPath = "v1/organizations/{organizationsId}/analytics/datastores/{datastoresId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.analytics.datastores.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the Datastore to be deleted. Must be of the form `organizations/{org}/analytics/datastores/{datastoreId}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/analytics/datastores/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get a Datastore",
                  flatPath = "v1/organizations/{organizationsId}/analytics/datastores/{datastoresId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.analytics.datastores.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Resource name of the Datastore to be get. Must be of the form `organizations/{org}/analytics/datastores/{datastoreId}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/analytics/datastores/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Datastore",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List Datastores",
                  flatPath = "v1/organizations/{organizationsId}/analytics/datastores",
                  httpMethod = "GET",
                  id = "apigee.organizations.analytics.datastores.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent organization name. Must be of the form `organizations/{org}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    targetType = {
                      description = "Optional. TargetType is used to fetch all Datastores that match the type",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/analytics/datastores",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListDatastoresResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                test = {
                  description = "Test if Datastore configuration is correct. This includes checking if credentials provided by customer have required permissions in target destination storage",
                  flatPath = "v1/organizations/{organizationsId}/analytics/datastores:test",
                  httpMethod = "POST",
                  id = "apigee.organizations.analytics.datastores.test",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent organization name Must be of the form `organizations/{org}`",
                      location = "path",
                      pattern = "^organizations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/analytics/datastores:test",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Datastore",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1TestDatastoreResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Update a Datastore",
                  flatPath = "v1/organizations/{organizationsId}/analytics/datastores/{datastoresId}",
                  httpMethod = "PUT",
                  id = "apigee.organizations.analytics.datastores.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The resource name of datastore to be updated. Must be of the form `organizations/{org}/analytics/datastores/{datastoreId}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/analytics/datastores/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Datastore",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Datastore",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        apiproducts = {
          methods = {
            attributes = {
              description = "Updates or creates API product attributes. This API **replaces** the current list of attributes with the attributes specified in the request body. In this way, you can update existing attributes, add new attributes, or delete existing attributes by omitting them from the request body. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with entities also get cached for at least 180 seconds after entity is accessed during runtime. In this case, the `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.",
              flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/attributes",
              httpMethod = "POST",
              id = "apigee.organizations.apiproducts.attributes",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apiproducts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}/attributes",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Attributes",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Attributes",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates an API product in an organization. You create API products after you have proxied backend services using API proxies. An API product is a collection of API resources combined with quota settings and metadata that you can use to deliver customized and productized API bundles to your developer community. This metadata can include: - Scope - Environments - API proxies - Extensible profile API products enable you repackage APIs on the fly, without having to do any additional coding or configuration. Apigee recommends that you start with a simple API product including only required elements. You then provision credentials to apps to enable them to start testing your APIs. After you have authentication and authorization working against a simple API product, you can iterate to create finer-grained API products, defining different sets of API resources for each API product. **WARNING:** - If you don't specify an API proxy in the request body, *any* app associated with the product can make calls to *any* API in your entire organization. - If you don't specify an environment in the request body, the product allows access to all environments. For more information, see What is an API product?",
              flatPath = "v1/organizations/{organizationsId}/apiproducts",
              httpMethod = "POST",
              id = "apigee.organizations.apiproducts.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the organization in which the API product will be created. Use the following structure in your request: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/apiproducts",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProduct",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProduct",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an API product from an organization. Deleting an API product causes app requests to the resource URIs defined in the API product to fail. Ensure that you create a new API product to serve existing apps, unless your intention is to disable access to the resources defined in the API product. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via the UI or the API. View the list of API products to verify the internal name.",
              flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.apiproducts.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apiproducts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProduct",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets configuration details for an API product. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via the UI or the API. View the list of API products to verify the internal name.",
              flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}",
              httpMethod = "GET",
              id = "apigee.organizations.apiproducts.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apiproducts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProduct",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all API product names for an organization. Filter the list by passing an `attributename` and `attibutevalue`. The maximum number of API products returned is 1000. You can paginate the list of API products returned using the `startKey` and `count` query parameters.",
              flatPath = "v1/organizations/{organizationsId}/apiproducts",
              httpMethod = "GET",
              id = "apigee.organizations.apiproducts.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                attributename = {
                  description = "Name of the attribute used to filter the search.",
                  location = "query",
                  type = "string",
                },
                attributevalue = {
                  description = "Value of the attribute used to filter the search.",
                  location = "query",
                  type = "string",
                },
                count = {
                  description = "Enter the number of API products you want returned in the API call. The limit is 1000.",
                  format = "int64",
                  location = "query",
                  type = "string",
                },
                expand = {
                  description = "Flag that specifies whether to expand the results. Set to `true` to get expanded details about each API.",
                  location = "query",
                  type = "boolean",
                },
                parent = {
                  description = "Required. Name of the organization. Use the following structure in your request: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                startKey = {
                  description = "Gets a list of API products starting with a specific API product in the list. For example, if you're returning 50 API products at a time (using the `count` query parameter), you can view products 50-99 by entering the name of the 50th API product in the first API (without using `startKey`). Product name is case sensitive.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/apiproducts",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListApiProductsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            update = {
              description = "Updates an existing API product. You must include all required values, whether or not you are updating them, as well as any optional values that you are updating. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via UI or API. View the list of API products to identify their internal names.",
              flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}",
              httpMethod = "PUT",
              id = "apigee.organizations.apiproducts.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apiproducts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProduct",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProduct",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            attributes = {
              methods = {
                delete = {
                  description = "Deletes an API product attribute.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/attributes/{attributesId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.apiproducts.attributes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the API product attribute. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}/attributes/{attribute}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+/attributes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the value of an API product attribute.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/attributes/{attributesId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.apiproducts.attributes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the API product attribute. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}/attributes/{attribute}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+/attributes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all API product attributes.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/attributes",
                  httpMethod = "GET",
                  id = "apigee.organizations.apiproducts.attributes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/attributes",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attributes",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateApiProductAttribute = {
                  description = "Updates the value of an API product attribute. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with entities also get cached for at least 180 seconds after entity is accessed during runtime. In this case, the `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/attributes/{attributesId}",
                  httpMethod = "POST",
                  id = "apigee.organizations.apiproducts.attributes.updateApiProductAttribute",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+/attributes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            rateplans = {
              methods = {
                create = {
                  description = "Create a rate plan that is associated with an API product in an organization. Using rate plans, API product owners can monetize their API products by configuring one or more of the following: - Billing frequency - Initial setup fees for using an API product - Payment funding model (postpaid only) - Fixed recurring or consumption-based charges for using an API product - Revenue sharing with developer partners An API product can have multiple rate plans associated with it but *only one* rate plan can be active at any point of time. **Note: From the developer's perspective, they purchase API products not rate plans.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/rateplans",
                  httpMethod = "POST",
                  id = "apigee.organizations.apiproducts.rateplans.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the API product that is associated with the rate plan. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/rateplans",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1RatePlan",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1RatePlan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a rate plan.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/rateplans/{rateplansId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.apiproducts.rateplans.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. ID of the rate plan. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}/rateplans/{rateplan}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+/rateplans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1RatePlan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a rate plan.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/rateplans/{rateplansId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.apiproducts.rateplans.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the rate plan. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}/rateplans/{rateplan}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+/rateplans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1RatePlan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all the rate plans for an API product.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/rateplans",
                  httpMethod = "GET",
                  id = "apigee.organizations.apiproducts.rateplans.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    count = {
                      description = "Number of rate plans to return in the API call. Use with the `startKey` parameter to provide more targeted filtering. The maximum limit is 1000. Defaults to 100.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    expand = {
                      description = "Flag that specifies whether to expand the results. Set to `true` to get expanded details about each API. Defaults to `false`.",
                      location = "query",
                      type = "boolean",
                    },
                    orderBy = {
                      description = "Name of the attribute used for sorting. Valid values include: * `name`: Name of the rate plan. * `state`: State of the rate plan (`DRAFT`, `PUBLISHED`). * `startTime`: Time when the rate plan becomes active. * `endTime`: Time when the rate plan expires. **Note**: Not supported by Apigee at this time.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the API product. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}` Use `organizations/{org}/apiproducts/-` to return rate plans for all API products within the organization.",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    startKey = {
                      description = "Name of the rate plan from which to start displaying the list of rate plans. If omitted, the list starts from the first item. For example, to view the rate plans from 51-150, set the value of `startKey` to the name of the 51st rate plan and set the value of `count` to 100.",
                      location = "query",
                      type = "string",
                    },
                    state = {
                      description = "State of the rate plans (`DRAFT`, `PUBLISHED`) that you want to display.",
                      enum = {
                        "STATE_UNSPECIFIED",
                        "DRAFT",
                        "PUBLISHED",
                      },
                      enumDescriptions = {
                        "State of the rate plan is not specified.",
                        "Rate plan is in draft mode and only visible to API providers.",
                        "Rate plan is published and will become visible to developers for the configured duration (between `startTime` and `endTime`).",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/rateplans",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListRatePlansResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates an existing rate plan.",
                  flatPath = "v1/organizations/{organizationsId}/apiproducts/{apiproductsId}/rateplans/{rateplansId}",
                  httpMethod = "PUT",
                  id = "apigee.organizations.apiproducts.rateplans.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the rate plan. Use the following structure in your request: `organizations/{org}/apiproducts/{apiproduct}/rateplans/{rateplan}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apiproducts/[^/]+/rateplans/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1RatePlan",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1RatePlan",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        apis = {
          methods = {
            create = {
              description = "Creates an API proxy. The API proxy created will not be accessible at runtime until it is deployed to an environment. Create a new API proxy by setting the `name` query parameter to the name of the API proxy. Import an API proxy configuration bundle stored in zip format on your local machine to your organization by doing the following: * Set the `name` query parameter to the name of the API proxy. * Set the `action` query parameter to `import`. * Set the `Content-Type` header to `multipart/form-data`. * Pass as a file the name of API proxy configuration bundle stored in zip format on your local machine using the `file` form field. **Note**: To validate the API proxy configuration bundle only without importing it, set the `action` query parameter to `validate`. When importing an API proxy configuration bundle, if the API proxy does not exist, it will be created. If the API proxy exists, then a new revision is created. Invalid API proxy configurations are rejected, and a list of validation errors is returned to the client.",
              flatPath = "v1/organizations/{organizationsId}/apis",
              httpMethod = "POST",
              id = "apigee.organizations.apis.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                action = {
                  description = "Action to perform when importing an API proxy configuration bundle. Set this parameter to one of the following values: * `import` to import the API proxy configuration bundle. * `validate` to validate the API proxy configuration bundle without importing it.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Name of the API proxy. Restrict the characters used to: A-Za-z0-9._-",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization in the following format: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                validate = {
                  description = "Ignored. All uploads are validated regardless of the value of this field. Maintained for compatibility with Apigee Edge API.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v1/{+parent}/apis",
              request = {
                ["$ref"] = "GoogleApiHttpBody",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProxyRevision",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an API proxy and all associated endpoints, policies, resources, and revisions. The API proxy must be undeployed before you can delete it.",
              flatPath = "v1/organizations/{organizationsId}/apis/{apisId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.apis.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the API proxy in the following format: `organizations/{org}/apis/{api}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apis/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProxy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets an API proxy including a list of existing revisions.",
              flatPath = "v1/organizations/{organizationsId}/apis/{apisId}",
              httpMethod = "GET",
              id = "apigee.organizations.apis.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the API proxy in the following format: `organizations/{org}/apis/{api}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apis/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProxy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the names of all API proxies in an organization. The names returned correspond to the names defined in the configuration files for each API proxy.",
              flatPath = "v1/organizations/{organizationsId}/apis",
              httpMethod = "GET",
              id = "apigee.organizations.apis.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                includeMetaData = {
                  description = "Flag that specifies whether to include API proxy metadata in the response.",
                  location = "query",
                  type = "boolean",
                },
                includeRevisions = {
                  description = "Flag that specifies whether to include a list of revisions in the response.",
                  location = "query",
                  type = "boolean",
                },
                parent = {
                  description = "Required. Name of the organization in the following format: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/apis",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListApiProxiesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates an existing API proxy.",
              flatPath = "v1/organizations/{organizationsId}/apis/{apisId}",
              httpMethod = "PATCH",
              id = "apigee.organizations.apis.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. API proxy to update in the following format: `organizations/{org}/apis/{api}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apis/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The list of fields to update.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProxy",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiProxy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            deployments = {
              methods = {
                list = {
                  description = "Lists all deployments of an API proxy.",
                  flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/deployments",
                  httpMethod = "GET",
                  id = "apigee.organizations.apis.deployments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the API proxy for which to return deployment information in the following format: `organizations/{org}/apis/{api}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apis/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/deployments",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            keyvaluemaps = {
              methods = {
                create = {
                  description = "Creates a key value map in an API proxy.",
                  flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/keyvaluemaps",
                  httpMethod = "POST",
                  id = "apigee.organizations.apis.keyvaluemaps.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the environment in which to create the key value map. Use the following structure in your request: `organizations/{org}/apis/{api}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apis/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/keyvaluemaps",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a key value map from an API proxy.",
                  flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/keyvaluemaps/{keyvaluemapsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.apis.keyvaluemaps.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the key value map. Use the following structure in your request: `organizations/{org}/apis/{api}/keyvaluemaps/{keyvaluemap}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apis/[^/]+/keyvaluemaps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                entries = {
                  methods = {
                    create = {
                      description = "Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/keyvaluemaps/{keyvaluemapsId}/entries",
                      httpMethod = "POST",
                      id = "apigee.organizations.apis.keyvaluemaps.entries.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/apis/[^/]+/keyvaluemaps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/entries",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a key value entry from a key value map scoped to an organization, environment, or API proxy. **Notes:** * After you delete the key value entry, the policy consuming the entry will continue to function with its cached values for a few minutes. This is expected behavior. * Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/keyvaluemaps/{keyvaluemapsId}/entries/{entriesId}",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.apis.keyvaluemaps.entries.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Scope as indicated by the URI in which to delete the key value map entry. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}/entries/{entry}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}/entries/{entry}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}/entries/{entry}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/apis/[^/]+/keyvaluemaps/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/keyvaluemaps/{keyvaluemapsId}/entries/{entriesId}",
                      httpMethod = "GET",
                      id = "apigee.organizations.apis.keyvaluemaps.entries.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Scope as indicated by the URI in which to fetch the key value map entry/value. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}/entries/{entry}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}/entries/{entry}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}/entries/{entry}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/apis/[^/]+/keyvaluemaps/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists key value entries for key values maps scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/keyvaluemaps/{keyvaluemapsId}/entries",
                      httpMethod = "GET",
                      id = "apigee.organizations.apis.keyvaluemaps.entries.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. Maximum number of key value entries to return. If unspecified, at most 100 entries will be returned.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token. If provides, must be a valid key value entry returned from a previous call that can be used to retrieve the next page.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Scope as indicated by the URI in which to list key value maps. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/apis/[^/]+/keyvaluemaps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/entries",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListKeyValueEntriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            revisions = {
              methods = {
                delete = {
                  description = "Deletes an API proxy revision and all policies, resources, endpoints, and revisions associated with it. The API proxy revision must be undeployed before you can delete it.",
                  flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/revisions/{revisionsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.apis.revisions.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. API proxy revision in the following format: `organizations/{org}/apis/{api}/revisions/{rev}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiProxyRevision",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets an API proxy revision. To download the API proxy configuration bundle for the specified revision as a zip file, set the `format` query parameter to `bundle`. If you are using curl, specify `-o filename.zip` to save the output to a file; otherwise, it displays to `stdout`. Then, develop the API proxy configuration locally and upload the updated API proxy configuration revision, as described in [updateApiProxyRevision](updateApiProxyRevision).",
                  flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/revisions/{revisionsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.apis.revisions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    format = {
                      description = "Format used when downloading the API proxy configuration revision. Set to `bundle` to download the API proxy configuration revision as a zip file.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. API proxy revision in the following format: `organizations/{org}/apis/{api}/revisions/{rev}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateApiProxyRevision = {
                  description = "Updates an existing API proxy revision by uploading the API proxy configuration bundle as a zip file from your local machine. You can update only API proxy revisions that have never been deployed. After deployment, an API proxy revision becomes immutable, even if it is undeployed. Set the `Content-Type` header to either `multipart/form-data` or `application/octet-stream`.",
                  flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/revisions/{revisionsId}",
                  httpMethod = "POST",
                  id = "apigee.organizations.apis.revisions.updateApiProxyRevision",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. API proxy revision to update in the following format: `organizations/{org}/apis/{api}/revisions/{rev}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validate = {
                      description = "Ignored. All uploads are validated regardless of the value of this field. Maintained for compatibility with Apigee Edge API.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiProxyRevision",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                deployments = {
                  methods = {
                    list = {
                      description = "Lists all deployments of an API proxy revision.",
                      flatPath = "v1/organizations/{organizationsId}/apis/{apisId}/revisions/{revisionsId}/deployments",
                      httpMethod = "GET",
                      id = "apigee.organizations.apis.revisions.deployments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Name of the API proxy revision for which to return deployment information in the following format: `organizations/{org}/apis/{api}/revisions/{rev}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/apis/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
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
        apps = {
          methods = {
            get = {
              description = "Gets the app profile for the specified app ID.",
              flatPath = "v1/organizations/{organizationsId}/apps/{appsId}",
              httpMethod = "GET",
              id = "apigee.organizations.apps.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. App ID in the following format: `organizations/{org}/apps/{app}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/apps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1App",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists IDs of apps within an organization that have the specified app status (approved or revoked) or are of the specified app type (developer or company).",
              flatPath = "v1/organizations/{organizationsId}/apps",
              httpMethod = "GET",
              id = "apigee.organizations.apps.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                apiProduct = {
                  description = "API product.",
                  location = "query",
                  type = "string",
                },
                apptype = {
                  description = "Optional. Filter by the type of the app. Valid values are `company` or `developer`. Defaults to `developer`.",
                  location = "query",
                  type = "string",
                },
                expand = {
                  description = "Optional. Flag that specifies whether to return an expanded list of apps for the organization. Defaults to `false`.",
                  location = "query",
                  type = "boolean",
                },
                ids = {
                  description = "Optional. Comma-separated list of app IDs on which to filter.",
                  location = "query",
                  type = "string",
                },
                includeCred = {
                  description = "Optional. Flag that specifies whether to include credentials in the response.",
                  location = "query",
                  type = "boolean",
                },
                keyStatus = {
                  description = "Optional. Key status of the app. Valid values include `approved` or `revoked`. Defaults to `approved`.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource path of the parent in the following format: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                rows = {
                  description = "Optional. Maximum number of app IDs to return. Defaults to 10000.",
                  format = "int64",
                  location = "query",
                  type = "string",
                },
                startKey = {
                  description = "Returns the list of apps starting from the specified app ID.",
                  location = "query",
                  type = "string",
                },
                status = {
                  description = "Optional. Filter by the status of the app. Valid values are `approved` or `revoked`. Defaults to `approved`.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/apps",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListAppsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        datacollectors = {
          methods = {
            create = {
              description = "Creates a new data collector.",
              flatPath = "v1/organizations/{organizationsId}/datacollectors",
              httpMethod = "POST",
              id = "apigee.organizations.datacollectors.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                dataCollectorId = {
                  description = "ID of the data collector. Overrides any ID in the data collector resource. Must be a string beginning with `dc_` that contains only letters, numbers, and underscores.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization in which to create the data collector in the following format: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/datacollectors",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1DataCollector",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DataCollector",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a data collector.",
              flatPath = "v1/organizations/{organizationsId}/datacollectors/{datacollectorsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.datacollectors.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the data collector in the following format: `organizations/{org}/datacollectors/{data_collector_id}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/datacollectors/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a data collector.",
              flatPath = "v1/organizations/{organizationsId}/datacollectors/{datacollectorsId}",
              httpMethod = "GET",
              id = "apigee.organizations.datacollectors.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the data collector in the following format: `organizations/{org}/datacollectors/{data_collector_id}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/datacollectors/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DataCollector",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all data collectors.",
              flatPath = "v1/organizations/{organizationsId}/datacollectors",
              httpMethod = "GET",
              id = "apigee.organizations.datacollectors.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Maximum number of data collectors to return. The page size defaults to 25.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token, returned from a previous ListDataCollectors call, that you can use to retrieve the next page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization for which to list data collectors in the following format: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/datacollectors",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListDataCollectorsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a data collector.",
              flatPath = "v1/organizations/{organizationsId}/datacollectors/{datacollectorsId}",
              httpMethod = "PATCH",
              id = "apigee.organizations.datacollectors.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the data collector in the following format: `organizations/{org}/datacollectors/{data_collector_id}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/datacollectors/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "List of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1DataCollector",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DataCollector",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        deployments = {
          methods = {
            list = {
              description = "Lists all deployments of API proxies or shared flows.",
              flatPath = "v1/organizations/{organizationsId}/deployments",
              httpMethod = "GET",
              id = "apigee.organizations.deployments.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the organization for which to return deployment information in the following format: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                sharedFlows = {
                  description = "Optional. Flag that specifies whether to return shared flow or API proxy deployments. Set to `true` to return shared flow deployments; set to `false` to return API proxy deployments. Defaults to `false`.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v1/{+parent}/deployments",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        developers = {
          methods = {
            attributes = {
              description = "Updates developer attributes. This API replaces the existing attributes with those specified in the request. Add new attributes, and include or exclude any existing attributes that you want to retain or remove, respectively. The custom attribute limit is 18. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/attributes",
              httpMethod = "POST",
              id = "apigee.organizations.developers.attributes",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Email address of the developer for which attributes are being updated. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/attributes",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Attributes",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Attributes",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a developer. Once created, the developer can register an app and obtain an API key. At creation time, a developer is set as `active`. To change the developer status, use the SetDeveloperStatus API.",
              flatPath = "v1/organizations/{organizationsId}/developers",
              httpMethod = "POST",
              id = "apigee.organizations.developers.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the Apigee organization in which the developer is created. Use the following structure in your request: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/developers",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Developer",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Developer",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a developer. All apps and API keys associated with the developer are also removed. **Warning**: This API will permanently delete the developer and related artifacts. To avoid permanently deleting developers and their artifacts, set the developer status to `inactive` using the SetDeveloperStatus API. **Note**: The delete operation is asynchronous. The developer app is deleted immediately, but its associated resources, such as apps and API keys, may take anywhere from a few seconds to a few minutes to be deleted.",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.developers.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Developer",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Returns the developer details, including the developer's name, email address, apps, and other information. **Note**: The response includes only the first 100 developer apps.",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}",
              httpMethod = "GET",
              id = "apigee.organizations.developers.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                action = {
                  description = "Status of the developer. Valid values are `active` or `inactive`.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Developer",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getBalance = {
              description = "Gets the account balance for the developer.",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/balance",
              httpMethod = "GET",
              id = "apigee.organizations.developers.getBalance",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Account balance for the developer. Use the following structure in your request: `organizations/{org}/developers/{developer}/balance`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+/balance$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DeveloperBalance",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getMonetizationConfig = {
              description = "Gets the monetization configuration for the developer.",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/monetizationConfig",
              httpMethod = "GET",
              id = "apigee.organizations.developers.getMonetizationConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Monetization configuration for the developer. Use the following structure in your request: `organizations/{org}/developers/{developer}/monetizationConfig`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+/monetizationConfig$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DeveloperMonetizationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all developers in an organization by email address. By default, the response does not include company developers. Set the `includeCompany` query parameter to `true` to include company developers. **Note**: A maximum of 1000 developers are returned in the response. You paginate the list of developers returned using the `startKey` and `count` query parameters.",
              flatPath = "v1/organizations/{organizationsId}/developers",
              httpMethod = "GET",
              id = "apigee.organizations.developers.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                app = {
                  description = "Optional. List only Developers that are associated with the app. Note that start_key, count are not applicable for this filter criteria.",
                  location = "query",
                  type = "string",
                },
                count = {
                  description = "Optional. Number of developers to return in the API call. Use with the `startKey` parameter to provide more targeted filtering. The limit is 1000.",
                  format = "int64",
                  location = "query",
                  type = "string",
                },
                expand = {
                  description = "Specifies whether to expand the results. Set to `true` to expand the results. This query parameter is not valid if you use the `count` or `startKey` query parameters.",
                  location = "query",
                  type = "boolean",
                },
                ids = {
                  description = "Optional. List of IDs to include, separated by commas.",
                  location = "query",
                  type = "string",
                },
                includeCompany = {
                  description = "Flag that specifies whether to include company details in the response.",
                  location = "query",
                  type = "boolean",
                },
                parent = {
                  description = "Required. Name of the Apigee organization. Use the following structure in your request: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                startKey = {
                  description = "**Note**: Must be used in conjunction with the `count` parameter. Email address of the developer from which to start displaying the list of developers. For example, if the an unfiltered list returns: ``` westley@example.com fezzik@example.com buttercup@example.com ``` and your `startKey` is `fezzik@example.com`, the list returned will be ``` fezzik@example.com buttercup@example.com ```",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/developers",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListOfDevelopersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setDeveloperStatus = {
              description = "Sets the status of a developer. A developer is `active` by default. If you set a developer's status to `inactive`, the API keys assigned to the developer apps are no longer valid even though the API keys are set to `approved`. Inactive developers can still sign in to the developer portal and create apps; however, any new API keys generated during app creation won't work. To set the status of a developer, set the `action` query parameter to `active` or `inactive`, and the `Content-Type` header to `application/octet-stream`. If successful, the API call returns the following HTTP status code: `204 No Content`",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}",
              httpMethod = "POST",
              id = "apigee.organizations.developers.setDeveloperStatus",
              parameterOrder = {
                "name",
              },
              parameters = {
                action = {
                  description = "Status of the developer. Valid values are `active` and `inactive`.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Name of the developer. Use the following structure in your request: `organizations/{org}/developers/{developer_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            update = {
              description = "Updates a developer. This API replaces the existing developer details with those specified in the request. Include or exclude any existing details that you want to retain or delete, respectively. The custom attribute limit is 18. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}",
              httpMethod = "PUT",
              id = "apigee.organizations.developers.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Developer",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Developer",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateMonetizationConfig = {
              description = "Updates the monetization configuration for the developer.",
              flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/monetizationConfig",
              httpMethod = "PUT",
              id = "apigee.organizations.developers.updateMonetizationConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Monetization configuration for the developer. Use the following structure in your request: `organizations/{org}/developers/{developer}/monetizationConfig`",
                  location = "path",
                  pattern = "^organizations/[^/]+/developers/[^/]+/monetizationConfig$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1DeveloperMonetizationConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DeveloperMonetizationConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            apps = {
              methods = {
                attributes = {
                  description = "Updates attributes for a developer app. This API replaces the current attributes with those specified in the request.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/attributes",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.apps.attributes",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/attributes",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Attributes",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attributes",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates an app associated with a developer. This API associates the developer app with the specified API product and auto-generates an API key for the app to use in calls to API proxies inside that API product. The `name` is the unique ID of the app that you can use in API calls. The `DisplayName` (set as an attribute) appears in the UI. If you don't set the `DisplayName` attribute, the `name` appears in the UI.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.apps.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the developer. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a developer app. **Note**: The delete operation is asynchronous. The developer app is deleted immediately, but its associated resources, such as app keys or access tokens, may take anywhere from a few seconds to a few minutes to be deleted.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.developers.apps.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                generateKeyPairOrUpdateDeveloperAppStatus = {
                  description = "Manages access to a developer app by enabling you to: * Approve or revoke a developer app * Generate a new consumer key and secret for a developer app To approve or revoke a developer app, set the `action` query parameter to `approve` or `revoke`, respectively, and the `Content-Type` header to `application/octet-stream`. If a developer app is revoked, none of its API keys are valid for API calls even though the keys are still approved. If successful, the API call returns the following HTTP status code: `204 No Content` To generate a new consumer key and secret for a developer app, pass the new key/secret details. Rather than replace an existing key, this API generates a new key. In this case, multiple key pairs may be associated with a single developer app. Each key pair has an independent status (`approve` or `revoke`) and expiration time. Any approved, non-expired key can be used in an API call. For example, if you're using API key rotation, you can generate new keys with expiration times that overlap keys that are going to expire. You might also generate a new consumer key/secret if the security of the original key/secret is compromised. The `keyExpiresIn` property defines the expiration time for the API key in milliseconds. If you don't set this property or set it to `-1`, the API key never expires. **Notes**: * When generating a new key/secret, this API replaces the existing attributes, notes, and callback URLs with those specified in the request. Include or exclude any existing information that you want to retain or delete, respectively. * To migrate existing consumer keys and secrets to hybrid from another system, see the CreateDeveloperAppKey API.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.apps.generateKeyPairOrUpdateDeveloperAppStatus",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    action = {
                      description = "Action. Valid values are `approve` or `revoke`.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns the details for a developer app.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.developers.apps.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    entity = {
                      description = "**Note**: Must be used in conjunction with the `query` parameter. Set to `apiresources` to return the number of API resources that have been approved for access by a developer app in the specified Apigee organization.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    query = {
                      description = "**Note**: Must be used in conjunction with the `entity` parameter. Set to `count` to return the number of API resources that have been approved for access by a developer app in the specified Apigee organization.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all apps created by a developer in an Apigee organization. Optionally, you can request an expanded view of the developer apps. A maximum of 100 developer apps are returned per API call. You can paginate the list of deveoper apps returned using the `startKey` and `count` query parameters.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps",
                  httpMethod = "GET",
                  id = "apigee.organizations.developers.apps.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    count = {
                      description = "Number of developer apps to return in the API call. Use with the `startKey` parameter to provide more targeted filtering. The limit is 1000.",
                      format = "int64",
                      location = "query",
                      type = "string",
                    },
                    expand = {
                      description = "Optional. Specifies whether to expand the results. Set to `true` to expand the results. This query parameter is not valid if you use the `count` or `startKey` query parameters.",
                      location = "query",
                      type = "boolean",
                    },
                    parent = {
                      description = "Required. Name of the developer. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    shallowExpand = {
                      description = "Optional. Specifies whether to expand the results in shallow mode. Set to `true` to expand the results in shallow mode.",
                      location = "query",
                      type = "boolean",
                    },
                    startKey = {
                      description = "**Note**: Must be used in conjunction with the `count` parameter. Name of the developer app from which to start displaying the list of developer apps. For example, if you're returning 50 developer apps at a time (using the `count` query parameter), you can view developer apps 50-99 by entering the name of the 50th developer app. The developer app name is case sensitive.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apps",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListDeveloperAppsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates the details for a developer app. In addition, you can add an API product to a developer app and automatically generate an API key for the app to use when calling APIs in the API product. If you want to use an existing API key for the API product, add the API product to the API key using the UpdateDeveloperAppKey API. Using this API, you cannot update the following: * App name as it is the primary key used to identify the app and cannot be changed. * Scopes associated with the app. Instead, use the ReplaceDeveloperAppKey API. This API replaces the existing attributes with those specified in the request. Include or exclude any existing attributes that you want to retain or delete, respectively.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}",
                  httpMethod = "PUT",
                  id = "apigee.organizations.developers.apps.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                attributes = {
                  methods = {
                    delete = {
                      description = "Deletes a developer app attribute.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/attributes/{attributesId}",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.developers.apps.attributes.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the developer app attribute. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}/attributes/{attribute}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/attributes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Attribute",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Returns a developer app attribute.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/attributes/{attributesId}",
                      httpMethod = "GET",
                      id = "apigee.organizations.developers.apps.attributes.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the developer app attribute. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}/attributes/{attribute}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/attributes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Attribute",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Returns a list of all developer app attributes.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/attributes",
                      httpMethod = "GET",
                      id = "apigee.organizations.developers.apps.attributes.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Name of the developer app. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/attributes",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Attributes",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    updateDeveloperAppAttribute = {
                      description = "Updates a developer app attribute. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (current default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/attributes/{attributesId}",
                      httpMethod = "POST",
                      id = "apigee.organizations.developers.apps.attributes.updateDeveloperAppAttribute",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the developer app attribute. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}/attributes/{attribute}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/attributes/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1Attribute",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Attribute",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                keys = {
                  methods = {
                    create = {
                      description = "Creates a custom consumer key and secret for a developer app. This is particularly useful if you want to migrate existing consumer keys and secrets to Apigee from another system. Consumer keys and secrets can contain letters, numbers, underscores, and hyphens. No other special characters are allowed. To avoid service disruptions, a consumer key and secret should not exceed 2 KBs each. **Note**: When creating the consumer key and secret, an association to API products will not be made. Therefore, you should not specify the associated API products in your request. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created. If a consumer key and secret already exist, you can keep them or delete them using the DeleteDeveloperAppKey API.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys",
                      httpMethod = "POST",
                      id = "apigee.organizations.developers.apps.keys.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Parent of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/keys",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an app's consumer key and removes all API products associated with the app. After the consumer key is deleted, it cannot be used to access any APIs. **Note**: After you delete a consumer key, you may want to: 1. Create a new consumer key and secret for the developer app using the CreateDeveloperAppKey API, and subsequently add an API product to the key using the UpdateDeveloperAppKey API. 2. Delete the developer app, if it is no longer required.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys/{keysId}",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.developers.apps.keys.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets details for a consumer key for a developer app, including the key and secret value, associated API products, and other information.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys/{keysId}",
                      httpMethod = "GET",
                      id = "apigee.organizations.developers.apps.keys.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    replaceDeveloperAppKey = {
                      description = "Updates the scope of an app. This API replaces the existing scopes with those specified in the request. Include or exclude any existing scopes that you want to retain or delete, respectively. The specified scopes must already be defined for the API products associated with the app. This API sets the `scopes` element under the `apiProducts` element in the attributes of the app.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys/{keysId}",
                      httpMethod = "PUT",
                      id = "apigee.organizations.developers.apps.keys.replaceDeveloperAppKey",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    updateDeveloperAppKey = {
                      description = "Adds an API product to a developer app key, enabling the app that holds the key to access the API resources bundled in the API product. In addition, you can add attributes to a developer app key. This API replaces the existing attributes with those specified in the request. Include or exclude any existing attributes that you want to retain or delete, respectively. You can use the same key to access all API products associated with the app.",
                      flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys/{keysId}",
                      httpMethod = "POST",
                      id = "apigee.organizations.developers.apps.keys.updateDeveloperAppKey",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        action = {
                          description = "Approve or revoke the consumer key by setting this value to `approve` or `revoke`, respectively. The `Content-Type` header must be set to `application/octet-stream`.",
                          location = "query",
                          type = "string",
                        },
                        name = {
                          description = "Name of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    apiproducts = {
                      methods = {
                        delete = {
                          description = "Removes an API product from an app's consumer key. After the API product is removed, the app cannot access the API resources defined in that API product. **Note**: The consumer key is not removed, only its association with the API product.",
                          flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys/{keysId}/apiproducts/{apiproductsId}",
                          httpMethod = "DELETE",
                          id = "apigee.organizations.developers.apps.keys.apiproducts.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Name of the API product in the developer app key in the following format: `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}/apiproducts/{apiproduct}`",
                              location = "path",
                              pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+/apiproducts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        updateDeveloperAppKeyApiProduct = {
                          description = "Approves or revokes the consumer key for an API product. After a consumer key is approved, the app can use it to access APIs. A consumer key that is revoked or pending cannot be used to access an API. Any access tokens associated with a revoked consumer key will remain active. However, Apigee checks the status of the consumer key and if set to `revoked` will not allow access to the API.",
                          flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys/{keysId}/apiproducts/{apiproductsId}",
                          httpMethod = "POST",
                          id = "apigee.organizations.developers.apps.keys.apiproducts.updateDeveloperAppKeyApiProduct",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            action = {
                              description = "Approve or revoke the consumer key by setting this value to `approve` or `revoke`, respectively.",
                              location = "query",
                              type = "string",
                            },
                            name = {
                              description = "Name of the API product in the developer app key in the following format: `organizations/{org}/developers/{developer_email}/apps/{app}/keys/{key}/apiproducts/{apiproduct}`",
                              location = "path",
                              pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+/keys/[^/]+/apiproducts/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                    },
                    create = {
                      methods = {
                        create = {
                          description = "Creates a custom consumer key and secret for a developer app. This is particularly useful if you want to migrate existing consumer keys and secrets to Apigee from another system. Consumer keys and secrets can contain letters, numbers, underscores, and hyphens. No other special characters are allowed. To avoid service disruptions, a consumer key and secret should not exceed 2 KBs each. **Note**: When creating the consumer key and secret, an association to API products will not be made. Therefore, you should not specify the associated API products in your request. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created. If a consumer key and secret already exist, you can keep them or delete them using the DeleteDeveloperAppKey API.",
                          flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/apps/{appsId}/keys/create",
                          httpMethod = "POST",
                          id = "apigee.organizations.developers.apps.keys.create.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Parent of the developer app key. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/apps`",
                              location = "path",
                              pattern = "^organizations/[^/]+/developers/[^/]+/apps/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/keys/create",
                          request = {
                            ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudApigeeV1DeveloperAppKey",
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
            attributes = {
              methods = {
                delete = {
                  description = "Deletes a developer attribute.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/attributes/{attributesId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.developers.attributes.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the developer attribute. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/attributes/{attribute}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/attributes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns the value of the specified developer attribute.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/attributes/{attributesId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.developers.attributes.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the developer attribute. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/attributes/{attribute}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/attributes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Returns a list of all developer attributes.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/attributes",
                  httpMethod = "GET",
                  id = "apigee.organizations.developers.attributes.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Email address of the developer for which attributes are being listed. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/attributes",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attributes",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateDeveloperAttribute = {
                  description = "Updates a developer attribute. **Note**: OAuth access tokens and Key Management Service (KMS) entities (apps, developers, and API products) are cached for 180 seconds (default). Any custom attributes associated with these entities are cached for at least 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to expire an access token in less than 180 seconds.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/attributes/{attributesId}",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.attributes.updateDeveloperAttribute",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the developer attribute. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/attributes/{attribute}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/attributes/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Attribute",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            balance = {
              methods = {
                adjust = {
                  description = "Adjust the prepaid balance for the developer. This API will be used in scenarios where the developer has been under-charged or over-charged.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/balance:adjust",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.balance.adjust",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Account balance for the developer. Use the following structure in your request: `organizations/{org}/developers/{developer}/balance`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/balance$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:adjust",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1AdjustDeveloperBalanceRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperBalance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                credit = {
                  description = "Credits the account balance for the developer.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/balance:credit",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.balance.credit",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Account balance for the developer. Use the following structure in your request: `organizations/{org}/developers/{developer}/balance`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/balance$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:credit",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1CreditDeveloperBalanceRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperBalance",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            subscriptions = {
              methods = {
                create = {
                  description = "Creates a subscription to an API product. ",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/subscriptions",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.subscriptions.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Email address of the developer that is purchasing a subscription to the API product. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/subscriptions",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperSubscription",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperSubscription",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                expire = {
                  description = "Expires an API product subscription immediately.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/subscriptions/{subscriptionsId}:expire",
                  httpMethod = "POST",
                  id = "apigee.organizations.developers.subscriptions.expire",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the API product subscription. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/subscriptions/{subscription}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/subscriptions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:expire",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperSubscription",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets details for an API product subscription.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/subscriptions/{subscriptionsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.developers.subscriptions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the API product subscription. Use the following structure in your request: `organizations/{org}/developers/{developer_email}/subscriptions/{subscription}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+/subscriptions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1DeveloperSubscription",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all API product subscriptions for a developer.",
                  flatPath = "v1/organizations/{organizationsId}/developers/{developersId}/subscriptions",
                  httpMethod = "GET",
                  id = "apigee.organizations.developers.subscriptions.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    count = {
                      description = "Number of API product subscriptions to return in the API call. Use with `startKey` to provide more targeted filtering. Defaults to 100. The maximum limit is 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    parent = {
                      description = "Required. Email address of the developer. Use the following structure in your request: `organizations/{org}/developers/{developer_email}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/developers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    startKey = {
                      description = "Name of the API product subscription from which to start displaying the list of subscriptions. If omitted, the list starts from the first item. For example, to view the API product subscriptions from 51-150, set the value of `startKey` to the name of the 51st subscription and set the value of `count` to 100.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/subscriptions",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        endpointAttachments = {
          methods = {
            create = {
              description = "Creates an endpoint attachment. **Note:** Not supported for Apigee hybrid.",
              flatPath = "v1/organizations/{organizationsId}/endpointAttachments",
              httpMethod = "POST",
              id = "apigee.organizations.endpointAttachments.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                endpointAttachmentId = {
                  description = "ID to use for the endpoint attachment. ID must start with a lowercase letter followed by up to 31 lowercase letters, numbers, or hyphens, and cannot end with a hyphen. The minimum length is 2.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Organization the endpoint attachment will be created in.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/endpointAttachments",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1EndpointAttachment",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an endpoint attachment.",
              flatPath = "v1/organizations/{organizationsId}/endpointAttachments/{endpointAttachmentsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.endpointAttachments.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/endpointAttachments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets the endpoint attachment.",
              flatPath = "v1/organizations/{organizationsId}/endpointAttachments/{endpointAttachmentsId}",
              httpMethod = "GET",
              id = "apigee.organizations.endpointAttachments.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/endpointAttachments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1EndpointAttachment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists the endpoint attachments in an organization.",
              flatPath = "v1/organizations/{organizationsId}/endpointAttachments",
              httpMethod = "GET",
              id = "apigee.organizations.endpointAttachments.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. Maximum number of endpoint attachments to return. If unspecified, at most 25 attachments will be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. Page token, returned from a previous `ListEndpointAttachments` call, that you can use to retrieve the next page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization for which to list endpoint attachments. Use the following structure in your request: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/endpointAttachments",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListEndpointAttachmentsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        envgroups = {
          methods = {
            create = {
              description = "Creates a new environment group.",
              flatPath = "v1/organizations/{organizationsId}/envgroups",
              httpMethod = "POST",
              id = "apigee.organizations.envgroups.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                name = {
                  description = "ID of the environment group. Overrides any ID in the environment_group resource.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization in which to create the environment group in the following format: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/envgroups",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroup",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an environment group.",
              flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.envgroups.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/envgroups/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets an environment group.",
              flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}",
              httpMethod = "GET",
              id = "apigee.organizations.envgroups.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/envgroups/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroup",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getDeployedIngressConfig = {
              description = "Gets the deployed ingress configuration for an environment group.",
              flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}/deployedIngressConfig",
              httpMethod = "GET",
              id = "apigee.organizations.envgroups.getDeployedIngressConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the deployed configuration for the environment group in the following format: 'organizations/{org}/envgroups/{envgroup}/deployedIngressConfig'.",
                  location = "path",
                  pattern = "^organizations/[^/]+/envgroups/[^/]+/deployedIngressConfig$",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "When set to FULL, additional details about the specific deployments receiving traffic will be included in the IngressConfig response's RoutingRules.",
                  enum = {
                    "INGRESS_CONFIG_VIEW_UNSPECIFIED",
                    "BASIC",
                    "FULL",
                  },
                  enumDescriptions = {
                    "The default/unset value. The API will default to the BASIC view.",
                    "Include all ingress config data necessary for the runtime to configure ingress, but no more. Routing rules will include only basepath and destination environment. This the default value.",
                    "Include all ingress config data, including internal debug info for each routing rule such as the proxy claiming a particular basepath and when the routing rule first appeared in the env group.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroupConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all environment groups.",
              flatPath = "v1/organizations/{organizationsId}/envgroups",
              httpMethod = "GET",
              id = "apigee.organizations.envgroups.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Maximum number of environment groups to return. The page size defaults to 25.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token, returned from a previous ListEnvironmentGroups call, that you can use to retrieve the next page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization for which to list environment groups in the following format: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/envgroups",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListEnvironmentGroupsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates an environment group.",
              flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}",
              httpMethod = "PATCH",
              id = "apigee.organizations.envgroups.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment group to update in the format: `organizations/{org}/envgroups/{envgroup}.",
                  location = "path",
                  pattern = "^organizations/[^/]+/envgroups/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "List of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroup",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            attachments = {
              methods = {
                create = {
                  description = "Creates a new attachment of an environment to an environment group.",
                  flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}/attachments",
                  httpMethod = "POST",
                  id = "apigee.organizations.envgroups.attachments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. EnvironmentGroup under which to create the attachment in the following format: `organizations/{org}/envgroups/{envgroup}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/envgroups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/attachments",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroupAttachment",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an environment group attachment.",
                  flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}/attachments/{attachmentsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.envgroups.attachments.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the environment group attachment to delete in the following format: `organizations/{org}/envgroups/{envgroup}/attachments/{attachment}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/envgroups/[^/]+/attachments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets an environment group attachment.",
                  flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}/attachments/{attachmentsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.envgroups.attachments.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the environment group attachment in the following format: `organizations/{org}/envgroups/{envgroup}/attachments/{attachment}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/envgroups/[^/]+/attachments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroupAttachment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all attachments of an environment group.",
                  flatPath = "v1/organizations/{organizationsId}/envgroups/{envgroupsId}/attachments",
                  httpMethod = "GET",
                  id = "apigee.organizations.envgroups.attachments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of environment group attachments to return. The page size defaults to 25.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token, returned by a previous ListEnvironmentGroupAttachments call, that you can use to retrieve the next page.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/envgroups/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/attachments",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        environments = {
          methods = {
            create = {
              description = "Creates an environment in an organization.",
              flatPath = "v1/organizations/{organizationsId}/environments",
              httpMethod = "POST",
              id = "apigee.organizations.environments.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                name = {
                  description = "Optional. Name of the environment. Alternatively, the name may be specified in the request body in the name field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization in which the environment will be created. Use the following structure in your request: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/environments",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Environment",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an environment from an organization. **Warning: You must delete all key value maps and key value entries before you delete an environment.** Otherwise, if you re-create the environment the key value map entry operations will encounter encryption/decryption discrepancies.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.environments.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets environment details.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}",
              httpMethod = "GET",
              id = "apigee.organizations.environments.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Environment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getApiSecurityRuntimeConfig = {
              description = "Gets the API Security runtime configuration for an environment. This named ApiSecurityRuntimeConfig to prevent conflicts with ApiSecurityConfig from addon config.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apiSecurityRuntimeConfig",
              httpMethod = "GET",
              id = "apigee.organizations.environments.getApiSecurityRuntimeConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment API Security Runtime configuration resource. Use the following structure in your request: `organizations/{org}/environments/{env}/apiSecurityRuntimeConfig`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+/apiSecurityRuntimeConfig$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ApiSecurityRuntimeConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getDebugmask = {
              description = "Gets the debug mask singleton resource for an environment.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/debugmask",
              httpMethod = "GET",
              id = "apigee.organizations.environments.getDebugmask",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the debug mask. Use the following structure in your request: `organizations/{org}/environments/{env}/debugmask`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+/debugmask$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DebugMask",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getDeployedConfig = {
              description = "Gets the deployed configuration for an environment.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/deployedConfig",
              httpMethod = "GET",
              id = "apigee.organizations.environments.getDeployedConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment deployed configuration resource. Use the following structure in your request: `organizations/{org}/environments/{env}/deployedConfig`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+/deployedConfig$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1EnvironmentConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getIamPolicy = {
              description = "Gets the IAM policy on an environment. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.environments.getIamPolicy` permission to call this API.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}:getIamPolicy",
              httpMethod = "GET",
              id = "apigee.organizations.environments.getIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                ["options.requestedPolicyVersion"] = {
                  description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                resource = {
                  description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:getIamPolicy",
              response = {
                ["$ref"] = "GoogleIamV1Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getTraceConfig = {
              description = "Get distributed trace configuration in an environment.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/traceConfig",
              httpMethod = "GET",
              id = "apigee.organizations.environments.getTraceConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the trace configuration. Use the following structure in your request: \"organizations/*/environments/*/traceConfig\".",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+/traceConfig$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1TraceConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            modifyEnvironment = {
              description = "Updates properties for an Apigee environment with patch semantics using a field mask. **Note:** Not supported for Apigee hybrid.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}",
              httpMethod = "PATCH",
              id = "apigee.organizations.environments.modifyEnvironment",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{environment}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "List of fields to be updated. Fields that can be updated: node_config.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Environment",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            setIamPolicy = {
              description = "Sets the IAM policy on an environment, if the policy already exists it will be replaced. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.environments.setIamPolicy` permission to call this API.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}:setIamPolicy",
              httpMethod = "POST",
              id = "apigee.organizations.environments.setIamPolicy",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:setIamPolicy",
              request = {
                ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            subscribe = {
              description = "Creates a subscription for the environment's Pub/Sub topic. The server will assign a random name for this subscription. The \"name\" and \"push_config\" must *not* be specified.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}:subscribe",
              httpMethod = "POST",
              id = "apigee.organizations.environments.subscribe",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:subscribe",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Subscription",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Tests the permissions of a user on an environment, and returns a subset of permissions that the user has on the environment. If the environment does not exist, an empty permission set is returned (a NOT_FOUND error is not returned).",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}:testIamPermissions",
              httpMethod = "POST",
              id = "apigee.organizations.environments.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+resource}:testIamPermissions",
              request = {
                ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
              },
              response = {
                ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            unsubscribe = {
              description = "Deletes a subscription for the environment's Pub/Sub topic.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}:unsubscribe",
              httpMethod = "POST",
              id = "apigee.organizations.environments.unsubscribe",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:unsubscribe",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Subscription",
              },
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            update = {
              description = "Updates an existing environment. When updating properties, you must pass all existing properties to the API, even if they are not being changed. If you omit properties from the payload, the properties are removed. To get the current list of properties for the environment, use the [Get Environment API](get). **Note**: Both `PUT` and `POST` methods are supported for updating an existing environment.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}",
              httpMethod = "PUT",
              id = "apigee.organizations.environments.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Environment",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Environment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateDebugmask = {
              description = "Updates the debug mask singleton resource for an environment.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/debugmask",
              httpMethod = "PATCH",
              id = "apigee.organizations.environments.updateDebugmask",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the debug mask.",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+/debugmask$",
                  required = true,
                  type = "string",
                },
                replaceRepeatedFields = {
                  description = "Boolean flag that specifies whether to replace existing values in the debug mask when doing an update. Set to true to replace existing values. The default behavior is to append the values (false).",
                  location = "query",
                  type = "boolean",
                },
                updateMask = {
                  description = "Field debug mask to support partial updates.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1DebugMask",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DebugMask",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateEnvironment = {
              description = "Updates an existing environment. When updating properties, you must pass all existing properties to the API, even if they are not being changed. If you omit properties from the payload, the properties are removed. To get the current list of properties for the environment, use the [Get Environment API](get). **Note**: Both `PUT` and `POST` methods are supported for updating an existing environment.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}",
              httpMethod = "POST",
              id = "apigee.organizations.environments.updateEnvironment",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the environment. Use the following structure in your request: `organizations/{org}/environments/{env}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Environment",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Environment",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            updateTraceConfig = {
              description = "Updates the trace configurations in an environment. Note that the repeated fields have replace semantics when included in the field mask and that they will be overwritten by the value of the fields in the request body.",
              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/traceConfig",
              httpMethod = "PATCH",
              id = "apigee.organizations.environments.updateTraceConfig",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the trace configuration. Use the following structure in your request: \"organizations/*/environments/*/traceConfig\".",
                  location = "path",
                  pattern = "^organizations/[^/]+/environments/[^/]+/traceConfig$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "List of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1TraceConfig",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1TraceConfig",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            analytics = {
              resources = {
                admin = {
                  methods = {
                    getSchemav2 = {
                      description = "Gets a list of metrics and dimensions that can be used to create analytics queries and reports. Each schema element contains the name of the field, its associated type, and a flag indicating whether it is a standard or custom field.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/analytics/admin/schemav2",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.analytics.admin.getSchemav2",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        disableCache = {
                          description = "Flag that specifies whether the schema is be read from the database or cache. Set to `true` to read the schema from the database. Defaults to cache.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. Path to the schema. Use the following structure in your request: `organizations/{org}/environments/{env}/analytics/admin/schemav2`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/analytics/admin/schemav2$",
                          required = true,
                          type = "string",
                        },
                        type = {
                          description = "Required. Name of the dataset for which you want to retrieve the schema. For example: `fact` or `agg_cus1`",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Schema",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                exports = {
                  methods = {
                    create = {
                      description = "Submit a data export job to be processed in the background. If the request is successful, the API returns a 201 status, a URI that can be used to retrieve the status of the export job, and the `state` value of \"enqueued\".",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/analytics/exports",
                      httpMethod = "POST",
                      id = "apigee.organizations.environments.analytics.exports.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Names of the parent organization and environment. Must be of the form `organizations/{org}/environments/{env}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/analytics/exports",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1ExportRequest",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Export",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the details and status of an analytics export job. If the export job is still in progress, its `state` is set to \"running\". After the export job has completed successfully, its `state` is set to \"completed\". If the export job fails, its `state` is set to `failed`.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/analytics/exports/{exportsId}",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.analytics.exports.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name of the export to get.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/analytics/exports/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Export",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists the details and status of all analytics export jobs belonging to the parent organization and environment.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/analytics/exports",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.analytics.exports.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Names of the parent organization and environment. Must be of the form `organizations/{org}/environments/{env}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/analytics/exports",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListExportsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            apis = {
              resources = {
                deployments = {
                  methods = {
                    list = {
                      description = "Lists all deployments of an API proxy in an environment.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/deployments",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.apis.deployments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Name representing an API proxy in an environment in the following format: `organizations/{org}/environments/{env}/apis/{api}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                revisions = {
                  methods = {
                    deploy = {
                      description = "Deploys a revision of an API proxy. If another revision of the same API proxy revision is currently deployed, set the `override` parameter to `true` to have this revision replace the currently deployed revision. You cannot invoke an API proxy until it has been deployed to an environment. After you deploy an API proxy revision, you cannot edit it. To edit the API proxy, you must create and deploy a new revision. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.create` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.deploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}` ",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/deployments",
                      httpMethod = "POST",
                      id = "apigee.organizations.environments.apis.revisions.deploy",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        override = {
                          description = "Flag that specifies whether the new deployment replaces other deployed revisions of the API proxy in the environment. Set `override` to `true` to replace other deployed revisions. By default, `override` is `false` and the deployment is rejected if other revisions of the API proxy are deployed in the environment.",
                          location = "query",
                          type = "boolean",
                        },
                        sequencedRollout = {
                          description = "Flag that specifies whether to enable sequenced rollout. If set to `true`, the routing rules for this deployment and the environment changes to add the deployment will be rolled out in a safe order. This reduces the risk of downtime that could be caused by changing the environment group's routing before the new destination for the affected traffic is ready to receive it. This should only be necessary if the new deployment will be capturing traffic from another environment under a shared environment group or if traffic will be rerouted to a different environment due to a base path removal. The [GenerateDeployChangeReport API](GenerateDeployChangeReport) may be used to examine routing changes before issuing the deployment request, and its response will indicate if a sequenced rollout is recommended for the deployment.",
                          location = "query",
                          type = "boolean",
                        },
                        serviceAccount = {
                          description = "Google Cloud IAM service account. The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be `{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Deployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getDeployments = {
                      description = "Gets the deployment of an API proxy revision and actual state reported by runtime pods.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/deployments",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.apis.revisions.getDeployments",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name representing an API proxy revision in an environment in the following format: `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Deployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    undeploy = {
                      description = "Undeploys an API proxy revision from an environment. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.delete` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.undeploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}`",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/deployments",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.environments.apis.revisions.undeploy",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        sequencedRollout = {
                          description = "Flag that specifies whether to enable sequenced rollout. If set to `true`, the environment group routing rules corresponding to this deployment will be removed before removing the deployment from the runtime. This is likely to be a rare use case; it is only needed when the intended effect of undeploying this proxy is to cause the traffic it currently handles to be rerouted to some other existing proxy in the environment group. The [GenerateUndeployChangeReport API](GenerateUndeployChangeReport) may be used to examine routing changes before issuing the undeployment request, and its response will indicate if a sequenced rollout is recommended for the undeployment.",
                          location = "query",
                          type = "boolean",
                        },
                      },
                      path = "v1/{+name}/deployments",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                  resources = {
                    debugsessions = {
                      methods = {
                        create = {
                          description = "Creates a debug session for a deployed API Proxy revision.",
                          flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/debugsessions",
                          httpMethod = "POST",
                          id = "apigee.organizations.environments.apis.revisions.debugsessions.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            parent = {
                              description = "Required. The resource name of the API Proxy revision deployment for which to create the DebugSession. Must be of the form `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}`.",
                              location = "path",
                              pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            timeout = {
                              description = "Optional. The time in seconds after which this DebugSession should end. A timeout specified in DebugSession will overwrite this value.",
                              format = "int64",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/debugsessions",
                          request = {
                            ["$ref"] = "GoogleCloudApigeeV1DebugSession",
                          },
                          response = {
                            ["$ref"] = "GoogleCloudApigeeV1DebugSession",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        deleteData = {
                          description = "Deletes the data from a debug session. This does not cancel the debug session or prevent further data from being collected if the session is still active in runtime pods.",
                          flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/debugsessions/{debugsessionsId}/data",
                          httpMethod = "DELETE",
                          id = "apigee.organizations.environments.apis.revisions.debugsessions.deleteData",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the debug session to delete. Must be of the form: `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}/debugsessions/{debugsession}`.",
                              location = "path",
                              pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+/debugsessions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/data",
                          response = {
                            ["$ref"] = "GoogleProtobufEmpty",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        get = {
                          description = "Retrieves a debug session.",
                          flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/debugsessions/{debugsessionsId}",
                          httpMethod = "GET",
                          id = "apigee.organizations.environments.apis.revisions.debugsessions.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The name of the debug session to retrieve. Must be of the form: `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}/debugsessions/{session}`.",
                              location = "path",
                              pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+/debugsessions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "GoogleCloudApigeeV1DebugSession",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists debug sessions that are currently active in the given API Proxy revision.",
                          flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/debugsessions",
                          httpMethod = "GET",
                          id = "apigee.organizations.environments.apis.revisions.debugsessions.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            pageSize = {
                              description = "Maximum number of debug sessions to return. The page size defaults to 25.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Page token, returned from a previous ListDebugSessions call, that you can use to retrieve the next page.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The name of the API Proxy revision deployment for which to list debug sessions. Must be of the form: `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}`.",
                              location = "path",
                              pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/debugsessions",
                          response = {
                            ["$ref"] = "GoogleCloudApigeeV1ListDebugSessionsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                      },
                      resources = {
                        data = {
                          methods = {
                            get = {
                              description = "Gets the debug data from a transaction.",
                              flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/debugsessions/{debugsessionsId}/data/{dataId}",
                              httpMethod = "GET",
                              id = "apigee.organizations.environments.apis.revisions.debugsessions.data.get",
                              parameterOrder = {
                                "name",
                              },
                              parameters = {
                                name = {
                                  description = "Required. The name of the debug session transaction. Must be of the form: `organizations/{organization}/environments/{environment}/apis/{api}/revisions/{revision}/debugsessions/{session}/data/{transaction}`.",
                                  location = "path",
                                  pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+/debugsessions/[^/]+/data/[^/]+$",
                                  required = true,
                                  type = "string",
                                },
                              },
                              path = "v1/{+name}",
                              response = {
                                ["$ref"] = "GoogleCloudApigeeV1DebugSessionTransaction",
                              },
                              scopes = {
                                "https://www.googleapis.com/auth/cloud-platform",
                              },
                            },
                          },
                        },
                      },
                    },
                    deployments = {
                      methods = {
                        generateDeployChangeReport = {
                          description = "Generates a report for a dry run analysis of a DeployApiProxy request without committing the deployment. In addition to the standard validations performed when adding deployments, additional analysis will be done to detect possible traffic routing changes that would result from this deployment being created. Any potential routing conflicts or unsafe changes will be reported in the response. This routing analysis is not performed for a non-dry-run DeployApiProxy request. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments:generateDeployChangeReport`, two permissions are required: * `apigee.deployments.create` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.deploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}`",
                          flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/deployments:generateDeployChangeReport",
                          httpMethod = "POST",
                          id = "apigee.organizations.environments.apis.revisions.deployments.generateDeployChangeReport",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`",
                              location = "path",
                              pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            override = {
                              description = "Flag that specifies whether to force the deployment of the new revision over the currently deployed revision by overriding conflict checks.",
                              location = "query",
                              type = "boolean",
                            },
                          },
                          path = "v1/{+name}/deployments:generateDeployChangeReport",
                          response = {
                            ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReport",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        generateUndeployChangeReport = {
                          description = "Generates a report for a dry run analysis of an UndeployApiProxy request without committing the undeploy. In addition to the standard validations performed when removing deployments, additional analysis will be done to detect possible traffic routing changes that would result from this deployment being removed. Any potential routing conflicts or unsafe changes will be reported in the response. This routing analysis is not performed for a non-dry-run UndeployApiProxy request. For a request path `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}/deployments:generateUndeployChangeReport`, two permissions are required: * `apigee.deployments.delete` on the resource `organizations/{org}/environments/{env}` * `apigee.proxyrevisions.undeploy` on the resource `organizations/{org}/apis/{api}/revisions/{rev}`",
                          flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/apis/{apisId}/revisions/{revisionsId}/deployments:generateUndeployChangeReport",
                          httpMethod = "POST",
                          id = "apigee.organizations.environments.apis.revisions.deployments.generateUndeployChangeReport",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Name of the API proxy revision deployment in the following format: `organizations/{org}/environments/{env}/apis/{api}/revisions/{rev}`",
                              location = "path",
                              pattern = "^organizations/[^/]+/environments/[^/]+/apis/[^/]+/revisions/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}/deployments:generateUndeployChangeReport",
                          response = {
                            ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReport",
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
            archiveDeployments = {
              methods = {
                create = {
                  description = "Creates a new ArchiveDeployment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/archiveDeployments",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.archiveDeployments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The Environment this Archive Deployment will be created in.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/archiveDeployments",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1ArchiveDeployment",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an archive deployment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/archiveDeployments/{archiveDeploymentsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.archiveDeployments.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/archiveDeployments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                generateDownloadUrl = {
                  description = "Generates a signed URL for downloading the original zip file used to create an Archive Deployment. The URL is only valid for a limited period and should be used within minutes after generation. Each call returns a new upload URL.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/archiveDeployments/{archiveDeploymentsId}:generateDownloadUrl",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.archiveDeployments.generateDownloadUrl",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the Archive Deployment you want to download.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/archiveDeployments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:generateDownloadUrl",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1GenerateDownloadUrlRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1GenerateDownloadUrlResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                generateUploadUrl = {
                  description = "Generates a signed URL for uploading an Archive zip file to Google Cloud Storage. Once the upload is complete, the signed URL should be passed to CreateArchiveDeployment. When uploading to the generated signed URL, please follow these restrictions: * Source file type should be a zip file. * Source file size should not exceed 1GB limit. * No credentials should be attached - the signed URLs provide access to the target bucket using internal service identity; if credentials were attached, the identity from the credentials would be used, but that identity does not have permissions to upload files to the URL. When making a HTTP PUT request, these two headers need to be specified: * `content-type: application/zip` * `x-goog-content-length-range: 0,1073741824` And this header SHOULD NOT be specified: * `Authorization: Bearer YOUR_TOKEN`",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/archiveDeployments:generateUploadUrl",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.archiveDeployments.generateUploadUrl",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The organization and environment to upload to.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/archiveDeployments:generateUploadUrl",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1GenerateUploadUrlRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1GenerateUploadUrlResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the specified ArchiveDeployment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/archiveDeployments/{archiveDeploymentsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.archiveDeployments.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/archiveDeployments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ArchiveDeployment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists the ArchiveDeployments in the specified Environment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/archiveDeployments",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.archiveDeployments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Optional. An optional query used to return a subset of Archive Deployments using the semantics defined in https://google.aip.dev/160.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. Maximum number of Archive Deployments to return. If unspecified, at most 25 deployments will be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Page token, returned from a previous ListArchiveDeployments call, that you can use to retrieve the next page.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the Environment for which to list Archive Deployments in the format: `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/archiveDeployments",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListArchiveDeploymentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates an existing ArchiveDeployment. Labels can modified but most of the other fields are not modifiable.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/archiveDeployments/{archiveDeploymentsId}",
                  httpMethod = "PATCH",
                  id = "apigee.organizations.environments.archiveDeployments.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/archiveDeployments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Required. The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1ArchiveDeployment",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ArchiveDeployment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            caches = {
              methods = {
                delete = {
                  description = "Deletes a cache.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/caches/{cachesId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.caches.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Cache resource name of the form: `organizations/{organization_id}/environments/{environment_id}/caches/{cache_id}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/caches/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            deployments = {
              methods = {
                list = {
                  description = "Lists all deployments of API proxies or shared flows in an environment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/deployments",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.deployments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the environment for which to return deployment information in the following format: `organizations/{org}/environments/{env}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    sharedFlows = {
                      description = "Optional. Flag that specifies whether to return shared flow or API proxy deployments. Set to `true` to return shared flow deployments; set to `false` to return API proxy deployments. Defaults to `false`.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+parent}/deployments",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            flowhooks = {
              methods = {
                attachSharedFlowToFlowHook = {
                  description = "Attaches a shared flow to a flow hook.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/flowhooks/{flowhooksId}",
                  httpMethod = "PUT",
                  id = "apigee.organizations.environments.flowhooks.attachSharedFlowToFlowHook",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the flow hook to which the shared flow should be attached in the following format: `organizations/{org}/environments/{env}/flowhooks/{flowhook}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/flowhooks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1FlowHook",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1FlowHook",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                detachSharedFlowFromFlowHook = {
                  description = "Detaches a shared flow from a flow hook.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/flowhooks/{flowhooksId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.flowhooks.detachSharedFlowFromFlowHook",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the flow hook to detach in the following format: `organizations/{org}/environments/{env}/flowhooks/{flowhook}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/flowhooks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1FlowHook",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Returns the name of the shared flow attached to the specified flow hook. If there's no shared flow attached to the flow hook, the API does not return an error; it simply does not return a name in the response.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/flowhooks/{flowhooksId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.flowhooks.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the flow hook in the following format: `organizations/{org}/environments/{env}/flowhooks/{flowhook}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/flowhooks/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1FlowHook",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            keystores = {
              methods = {
                create = {
                  description = "Creates a keystore or truststore. - Keystore: Contains certificates and their associated keys. - Truststore: Contains trusted certificates used to validate a server's certificate. These certificates are typically self-signed certificates or certificates that are not signed by a trusted CA.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.keystores.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    name = {
                      description = "Optional. Name of the keystore. Overrides the value in Keystore.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the environment in which to create the keystore. Use the following format in your request: `organizations/{org}/environments/{env}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/keystores",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Keystore",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Keystore",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a keystore or truststore.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.keystores.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the keystore. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Keystore",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a keystore or truststore.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.keystores.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the keystore. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Keystore",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                aliases = {
                  methods = {
                    create = {
                      description = "Creates an alias from a key/certificate pair. The structure of the request is controlled by the `format` query parameter: - `keycertfile` - Separate PEM-encoded key and certificate files are uploaded. Set `Content-Type: multipart/form-data` and include the `keyFile`, `certFile`, and `password` (if keys are encrypted) fields in the request body. If uploading to a truststore, omit `keyFile`. - `pkcs12` - A PKCS12 file is uploaded. Set `Content-Type: multipart/form-data`, provide the file in the `file` field, and include the `password` field if the file is encrypted in the request body. - `selfsignedcert` - A new private key and certificate are generated. Set `Content-Type: application/json` and include CertificateGenerationSpec in the request body.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}/aliases",
                      httpMethod = "POST",
                      id = "apigee.organizations.environments.keystores.aliases.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        _password = {
                          description = "DEPRECATED: For improved security, specify the password in the request body instead of using the query parameter. To specify the password in the request body, set `Content-type: multipart/form-data` part with name `password`. Password for the private key file, if required.",
                          location = "query",
                          type = "string",
                        },
                        alias = {
                          description = "Alias for the key/certificate pair. Values must match the regular expression `[\\w\\s-.]{1,255}`. This must be provided for all formats except `selfsignedcert`; self-signed certs may specify the alias in either this parameter or the JSON body.",
                          location = "query",
                          type = "string",
                        },
                        format = {
                          description = "Required. Format of the data. Valid values include: `selfsignedcert`, `keycertfile`, or `pkcs12`",
                          location = "query",
                          type = "string",
                        },
                        ignoreExpiryValidation = {
                          description = "Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.",
                          location = "query",
                          type = "boolean",
                        },
                        ignoreNewlineValidation = {
                          description = "Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.",
                          location = "query",
                          type = "boolean",
                        },
                        parent = {
                          description = "Required. Name of the keystore. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/aliases",
                      request = {
                        ["$ref"] = "GoogleApiHttpBody",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Alias",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    csr = {
                      description = "Generates a PKCS #10 Certificate Signing Request for the private key in an alias.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}/aliases/{aliasesId}/csr",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.keystores.aliases.csr",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/csr",
                      response = {
                        ["$ref"] = "GoogleApiHttpBody",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes an alias.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}/aliases/{aliasesId}",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.environments.keystores.aliases.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Alias",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets an alias.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}/aliases/{aliasesId}",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.keystores.aliases.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Alias",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getCertificate = {
                      description = "Gets the certificate from an alias in PEM-encoded form.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}/aliases/{aliasesId}/certificate",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.keystores.aliases.getCertificate",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/certificate",
                      response = {
                        ["$ref"] = "GoogleApiHttpBody",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    update = {
                      description = "Updates the certificate in an alias.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keystores/{keystoresId}/aliases/{aliasesId}",
                      httpMethod = "PUT",
                      id = "apigee.organizations.environments.keystores.aliases.update",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        ignoreExpiryValidation = {
                          description = "Required. Flag that specifies whether to ignore expiry validation. If set to `true`, no expiry validation will be performed.",
                          location = "query",
                          type = "boolean",
                        },
                        ignoreNewlineValidation = {
                          description = "Flag that specifies whether to ignore newline validation. If set to `true`, no error is thrown when the file contains a certificate chain with no newline between each certificate. Defaults to `false`.",
                          location = "query",
                          type = "boolean",
                        },
                        name = {
                          description = "Required. Name of the alias. Use the following format in your request: `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keystores/[^/]+/aliases/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleApiHttpBody",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Alias",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            keyvaluemaps = {
              methods = {
                create = {
                  description = "Creates a key value map in an environment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keyvaluemaps",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.keyvaluemaps.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the environment in which to create the key value map. Use the following structure in your request: `organizations/{org}/environments/{env}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/keyvaluemaps",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a key value map from an environment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keyvaluemaps/{keyvaluemapsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.keyvaluemaps.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the key value map. Use the following structure in your request: `organizations/{org}/environments/{env}/keyvaluemaps/{keyvaluemap}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/keyvaluemaps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                entries = {
                  methods = {
                    create = {
                      description = "Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keyvaluemaps/{keyvaluemapsId}/entries",
                      httpMethod = "POST",
                      id = "apigee.organizations.environments.keyvaluemaps.entries.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keyvaluemaps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/entries",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a key value entry from a key value map scoped to an organization, environment, or API proxy. **Notes:** * After you delete the key value entry, the policy consuming the entry will continue to function with its cached values for a few minutes. This is expected behavior. * Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keyvaluemaps/{keyvaluemapsId}/entries/{entriesId}",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.environments.keyvaluemaps.entries.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Scope as indicated by the URI in which to delete the key value map entry. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}/entries/{entry}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}/entries/{entry}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}/entries/{entry}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keyvaluemaps/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keyvaluemaps/{keyvaluemapsId}/entries/{entriesId}",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.keyvaluemaps.entries.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Scope as indicated by the URI in which to fetch the key value map entry/value. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}/entries/{entry}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}/entries/{entry}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}/entries/{entry}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keyvaluemaps/[^/]+/entries/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists key value entries for key values maps scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/keyvaluemaps/{keyvaluemapsId}/entries",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.keyvaluemaps.entries.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Optional. Maximum number of key value entries to return. If unspecified, at most 100 entries will be returned.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. Page token. If provides, must be a valid key value entry returned from a previous call that can be used to retrieve the next page.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Scope as indicated by the URI in which to list key value maps. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/keyvaluemaps/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/entries",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListKeyValueEntriesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            optimizedStats = {
              methods = {
                get = {
                  description = "Similar to GetStats except that the response is less verbose.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/optimizedStats/{optimizedStatsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.optimizedStats.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    accuracy = {
                      description = "No longer used by Apigee. Supported for backwards compatibility.",
                      location = "query",
                      type = "string",
                    },
                    aggTable = {
                      description = "Table name used to query custom aggregate tables. If this parameter is skipped, then Apigee will try to retrieve the data from fact tables which will be expensive.",
                      location = "query",
                      type = "string",
                    },
                    filter = {
                      description = "Filter that enables you to drill-down on specific dimension values.",
                      location = "query",
                      type = "string",
                    },
                    limit = {
                      description = "Maximum number of result items to return. The default and maximum value that can be returned is 14400.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. Resource name for which the interactive query will be executed. Use the following format in your request: `organizations/{org}/environments/{env}/optimizedStats/{dimensions}` Dimensions let you view metrics in meaningful groupings, such as `apiproxy`, `target_host`. The value of `dimensions` should be a comma-separated list as shown below: `organizations/{org}/environments/{env}/optimizedStats/apiproxy,request_verb`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/optimizedStats/.*$",
                      required = true,
                      type = "string",
                    },
                    offset = {
                      description = "Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set limit to `10` and offset to `10`.",
                      location = "query",
                      type = "string",
                    },
                    realtime = {
                      description = "No longer used by Apigee. Supported for backwards compatibility.",
                      location = "query",
                      type = "boolean",
                    },
                    select = {
                      description = "Required. Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)`",
                      location = "query",
                      type = "string",
                    },
                    sonar = {
                      description = "Routes the query to API Monitoring for the last hour.",
                      location = "query",
                      type = "boolean",
                    },
                    sort = {
                      description = "Flag that specifies whether the sort order should be ascending or descending. Valid values include `DESC` and `ASC`.",
                      location = "query",
                      type = "string",
                    },
                    sortby = {
                      description = "Comma-separated list of columns to sort the final result.",
                      location = "query",
                      type = "string",
                    },
                    timeRange = {
                      description = "Required. Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`",
                      location = "query",
                      type = "string",
                    },
                    timeUnit = {
                      description = "Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or `month`.",
                      location = "query",
                      type = "string",
                    },
                    topk = {
                      description = "Top number of results to return. For example, to return the top 5 results, set `topk=5`.",
                      location = "query",
                      type = "string",
                    },
                    tsAscending = {
                      description = "Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends setting this value to `true` if you are using `sortby` with `sort=DESC`.",
                      location = "query",
                      type = "boolean",
                    },
                    tzo = {
                      description = "Timezone offset value.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1OptimizedStats",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            queries = {
              methods = {
                create = {
                  description = "Submit a query to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of \"enqueued\" means that the request succeeded.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/queries",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.queries.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/queries",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Query",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1AsyncQuery",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get query status If the query is still in progress, the `state` is set to \"running\" After the query has completed successfully, `state` is set to \"completed\"",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/queries/{queriesId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.queries.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the asynchronous query to get. Must be of the form `organizations/{org}/environments/{env}/queries/{queryId}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/queries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1AsyncQuery",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getResult = {
                  description = "After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/queries/{queriesId}/result",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.queries.getResult",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the asynchronous query result to get. Must be of the form `organizations/{org}/environments/{env}/queries/{queryId}/result`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/queries/[^/]+/result$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getResulturl = {
                  description = "After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is sent to the client as a list of urls to JSON files.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/queries/{queriesId}/resulturl",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.queries.getResulturl",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the asynchronous query result to get. Must be of the form `organizations/{org}/environments/{env}/queries/{queryId}/resulturl`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/queries/[^/]+/resulturl$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Return a list of Asynchronous Queries",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/queries",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.queries.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dataset = {
                      description = "Filter response list by dataset. Example: `api`, `mint`",
                      location = "query",
                      type = "string",
                    },
                    from = {
                      description = "Filter response list by returning asynchronous queries that created after this date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.",
                      location = "query",
                      type = "string",
                    },
                    inclQueriesWithoutReport = {
                      description = "Flag to include asynchronous queries that don't have a report denifition.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    status = {
                      description = "Filter response list by asynchronous query status.",
                      location = "query",
                      type = "string",
                    },
                    submittedBy = {
                      description = "Filter response list by user who submitted queries.",
                      location = "query",
                      type = "string",
                    },
                    to = {
                      description = "Filter response list by returning asynchronous queries that created before this date time. Time must be in ISO date-time format like '2011-12-03T10:16:30Z'.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/queries",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListAsyncQueriesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            references = {
              methods = {
                create = {
                  description = "Creates a Reference in the specified environment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/references",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.references.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent environment name under which the Reference will be created. Must be of the form `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/references",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Reference",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Reference",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a Reference from an environment. Returns the deleted Reference resource.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/references/{referencesId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.references.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the Reference to delete. Must be of the form `organizations/{org}/environments/{env}/references/{ref}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/references/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Reference",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a Reference resource.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/references/{referencesId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.references.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the Reference to get. Must be of the form `organizations/{org}/environments/{env}/references/{ref}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/references/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Reference",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates an existing Reference. Note that this operation has PUT semantics; it will replace the entirety of the existing Reference with the resource in the request body.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/references/{referencesId}",
                  httpMethod = "PUT",
                  id = "apigee.organizations.environments.references.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the Reference to update. Must be of the form `organizations/{org}/environments/{env}/references/{ref}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/references/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1Reference",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Reference",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            resourcefiles = {
              methods = {
                create = {
                  description = "Creates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/form-data`. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/resourcefiles",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.resourcefiles.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\\\!@#$%^&{}\\[\\]()+\\-=,.~'` ]{1,255}",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the environment in which to create the resource file in the following format: `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "Required. Resource file type. {{ resource_file_type }}",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/resourcefiles",
                  request = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ResourceFile",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a resource file. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/resourcefiles/{type}/{name}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.resourcefiles.delete",
                  parameterOrder = {
                    "parent",
                    "type",
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. ID of the resource file to delete. Must match the regular expression: [a-zA-Z0-9:/\\\\!@#$%^&{}\\[\\]()+\\-=,.~'` ]{1,255}",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the environment in the following format: `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "Required. Resource file type. {{ resource_file_type }}",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/resourcefiles/{type}/{name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ResourceFile",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the contents of a resource file. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/resourcefiles/{type}/{name}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.resourcefiles.get",
                  parameterOrder = {
                    "parent",
                    "type",
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. ID of the resource file. Must match the regular expression: [a-zA-Z0-9:/\\\\!@#$%^&{}\\[\\]()+\\-=,.~'` ]{1,255}",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the environment in the following format: `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "Required. Resource file type. {{ resource_file_type }}",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/resourcefiles/{type}/{name}",
                  response = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all resource files, optionally filtering by type. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/resourcefiles",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.resourcefiles.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the environment in which to list resource files in the following format: `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "Optional. Type of resource files to list. {{ resource_file_type }}",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/resourcefiles",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListEnvironmentResourcesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                listEnvironmentResources = {
                  description = "Lists all resource files, optionally filtering by type. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/resourcefiles/{type}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.resourcefiles.listEnvironmentResources",
                  parameterOrder = {
                    "parent",
                    "type",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the environment in which to list resource files in the following format: `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "Optional. Type of resource files to list. {{ resource_file_type }}",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/resourcefiles/{type}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListEnvironmentResourcesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates a resource file. Specify the `Content-Type` as `application/octet-stream` or `multipart/form-data`. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/resourcefiles/{type}/{name}",
                  httpMethod = "PUT",
                  id = "apigee.organizations.environments.resourcefiles.update",
                  parameterOrder = {
                    "parent",
                    "type",
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. ID of the resource file to update. Must match the regular expression: [a-zA-Z0-9:/\\\\!@#$%^&{}\\[\\]()+\\-=,.~'` ]{1,255}",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the environment in the following format: `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    type = {
                      description = "Required. Resource file type. {{ resource_file_type }}",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/resourcefiles/{type}/{name}",
                  request = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ResourceFile",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            securityReports = {
              methods = {
                create = {
                  description = "Submit a report request to be processed in the background. If the submission succeeds, the API returns a 200 status and an ID that refer to the report request. In addition to the HTTP status 200, the `state` of \"enqueued\" means that the request succeeded.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/securityReports",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.securityReports.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/securityReports",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1SecurityReportQuery",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1SecurityReport",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get security report status If the query is still in progress, the `state` is set to \"running\" After the query has completed successfully, `state` is set to \"completed\"",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/securityReports/{securityReportsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.securityReports.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the security report to get. Must be of the form `organizations/{org}/environments/{env}/securityReports/{reportId}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/securityReports/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1SecurityReport",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getResult = {
                  description = "After the query is completed, use this API to retrieve the results as file. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/securityReports/{securityReportsId}/result",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.securityReports.getResult",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the security report result to get. Must be of the form `organizations/{org}/environments/{env}/securityReports/{reportId}/result`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/securityReports/[^/]+/result$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                getResultView = {
                  description = "After the query is completed, use this API to view the query result when result size is small.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/securityReports/{securityReportsId}/resultView",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.securityReports.getResultView",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the security report result view to get. Must be of the form `organizations/{org}/environments/{env}/securityReports/{reportId}/resultView`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/securityReports/[^/]+/resultView$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1SecurityReportResultView",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Return a list of Security Reports",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/securityReports",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.securityReports.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    dataset = {
                      description = "Filter response list by dataset. Example: `api`, `mint`",
                      location = "query",
                      type = "string",
                    },
                    from = {
                      description = "Filter response list by returning security reports that created after this date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of security report to return in the list response.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Token returned from the previous list response to fetch the next page.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent resource name. Must be of the form `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    status = {
                      description = "Filter response list by security reports status.",
                      location = "query",
                      type = "string",
                    },
                    submittedBy = {
                      description = "Filter response list by user who submitted queries.",
                      location = "query",
                      type = "string",
                    },
                    to = {
                      description = "Filter response list by returning security reports that created before this date time. Time must be in ISO date-time format like '2011-12-03T10:16:30Z'.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/securityReports",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListSecurityReportsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            securityStats = {
              methods = {
                queryTabularStats = {
                  description = "Retrieve security statistics as tabular rows.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/securityStats:queryTabularStats",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.securityStats.queryTabularStats",
                  parameterOrder = {
                    "orgenv",
                  },
                  parameters = {
                    orgenv = {
                      description = "Required. Should be of the form organizations//environments/.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+orgenv}/securityStats:queryTabularStats",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1QueryTabularStatsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1QueryTabularStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                queryTimeSeriesStats = {
                  description = "Retrieve security statistics as a collection of time series.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/securityStats:queryTimeSeriesStats",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.securityStats.queryTimeSeriesStats",
                  parameterOrder = {
                    "orgenv",
                  },
                  parameters = {
                    orgenv = {
                      description = "Required. Should be of the form organizations//environments/.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+orgenv}/securityStats:queryTimeSeriesStats",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1QueryTimeSeriesStatsRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1QueryTimeSeriesStatsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            sharedflows = {
              resources = {
                deployments = {
                  methods = {
                    list = {
                      description = "Lists all deployments of a shared flow in an environment.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/sharedflows/{sharedflowsId}/deployments",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.sharedflows.deployments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Name representing a shared flow in an environment in the following format: `organizations/{org}/environments/{env}/sharedflows/{sharedflow}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                revisions = {
                  methods = {
                    deploy = {
                      description = "Deploys a revision of a shared flow. If another revision of the same shared flow is currently deployed, set the `override` parameter to `true` to have this revision replace the currently deployed revision. You cannot use a shared flow until it has been deployed to an environment. For a request path `organizations/{org}/environments/{env}/sharedflows/{sf}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.create` on the resource `organizations/{org}/environments/{env}` * `apigee.sharedflowrevisions.deploy` on the resource `organizations/{org}/sharedflows/{sf}/revisions/{rev}`",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/sharedflows/{sharedflowsId}/revisions/{revisionsId}/deployments",
                      httpMethod = "POST",
                      id = "apigee.organizations.environments.sharedflows.revisions.deploy",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the shared flow revision to deploy in the following format: `organizations/{org}/environments/{env}/sharedflows/{sharedflow}/revisions/{rev}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        override = {
                          description = "Flag that specifies whether the new deployment replaces other deployed revisions of the shared flow in the environment. Set `override` to `true` to replace other deployed revisions. By default, `override` is `false` and the deployment is rejected if other revisions of the shared flow are deployed in the environment.",
                          location = "query",
                          type = "boolean",
                        },
                        serviceAccount = {
                          description = "Google Cloud IAM service account. The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be `{ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com`.",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Deployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getDeployments = {
                      description = "Gets the deployment of a shared flow revision and actual state reported by runtime pods.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/sharedflows/{sharedflowsId}/revisions/{revisionsId}/deployments",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.sharedflows.revisions.getDeployments",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name representing a shared flow in an environment in the following format: `organizations/{org}/environments/{env}/sharedflows/{sharedflow}/revisions/{rev}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1Deployment",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    undeploy = {
                      description = "Undeploys a shared flow revision from an environment. For a request path `organizations/{org}/environments/{env}/sharedflows/{sf}/revisions/{rev}/deployments`, two permissions are required: * `apigee.deployments.delete` on the resource `organizations/{org}/environments/{env}` * `apigee.sharedflowrevisions.undeploy` on the resource `organizations/{org}/sharedflows/{sf}/revisions/{rev}`",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/sharedflows/{sharedflowsId}/revisions/{revisionsId}/deployments",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.environments.sharedflows.revisions.undeploy",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the shared flow revision to undeploy in the following format: `organizations/{org}/environments/{env}/sharedflows/{sharedflow}/revisions/{rev}`",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/sharedflows/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/deployments",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
              },
            },
            stats = {
              methods = {
                get = {
                  description = "Retrieve metrics grouped by dimensions. The types of metrics you can retrieve include traffic, message counts, API call latency, response size, and cache hits and counts. Dimensions let you view metrics in meaningful groups. You can optionally pass dimensions as path parameters to the `stats` API. If dimensions are not specified, the metrics are computed on the entire set of data for the given time range.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/stats/{statsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.stats.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    accuracy = {
                      description = "No longer used by Apigee. Supported for backwards compatibility.",
                      location = "query",
                      type = "string",
                    },
                    aggTable = {
                      description = "Table name used to query custom aggregate tables. If this parameter is skipped, then Apigee will try to retrieve the data from fact tables which will be expensive.",
                      location = "query",
                      type = "string",
                    },
                    filter = {
                      description = "Filter that enables you to drill down on specific dimension values.",
                      location = "query",
                      type = "string",
                    },
                    limit = {
                      description = "Maximum number of result items to return. The default and maximum value that can be returned is 14400.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. Resource name for which the interactive query will be executed. Use the following format in your request: `organizations/{org}/environments/{env}/stats/{dimensions}` Dimensions let you view metrics in meaningful groupings, such as `apiproxy` or `target_host`. The value of dimensions should be a comma-separated list, as shown below: `organizations/{org}/environments/{env}/stats/apiproxy,request_verb`",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/stats/.*$",
                      required = true,
                      type = "string",
                    },
                    offset = {
                      description = "Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set limit to `10` and offset to `10`.",
                      location = "query",
                      type = "string",
                    },
                    realtime = {
                      description = "No longer used by Apigee. Supported for backwards compatibility.",
                      location = "query",
                      type = "boolean",
                    },
                    select = {
                      description = "Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)`",
                      location = "query",
                      type = "string",
                    },
                    sonar = {
                      description = "Routes the query to API Monitoring for the last hour.",
                      location = "query",
                      type = "boolean",
                    },
                    sort = {
                      description = "Flag that specifies whether the sort order should be ascending or descending. Valid values include: `DESC` and `ASC`.",
                      location = "query",
                      type = "string",
                    },
                    sortby = {
                      description = "Comma-separated list of columns to sort the final result.",
                      location = "query",
                      type = "string",
                    },
                    timeRange = {
                      description = "Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`",
                      location = "query",
                      type = "string",
                    },
                    timeUnit = {
                      description = "Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or` month`.",
                      location = "query",
                      type = "string",
                    },
                    topk = {
                      description = "Top number of results to return. For example, to return the top 5 results, set `topk=5`.",
                      location = "query",
                      type = "string",
                    },
                    tsAscending = {
                      description = "Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends that you set this value to `true` if you are using `sortby` with `sort=DESC`.",
                      location = "query",
                      type = "boolean",
                    },
                    tzo = {
                      description = "Timezone offset value.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1Stats",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            targetservers = {
              methods = {
                create = {
                  description = "Creates a TargetServer in the specified environment.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/targetservers",
                  httpMethod = "POST",
                  id = "apigee.organizations.environments.targetservers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    name = {
                      description = "Optional. The ID to give the TargetServer. This will overwrite the value in TargetServer.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent environment name under which the TargetServer will be created. Must be of the form `organizations/{org}/environments/{env}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/targetservers",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1TargetServer",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1TargetServer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a TargetServer from an environment. Returns the deleted TargetServer resource.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/targetservers/{targetserversId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.environments.targetservers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the TargetServer to delete. Must be of the form `organizations/{org}/environments/{env}/targetservers/{target_server_id}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/targetservers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1TargetServer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a TargetServer resource.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/targetservers/{targetserversId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.environments.targetservers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the TargetServer to get. Must be of the form `organizations/{org}/environments/{env}/targetservers/{target_server_id}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/targetservers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1TargetServer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                update = {
                  description = "Updates an existing TargetServer. Note that this operation has PUT semantics; it will replace the entirety of the existing TargetServer with the resource in the request body.",
                  flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/targetservers/{targetserversId}",
                  httpMethod = "PUT",
                  id = "apigee.organizations.environments.targetservers.update",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the TargetServer to replace. Must be of the form `organizations/{org}/environments/{env}/targetservers/{target_server_id}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/environments/[^/]+/targetservers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1TargetServer",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1TargetServer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            traceConfig = {
              resources = {
                overrides = {
                  methods = {
                    create = {
                      description = "Creates a trace configuration override. The response contains a system-generated UUID, that can be used to view, update, or delete the configuration override. Use the List API to view the existing trace configuration overrides.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/traceConfig/overrides",
                      httpMethod = "POST",
                      id = "apigee.organizations.environments.traceConfig.overrides.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Parent resource of the trace configuration override. Use the following structure in your request. \"organizations/*/environments/*/traceConfig\".",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/traceConfig$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/overrides",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1TraceConfigOverride",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1TraceConfigOverride",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a distributed trace configuration override.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/traceConfig/overrides/{overridesId}",
                      httpMethod = "DELETE",
                      id = "apigee.organizations.environments.traceConfig.overrides.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the trace configuration override. Use the following structure in your request: \"organizations/*/environments/*/traceConfig/overrides/*\".",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/traceConfig/overrides/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobufEmpty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets a trace configuration override.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/traceConfig/overrides/{overridesId}",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.traceConfig.overrides.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the trace configuration override. Use the following structure in your request: \"organizations/*/environments/*/traceConfig/overrides/*\".",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/traceConfig/overrides/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1TraceConfigOverride",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists all of the distributed trace configuration overrides in an environment.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/traceConfig/overrides",
                      httpMethod = "GET",
                      id = "apigee.organizations.environments.traceConfig.overrides.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        pageSize = {
                          description = "Maximum number of trace configuration overrides to return. If not specified, the maximum number returned is 25. The maximum number cannot exceed 100.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "A page token, returned from a previous `ListTraceConfigOverrides` call. Token value that can be used to retrieve the subsequent page. When paginating, all other parameters provided to `ListTraceConfigOverrides` must match those specified in the call to obtain the page token.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. Parent resource of the trace configuration override. Use the following structure in your request: \"organizations/*/environments/*/traceConfig\".",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/traceConfig$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/overrides",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListTraceConfigOverridesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates a distributed trace configuration override. Note that the repeated fields have replace semantics when included in the field mask and that they will be overwritten by the value of the fields in the request body.",
                      flatPath = "v1/organizations/{organizationsId}/environments/{environmentsId}/traceConfig/overrides/{overridesId}",
                      httpMethod = "PATCH",
                      id = "apigee.organizations.environments.traceConfig.overrides.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Name of the trace configuration override. Use the following structure in your request: \"organizations/*/environments/*/traceConfig/overrides/*\".",
                          location = "path",
                          pattern = "^organizations/[^/]+/environments/[^/]+/traceConfig/overrides/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "List of fields to be updated.",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "GoogleCloudApigeeV1TraceConfigOverride",
                      },
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1TraceConfigOverride",
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
        hostQueries = {
          methods = {
            create = {
              description = "Submit a query at host level to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of \"enqueued\" means that the request succeeded.",
              flatPath = "v1/organizations/{organizationsId}/hostQueries",
              httpMethod = "POST",
              id = "apigee.organizations.hostQueries.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource name. Must be of the form `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/hostQueries",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Query",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1AsyncQuery",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Get status of a query submitted at host level. If the query is still in progress, the `state` is set to \"running\" After the query has completed successfully, `state` is set to \"completed\"",
              flatPath = "v1/organizations/{organizationsId}/hostQueries/{hostQueriesId}",
              httpMethod = "GET",
              id = "apigee.organizations.hostQueries.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the asynchronous query to get. Must be of the form `organizations/{org}/queries/{queryId}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/hostQueries/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1AsyncQuery",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getResult = {
              description = "After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`",
              flatPath = "v1/organizations/{organizationsId}/hostQueries/{hostQueriesId}/result",
              httpMethod = "GET",
              id = "apigee.organizations.hostQueries.getResult",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the asynchronous query result to get. Must be of the form `organizations/{org}/queries/{queryId}/result`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/hostQueries/[^/]+/result$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleApiHttpBody",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getResultView = {
              description = "",
              flatPath = "v1/organizations/{organizationsId}/hostQueries/{hostQueriesId}/resultView",
              httpMethod = "GET",
              id = "apigee.organizations.hostQueries.getResultView",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the asynchronous query result view to get. Must be of the form `organizations/{org}/queries/{queryId}/resultView`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/hostQueries/[^/]+/resultView$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1AsyncQueryResultView",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Return a list of Asynchronous Queries at host level.",
              flatPath = "v1/organizations/{organizationsId}/hostQueries",
              httpMethod = "GET",
              id = "apigee.organizations.hostQueries.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                dataset = {
                  description = "Filter response list by dataset. Example: `api`, `mint`",
                  location = "query",
                  type = "string",
                },
                envgroupHostname = {
                  description = "Required. Filter response list by hostname.",
                  location = "query",
                  type = "string",
                },
                from = {
                  description = "Filter response list by returning asynchronous queries that created after this date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.",
                  location = "query",
                  type = "string",
                },
                inclQueriesWithoutReport = {
                  description = "Flag to include asynchronous queries that don't have a report denifition.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource name. Must be of the form `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                status = {
                  description = "Filter response list by asynchronous query status.",
                  location = "query",
                  type = "string",
                },
                submittedBy = {
                  description = "Filter response list by user who submitted queries.",
                  location = "query",
                  type = "string",
                },
                to = {
                  description = "Filter response list by returning asynchronous queries that created before this date time. Time must be in ISO date-time format like '2011-12-03T10:16:30Z'.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/hostQueries",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListAsyncQueriesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        hostSecurityReports = {
          methods = {
            create = {
              description = "Submit a query at host level to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of \"enqueued\" means that the request succeeded.",
              flatPath = "v1/organizations/{organizationsId}/hostSecurityReports",
              httpMethod = "POST",
              id = "apigee.organizations.hostSecurityReports.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource name. Must be of the form `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/hostSecurityReports",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1SecurityReportQuery",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1SecurityReport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Get status of a query submitted at host level. If the query is still in progress, the `state` is set to \"running\" After the query has completed successfully, `state` is set to \"completed\"",
              flatPath = "v1/organizations/{organizationsId}/hostSecurityReports/{hostSecurityReportsId}",
              httpMethod = "GET",
              id = "apigee.organizations.hostSecurityReports.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the security report to get. Must be of the form `organizations/{org}/securityReports/{reportId}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/hostSecurityReports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1SecurityReport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getResult = {
              description = "After the query is completed, use this API to retrieve the results. If the request succeeds, and there is a non-zero result set, the result is downloaded to the client as a zipped JSON file. The name of the downloaded file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-318d0cb961bd.zip`",
              flatPath = "v1/organizations/{organizationsId}/hostSecurityReports/{hostSecurityReportsId}/result",
              httpMethod = "GET",
              id = "apigee.organizations.hostSecurityReports.getResult",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the security report result to get. Must be of the form `organizations/{org}/securityReports/{reportId}/result`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/hostSecurityReports/[^/]+/result$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleApiHttpBody",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getResultView = {
              description = "After the query is completed, use this API to view the query result when result size is small.",
              flatPath = "v1/organizations/{organizationsId}/hostSecurityReports/{hostSecurityReportsId}/resultView",
              httpMethod = "GET",
              id = "apigee.organizations.hostSecurityReports.getResultView",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the security report result view to get. Must be of the form `organizations/{org}/securityReports/{reportId}/resultView`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/hostSecurityReports/[^/]+/resultView$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1SecurityReportResultView",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Return a list of Security Reports at host level.",
              flatPath = "v1/organizations/{organizationsId}/hostSecurityReports",
              httpMethod = "GET",
              id = "apigee.organizations.hostSecurityReports.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                dataset = {
                  description = "Filter response list by dataset. Example: `api`, `mint`",
                  location = "query",
                  type = "string",
                },
                envgroupHostname = {
                  description = "Required. Filter response list by hostname.",
                  location = "query",
                  type = "string",
                },
                from = {
                  description = "Filter response list by returning security reports that created after this date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of security report to return in the list response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Token returned from the previous list response to fetch the next page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The parent resource name. Must be of the form `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
                status = {
                  description = "Filter response list by security report status.",
                  location = "query",
                  type = "string",
                },
                submittedBy = {
                  description = "Filter response list by user who submitted queries.",
                  location = "query",
                  type = "string",
                },
                to = {
                  description = "Filter response list by returning security reports that created before this date time. Time must be in ISO date-time format like '2011-12-03T10:16:30Z'.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/hostSecurityReports",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListSecurityReportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        hostStats = {
          methods = {
            get = {
              description = "Retrieve metrics grouped by dimensions in host level. The types of metrics you can retrieve include traffic, message counts, API call latency, response size, and cache hits and counts. Dimensions let you view metrics in meaningful groups. You can optionally pass dimensions as path parameters to the `stats` API. If dimensions are not specified, the metrics are computed on the entire set of data for the given time range.",
              flatPath = "v1/organizations/{organizationsId}/hostStats/{hostStatsId}",
              httpMethod = "GET",
              id = "apigee.organizations.hostStats.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                accuracy = {
                  description = "No longer used by Apigee. Supported for backwards compatibility.",
                  location = "query",
                  type = "string",
                },
                envgroupHostname = {
                  description = "Required. Hostname for which the interactive query will be executed.",
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Flag that enables drill-down on specific dimension values.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Maximum number of result items to return. The default and maximum value that can be returned is 14400.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Resource name for which the interactive query will be executed. Use the following format in your request: `organizations/{org}/hostStats/{dimensions}` Dimensions let you view metrics in meaningful groupings, such as `apiproxy`, `target_host`. The value of dimensions should be a comma-separated list as shown below `organizations/{org}/hostStats/apiproxy,request_verb`",
                  location = "path",
                  pattern = "^organizations/[^/]+/hostStats/.*$",
                  required = true,
                  type = "string",
                },
                offset = {
                  description = "Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set limit to `10` and offset to `10`.",
                  location = "query",
                  type = "string",
                },
                realtime = {
                  description = "No longer used by Apigee. Supported for backwards compatibility.",
                  location = "query",
                  type = "boolean",
                },
                select = {
                  description = "Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)`",
                  location = "query",
                  type = "string",
                },
                sort = {
                  description = "Flag that specifies if the sort order should be ascending or descending. Valid values are `DESC` and `ASC`.",
                  location = "query",
                  type = "string",
                },
                sortby = {
                  description = "Comma-separated list of columns to sort the final result.",
                  location = "query",
                  type = "string",
                },
                timeRange = {
                  description = "Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`",
                  location = "query",
                  type = "string",
                },
                timeUnit = {
                  description = "Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or `month`.",
                  location = "query",
                  type = "string",
                },
                topk = {
                  description = "Top number of results to return. For example, to return the top 5 results, set `topk=5`.",
                  location = "query",
                  type = "string",
                },
                tsAscending = {
                  description = "Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends that you set this value to `true` if you are using `sortby` with `sort=DESC`.",
                  location = "query",
                  type = "boolean",
                },
                tzo = {
                  description = "Timezone offset value.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Stats",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        instances = {
          methods = {
            create = {
              description = "Creates an Apigee runtime instance. The instance is accessible from the authorized network configured on the organization. **Note:** Not supported for Apigee hybrid.",
              flatPath = "v1/organizations/{organizationsId}/instances",
              httpMethod = "POST",
              id = "apigee.organizations.instances.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the organization. Use the following structure in your request: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/instances",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Instance",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an Apigee runtime instance. The instance stops serving requests and the runtime data is deleted. **Note:** Not supported for Apigee hybrid.",
              flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.instances.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets the details for an Apigee runtime instance. **Note:** Not supported for Apigee hybrid.",
              flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}",
              httpMethod = "GET",
              id = "apigee.organizations.instances.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1Instance",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all Apigee runtime instances for the organization. **Note:** Not supported for Apigee hybrid.",
              flatPath = "v1/organizations/{organizationsId}/instances",
              httpMethod = "GET",
              id = "apigee.organizations.instances.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Maximum number of instances to return. Defaults to 25.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token, returned from a previous ListInstances call, that you can use to retrieve the next page of content.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of the organization. Use the following structure in your request: `organizations/{org}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/instances",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListInstancesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates an Apigee runtime instance. You can update the fields described in NodeConfig. No other fields will be updated. **Note:** Not supported for Apigee hybrid.",
              flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}",
              httpMethod = "PATCH",
              id = "apigee.organizations.instances.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`.",
                  location = "path",
                  pattern = "^organizations/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "List of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1Instance",
              },
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            reportStatus = {
              description = "Reports the latest status for a runtime instance.",
              flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}:reportStatus",
              httpMethod = "POST",
              id = "apigee.organizations.instances.reportStatus",
              parameterOrder = {
                "instance",
              },
              parameters = {
                instance = {
                  description = "The name of the instance reporting this status. For SaaS the request will be rejected if no instance exists under this name. Format is organizations/{org}/instances/{instance}",
                  location = "path",
                  pattern = "^organizations/[^/]+/instances/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+instance}:reportStatus",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1ReportInstanceStatusRequest",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ReportInstanceStatusResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            attachments = {
              methods = {
                create = {
                  description = "Creates a new attachment of an environment to an instance. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/attachments",
                  httpMethod = "POST",
                  id = "apigee.organizations.instances.attachments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/attachments",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1InstanceAttachment",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an attachment. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/attachments/{attachmentsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.instances.attachments.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the attachment. Use the following structure in your request: `organizations/{org}/instances/{instance}/attachments/{attachment}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+/attachments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets an attachment. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/attachments/{attachmentsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.instances.attachments.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the attachment. Use the following structure in your request: `organizations/{org}/instances/{instance}/attachments/{attachment}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+/attachments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1InstanceAttachment",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists all attachments to an instance. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/attachments",
                  httpMethod = "GET",
                  id = "apigee.organizations.instances.attachments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of instance attachments to return. Defaults to 25.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token, returned by a previous ListInstanceAttachments call, that you can use to retrieve the next page of content.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the organization. Use the following structure in your request: `organizations/{org}/instances/{instance}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/attachments",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListInstanceAttachmentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            canaryevaluations = {
              methods = {
                create = {
                  description = "Creates a new canary evaluation for an organization.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/canaryevaluations",
                  httpMethod = "POST",
                  id = "apigee.organizations.instances.canaryevaluations.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the organization. Use the following structure in your request: `organizations/{org}/instances/{instance}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/canaryevaluations",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1CanaryEvaluation",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a CanaryEvaluation for an organization.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/canaryevaluations/{canaryevaluationsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.instances.canaryevaluations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the CanaryEvaluation. Use the following structure in your request: `organizations/{org}/instances/*/canaryevaluations/{evaluation}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+/canaryevaluations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1CanaryEvaluation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            natAddresses = {
              methods = {
                activate = {
                  description = "Activates the NAT address. The Apigee instance can now use this for Internet egress traffic. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/natAddresses/{natAddressesId}:activate",
                  httpMethod = "POST",
                  id = "apigee.organizations.instances.natAddresses.activate",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the nat address. Use the following structure in your request: `organizations/{org}/instances/{instances}/natAddresses/{nataddress}``",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+/natAddresses/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:activate",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1ActivateNatAddressRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a NAT address. The address is created in the RESERVED state and a static external IP address will be provisioned. At this time, the instance will not use this IP address for Internet egress traffic. The address can be activated for use once any required firewall IP whitelisting has been completed. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/natAddresses",
                  httpMethod = "POST",
                  id = "apigee.organizations.instances.natAddresses.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/natAddresses",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1NatAddress",
                  },
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the NAT address. Connections that are actively using the address are drained before it is removed. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/natAddresses/{natAddressesId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.instances.natAddresses.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the nat address. Use the following structure in your request: `organizations/{org}/instances/{instances}/natAddresses/{nataddress}``",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+/natAddresses/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleLongrunningOperation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the details of a NAT address. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/natAddresses/{natAddressesId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.instances.natAddresses.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the nat address. Use the following structure in your request: `organizations/{org}/instances/{instances}/natAddresses/{nataddress}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+/natAddresses/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1NatAddress",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists the NAT addresses for an Apigee instance. **Note:** Not supported for Apigee hybrid.",
                  flatPath = "v1/organizations/{organizationsId}/instances/{instancesId}/natAddresses",
                  httpMethod = "GET",
                  id = "apigee.organizations.instances.natAddresses.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Maximum number of natAddresses to return. Defaults to 25.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Page token, returned from a previous ListNatAddresses call, that you can use to retrieve the next page of content.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Name of the instance. Use the following structure in your request: `organizations/{org}/instances/{instance}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/instances/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/natAddresses",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListNatAddressesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        keyvaluemaps = {
          methods = {
            create = {
              description = "Creates a key value map in an organization.",
              flatPath = "v1/organizations/{organizationsId}/keyvaluemaps",
              httpMethod = "POST",
              id = "apigee.organizations.keyvaluemaps.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Name of the organization in which to create the key value map file. Use the following structure in your request: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/keyvaluemaps",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a key value map from an organization.",
              flatPath = "v1/organizations/{organizationsId}/keyvaluemaps/{keyvaluemapsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.keyvaluemaps.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the key value map. Use the following structure in your request: `organizations/{org}/keyvaluemaps/{keyvaluemap}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/keyvaluemaps/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1KeyValueMap",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            entries = {
              methods = {
                create = {
                  description = "Creates key value entries in a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                  flatPath = "v1/organizations/{organizationsId}/keyvaluemaps/{keyvaluemapsId}/entries",
                  httpMethod = "POST",
                  id = "apigee.organizations.keyvaluemaps.entries.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Scope as indicated by the URI in which to create the key value map entry. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/keyvaluemaps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/entries",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a key value entry from a key value map scoped to an organization, environment, or API proxy. **Notes:** * After you delete the key value entry, the policy consuming the entry will continue to function with its cached values for a few minutes. This is expected behavior. * Supported for Apigee hybrid 1.8.x and higher.",
                  flatPath = "v1/organizations/{organizationsId}/keyvaluemaps/{keyvaluemapsId}/entries/{entriesId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.keyvaluemaps.entries.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Scope as indicated by the URI in which to delete the key value map entry. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}/entries/{entry}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}/entries/{entry}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}/entries/{entry}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/keyvaluemaps/[^/]+/entries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                  flatPath = "v1/organizations/{organizationsId}/keyvaluemaps/{keyvaluemapsId}/entries/{entriesId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.keyvaluemaps.entries.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Scope as indicated by the URI in which to fetch the key value map entry/value. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}/entries/{entry}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}/entries/{entry}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}/entries/{entry}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/keyvaluemaps/[^/]+/entries/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists key value entries for key values maps scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
                  flatPath = "v1/organizations/{organizationsId}/keyvaluemaps/{keyvaluemapsId}/entries",
                  httpMethod = "GET",
                  id = "apigee.organizations.keyvaluemaps.entries.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "Optional. Maximum number of key value entries to return. If unspecified, at most 100 entries will be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. Page token. If provides, must be a valid key value entry returned from a previous call that can be used to retrieve the next page.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Scope as indicated by the URI in which to list key value maps. Use **one** of the following structures in your request: * `organizations/{organization}/apis/{api}/keyvaluemaps/{keyvaluemap}`. * `organizations/{organization}/environments/{environment}/keyvaluemaps/{keyvaluemap}` * `organizations/{organization}/keyvaluemaps/{keyvaluemap}`.",
                      location = "path",
                      pattern = "^organizations/[^/]+/keyvaluemaps/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/entries",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListKeyValueEntriesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
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
              flatPath = "v1/organizations/{organizationsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "apigee.organizations.operations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the operation resource.",
                  location = "path",
                  pattern = "^organizations/[^/]+/operations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleLongrunningOperation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v1/organizations/{organizationsId}/operations",
              httpMethod = "GET",
              id = "apigee.organizations.operations.list",
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
                  pattern = "^organizations/[^/]+$",
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
                ["$ref"] = "GoogleLongrunningListOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        optimizedHostStats = {
          methods = {
            get = {
              description = "Similar to GetHostStats except that the response is less verbose.",
              flatPath = "v1/organizations/{organizationsId}/optimizedHostStats/{optimizedHostStatsId}",
              httpMethod = "GET",
              id = "apigee.organizations.optimizedHostStats.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                accuracy = {
                  description = "No longer used by Apigee. Supported for backwards compatibility.",
                  location = "query",
                  type = "string",
                },
                envgroupHostname = {
                  description = "Required. Hostname for which the interactive query will be executed.",
                  location = "query",
                  type = "string",
                },
                filter = {
                  description = "Filter that enables you to drill-down on specific dimension values.",
                  location = "query",
                  type = "string",
                },
                limit = {
                  description = "Maximum number of result items to return. The default and maximum value that can be returned is 14400.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Resource name for which the interactive query will be executed. Use the following format in your request: `organizations/{organization_id}/optimizedHostStats/{dimensions}` Dimensions let you view metrics in meaningful groupings, such as `apiproxy`, `target_host`. The value of dimensions should be a comma-separated list as shown below: `organizations/{org}/optimizedHostStats/apiproxy,request_verb`",
                  location = "path",
                  pattern = "^organizations/[^/]+/optimizedHostStats/.*$",
                  required = true,
                  type = "string",
                },
                offset = {
                  description = "Offset value. Use `offset` with `limit` to enable pagination of results. For example, to display results 11-20, set limit to `10` and offset to `10`.",
                  location = "query",
                  type = "string",
                },
                realtime = {
                  description = "No longer used by Apigee. Supported for backwards compatibility.",
                  location = "query",
                  type = "boolean",
                },
                select = {
                  description = "Required. Comma-separated list of metrics. For example: `sum(message_count),sum(error_count)`",
                  location = "query",
                  type = "string",
                },
                sort = {
                  description = "Flag that specifies whether the sort order should be ascending or descending. Valid values include `DESC` and `ASC`.",
                  location = "query",
                  type = "string",
                },
                sortby = {
                  description = "Comma-separated list of columns used to sort the final result.",
                  location = "query",
                  type = "string",
                },
                timeRange = {
                  description = "Required. Time interval for the interactive query. Time range is specified in GMT as `start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`.",
                  location = "query",
                  type = "string",
                },
                timeUnit = {
                  description = "Granularity of metrics returned. Valid values include: `second`, `minute`, `hour`, `day`, `week`, or `month`.",
                  location = "query",
                  type = "string",
                },
                topk = {
                  description = "Top number of results to return. For example, to return the top 5 results, set `topk=5`.",
                  location = "query",
                  type = "string",
                },
                tsAscending = {
                  description = "Flag that specifies whether to list timestamps in ascending (`true`) or descending (`false`) order. Apigee recommends that you set this value to `true` if you are using `sortby` with `sort=DESC`.",
                  location = "query",
                  type = "boolean",
                },
                tzo = {
                  description = "Timezone offset value.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1OptimizedStats",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        reports = {
          methods = {
            create = {
              description = "Creates a Custom Report for an Organization. A Custom Report provides Apigee Customers to create custom dashboards in addition to the standard dashboards which are provided. The Custom Report in its simplest form contains specifications about metrics, dimensions and filters. It is important to note that the custom report by itself does not provide an executable entity. The Edge UI converts the custom report definition into an analytics query and displays the result in a chart.",
              flatPath = "v1/organizations/{organizationsId}/reports",
              httpMethod = "POST",
              id = "apigee.organizations.reports.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent organization name under which the Custom Report will be created. Must be of the form: `organizations/{organization_id}/reports`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/reports",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1CustomReport",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1CustomReport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an existing custom report definition",
              flatPath = "v1/organizations/{organizationsId}/reports/{reportsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.reports.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Custom Report name of the form: `organizations/{organization_id}/reports/{report_name}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/reports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1DeleteCustomReportResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Retrieve a custom report definition.",
              flatPath = "v1/organizations/{organizationsId}/reports/{reportsId}",
              httpMethod = "GET",
              id = "apigee.organizations.reports.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Custom Report name of the form: `organizations/{organization_id}/reports/{report_name}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/reports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1CustomReport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Return a list of Custom Reports",
              flatPath = "v1/organizations/{organizationsId}/reports",
              httpMethod = "GET",
              id = "apigee.organizations.reports.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                expand = {
                  description = "Set to 'true' to get expanded details about each custom report.",
                  location = "query",
                  type = "boolean",
                },
                parent = {
                  description = "Required. The parent organization name under which the API product will be listed `organizations/{organization_id}/reports`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/reports",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListCustomReportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            update = {
              description = "Update an existing custom report definition",
              flatPath = "v1/organizations/{organizationsId}/reports/{reportsId}",
              httpMethod = "PUT",
              id = "apigee.organizations.reports.update",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Custom Report name of the form: `organizations/{organization_id}/reports/{report_name}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/reports/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudApigeeV1CustomReport",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1CustomReport",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        securityProfiles = {
          methods = {
            get = {
              description = "GetSecurityProfile gets the specified security profile. Returns NOT_FOUND if security profile is not present for the specified organization.",
              flatPath = "v1/organizations/{organizationsId}/securityProfiles/{securityProfilesId}",
              httpMethod = "GET",
              id = "apigee.organizations.securityProfiles.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Security profile in the following format: `organizations/{org}/securityProfiles/{profile}'. Profile may optionally contain revision ID. If revision ID is not provided, the response will contain latest revision by default. Example: organizations/testOrg/securityProfiles/testProfile@5",
                  location = "path",
                  pattern = "^organizations/[^/]+/securityProfiles/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1SecurityProfile",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "ListSecurityProfiles lists all the security profiles associated with the org including attached and unattached profiles.",
              flatPath = "v1/organizations/{organizationsId}/securityProfiles",
              httpMethod = "GET",
              id = "apigee.organizations.securityProfiles.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of profiles to return. The service may return fewer than this value. If unspecified, at most 50 profiles will be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListSecurityProfiles` call. Provide this to retrieve the subsequent page.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. For a specific organization, list of all the security profiles. Format: `organizations/{org}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/securityProfiles",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListSecurityProfilesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            listRevisions = {
              description = "ListSecurityProfileRevisions lists all the revisions of the security profile.",
              flatPath = "v1/organizations/{organizationsId}/securityProfiles/{securityProfilesId}:listRevisions",
              httpMethod = "GET",
              id = "apigee.organizations.securityProfiles.listRevisions",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. For a specific profile, list all the revisions. Format: `organizations/{org}/securityProfiles/{profile}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/securityProfiles/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of profile revisions to return. The service may return fewer than this value. If unspecified, at most 50 revisions will be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token, received from a previous `ListSecurityProfileRevisions` call. Provide this to retrieve the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}:listRevisions",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            environments = {
              methods = {
                computeEnvironmentScores = {
                  description = "ComputeEnvironmentScores calculates scores for requested time range for the specified security profile and environment.",
                  flatPath = "v1/organizations/{organizationsId}/securityProfiles/{securityProfilesId}/environments/{environmentsId}:computeEnvironmentScores",
                  httpMethod = "POST",
                  id = "apigee.organizations.securityProfiles.environments.computeEnvironmentScores",
                  parameterOrder = {
                    "profileEnvironment",
                  },
                  parameters = {
                    profileEnvironment = {
                      description = "Required. Name of organization and environment and profile id for which score needs to be computed. Format: organizations/{org}/securityProfiles/{profile}/environments/{env}",
                      location = "path",
                      pattern = "^organizations/[^/]+/securityProfiles/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+profileEnvironment}:computeEnvironmentScores",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1ComputeEnvironmentScoresRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ComputeEnvironmentScoresResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "CreateSecurityProfileEnvironmentAssociation creates profile environment association i.e. attaches environment to security profile.",
                  flatPath = "v1/organizations/{organizationsId}/securityProfiles/{securityProfilesId}/environments",
                  httpMethod = "POST",
                  id = "apigee.organizations.securityProfiles.environments.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of organization and security profile ID. Format: organizations/{org}/securityProfiles/{profile}",
                      location = "path",
                      pattern = "^organizations/[^/]+/securityProfiles/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/environments",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "DeleteSecurityProfileEnvironmentAssociation removes profile environment association i.e. detaches environment from security profile.",
                  flatPath = "v1/organizations/{organizationsId}/securityProfiles/{securityProfilesId}/environments/{environmentsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.securityProfiles.environments.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the environment attachment to delete. Format: organizations/{org}/securityProfiles/{profile}/environments/{env}",
                      location = "path",
                      pattern = "^organizations/[^/]+/securityProfiles/[^/]+/environments/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobufEmpty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        sharedflows = {
          methods = {
            create = {
              description = "Uploads a ZIP-formatted shared flow configuration bundle to an organization. If the shared flow already exists, this creates a new revision of it. If the shared flow does not exist, this creates it. Once imported, the shared flow revision must be deployed before it can be accessed at runtime. The size limit of a shared flow bundle is 15 MB.",
              flatPath = "v1/organizations/{organizationsId}/sharedflows",
              httpMethod = "POST",
              id = "apigee.organizations.sharedflows.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                action = {
                  description = "Required. Must be set to either `import` or `validate`.",
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. The name to give the shared flow",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the parent organization under which to create the shared flow. Must be of the form: `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/sharedflows",
              request = {
                ["$ref"] = "GoogleApiHttpBody",
              },
              response = {
                ["$ref"] = "GoogleCloudApigeeV1SharedFlowRevision",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a shared flow and all it's revisions. The shared flow must be undeployed before you can delete it.",
              flatPath = "v1/organizations/{organizationsId}/sharedflows/{sharedflowsId}",
              httpMethod = "DELETE",
              id = "apigee.organizations.sharedflows.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. shared flow name of the form: `organizations/{organization_id}/sharedflows/{shared_flow_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/sharedflows/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1SharedFlow",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets a shared flow by name, including a list of its revisions.",
              flatPath = "v1/organizations/{organizationsId}/sharedflows/{sharedflowsId}",
              httpMethod = "GET",
              id = "apigee.organizations.sharedflows.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the shared flow to get. Must be of the form: `organizations/{organization_id}/sharedflows/{shared_flow_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+/sharedflows/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1SharedFlow",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all shared flows in the organization.",
              flatPath = "v1/organizations/{organizationsId}/sharedflows",
              httpMethod = "GET",
              id = "apigee.organizations.sharedflows.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                includeMetaData = {
                  description = "Indicates whether to include shared flow metadata in the response.",
                  location = "query",
                  type = "boolean",
                },
                includeRevisions = {
                  description = "Indicates whether to include a list of revisions in the response.",
                  location = "query",
                  type = "boolean",
                },
                parent = {
                  description = "Required. The name of the parent organization under which to get shared flows. Must be of the form: `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/sharedflows",
              response = {
                ["$ref"] = "GoogleCloudApigeeV1ListSharedFlowsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            deployments = {
              methods = {
                list = {
                  description = "Lists all deployments of a shared flow.",
                  flatPath = "v1/organizations/{organizationsId}/sharedflows/{sharedflowsId}/deployments",
                  httpMethod = "GET",
                  id = "apigee.organizations.sharedflows.deployments.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the shared flow for which to return deployment information in the following format: `organizations/{org}/sharedflows/{sharedflow}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sharedflows/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/deployments",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            revisions = {
              methods = {
                delete = {
                  description = "Deletes a shared flow and all associated policies, resources, and revisions. You must undeploy the shared flow before deleting it.",
                  flatPath = "v1/organizations/{organizationsId}/sharedflows/{sharedflowsId}/revisions/{revisionsId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.sharedflows.revisions.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the shared flow revision to delete. Must be of the form: `organizations/{organization_id}/sharedflows/{shared_flow_id}/revisions/{revision_id}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1SharedFlowRevision",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a revision of a shared flow. To download the shared flow configuration bundle for the specified revision as a zip file, set the `format` query parameter to `bundle`. If you are using curl, specify `-o filename.zip` to save the output to a file; otherwise, it displays to `stdout`. Then, develop the shared flow configuration locally and upload the updated sharedFlow configuration revision, as described in [updateSharedFlowRevision](updateSharedFlowRevision).",
                  flatPath = "v1/organizations/{organizationsId}/sharedflows/{sharedflowsId}/revisions/{revisionsId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.sharedflows.revisions.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    format = {
                      description = "Specify `bundle` to export the contents of the shared flow bundle. Otherwise, the bundle metadata is returned.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "Required. The name of the shared flow revision to get. Must be of the form: `organizations/{organization_id}/sharedflows/{shared_flow_id}/revisions/{revision_id}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                updateSharedFlowRevision = {
                  description = "Updates a shared flow revision. This operation is only allowed on revisions which have never been deployed. After deployment a revision becomes immutable, even if it becomes undeployed. The payload is a ZIP-formatted shared flow. Content type must be either multipart/form-data or application/octet-stream.",
                  flatPath = "v1/organizations/{organizationsId}/sharedflows/{sharedflowsId}/revisions/{revisionsId}",
                  httpMethod = "POST",
                  id = "apigee.organizations.sharedflows.revisions.updateSharedFlowRevision",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the shared flow revision to update. Must be of the form: `organizations/{organization_id}/sharedflows/{shared_flow_id}/revisions/{revision_id}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    validate = {
                      description = "Ignored. All uploads are validated regardless of the value of this field. It is kept for compatibility with existing APIs. Must be `true` or `false` if provided.",
                      location = "query",
                      type = "boolean",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleApiHttpBody",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1SharedFlowRevision",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
              resources = {
                deployments = {
                  methods = {
                    list = {
                      description = "Lists all deployments of a shared flow revision.",
                      flatPath = "v1/organizations/{organizationsId}/sharedflows/{sharedflowsId}/revisions/{revisionsId}/deployments",
                      httpMethod = "GET",
                      id = "apigee.organizations.sharedflows.revisions.deployments.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Name of the API proxy revision for which to return deployment information in the following format: `organizations/{org}/sharedflows/{sharedflow}/revisions/{rev}`.",
                          location = "path",
                          pattern = "^organizations/[^/]+/sharedflows/[^/]+/revisions/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/deployments",
                      response = {
                        ["$ref"] = "GoogleCloudApigeeV1ListDeploymentsResponse",
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
        sites = {
          resources = {
            apicategories = {
              methods = {
                create = {
                  description = "Creates a new category on the portal.",
                  flatPath = "v1/organizations/{organizationsId}/sites/{sitesId}/apicategories",
                  httpMethod = "POST",
                  id = "apigee.organizations.sites.apicategories.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the portal. Use the following structure in your request: `organizations/{org}/sites/{site}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sites/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apicategories",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiCategoryData",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiCategory",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a category from the portal.",
                  flatPath = "v1/organizations/{organizationsId}/sites/{sitesId}/apicategories/{apicategoriesId}",
                  httpMethod = "DELETE",
                  id = "apigee.organizations.sites.apicategories.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the category. Use the following structure in your request: `organizations/{org}/sites/{site}/apicategories/{apicategory}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sites/[^/]+/apicategories/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiResponseWrapper",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets a category on the portal.",
                  flatPath = "v1/organizations/{organizationsId}/sites/{sitesId}/apicategories/{apicategoriesId}",
                  httpMethod = "GET",
                  id = "apigee.organizations.sites.apicategories.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the category. Use the following structure in your request: `organizations/{org}/sites/{site}/apicategories/{apicategory}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sites/[^/]+/apicategories/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiCategory",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists the categories on the portal.",
                  flatPath = "v1/organizations/{organizationsId}/sites/{sitesId}/apicategories",
                  httpMethod = "GET",
                  id = "apigee.organizations.sites.apicategories.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. Name of the portal. Use the following structure in your request: `organizations/{org}/sites/{site}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sites/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/apicategories",
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ListApiCategoriesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Updates a category on the portal.",
                  flatPath = "v1/organizations/{organizationsId}/sites/{sitesId}/apicategories/{apicategoriesId}",
                  httpMethod = "PATCH",
                  id = "apigee.organizations.sites.apicategories.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. Name of the category. Use the following structure in your request: `organizations/{org}/sites/{site}/apicategories/{apicategory}`",
                      location = "path",
                      pattern = "^organizations/[^/]+/sites/[^/]+/apicategories/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiCategoryData",
                  },
                  response = {
                    ["$ref"] = "GoogleCloudApigeeV1ApiCategory",
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
    projects = {
      methods = {
        provisionOrganization = {
          description = "Provisions a new Apigee organization with a functioning runtime. This is the standard way to create trial organizations for a free Apigee trial.",
          flatPath = "v1/projects/{projectsId}:provisionOrganization",
          httpMethod = "POST",
          id = "apigee.projects.provisionOrganization",
          parameterOrder = {
            "project",
          },
          parameters = {
            project = {
              description = "Required. Name of the GCP project with which to associate the Apigee organization.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+project}:provisionOrganization",
          request = {
            ["$ref"] = "GoogleCloudApigeeV1ProvisionOrganizationRequest",
          },
          response = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230104",
  rootUrl = "https://apigee.googleapis.com/",
  schemas = {
    EdgeConfigstoreBundleBadBundle = {
      description = "Describes why a bundle is invalid. Intended for use in error details.",
      id = "EdgeConfigstoreBundleBadBundle",
      properties = {
        violations = {
          description = "Describes all precondition violations.",
          items = {
            ["$ref"] = "EdgeConfigstoreBundleBadBundleViolation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EdgeConfigstoreBundleBadBundleViolation = {
      description = "A message type used to describe a single bundle validation error.",
      id = "EdgeConfigstoreBundleBadBundleViolation",
      properties = {
        description = {
          description = "A description of why the bundle is invalid and how to fix it.",
          type = "string",
        },
        filename = {
          description = "The filename (including relative path from the bundle root) in which the error occurred.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleApiHttpBody = {
      description = "Message that represents an arbitrary HTTP body. It should only be used for payload formats that can't be represented as JSON, such as raw binary or an HTML page. This message can be used both in streaming and non-streaming API methods in the request as well as the response. It can be used as a top-level request field, which is convenient if one wants to extract parameters from either the URL or HTTP template into the request fields and also want access to the raw HTTP body. Example: message GetResourceRequest { // A unique request id. string request_id = 1; // The raw HTTP body is bound to this field. google.api.HttpBody http_body = 2; } service ResourceService { rpc GetResource(GetResourceRequest) returns (google.api.HttpBody); rpc UpdateResource(google.api.HttpBody) returns (google.protobuf.Empty); } Example with streaming methods: service CaldavService { rpc GetCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); rpc UpdateCalendar(stream google.api.HttpBody) returns (stream google.api.HttpBody); } Use of this type only changes how the request and response bodies are handled, all other features will continue to work unchanged.",
      id = "GoogleApiHttpBody",
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
    GoogleCloudApigeeV1Access = {
      id = "GoogleCloudApigeeV1Access",
      properties = {
        Get = {
          ["$ref"] = "GoogleCloudApigeeV1AccessGet",
        },
        Remove = {
          ["$ref"] = "GoogleCloudApigeeV1AccessRemove",
        },
        Set = {
          ["$ref"] = "GoogleCloudApigeeV1AccessSet",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AccessGet = {
      description = "Get action. For example, \"Get\" : { \"name\" : \"target.name\", \"value\" : \"default\" }",
      id = "GoogleCloudApigeeV1AccessGet",
      properties = {
        name = {
          type = "string",
        },
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AccessRemove = {
      description = "Remove action. For example, \"Remove\" : { \"name\" : \"target.name\", \"success\" : true }",
      id = "GoogleCloudApigeeV1AccessRemove",
      properties = {
        name = {
          type = "string",
        },
        success = {
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AccessSet = {
      description = "Set action. For example, \"Set\" : { \"name\" : \"target.name\", \"success\" : true, \"value\" : \"default\" }",
      id = "GoogleCloudApigeeV1AccessSet",
      properties = {
        name = {
          type = "string",
        },
        success = {
          type = "boolean",
        },
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ActivateNatAddressRequest = {
      description = "Request for ActivateNatAddressRequest. Activate the nat address request.",
      id = "GoogleCloudApigeeV1ActivateNatAddressRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudApigeeV1AddonsConfig = {
      description = "Add-on configurations for the Apigee organization.",
      id = "GoogleCloudApigeeV1AddonsConfig",
      properties = {
        advancedApiOpsConfig = {
          ["$ref"] = "GoogleCloudApigeeV1AdvancedApiOpsConfig",
          description = "Configuration for the Advanced API Ops add-on.",
        },
        apiSecurityConfig = {
          ["$ref"] = "GoogleCloudApigeeV1ApiSecurityConfig",
          description = "Configuration for the API Security add-on.",
        },
        connectorsPlatformConfig = {
          ["$ref"] = "GoogleCloudApigeeV1ConnectorsPlatformConfig",
          description = "Configuration for the Connectors Platform add-on.",
        },
        integrationConfig = {
          ["$ref"] = "GoogleCloudApigeeV1IntegrationConfig",
          description = "Configuration for the Integration add-on.",
        },
        monetizationConfig = {
          ["$ref"] = "GoogleCloudApigeeV1MonetizationConfig",
          description = "Configuration for the Monetization add-on.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AdjustDeveloperBalanceRequest = {
      description = "Request for AdjustDeveloperBalance.",
      id = "GoogleCloudApigeeV1AdjustDeveloperBalanceRequest",
      properties = {
        adjustment = {
          ["$ref"] = "GoogleTypeMoney",
          description = "* A positive value of `adjustment` means that that the API provider wants to adjust the balance for an under-charged developer i.e. the balance of the developer will decrease. * A negative value of `adjustment` means that that the API provider wants to adjust the balance for an over-charged developer i.e. the balance of the developer will increase.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AdvancedApiOpsConfig = {
      description = "Configuration for the Advanced API Ops add-on.",
      id = "GoogleCloudApigeeV1AdvancedApiOpsConfig",
      properties = {
        enabled = {
          description = "Flag that specifies whether the Advanced API Ops add-on is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Alias = {
      description = "Reference to a certificate or key/certificate pair.",
      id = "GoogleCloudApigeeV1Alias",
      properties = {
        alias = {
          description = "Resource ID for this alias. Values must match the regular expression `[^/]{1,255}`.",
          type = "string",
        },
        certsInfo = {
          ["$ref"] = "GoogleCloudApigeeV1Certificate",
          description = "Chain of certificates under this alias.",
        },
        type = {
          description = "Type of alias.",
          enum = {
            "ALIAS_TYPE_UNSPECIFIED",
            "CERT",
            "KEY_CERT",
          },
          enumDescriptions = {
            "Alias type is not specified.",
            "Certificate.",
            "Key/certificate pair.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AliasRevisionConfig = {
      id = "GoogleCloudApigeeV1AliasRevisionConfig",
      properties = {
        location = {
          description = "Location of the alias file. For example, a Google Cloud Storage URI.",
          type = "string",
        },
        name = {
          description = "Name of the alias revision included in the keystore in the following format: `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}/revisions/{rev}`",
          type = "string",
        },
        type = {
          enum = {
            "ALIAS_TYPE_UNSPECIFIED",
            "CERT",
            "KEY_CERT",
          },
          enumDescriptions = {
            "Alias type is not specified.",
            "Certificate.",
            "Key/certificate pair.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiCategory = {
      description = "the Api category resource wrapped with response status, error_code etc.",
      id = "GoogleCloudApigeeV1ApiCategory",
      properties = {
        data = {
          ["$ref"] = "GoogleCloudApigeeV1ApiCategoryData",
          description = "Details of category.",
        },
        errorCode = {
          description = "ID that can be used to find errors in the log files.",
          type = "string",
        },
        message = {
          description = "Description of the operation.",
          type = "string",
        },
        requestId = {
          description = "ID that can be used to find request details in the log files.",
          type = "string",
        },
        status = {
          description = "Status of the operation.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiCategoryData = {
      description = "the Api category resource.",
      id = "GoogleCloudApigeeV1ApiCategoryData",
      properties = {
        id = {
          description = "ID of the category (a UUID).",
          type = "string",
        },
        name = {
          description = "Name of the category.",
          type = "string",
        },
        siteId = {
          description = "Name of the portal.",
          type = "string",
        },
        updateTime = {
          description = "Time the category was last modified in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiProduct = {
      id = "GoogleCloudApigeeV1ApiProduct",
      properties = {
        apiResources = {
          description = "Comma-separated list of API resources to be bundled in the API product. By default, the resource paths are mapped from the `proxy.pathsuffix` variable. The proxy path suffix is defined as the URI fragment following the ProxyEndpoint base path. For example, if the `apiResources` element is defined to be `/forecastrss` and the base path defined for the API proxy is `/weather`, then only requests to `/weather/forecastrss` are permitted by the API product. You can select a specific path, or you can select all subpaths with the following wildcard: - `/**`: Indicates that all sub-URIs are included. - `/*` : Indicates that only URIs one level down are included. By default, / supports the same resources as /** as well as the base path defined by the API proxy. For example, if the base path of the API proxy is `/v1/weatherapikey`, then the API product supports requests to `/v1/weatherapikey` and to any sub-URIs, such as `/v1/weatherapikey/forecastrss`, `/v1/weatherapikey/region/CA`, and so on. For more information, see Managing API products.",
          items = {
            type = "string",
          },
          type = "array",
        },
        approvalType = {
          description = "Flag that specifies how API keys are approved to access the APIs defined by the API product. If set to `manual`, the consumer key is generated and returned in \"pending\" state. In this case, the API keys won't work until they have been explicitly approved. If set to `auto`, the consumer key is generated and returned in \"approved\" state and can be used immediately. **Note:** Typically, `auto` is used to provide access to free or trial API products that provide limited quota or capabilities.",
          type = "string",
        },
        attributes = {
          description = "Array of attributes that may be used to extend the default API product profile with customer-specific metadata. You can specify a maximum of 18 attributes. Use this property to specify the access level of the API product as either `public`, `private`, or `internal`. Only products marked `public` are available to developers in the Apigee developer portal. For example, you can set a product to `internal` while it is in development and then change access to `public` when it is ready to release on the portal. API products marked as `private` do not appear on the portal, but can be accessed by external developers.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        createdAt = {
          description = "Response only. Creation time of this environment as milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        description = {
          description = "Description of the API product. Include key information about the API product that is not captured by other fields.",
          type = "string",
        },
        displayName = {
          description = "Name displayed in the UI or developer portal to developers registering for API access.",
          type = "string",
        },
        environments = {
          description = "Comma-separated list of environment names to which the API product is bound. Requests to environments that are not listed are rejected. By specifying one or more environments, you can bind the resources listed in the API product to a specific environment, preventing developers from accessing those resources through API proxies deployed in another environment. This setting is used, for example, to prevent resources associated with API proxies in `prod` from being accessed by API proxies deployed in `test`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        graphqlOperationGroup = {
          ["$ref"] = "GoogleCloudApigeeV1GraphQLOperationGroup",
          description = "Configuration used to group Apigee proxies or remote services with graphQL operation name, graphQL operation type and quotas. This grouping allows us to precisely set quota for a particular combination of graphQL name and operation type for a particular proxy request. If graphQL name is not set, this would imply quota will be applied on all graphQL requests matching the operation type.",
        },
        lastModifiedAt = {
          description = "Response only. Modified time of this environment as milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Internal name of the API product. Characters you can use in the name are restricted to: `A-Z0-9._\\-$ %`. **Note:** The internal name cannot be edited when updating the API product.",
          type = "string",
        },
        operationGroup = {
          ["$ref"] = "GoogleCloudApigeeV1OperationGroup",
          description = "Configuration used to group Apigee proxies or remote services with resources, method types, and quotas. The resource refers to the resource URI (excluding the base path). With this grouping, the API product creator is able to fine-tune and give precise control over which REST methods have access to specific resources and how many calls can be made (using the `quota` setting). **Note:** The `api_resources` setting cannot be specified for both the API product and operation group; otherwise the call will fail.",
        },
        proxies = {
          description = "Comma-separated list of API proxy names to which this API product is bound. By specifying API proxies, you can associate resources in the API product with specific API proxies, preventing developers from accessing those resources through other API proxies. Apigee rejects requests to API proxies that are not listed. **Note:** The API proxy names must already exist in the specified environment as they will be validated upon creation.",
          items = {
            type = "string",
          },
          type = "array",
        },
        quota = {
          description = "Number of request messages permitted per app by this API product for the specified `quotaInterval` and `quotaTimeUnit`. For example, a `quota` of 50, for a `quotaInterval` of 12 and a `quotaTimeUnit` of hours means 50 requests are allowed every 12 hours.",
          type = "string",
        },
        quotaCounterScope = {
          description = "Scope of the quota decides how the quota counter gets applied and evaluate for quota violation. If the Scope is set as PROXY, then all the operations defined for the APIproduct that are associated with the same proxy will share the same quota counter set at the APIproduct level, making it a global counter at a proxy level. If the Scope is set as OPERATION, then each operations get the counter set at the API product dedicated, making it a local counter. Note that, the QuotaCounterScope applies only when an operation does not have dedicated quota set for itself.",
          enum = {
            "QUOTA_COUNTER_SCOPE_UNSPECIFIED",
            "PROXY",
            "OPERATION",
          },
          enumDescriptions = {
            "When quota is not explicitly defined for each operation(REST/GraphQL), the limits set at product level will be used as a local counter for quota evaluation by all the operations, independent of proxy association.",
            "When quota is not explicitly defined for each operation(REST/GraphQL), set at product level will be used as a global counter for quota evaluation by all the operations associated with a particular proxy.",
            "When quota is not explicitly defined for each operation(REST/GraphQL), the limits set at product level will be used as a local counter for quota evaluation by all the operations, independent of proxy association. This behavior mimics the same as QUOTA_COUNTER_SCOPE_UNSPECIFIED.",
          },
          type = "string",
        },
        quotaInterval = {
          description = "Time interval over which the number of request messages is calculated.",
          type = "string",
        },
        quotaTimeUnit = {
          description = "Time unit defined for the `quotaInterval`. Valid values include `minute`, `hour`, `day`, or `month`.",
          type = "string",
        },
        scopes = {
          description = "Comma-separated list of OAuth scopes that are validated at runtime. Apigee validates that the scopes in any access token presented match the scopes defined in the OAuth policy associated with the API product.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiProductRef = {
      id = "GoogleCloudApigeeV1ApiProductRef",
      properties = {
        apiproduct = {
          description = "Name of the API product.",
          type = "string",
        },
        status = {
          description = "Status of the API product. Valid values are `approved` or `revoked`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiProxy = {
      description = "Metadata describing the API proxy",
      id = "GoogleCloudApigeeV1ApiProxy",
      properties = {
        apiProxyType = {
          description = "Output only. The type of the API proxy.",
          enum = {
            "API_PROXY_TYPE_UNSPECIFIED",
            "PROGRAMMABLE",
            "CONFIGURABLE",
          },
          enumDescriptions = {
            "API proxy type not specified.",
            "Programmable API Proxies enable you to develop APIs with highly flexible behavior using bundled policy configuration and one or more programming languages to describe complex sequential and/or conditional flows of logic.",
            "Configurable API Proxies enable you to develop efficient APIs using simple configuration while complex execution control flow logic is handled by Apigee. This type only works with the ARCHIVE deployment type and cannot be combined with the PROXY deployment type.",
          },
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User labels applied to this API Proxy.",
          type = "object",
        },
        latestRevisionId = {
          description = "Output only. The id of the most recently created revision for this api proxy.",
          readOnly = true,
          type = "string",
        },
        metaData = {
          ["$ref"] = "GoogleCloudApigeeV1EntityMetadata",
          description = "Output only. Metadata describing the API proxy.",
          readOnly = true,
        },
        name = {
          description = "Output only. Name of the API proxy.",
          readOnly = true,
          type = "string",
        },
        readOnly = {
          description = "Output only. Whether this proxy is read-only. A read-only proxy cannot have new revisions created through calls to CreateApiProxyRevision. A proxy is read-only if it was generated by an archive.",
          readOnly = true,
          type = "boolean",
        },
        revision = {
          description = "Output only. List of revisions defined for the API proxy.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiProxyRevision = {
      description = "API proxy revision.",
      id = "GoogleCloudApigeeV1ApiProxyRevision",
      properties = {
        archive = {
          description = "Output only. The archive that generated this proxy revision. This field is only present on proxy revisions that were generated by an archive. Proxies generated by archives cannot be updated, deleted, or deployed to other environments. Format: `organizations/*/environments/*/archiveDeployments/*`",
          readOnly = true,
          type = "string",
        },
        basepaths = {
          description = "Base URL of the API proxy.",
          items = {
            type = "string",
          },
          type = "array",
        },
        configurationVersion = {
          ["$ref"] = "GoogleCloudApigeeV1ConfigVersion",
          description = "Version of the API proxy configuration schema to which the API proxy conforms. Currently, the only supported value is 4.0 (`majorVersion.minorVersion`). This setting may be used in the future to track the evolution of the API proxy format.",
        },
        contextInfo = {
          description = "Revision number, app name, and organization for the API proxy.",
          type = "string",
        },
        createdAt = {
          description = "Time that the API proxy revision was created in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        description = {
          description = "Description of the API proxy revision.",
          type = "string",
        },
        displayName = {
          description = "Human-readable name of the API proxy.",
          type = "string",
        },
        entityMetaDataAsProperties = {
          additionalProperties = {
            type = "string",
          },
          description = "Metadata describing the API proxy revision as a key-value map.",
          type = "object",
        },
        integrationEndpoints = {
          description = "List of IntegrationEndpoints in the '/integration-endpoints' directory of the API proxy. This is a 'manifest' setting designed to provide visibility into the contents of the API proxy.",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastModifiedAt = {
          description = "Time that the API proxy revision was last modified in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "Name of the API proxy.",
          type = "string",
        },
        policies = {
          description = "List of policy names included in the API proxy revision..",
          items = {
            type = "string",
          },
          type = "array",
        },
        proxies = {
          description = "List of proxy names included in the API proxy revision.",
          items = {
            type = "string",
          },
          type = "array",
        },
        proxyEndpoints = {
          description = "List of ProxyEndpoints in the `/proxies` directory of the API proxy. Typically, this element is included only when the API proxy was created using the Edge UI. This is a 'manifest' setting designed to provide visibility into the contents of the API proxy.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceFiles = {
          ["$ref"] = "GoogleCloudApigeeV1ResourceFiles",
          description = "List of resource files included in the API proxy revision.",
        },
        resources = {
          description = "List of the resources included in the API proxy revision formatted as \"{type}://{name}\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        revision = {
          description = "API proxy revision.",
          type = "string",
        },
        sharedFlows = {
          description = "List of the shared flows included in the API proxy revision.",
          items = {
            type = "string",
          },
          type = "array",
        },
        spec = {
          description = "OpenAPI Specification that is associated with the API proxy. The value is set to a URL or to a path in the specification store.",
          type = "string",
        },
        targetEndpoints = {
          description = "List of TargetEndpoints in the `/targets` directory of the API proxy. Typically, this element is included only when the API proxy was created using the Edge UI. This is a 'manifest' setting designed to provide visibility into the contents of the API proxy.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetServers = {
          description = "List of TargetServers referenced in any TargetEndpoint in the API proxy. Typically, you will see this element only when the API proxy was created using the Edge UI. This is a 'manifest' setting designed to provide visibility into the contents of the API proxy.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targets = {
          description = "List of the targets included in the API proxy revision.",
          items = {
            type = "string",
          },
          type = "array",
        },
        teams = {
          description = "List of the teams included in the API proxy revision.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "Type. Set to `Application`. Maintained for compatibility with the Apigee Edge API.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiResponseWrapper = {
      id = "GoogleCloudApigeeV1ApiResponseWrapper",
      properties = {
        errorCode = {
          description = "ID that can be used to find errors in the log files.",
          type = "string",
        },
        message = {
          description = "Description of the operation.",
          type = "string",
        },
        requestId = {
          description = "ID that can be used to find request details in the log files.",
          type = "string",
        },
        status = {
          description = "Status of the operation.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiSecurityConfig = {
      description = "Configurations of the API Security add-on.",
      id = "GoogleCloudApigeeV1ApiSecurityConfig",
      properties = {
        enabled = {
          description = "Flag that specifies whether the API security add-on is enabled.",
          type = "boolean",
        },
        expiresAt = {
          description = "Output only. Time at which the API Security add-on expires in in milliseconds since epoch. If unspecified, the add-on will never expire.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ApiSecurityRuntimeConfig = {
      description = "Response for GetApiSecurityRuntimeConfig[EnvironmentService.GetApiSecurityRuntimeConfig].",
      id = "GoogleCloudApigeeV1ApiSecurityRuntimeConfig",
      properties = {
        location = {
          description = "A list of up to 5 Cloud Storage Blobs that contain SecurityActions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Name of the environment API Security Runtime configuration resource. Format: `organizations/{org}/environments/{env}/apiSecurityRuntimeConfig`",
          type = "string",
        },
        revisionId = {
          description = "Revision ID of the API Security Runtime configuration. The higher the value, the more recently the configuration was deployed.",
          format = "int64",
          type = "string",
        },
        uid = {
          description = "Unique ID for the API Security Runtime configuration. The ID will only change if the environment is deleted and recreated.",
          type = "string",
        },
        updateTime = {
          description = "Time that the API Security Runtime configuration was updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1App = {
      id = "GoogleCloudApigeeV1App",
      properties = {
        apiProducts = {
          description = "List of API products associated with the app.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ApiProductRef",
          },
          type = "array",
        },
        appId = {
          description = "ID of the app.",
          type = "string",
        },
        attributes = {
          description = "List of attributes.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        callbackUrl = {
          description = "Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to apps.",
          type = "string",
        },
        companyName = {
          description = "Name of the company that owns the app.",
          type = "string",
        },
        createdAt = {
          description = "Output only. Unix time when the app was created.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        credentials = {
          description = "Output only. Set of credentials for the app. Credentials are API key/secret pairs associated with API products.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Credential",
          },
          readOnly = true,
          type = "array",
        },
        developerId = {
          description = "ID of the developer.",
          type = "string",
        },
        keyExpiresIn = {
          description = "Duration, in milliseconds, of the consumer key that will be generated for the app. The default value, -1, indicates an infinite validity period. Once set, the expiration can't be updated. json key: keyExpiresIn",
          format = "int64",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Last modified time as milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Name of the app.",
          type = "string",
        },
        scopes = {
          description = "Scopes to apply to the app. The specified scope names must already exist on the API product that you associate with the app.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Status of the credential.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ArchiveDeployment = {
      description = "Archive Deployment information.",
      id = "GoogleCloudApigeeV1ArchiveDeployment",
      properties = {
        createdAt = {
          description = "Output only. The time at which the Archive Deployment was created in milliseconds since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        gcsUri = {
          description = "Input only. The Google Cloud Storage signed URL returned from GenerateUploadUrl and used to upload the Archive zip file.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User-supplied key-value pairs used to organize ArchiveDeployments. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.",
          type = "object",
        },
        name = {
          description = "Name of the Archive Deployment in the following format: `organizations/{org}/environments/{env}/archiveDeployments/{id}`.",
          type = "string",
        },
        operation = {
          description = "Output only. A reference to the LRO that created this Archive Deployment in the following format: `organizations/{org}/operations/{id}`",
          readOnly = true,
          type = "string",
        },
        updatedAt = {
          description = "Output only. The time at which the Archive Deployment was updated in milliseconds since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AsyncQuery = {
      id = "GoogleCloudApigeeV1AsyncQuery",
      properties = {
        created = {
          description = "Creation time of the query.",
          type = "string",
        },
        envgroupHostname = {
          description = "Hostname is available only when query is executed at host level.",
          type = "string",
        },
        error = {
          description = "Error is set when query fails.",
          type = "string",
        },
        executionTime = {
          description = "ExecutionTime is available only after the query is completed.",
          type = "string",
        },
        name = {
          description = "Asynchronous Query Name.",
          type = "string",
        },
        queryParams = {
          ["$ref"] = "GoogleCloudApigeeV1QueryMetadata",
          description = "Contains information like metrics, dimenstions etc of the AsyncQuery.",
        },
        reportDefinitionId = {
          description = "Asynchronous Report ID.",
          type = "string",
        },
        result = {
          ["$ref"] = "GoogleCloudApigeeV1AsyncQueryResult",
          description = "Result is available only after the query is completed.",
        },
        resultFileSize = {
          description = "ResultFileSize is available only after the query is completed.",
          type = "string",
        },
        resultRows = {
          description = "ResultRows is available only after the query is completed.",
          format = "int64",
          type = "string",
        },
        self = {
          description = "Self link of the query. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`",
          type = "string",
        },
        state = {
          description = "Query state could be \"enqueued\", \"running\", \"completed\", \"failed\".",
          type = "string",
        },
        updated = {
          description = "Last updated timestamp for the query.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AsyncQueryResult = {
      id = "GoogleCloudApigeeV1AsyncQueryResult",
      properties = {
        expires = {
          description = "Query result will be unaccessable after this time.",
          type = "string",
        },
        self = {
          description = "Self link of the query results. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1AsyncQueryResultView = {
      id = "GoogleCloudApigeeV1AsyncQueryResultView",
      properties = {
        code = {
          description = "Error code when there is a failure.",
          format = "int32",
          type = "integer",
        },
        error = {
          description = "Error message when there is a failure.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "GoogleCloudApigeeV1QueryMetadata",
          description = "Metadata contains information like metrics, dimenstions etc of the AsyncQuery.",
        },
        rows = {
          description = "Rows of query result. Each row is a JSON object. Example: {sum(message_count): 1, developer_app: \"(not set)\",…}",
          items = {
            type = "any",
          },
          type = "array",
        },
        state = {
          description = "State of retrieving ResultView.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Attribute = {
      description = "Key-value pair to store extra metadata.",
      id = "GoogleCloudApigeeV1Attribute",
      properties = {
        name = {
          description = "API key of the attribute.",
          type = "string",
        },
        value = {
          description = "Value of the attribute.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Attributes = {
      id = "GoogleCloudApigeeV1Attributes",
      properties = {
        attribute = {
          description = "List of attributes.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1CanaryEvaluation = {
      description = "CanaryEvaluation represents the canary analysis between two versions of the runtime that is serving requests.",
      id = "GoogleCloudApigeeV1CanaryEvaluation",
      properties = {
        control = {
          description = "Required. The stable version that is serving requests.",
          type = "string",
        },
        createTime = {
          description = "Output only. Create time of the canary evaluation.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Required. End time for the evaluation's analysis.",
          format = "google-datetime",
          type = "string",
        },
        metricLabels = {
          ["$ref"] = "GoogleCloudApigeeV1CanaryEvaluationMetricLabels",
          description = "Required. Labels used to filter the metrics used for a canary evaluation.",
        },
        name = {
          description = "Output only. Name of the canary evalution.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Required. Start time for the canary evaluation's analysis.",
          format = "google-datetime",
          type = "string",
        },
        state = {
          description = "Output only. The current state of the canary evaluation.",
          enum = {
            "STATE_UNSPECIFIED",
            "RUNNING",
            "SUCCEEDED",
          },
          enumDescriptions = {
            "No state has been specified.",
            "The canary evaluation is still in progress.",
            "The canary evaluation has finished.",
          },
          readOnly = true,
          type = "string",
        },
        treatment = {
          description = "Required. The newer version that is serving requests.",
          type = "string",
        },
        verdict = {
          description = "Output only. The resulting verdict of the canary evaluations: NONE, PASS, or FAIL.",
          enum = {
            "VERDICT_UNSPECIFIED",
            "NONE",
            "FAIL",
            "PASS",
          },
          enumDescriptions = {
            "Verdict is not available yet.",
            "No verdict reached.",
            "Evaluation is not good.",
            "Evaluation is good.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1CanaryEvaluationMetricLabels = {
      description = "Labels that can be used to filter Apigee metrics.",
      id = "GoogleCloudApigeeV1CanaryEvaluationMetricLabels",
      properties = {
        env = {
          description = "The environment ID associated with the metrics.",
          type = "string",
        },
        instance_id = {
          description = "Required. The instance ID associated with the metrics. In Apigee Hybrid, the value is configured during installation.",
          type = "string",
        },
        location = {
          description = "Required. The location associated with the metrics.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1CertInfo = {
      description = "X.509 certificate as defined in RFC 5280.",
      id = "GoogleCloudApigeeV1CertInfo",
      properties = {
        basicConstraints = {
          description = "X.509 basic constraints extension.",
          type = "string",
        },
        expiryDate = {
          description = "X.509 `notAfter` validity period in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        isValid = {
          description = "Flag that specifies whether the certificate is valid. Flag is set to `Yes` if the certificate is valid, `No` if expired, or `Not yet` if not yet valid.",
          type = "string",
        },
        issuer = {
          description = "X.509 issuer.",
          type = "string",
        },
        publicKey = {
          description = "Public key component of the X.509 subject public key info.",
          type = "string",
        },
        serialNumber = {
          description = "X.509 serial number.",
          type = "string",
        },
        sigAlgName = {
          description = "X.509 signatureAlgorithm.",
          type = "string",
        },
        subject = {
          description = "X.509 subject.",
          type = "string",
        },
        subjectAlternativeNames = {
          description = "X.509 subject alternative names (SANs) extension.",
          items = {
            type = "string",
          },
          type = "array",
        },
        validFrom = {
          description = "X.509 `notBefore` validity period in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "X.509 version.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Certificate = {
      id = "GoogleCloudApigeeV1Certificate",
      properties = {
        certInfo = {
          description = "Chain of certificates under this name.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1CertInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1CommonNameConfig = {
      id = "GoogleCloudApigeeV1CommonNameConfig",
      properties = {
        matchWildCards = {
          type = "boolean",
        },
        name = {
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ComputeEnvironmentScoresRequest = {
      description = "Request for ComputeEnvironmentScores.",
      id = "GoogleCloudApigeeV1ComputeEnvironmentScoresRequest",
      properties = {
        filters = {
          description = "Optional. Filters are used to filter scored components. Return all the components if no filter is mentioned. Example: [{ \"scorePath\": \"/org@myorg/envgroup@myenvgroup/env@myenv/proxies/proxy@myproxy/source\" }, { \"scorePath\": \"/org@myorg/envgroup@myenvgroup/env@myenv/proxies/proxy@myproxy/target\", }] This will return components with path: \"/org@myorg/envgroup@myenvgroup/env@myenv/proxies/proxy@myproxy/source\" OR \"/org@myorg/envgroup@myenvgroup/env@myenv/proxies/proxy@myproxy/target\"",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter",
          },
          type = "array",
        },
        pageSize = {
          description = "Optional. The maximum number of subcomponents to be returned in a single page. The service may return fewer than this value. If unspecified, at most 100 subcomponents will be returned in a single page.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        timeRange = {
          ["$ref"] = "GoogleTypeInterval",
          description = "Required. Time range for score calculation. At most 14 days of scores will be returned.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter = {
      description = "Filter scores by component path. Used custom filter instead of AIP-160 as the use cases are highly constrained and predictable.",
      id = "GoogleCloudApigeeV1ComputeEnvironmentScoresRequestFilter",
      properties = {
        scorePath = {
          description = "Optional. Return scores for this component. Example: \"/org@myorg/envgroup@myenvgroup/env@myenv/proxies/proxy@myproxy/source\"",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ComputeEnvironmentScoresResponse = {
      description = "Response for ComputeEnvironmentScores.",
      id = "GoogleCloudApigeeV1ComputeEnvironmentScoresResponse",
      properties = {
        nextPageToken = {
          description = "A page token, received from a previous `ComputeScore` call. Provide this to retrieve the subsequent page.",
          type = "string",
        },
        scores = {
          description = "List of scores. One score per day.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Score",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ConfigVersion = {
      description = "Version of the API proxy configuration schema. Currently, only 4.0 is supported.",
      id = "GoogleCloudApigeeV1ConfigVersion",
      properties = {
        majorVersion = {
          description = "Major version of the API proxy configuration schema.",
          format = "int32",
          type = "integer",
        },
        minorVersion = {
          description = "Minor version of the API proxy configuration schema.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ConnectorsPlatformConfig = {
      description = "Configuration for the Connectors Platform add-on.",
      id = "GoogleCloudApigeeV1ConnectorsPlatformConfig",
      properties = {
        enabled = {
          description = "Flag that specifies whether the Connectors Platform add-on is enabled.",
          type = "boolean",
        },
        expiresAt = {
          description = "Output only. Time at which the Connectors Platform add-on expires in milliseconds since epoch. If unspecified, the add-on will never expire.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Credential = {
      id = "GoogleCloudApigeeV1Credential",
      properties = {
        apiProducts = {
          description = "List of API products this credential can be used for.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ApiProductRef",
          },
          type = "array",
        },
        attributes = {
          description = "List of attributes associated with this credential.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        consumerKey = {
          description = "Consumer key.",
          type = "string",
        },
        consumerSecret = {
          description = "Secret key.",
          type = "string",
        },
        expiresAt = {
          description = "Time the credential will expire in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        issuedAt = {
          description = "Time the credential was issued in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        scopes = {
          description = "List of scopes to apply to the app. Specified scopes must already exist on the API product that you associate with the app.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Status of the credential. Valid values include `approved` or `revoked`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1CreditDeveloperBalanceRequest = {
      description = "Request for CreditDeveloperBalance.",
      id = "GoogleCloudApigeeV1CreditDeveloperBalanceRequest",
      properties = {
        transactionAmount = {
          ["$ref"] = "GoogleTypeMoney",
          description = "The amount of money to be credited. The wallet corresponding to the currency specified within `transaction_amount` will be updated. For example, if you specified `currency_code` within `transaction_amount` as \"USD\", then the amount would be added to the wallet which has the \"USD\" currency or if no such wallet exists, a new wallet will be created with the \"USD\" currency.",
        },
        transactionId = {
          description = "Each transaction_id uniquely identifies a credit balance request. If multiple requests are received with the same transaction_id, only one of them will be considered.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1CustomReport = {
      id = "GoogleCloudApigeeV1CustomReport",
      properties = {
        chartType = {
          description = "This field contains the chart type for the report",
          type = "string",
        },
        comments = {
          description = "Legacy field: not used. This field contains a list of comments associated with custom report",
          items = {
            type = "string",
          },
          type = "array",
        },
        createdAt = {
          description = "Output only. Unix time when the app was created json key: createdAt",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        dimensions = {
          description = "This contains the list of dimensions for the report",
          items = {
            type = "string",
          },
          type = "array",
        },
        displayName = {
          description = "This is the display name for the report",
          type = "string",
        },
        environment = {
          description = "Output only. Environment name",
          readOnly = true,
          type = "string",
        },
        filter = {
          description = "This field contains the filter expression",
          type = "string",
        },
        fromTime = {
          description = "Legacy field: not used. Contains the from time for the report",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Modified time of this entity as milliseconds since epoch. json key: lastModifiedAt",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        lastViewedAt = {
          description = "Output only. Last viewed time of this entity as milliseconds since epoch",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        limit = {
          description = "Legacy field: not used This field contains the limit for the result retrieved",
          type = "string",
        },
        metrics = {
          description = "Required. This contains the list of metrics",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1CustomReportMetric",
          },
          type = "array",
        },
        name = {
          description = "Required. Unique identifier for the report T his is a legacy field used to encode custom report unique id",
          type = "string",
        },
        offset = {
          description = "Legacy field: not used. This field contains the offset for the data",
          type = "string",
        },
        organization = {
          description = "Output only. Organization name",
          readOnly = true,
          type = "string",
        },
        properties = {
          description = "This field contains report properties such as ui metadata etc.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ReportProperty",
          },
          type = "array",
        },
        sortByCols = {
          description = "Legacy field: not used much. Contains the list of sort by columns",
          items = {
            type = "string",
          },
          type = "array",
        },
        sortOrder = {
          description = "Legacy field: not used much. Contains the sort order for the sort columns",
          type = "string",
        },
        tags = {
          description = "Legacy field: not used. This field contains a list of tags associated with custom report",
          items = {
            type = "string",
          },
          type = "array",
        },
        timeUnit = {
          description = "This field contains the time unit of aggregation for the report",
          type = "string",
        },
        toTime = {
          description = "Legacy field: not used. Contains the end time for the report",
          type = "string",
        },
        topk = {
          description = "Legacy field: not used. This field contains the top k parameter value for restricting the result",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1CustomReportMetric = {
      description = "This encapsulates a metric property of the form sum(message_count) where name is message_count and function is sum",
      id = "GoogleCloudApigeeV1CustomReportMetric",
      properties = {
        ["function"] = {
          description = "aggregate function",
          type = "string",
        },
        name = {
          description = "name of the metric",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DataCollector = {
      description = "Data collector configuration.",
      id = "GoogleCloudApigeeV1DataCollector",
      properties = {
        createdAt = {
          description = "Output only. The time at which the data collector was created in milliseconds since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "A description of the data collector.",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. The time at which the Data Collector was last updated in milliseconds since the epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "ID of the data collector. Must begin with `dc_`.",
          type = "string",
        },
        type = {
          description = "Immutable. The type of data this data collector will collect.",
          enum = {
            "TYPE_UNSPECIFIED",
            "INTEGER",
            "FLOAT",
            "STRING",
            "BOOLEAN",
            "DATETIME",
          },
          enumDescriptions = {
            "For future compatibility.",
            "For integer values.",
            "For float values.",
            "For string values.",
            "For boolean values.",
            "For datetime values.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DataCollectorConfig = {
      description = "Data collector and its configuration.",
      id = "GoogleCloudApigeeV1DataCollectorConfig",
      properties = {
        name = {
          description = "Name of the data collector in the following format: `organizations/{org}/datacollectors/{datacollector}`",
          type = "string",
        },
        type = {
          description = "Data type accepted by the data collector.",
          enum = {
            "TYPE_UNSPECIFIED",
            "INTEGER",
            "FLOAT",
            "STRING",
            "BOOLEAN",
            "DATETIME",
          },
          enumDescriptions = {
            "For future compatibility.",
            "For integer values.",
            "For float values.",
            "For string values.",
            "For boolean values.",
            "For datetime values.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Datastore = {
      description = "The data store defines the connection to export data repository (Cloud Storage, BigQuery), including the credentials used to access the data repository.",
      id = "GoogleCloudApigeeV1Datastore",
      properties = {
        createTime = {
          description = "Output only. Datastore create time, in milliseconds since the epoch of 1970-01-01T00:00:00Z",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        datastoreConfig = {
          ["$ref"] = "GoogleCloudApigeeV1DatastoreConfig",
          description = "Datastore Configurations.",
        },
        displayName = {
          description = "Required. Display name in UI",
          type = "string",
        },
        lastUpdateTime = {
          description = "Output only. Datastore last update time, in milliseconds since the epoch of 1970-01-01T00:00:00Z",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        org = {
          description = "Output only. Organization that the datastore belongs to",
          readOnly = true,
          type = "string",
        },
        self = {
          description = "Output only. Resource link of Datastore. Example: `/organizations/{org}/analytics/datastores/{uuid}`",
          readOnly = true,
          type = "string",
        },
        targetType = {
          description = "Destination storage type. Supported types `gcs` or `bigquery`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DatastoreConfig = {
      description = "Configuration detail for datastore",
      id = "GoogleCloudApigeeV1DatastoreConfig",
      properties = {
        bucketName = {
          description = "Name of the Cloud Storage bucket. Required for `gcs` target_type.",
          type = "string",
        },
        datasetName = {
          description = "BigQuery dataset name Required for `bigquery` target_type.",
          type = "string",
        },
        path = {
          description = "Path of Cloud Storage bucket Required for `gcs` target_type.",
          type = "string",
        },
        projectId = {
          description = "Required. GCP project in which the datastore exists",
          type = "string",
        },
        tablePrefix = {
          description = "Prefix of BigQuery table Required for `bigquery` target_type.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DateRange = {
      description = "Date range of the data to export.",
      id = "GoogleCloudApigeeV1DateRange",
      properties = {
        ["end"] = {
          description = "Required. End date (exclusive) of the data to export in the format `yyyy-mm-dd`. The date range ends at 00:00:00 UTC on the end date- which will not be in the output.",
          type = "string",
        },
        start = {
          description = "Required. Start date of the data to export in the format `yyyy-mm-dd`. The date range begins at 00:00:00 UTC on the start date.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DebugMask = {
      id = "GoogleCloudApigeeV1DebugMask",
      properties = {
        faultJSONPaths = {
          description = "List of JSON paths that specify the JSON elements to be filtered from JSON payloads in error flows.",
          items = {
            type = "string",
          },
          type = "array",
        },
        faultXPaths = {
          description = "List of XPaths that specify the XML elements to be filtered from XML payloads in error flows.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Name of the debug mask.",
          type = "string",
        },
        namespaces = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of namespaces to URIs.",
          type = "object",
        },
        requestJSONPaths = {
          description = "List of JSON paths that specify the JSON elements to be filtered from JSON request message payloads.",
          items = {
            type = "string",
          },
          type = "array",
        },
        requestXPaths = {
          description = "List of XPaths that specify the XML elements to be filtered from XML request message payloads.",
          items = {
            type = "string",
          },
          type = "array",
        },
        responseJSONPaths = {
          description = "List of JSON paths that specify the JSON elements to be filtered from JSON response message payloads.",
          items = {
            type = "string",
          },
          type = "array",
        },
        responseXPaths = {
          description = "List of XPaths that specify the XML elements to be filtered from XML response message payloads.",
          items = {
            type = "string",
          },
          type = "array",
        },
        variables = {
          description = "List of variables that should be masked from the debug output.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DebugSession = {
      id = "GoogleCloudApigeeV1DebugSession",
      properties = {
        count = {
          description = "Optional. The number of request to be traced. Min = 1, Max = 15, Default = 10.",
          format = "int32",
          type = "integer",
        },
        createTime = {
          description = "Output only. The first transaction creation timestamp, recorded by UAP.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        filter = {
          description = "Optional. A conditional statement which is evaluated against the request message to determine if it should be traced. Syntax matches that of on API Proxy bundle flow Condition.",
          type = "string",
        },
        name = {
          description = "A unique ID for this DebugSession.",
          type = "string",
        },
        timeout = {
          description = "Optional. The time in seconds after which this DebugSession should end. This value will override the value in query param, if both are provided.",
          format = "int64",
          type = "string",
        },
        tracesize = {
          description = "Optional. The maximum number of bytes captured from the response payload. Min = 0, Max = 5120, Default = 5120.",
          format = "int32",
          type = "integer",
        },
        validity = {
          description = "Optional. The length of time, in seconds, that this debug session is valid, starting from when it's received in the control plane. Min = 1, Max = 15, Default = 10.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DebugSessionTransaction = {
      description = "A transaction contains all of the debug information of the entire message flow of an API call processed by the runtime plane. The information is collected and recorded at critical points of the message flow in the runtime apiproxy.",
      id = "GoogleCloudApigeeV1DebugSessionTransaction",
      properties = {
        completed = {
          description = "Flag indicating whether a transaction is completed or not",
          type = "boolean",
        },
        point = {
          description = "List of debug data collected by runtime plane at various defined points in the flow.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Point",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeleteCustomReportResponse = {
      id = "GoogleCloudApigeeV1DeleteCustomReportResponse",
      properties = {
        message = {
          description = "The response contains only a message field.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Deployment = {
      id = "GoogleCloudApigeeV1Deployment",
      properties = {
        apiProxy = {
          description = "API proxy.",
          type = "string",
        },
        deployStartTime = {
          description = "Time the API proxy was marked `deployed` in the control plane in millisconds since epoch.",
          format = "int64",
          type = "string",
        },
        environment = {
          description = "Environment.",
          type = "string",
        },
        errors = {
          description = "Errors reported for this deployment. Populated only when state == ERROR. **Note**: This field is displayed only when viewing deployment status.",
          items = {
            ["$ref"] = "GoogleRpcStatus",
          },
          type = "array",
        },
        instances = {
          description = "Status reported by each runtime instance. **Note**: This field is displayed only when viewing deployment status.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1InstanceDeploymentStatus",
          },
          type = "array",
        },
        pods = {
          description = "Status reported by runtime pods. **Note**: **This field is deprecated**. Runtime versions 1.3 and above report instance level status rather than pod status.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1PodStatus",
          },
          type = "array",
        },
        revision = {
          description = "API proxy revision.",
          type = "string",
        },
        routeConflicts = {
          description = "Conflicts in the desired state routing configuration. The presence of conflicts does not cause the state to be `ERROR`, but it will mean that some of the deployment's base paths are not routed to its environment. If the conflicts change, the state will transition to `PROGRESSING` until the latest configuration is rolled out to all instances. **Note**: This field is displayed only when viewing deployment status.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict",
          },
          type = "array",
        },
        serviceAccount = {
          description = "The full resource name of Cloud IAM Service Account that this deployment is using, eg, `projects/-/serviceAccounts/{email}`.",
          type = "string",
        },
        state = {
          description = "Current state of the deployment. **Note**: This field is displayed only when viewing deployment status.",
          enum = {
            "RUNTIME_STATE_UNSPECIFIED",
            "READY",
            "PROGRESSING",
            "ERROR",
          },
          enumDescriptions = {
            "This value should never be returned.",
            "Runtime has loaded the deployment.",
            "Deployment is not fully ready in the runtime.",
            "Encountered an error with the deployment that requires intervention.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeploymentChangeReport = {
      description = "Response for GenerateDeployChangeReport and GenerateUndeployChangeReport. This report contains any validation failures that would cause the deployment to be rejected, as well changes and conflicts in routing that may occur due to the new deployment. The existence of a routing warning does not necessarily imply that the deployment request is bad, if the desired state of the deployment request is to effect a routing change. The primary purposes of the routing messages are: 1) To inform users of routing changes that may have an effect on traffic currently being routed to other existing deployments. 2) To warn users if some base path in the proxy will not receive traffic due to an existing deployment having already claimed that base path. The presence of routing conflicts/changes will not cause non-dry-run DeployApiProxy/UndeployApiProxy requests to be rejected.",
      id = "GoogleCloudApigeeV1DeploymentChangeReport",
      properties = {
        routingChanges = {
          description = "All routing changes that may result from a deployment request.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReportRoutingChange",
          },
          type = "array",
        },
        routingConflicts = {
          description = "All base path conflicts detected for a deployment request.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict",
          },
          type = "array",
        },
        validationErrors = {
          ["$ref"] = "GoogleRpcPreconditionFailure",
          description = "Validation errors that would cause the deployment change request to be rejected.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeploymentChangeReportRoutingChange = {
      description = "Describes a potential routing change that may occur as a result of some deployment operation.",
      id = "GoogleCloudApigeeV1DeploymentChangeReportRoutingChange",
      properties = {
        description = {
          description = "Human-readable description of this routing change.",
          type = "string",
        },
        environmentGroup = {
          description = "Name of the environment group affected by this routing change.",
          type = "string",
        },
        fromDeployment = {
          ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment",
          description = "Base path/deployment that may stop receiving some traffic.",
        },
        shouldSequenceRollout = {
          description = "Set to `true` if using sequenced rollout would make this routing change safer. **Note**: This does not necessarily imply that automated sequenced rollout mode is supported for the operation.",
          type = "boolean",
        },
        toDeployment = {
          ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment",
          description = "Base path/deployment that may start receiving that traffic. May be null if no deployment is able to receive the traffic.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict = {
      description = "Describes a routing conflict that may cause a deployment not to receive traffic at some base path.",
      id = "GoogleCloudApigeeV1DeploymentChangeReportRoutingConflict",
      properties = {
        conflictingDeployment = {
          ["$ref"] = "GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment",
          description = "Existing base path/deployment causing the conflict.",
        },
        description = {
          description = "Human-readable description of this conflict.",
          type = "string",
        },
        environmentGroup = {
          description = "Name of the environment group in which this conflict exists.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment = {
      description = "Tuple representing a base path and the deployment containing it.",
      id = "GoogleCloudApigeeV1DeploymentChangeReportRoutingDeployment",
      properties = {
        apiProxy = {
          description = "Name of the deployed API proxy revision containing the base path.",
          type = "string",
        },
        basepath = {
          description = "Base path receiving traffic.",
          type = "string",
        },
        environment = {
          description = "Name of the environment in which the proxy is deployed.",
          type = "string",
        },
        revision = {
          description = "Name of the deployed API proxy revision containing the base path.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeploymentConfig = {
      description = "NEXT ID: 11",
      id = "GoogleCloudApigeeV1DeploymentConfig",
      properties = {
        attributes = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional key-value metadata for the deployment.",
          type = "object",
        },
        basePath = {
          description = "Base path where the application will be hosted. Defaults to \"/\".",
          type = "string",
        },
        deploymentGroups = {
          description = "The list of deployment groups in which this proxy should be deployed. Not currently populated for shared flows.",
          items = {
            type = "string",
          },
          type = "array",
        },
        endpoints = {
          additionalProperties = {
            type = "string",
          },
          description = "A mapping from basepaths to proxy endpoint names in this proxy. Not populated for shared flows.",
          type = "object",
        },
        location = {
          description = "Location of the API proxy bundle as a URI.",
          type = "string",
        },
        name = {
          description = "Name of the API or shared flow revision to be deployed in the following format: `organizations/{org}/apis/{api}/revisions/{rev}` or `organizations/{org}/sharedflows/{sharedflow}/revisions/{rev}`",
          type = "string",
        },
        proxyUid = {
          description = "Unique ID of the API proxy revision.",
          type = "string",
        },
        serviceAccount = {
          description = "The service account identity associated with this deployment. If non-empty, will be in the following format: `projects/-/serviceAccounts/{account_email}`",
          type = "string",
        },
        uid = {
          description = "Unique ID. The ID will only change if the deployment is deleted and recreated.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeploymentGroupConfig = {
      description = "DeploymentGroupConfig represents a deployment group that should be present in a particular environment.",
      id = "GoogleCloudApigeeV1DeploymentGroupConfig",
      properties = {
        name = {
          description = "Name of the deployment group in the following format: `organizations/{org}/environments/{env}/deploymentGroups/{group}`.",
          type = "string",
        },
        revisionId = {
          description = "Revision number which can be used by the runtime to detect if the deployment group has changed between two versions.",
          format = "int64",
          type = "string",
        },
        uid = {
          description = "Unique ID. The ID will only change if the deployment group is deleted and recreated.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Developer = {
      id = "GoogleCloudApigeeV1Developer",
      properties = {
        accessType = {
          description = "Access type.",
          type = "string",
        },
        appFamily = {
          description = "Developer app family.",
          type = "string",
        },
        apps = {
          description = "List of apps associated with the developer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        attributes = {
          description = "Optional. Developer attributes (name/value pairs). The custom attribute limit is 18.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        companies = {
          description = "List of companies associated with the developer.",
          items = {
            type = "string",
          },
          type = "array",
        },
        createdAt = {
          description = "Output only. Time at which the developer was created in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        developerId = {
          description = "ID of the developer. **Note**: IDs are generated internally by Apigee and are not guaranteed to stay the same over time.",
          type = "string",
        },
        email = {
          description = "Required. Email address of the developer. This value is used to uniquely identify the developer in Apigee hybrid. Note that the email address has to be in lowercase only.",
          type = "string",
        },
        firstName = {
          description = "Required. First name of the developer.",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Time at which the developer was last modified in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        lastName = {
          description = "Required. Last name of the developer.",
          type = "string",
        },
        organizationName = {
          description = "Output only. Name of the Apigee organization in which the developer resides.",
          readOnly = true,
          type = "string",
        },
        status = {
          description = "Output only. Status of the developer. Valid values are `active` and `inactive`.",
          readOnly = true,
          type = "string",
        },
        userName = {
          description = "Required. User name of the developer. Not used by Apigee hybrid.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeveloperApp = {
      id = "GoogleCloudApigeeV1DeveloperApp",
      properties = {
        apiProducts = {
          description = "List of API products associated with the developer app.",
          items = {
            type = "string",
          },
          type = "array",
        },
        appFamily = {
          description = "Developer app family.",
          type = "string",
        },
        appId = {
          description = "ID of the developer app.",
          type = "string",
        },
        attributes = {
          description = "List of attributes for the developer app.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        callbackUrl = {
          description = "Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.",
          type = "string",
        },
        createdAt = {
          description = "Output only. Time the developer app was created in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        credentials = {
          description = "Output only. Set of credentials for the developer app consisting of the consumer key/secret pairs associated with the API products.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Credential",
          },
          readOnly = true,
          type = "array",
        },
        developerId = {
          description = "ID of the developer.",
          type = "string",
        },
        keyExpiresIn = {
          description = "Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.",
          format = "int64",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Time the developer app was modified in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Name of the developer app.",
          type = "string",
        },
        scopes = {
          description = "Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Status of the credential. Valid values include `approved` or `revoked`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeveloperAppKey = {
      id = "GoogleCloudApigeeV1DeveloperAppKey",
      properties = {
        apiProducts = {
          description = "List of API products for which the credential can be used. **Note**: Do not specify the list of API products when creating a consumer key and secret for a developer app. Instead, use the UpdateDeveloperAppKey API to make the association after the consumer key and secret are created.",
          items = {
            type = "any",
          },
          type = "array",
        },
        attributes = {
          description = "List of attributes associated with the credential.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        consumerKey = {
          description = "Consumer key.",
          type = "string",
        },
        consumerSecret = {
          description = "Secret key.",
          type = "string",
        },
        expiresAt = {
          description = "Time the developer app expires in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        expiresInSeconds = {
          description = "Input only. Expiration time, in seconds, for the consumer key. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.",
          format = "int64",
          type = "string",
        },
        issuedAt = {
          description = "Time the developer app was created in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        scopes = {
          description = "Scopes to apply to the app. The specified scope names must already be defined for the API product that you associate with the app.",
          items = {
            type = "string",
          },
          type = "array",
        },
        status = {
          description = "Status of the credential. Valid values include `approved` or `revoked`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeveloperBalance = {
      description = "Account balance for the developer.",
      id = "GoogleCloudApigeeV1DeveloperBalance",
      properties = {
        wallets = {
          description = "Output only. List of all wallets. Each individual wallet stores the account balance for a particular currency.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeveloperBalanceWallet",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeveloperBalanceWallet = {
      description = "Wallet used to manage an account balance for a particular currency.",
      id = "GoogleCloudApigeeV1DeveloperBalanceWallet",
      properties = {
        balance = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Current remaining balance of the developer for a particular currency.",
        },
        lastCreditTime = {
          description = "Output only. Time at which the developer last added credit to the account in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeveloperMonetizationConfig = {
      description = "Monetization configuration for the developer.",
      id = "GoogleCloudApigeeV1DeveloperMonetizationConfig",
      properties = {
        billingType = {
          description = "Billing type.",
          enum = {
            "BILLING_TYPE_UNSPECIFIED",
            "PREPAID",
            "POSTPAID",
          },
          enumDescriptions = {
            "The default/unset value.",
            "Developer pays in advance for the use of APIs and the charged amount is deducted from their account balance.",
            "Developer does not maintain an account balance. The API provider bills the developer for API usage.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DeveloperSubscription = {
      description = "Structure of a DeveloperSubscription.",
      id = "GoogleCloudApigeeV1DeveloperSubscription",
      properties = {
        apiproduct = {
          description = "Name of the API product for which the developer is purchasing a subscription.",
          type = "string",
        },
        createdAt = {
          description = "Output only. Time when the API product subscription was created in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Time when the API product subscription ends in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Time when the API product subscription was last modified in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Name of the API product subscription.",
          readOnly = true,
          type = "string",
        },
        startTime = {
          description = "Time when the API product subscription starts in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1DimensionMetric = {
      description = "Encapsulates a metric grouped by dimension.",
      id = "GoogleCloudApigeeV1DimensionMetric",
      properties = {
        metrics = {
          description = "List of metrics.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Metric",
          },
          type = "array",
        },
        name = {
          description = "Name of the dimension.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1EndpointAttachment = {
      description = "Apigee endpoint attachment. For more information, see [Southbound networking patterns] (https://cloud.google.com/apigee/docs/api-platform/architecture/southbound-networking-patterns-endpoints).",
      id = "GoogleCloudApigeeV1EndpointAttachment",
      properties = {
        connectionState = {
          description = "Output only. State of the endpoint attachment connection to the service attachment.",
          enum = {
            "CONNECTION_STATE_UNSPECIFIED",
            "UNAVAILABLE",
            "PENDING",
            "ACCEPTED",
            "REJECTED",
            "CLOSED",
            "FROZEN",
            "NEEDS_ATTENTION",
          },
          enumDescriptions = {
            "The connection state has not been set.",
            "The connection state is unavailable at this time, possibly because the endpoint attachment is currently being provisioned.",
            "The connection is pending acceptance by the PSC producer.",
            "The connection has been accepted by the PSC producer.",
            "The connection has been rejected by the PSC producer.",
            "The connection has been closed by the PSC producer and will not serve traffic going forward.",
            "The connection has been frozen by the PSC producer and will not serve traffic.",
            "The connection has been accepted by the PSC producer, but it is not ready to serve the traffic due to producer side issues.",
          },
          readOnly = true,
          type = "string",
        },
        host = {
          description = "Output only. Host that can be used in either the HTTP target endpoint directly or as the host in target server.",
          readOnly = true,
          type = "string",
        },
        location = {
          description = "Required. Location of the endpoint attachment.",
          type = "string",
        },
        name = {
          description = "Name of the endpoint attachment. Use the following structure in your request: `organizations/{org}/endpointAttachments/{endpoint_attachment}`",
          type = "string",
        },
        serviceAttachment = {
          description = "Format: projects/*/regions/*/serviceAttachments/*",
          type = "string",
        },
        state = {
          description = "Output only. State of the endpoint attachment. Values other than `ACTIVE` mean the resource is not ready to use.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "Resource is in an unspecified state.",
            "Resource is being created.",
            "Resource is provisioned and ready to use.",
            "The resource is being deleted.",
            "The resource is being updated.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1EndpointChainingRule = {
      description = "EndpointChainingRule specifies the proxies contained in a particular deployment group, so that other deployment groups can find them in chaining calls.",
      id = "GoogleCloudApigeeV1EndpointChainingRule",
      properties = {
        deploymentGroup = {
          description = "The deployment group to target for cross-shard chaining calls to these proxies.",
          type = "string",
        },
        proxyIds = {
          description = "List of proxy ids which may be found in the given deployment group.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1EntityMetadata = {
      description = "Metadata common to many entities in this API.",
      id = "GoogleCloudApigeeV1EntityMetadata",
      properties = {
        createdAt = {
          description = "Time at which the API proxy was created, in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        lastModifiedAt = {
          description = "Time at which the API proxy was most recently modified, in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        subType = {
          description = "The type of entity described",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Environment = {
      id = "GoogleCloudApigeeV1Environment",
      properties = {
        apiProxyType = {
          description = "Optional. API Proxy type supported by the environment. The type can be set when creating the Environment and cannot be changed.",
          enum = {
            "API_PROXY_TYPE_UNSPECIFIED",
            "PROGRAMMABLE",
            "CONFIGURABLE",
          },
          enumDescriptions = {
            "API proxy type not specified.",
            "Programmable API Proxies enable you to develop APIs with highly flexible behavior using bundled policy configuration and one or more programming languages to describe complex sequential and/or conditional flows of logic.",
            "Configurable API Proxies enable you to develop efficient APIs using simple configuration while complex execution control flow logic is handled by Apigee. This type only works with the ARCHIVE deployment type and cannot be combined with the PROXY deployment type.",
          },
          type = "string",
        },
        createdAt = {
          description = "Output only. Creation time of this environment as milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        deploymentType = {
          description = "Optional. Deployment type supported by the environment. The deployment type can be set when creating the environment and cannot be changed. When you enable archive deployment, you will be **prevented from performing** a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment, including: * Managing the deployment of API proxy or shared flow revisions * Creating, updating, or deleting resource files * Creating, updating, or deleting target servers",
          enum = {
            "DEPLOYMENT_TYPE_UNSPECIFIED",
            "PROXY",
            "ARCHIVE",
          },
          enumDescriptions = {
            "Deployment type not specified.",
            "Proxy deployment enables you to develop and deploy API proxies using Apigee on Google Cloud. This cannot currently be combined with the CONFIGURABLE API proxy type.",
            "Archive deployment enables you to develop API proxies locally then deploy an archive of your API proxy configuration to an environment in Apigee on Google Cloud. You will be prevented from performing a [subset of actions](/apigee/docs/api-platform/local-development/overview#prevented-actions) within the environment.",
          },
          type = "string",
        },
        description = {
          description = "Optional. Description of the environment.",
          type = "string",
        },
        displayName = {
          description = "Optional. Display name for this environment.",
          type = "string",
        },
        forwardProxyUri = {
          description = "Optional. Url of the forward proxy to be applied to the runtime instances in this environment. Must be in the format of {scheme}://{hostname}:{port}. Note that scheme must be one of \"http\" or \"https\", and port must be supplied.",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Last modification time of this environment as milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Required. Name of the environment. Values must match the regular expression `^[.\\\\p{Alnum}-_]{1,255}$`",
          type = "string",
        },
        nodeConfig = {
          ["$ref"] = "GoogleCloudApigeeV1NodeConfig",
          description = "Optional. NodeConfig of the environment.",
        },
        properties = {
          ["$ref"] = "GoogleCloudApigeeV1Properties",
          description = "Optional. Key-value pairs that may be used for customizing the environment.",
        },
        state = {
          description = "Output only. State of the environment. Values other than ACTIVE means the resource is not ready to use.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "Resource is in an unspecified state.",
            "Resource is being created.",
            "Resource is provisioned and ready to use.",
            "The resource is being deleted.",
            "The resource is being updated.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1EnvironmentConfig = {
      id = "GoogleCloudApigeeV1EnvironmentConfig",
      properties = {
        arcConfigLocation = {
          description = "The location for the config blob of API Runtime Control, aka Envoy Adapter, for op-based authentication as a URI, e.g. a Cloud Storage URI. This is only used by Envoy-based gateways.",
          type = "string",
        },
        createTime = {
          description = "Time that the environment configuration was created.",
          format = "google-datetime",
          type = "string",
        },
        dataCollectors = {
          description = "List of data collectors used by the deployments in the environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DataCollectorConfig",
          },
          type = "array",
        },
        debugMask = {
          ["$ref"] = "GoogleCloudApigeeV1DebugMask",
          description = "Debug mask that applies to all deployments in the environment.",
        },
        deploymentGroups = {
          description = "List of deployment groups in the environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeploymentGroupConfig",
          },
          type = "array",
        },
        deployments = {
          description = "List of deployments in the environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeploymentConfig",
          },
          type = "array",
        },
        envScopedRevisionId = {
          description = "Revision ID for environment-scoped resources (e.g. target servers, keystores) in this config. This ID will increment any time a resource not scoped to a deployment group changes.",
          format = "int64",
          type = "string",
        },
        featureFlags = {
          additionalProperties = {
            type = "string",
          },
          description = "Feature flags inherited from the organization and environment.",
          type = "object",
        },
        flowhooks = {
          description = "List of flow hooks in the environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1FlowHookConfig",
          },
          type = "array",
        },
        forwardProxyUri = {
          description = "The forward proxy's url to be used by the runtime. When set, runtime will send requests to the target via the given forward proxy. This is only used by programmable gateways.",
          type = "string",
        },
        gatewayConfigLocation = {
          description = "The location for the gateway config blob as a URI, e.g. a Cloud Storage URI. This is only used by Envoy-based gateways.",
          type = "string",
        },
        keystores = {
          description = "List of keystores in the environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1KeystoreConfig",
          },
          type = "array",
        },
        name = {
          description = "Name of the environment configuration in the following format: `organizations/{org}/environments/{env}/configs/{config}`",
          type = "string",
        },
        provider = {
          description = "Used by the Control plane to add context information to help detect the source of the document during diagnostics and debugging.",
          type = "string",
        },
        pubsubTopic = {
          description = "Name of the PubSub topic for the environment.",
          type = "string",
        },
        resourceReferences = {
          description = "List of resource references in the environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ReferenceConfig",
          },
          type = "array",
        },
        resources = {
          description = "List of resource versions in the environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ResourceConfig",
          },
          type = "array",
        },
        revisionId = {
          description = "Revision ID of the environment configuration. The higher the value, the more recently the configuration was deployed.",
          format = "int64",
          type = "string",
        },
        sequenceNumber = {
          description = "DEPRECATED: Use revision_id.",
          format = "int64",
          type = "string",
        },
        targets = {
          description = "List of target servers in the environment. Disabled target servers are not displayed.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1TargetServerConfig",
          },
          type = "array",
        },
        traceConfig = {
          ["$ref"] = "GoogleCloudApigeeV1RuntimeTraceConfig",
          description = "Trace configurations. Contains config for the environment and config overrides for specific API proxies.",
        },
        uid = {
          description = "Unique ID for the environment configuration. The ID will only change if the environment is deleted and recreated.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1EnvironmentGroup = {
      description = "EnvironmentGroup configuration. An environment group is used to group one or more Apigee environments under a single host name.",
      id = "GoogleCloudApigeeV1EnvironmentGroup",
      properties = {
        createdAt = {
          description = "Output only. The time at which the environment group was created as milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        hostnames = {
          description = "Required. Host names for this environment group.",
          items = {
            type = "string",
          },
          type = "array",
        },
        lastModifiedAt = {
          description = "Output only. The time at which the environment group was last updated as milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "ID of the environment group.",
          type = "string",
        },
        state = {
          description = "Output only. State of the environment group. Values other than ACTIVE means the resource is not ready to use.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "Resource is in an unspecified state.",
            "Resource is being created.",
            "Resource is provisioned and ready to use.",
            "The resource is being deleted.",
            "The resource is being updated.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1EnvironmentGroupAttachment = {
      description = "EnvironmentGroupAttachment is a resource which defines an attachment of an environment to an environment group.",
      id = "GoogleCloudApigeeV1EnvironmentGroupAttachment",
      properties = {
        createdAt = {
          description = "Output only. The time at which the environment group attachment was created as milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        environment = {
          description = "Required. ID of the attached environment.",
          type = "string",
        },
        environmentGroupId = {
          description = "Output only. ID of the environment group.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "ID of the environment group attachment.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1EnvironmentGroupConfig = {
      description = "EnvironmentGroupConfig is a revisioned snapshot of an EnvironmentGroup and its associated routing rules.",
      id = "GoogleCloudApigeeV1EnvironmentGroupConfig",
      properties = {
        endpointChainingRules = {
          description = "A list of proxies in each deployment group for proxy chaining calls.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1EndpointChainingRule",
          },
          type = "array",
        },
        hostnames = {
          description = "Host names for the environment group.",
          items = {
            type = "string",
          },
          type = "array",
        },
        location = {
          description = "When this message appears in the top-level IngressConfig, this field will be populated in lieu of the inlined routing_rules and hostnames fields. Some URL for downloading the full EnvironmentGroupConfig for this group.",
          type = "string",
        },
        name = {
          description = "Name of the environment group in the following format: `organizations/{org}/envgroups/{envgroup}`.",
          type = "string",
        },
        revisionId = {
          description = "Revision id that defines the ordering of the EnvironmentGroupConfig resource. The higher the revision, the more recently the configuration was deployed.",
          format = "int64",
          type = "string",
        },
        routingRules = {
          description = "Ordered list of routing rules defining how traffic to this environment group's hostnames should be routed to different environments.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1RoutingRule",
          },
          type = "array",
        },
        uid = {
          description = "A unique id for the environment group config that will only change if the environment group is deleted and recreated.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest = {
      description = "Request for ExpireDeveloperSubscription.",
      id = "GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudApigeeV1Export = {
      description = "Details of an export job.",
      id = "GoogleCloudApigeeV1Export",
      properties = {
        created = {
          description = "Output only. Time the export job was created.",
          readOnly = true,
          type = "string",
        },
        datastoreName = {
          description = "Name of the datastore that is the destination of the export job [datastore]",
          type = "string",
        },
        description = {
          description = "Description of the export job.",
          type = "string",
        },
        error = {
          description = "Output only. Error is set when export fails",
          readOnly = true,
          type = "string",
        },
        executionTime = {
          description = "Output only. Execution time for this export job. If the job is still in progress, it will be set to the amount of time that has elapsed since`created`, in seconds. Else, it will set to (`updated` - `created`), in seconds.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Display name of the export job.",
          type = "string",
        },
        self = {
          description = "Output only. Self link of the export job. A URI that can be used to retrieve the status of an export job. Example: `/organizations/myorg/environments/myenv/analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. Status of the export job. Valid values include `enqueued`, `running`, `completed`, and `failed`.",
          readOnly = true,
          type = "string",
        },
        updated = {
          description = "Output only. Time the export job was last updated.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ExportRequest = {
      description = "Request body for [CreateExportRequest]",
      id = "GoogleCloudApigeeV1ExportRequest",
      properties = {
        csvDelimiter = {
          description = "Optional. Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\\t`).",
          type = "string",
        },
        datastoreName = {
          description = "Required. Name of the preconfigured datastore.",
          type = "string",
        },
        dateRange = {
          ["$ref"] = "GoogleCloudApigeeV1DateRange",
          description = "Required. Date range of the data to export.",
        },
        description = {
          description = "Optional. Description of the export job.",
          type = "string",
        },
        name = {
          description = "Required. Display name of the export job.",
          type = "string",
        },
        outputFormat = {
          description = "Optional. Output format of the export. Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the `csvDelimiter` property.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1FlowHook = {
      id = "GoogleCloudApigeeV1FlowHook",
      properties = {
        continueOnError = {
          description = "Optional. Flag that specifies whether execution should continue if the flow hook throws an exception. Set to `true` to continue execution. Set to `false` to stop execution if the flow hook throws an exception. Defaults to `true`.",
          type = "boolean",
        },
        description = {
          description = "Description of the flow hook.",
          type = "string",
        },
        flowHookPoint = {
          description = "Output only. Where in the API call flow the flow hook is invoked. Must be one of `PreProxyFlowHook`, `PostProxyFlowHook`, `PreTargetFlowHook`, or `PostTargetFlowHook`.",
          readOnly = true,
          type = "string",
        },
        sharedFlow = {
          description = "Shared flow attached to this flow hook, or empty if there is none attached.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1FlowHookConfig = {
      id = "GoogleCloudApigeeV1FlowHookConfig",
      properties = {
        continueOnError = {
          description = "Flag that specifies whether the flow should abort after an error in the flow hook. Defaults to `true` (continue on error).",
          type = "boolean",
        },
        name = {
          description = "Name of the flow hook in the following format: `organizations/{org}/environments/{env}/flowhooks/{point}`. Valid `point` values include: `PreProxyFlowHook`, `PostProxyFlowHook`, `PreTargetFlowHook`, and `PostTargetFlowHook`",
          type = "string",
        },
        sharedFlowName = {
          description = "Name of the shared flow to invoke in the following format: `organizations/{org}/sharedflows/{sharedflow}`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1GenerateDownloadUrlRequest = {
      description = "Request for GenerateDownloadUrl method.",
      id = "GoogleCloudApigeeV1GenerateDownloadUrlRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudApigeeV1GenerateDownloadUrlResponse = {
      description = "Response for GenerateDownloadUrl method.",
      id = "GoogleCloudApigeeV1GenerateDownloadUrlResponse",
      properties = {
        downloadUri = {
          description = "The Google Cloud Storage signed URL that can be used to download the Archive zip file.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1GenerateUploadUrlRequest = {
      description = "Request for GenerateUploadUrl method.",
      id = "GoogleCloudApigeeV1GenerateUploadUrlRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudApigeeV1GenerateUploadUrlResponse = {
      description = "Response for GenerateUploadUrl method.",
      id = "GoogleCloudApigeeV1GenerateUploadUrlResponse",
      properties = {
        uploadUri = {
          description = "The Google Cloud Storage signed URL that can be used to upload a new Archive zip file.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse = {
      description = "The response for GetAsyncQueryResultUrl",
      id = "GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse",
      properties = {
        urls = {
          description = "The list of Signed URLs generated by the CreateAsyncQuery request",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseURLInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseURLInfo = {
      description = "A Signed URL and the relevant metadata associated with it.",
      id = "GoogleCloudApigeeV1GetAsyncQueryResultUrlResponseURLInfo",
      properties = {
        md5 = {
          description = "The MD5 Hash of the JSON data",
          type = "string",
        },
        sizeBytes = {
          description = "The size of the returned file in bytes",
          format = "int64",
          type = "string",
        },
        uri = {
          description = "The signed URL of the JSON data. Will be of the form `https://storage.googleapis.com/example-bucket/cat.jpeg?X-Goog-Algorithm= GOOG4-RSA-SHA256&X-Goog-Credential=example%40example-project.iam.gserviceaccount .com%2F20181026%2Fus-central1%2Fstorage%2Fgoog4_request&X-Goog-Date=20181026T18 1309Z&X-Goog-Expires=900&X-Goog-SignedHeaders=host&X-Goog-Signature=247a2aa45f16 9edf4d187d54e7cc46e4731b1e6273242c4f4c39a1d2507a0e58706e25e3a85a7dbb891d62afa849 6def8e260c1db863d9ace85ff0a184b894b117fe46d1225c82f2aa19efd52cf21d3e2022b3b868dc c1aca2741951ed5bf3bb25a34f5e9316a2841e8ff4c530b22ceaa1c5ce09c7cbb5732631510c2058 0e61723f5594de3aea497f195456a2ff2bdd0d13bad47289d8611b6f9cfeef0c46c91a455b94e90a 66924f722292d21e24d31dcfb38ce0c0f353ffa5a9756fc2a9f2b40bc2113206a81e324fc4fd6823 a29163fa845c8ae7eca1fcf6e5bb48b3200983c56c5ca81fffb151cca7402beddfc4a76b13344703 2ea7abedc098d2eb14a7`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1GetSyncAuthorizationRequest = {
      description = "Request for GetSyncAuthorization.",
      id = "GoogleCloudApigeeV1GetSyncAuthorizationRequest",
      properties = {},
      type = "object",
    },
    GoogleCloudApigeeV1GraphQLOperation = {
      description = "Represents the pairing of GraphQL operation types and the GraphQL operation name.",
      id = "GoogleCloudApigeeV1GraphQLOperation",
      properties = {
        operation = {
          description = "GraphQL operation name. The name and operation type will be used to apply quotas. If no name is specified, the quota will be applied to all GraphQL operations irrespective of their operation names in the payload.",
          type = "string",
        },
        operationTypes = {
          description = "Required. GraphQL operation types. Valid values include `query` or `mutation`. **Note**: Apigee does not currently support `subscription` types.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1GraphQLOperationConfig = {
      description = "Binds the resources in a proxy or remote service with the GraphQL operation and its associated quota enforcement.",
      id = "GoogleCloudApigeeV1GraphQLOperationConfig",
      properties = {
        apiSource = {
          description = "Required. Name of the API proxy endpoint or remote service with which the GraphQL operation and quota are associated.",
          type = "string",
        },
        attributes = {
          description = "Custom attributes associated with the operation.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        operations = {
          description = "Required. List of GraphQL name/operation type pairs for the proxy or remote service to which quota will be applied. If only operation types are specified, the quota will be applied to all GraphQL requests irrespective of the GraphQL name. **Note**: Currently, you can specify only a single GraphQLOperation. Specifying more than one will cause the operation to fail.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1GraphQLOperation",
          },
          type = "array",
        },
        quota = {
          ["$ref"] = "GoogleCloudApigeeV1Quota",
          description = "Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1GraphQLOperationGroup = {
      description = "List of graphQL operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.",
      id = "GoogleCloudApigeeV1GraphQLOperationGroup",
      properties = {
        operationConfigType = {
          description = "Flag that specifies whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.",
          type = "string",
        },
        operationConfigs = {
          description = "Required. List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1GraphQLOperationConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1IngressConfig = {
      id = "GoogleCloudApigeeV1IngressConfig",
      properties = {
        environmentGroups = {
          description = "List of environment groups in the organization.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroupConfig",
          },
          type = "array",
        },
        name = {
          description = "Name of the resource in the following format: `organizations/{org}/deployedIngressConfig`.",
          type = "string",
        },
        revisionCreateTime = {
          description = "Time at which the IngressConfig revision was created.",
          format = "google-datetime",
          type = "string",
        },
        revisionId = {
          description = "Revision id that defines the ordering on IngressConfig resources. The higher the revision, the more recently the configuration was deployed.",
          format = "int64",
          type = "string",
        },
        uid = {
          description = "A unique id for the ingress config that will only change if the organization is deleted and recreated.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Instance = {
      description = "Apigee runtime instance.",
      id = "GoogleCloudApigeeV1Instance",
      properties = {
        consumerAcceptList = {
          description = "Optional. Customer accept list represents the list of projects (id/number) on customer side that can privately connect to the service attachment. It is an optional field which the customers can provide during the instance creation. By default, the customer project associated with the Apigee organization will be included to the list.",
          items = {
            type = "string",
          },
          type = "array",
        },
        createdAt = {
          description = "Output only. Time the instance was created in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. Description of the instance.",
          type = "string",
        },
        diskEncryptionKeyName = {
          description = "Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only. Use the following format: `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`",
          type = "string",
        },
        displayName = {
          description = "Optional. Display name for the instance.",
          type = "string",
        },
        host = {
          description = "Output only. Internal hostname or IP address of the Apigee endpoint used by clients to connect to the service.",
          readOnly = true,
          type = "string",
        },
        ipRange = {
          description = "Optional. Comma-separated list of CIDR blocks of length 22 and/or 28 used to create the Apigee instance. Providing CIDR ranges is optional. You can provide just /22 or /28 or both (or neither). Ranges you provide should be freely available as part of a larger named range you have allocated to the Service Networking peering. If this parameter is not provided, Apigee automatically requests an available /22 and /28 CIDR block from Service Networking. Use the /22 CIDR block for configuring your firewall needs to allow traffic from Apigee. Input formats: `a.b.c.d/22` or `e.f.g.h/28` or `a.b.c.d/22,e.f.g.h/28`",
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Time the instance was last modified in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        location = {
          description = "Required. Compute Engine location where the instance resides.",
          type = "string",
        },
        name = {
          description = "Required. Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\\d]$`.",
          type = "string",
        },
        peeringCidrRange = {
          description = "Optional. Size of the CIDR block range that will be reserved by the instance. PAID organizations support `SLASH_16` to `SLASH_20` and defaults to `SLASH_16`. Evaluation organizations support only `SLASH_23`.",
          enum = {
            "CIDR_RANGE_UNSPECIFIED",
            "SLASH_16",
            "SLASH_17",
            "SLASH_18",
            "SLASH_19",
            "SLASH_20",
            "SLASH_22",
            "SLASH_23",
          },
          enumDescriptions = {
            "Range not specified.",
            "`/16` CIDR range.",
            "`/17` CIDR range.",
            "`/18` CIDR range.",
            "`/19` CIDR range.",
            "`/20` CIDR range.",
            "`/22` CIDR range. Supported for evaluation only.",
            "`/23` CIDR range. Supported for evaluation only.",
          },
          type = "string",
        },
        port = {
          description = "Output only. Port number of the exposed Apigee endpoint.",
          readOnly = true,
          type = "string",
        },
        runtimeVersion = {
          description = "Output only. Version of the runtime system running in the instance. The runtime system is the set of components that serve the API Proxy traffic in your Environments.",
          readOnly = true,
          type = "string",
        },
        serviceAttachment = {
          description = "Output only. Resource name of the service attachment created for the instance in the format: `projects/*/regions/*/serviceAttachments/*` Apigee customers can privately forward traffic to this service attachment using the PSC endpoints.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. State of the instance. Values other than `ACTIVE` means the resource is not ready to use.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "Resource is in an unspecified state.",
            "Resource is being created.",
            "Resource is provisioned and ready to use.",
            "The resource is being deleted.",
            "The resource is being updated.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1InstanceAttachment = {
      description = "InstanceAttachment represents the installation of an environment onto an instance.",
      id = "GoogleCloudApigeeV1InstanceAttachment",
      properties = {
        createdAt = {
          description = "Output only. Time the attachment was created in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        environment = {
          description = "ID of the attached environment.",
          type = "string",
        },
        name = {
          description = "Output only. ID of the attachment.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1InstanceDeploymentStatus = {
      description = "The status of a deployment as reported by a single instance.",
      id = "GoogleCloudApigeeV1InstanceDeploymentStatus",
      properties = {
        deployedRevisions = {
          description = "Revisions currently deployed in MPs.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision",
          },
          type = "array",
        },
        deployedRoutes = {
          description = "Current routes deployed in the ingress routing table. A route which is missing will appear in `missing_routes`.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute",
          },
          type = "array",
        },
        instance = {
          description = "ID of the instance reporting the status.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision = {
      description = "Revisions deployed in the MPs.",
      id = "GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRevision",
      properties = {
        percentage = {
          description = "Percentage of MP replicas reporting this revision.",
          format = "int32",
          type = "integer",
        },
        revision = {
          description = "API proxy revision reported as deployed.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute = {
      description = "Route deployed in the ingress routing table.",
      id = "GoogleCloudApigeeV1InstanceDeploymentStatusDeployedRoute",
      properties = {
        basepath = {
          description = "Base path in the routing table.",
          type = "string",
        },
        envgroup = {
          description = "Environment group where this route is installed.",
          type = "string",
        },
        environment = {
          description = "Destination environment. This will be empty if the route is not yet reported.",
          type = "string",
        },
        percentage = {
          description = "Percentage of ingress replicas reporting this route.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1IntegrationConfig = {
      description = "Configuration for the Integration add-on.",
      id = "GoogleCloudApigeeV1IntegrationConfig",
      properties = {
        enabled = {
          description = "Flag that specifies whether the Integration add-on is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1KeyAliasReference = {
      id = "GoogleCloudApigeeV1KeyAliasReference",
      properties = {
        aliasId = {
          description = "Alias ID. Must exist in the keystore referred to by the reference.",
          type = "string",
        },
        reference = {
          description = "Reference name in the following format: `organizations/{org}/environments/{env}/references/{reference}`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1KeyValueEntry = {
      description = "Key value map pair where the value represents the data associated with the corresponding key. **Note**: Supported for Apigee hybrid 1.8.x and higher.",
      id = "GoogleCloudApigeeV1KeyValueEntry",
      properties = {
        name = {
          description = "Resource URI that can be used to identify the scope of the key value map entries.",
          type = "string",
        },
        value = {
          description = "Required. Data or payload that is being retrieved and associated with the unique key.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1KeyValueMap = {
      description = "Collection of key/value string pairs.",
      id = "GoogleCloudApigeeV1KeyValueMap",
      properties = {
        encrypted = {
          description = "Optional. Flag that specifies whether entry values will be encrypted. You must set this value to `true`. Apigee X and hybrid do not support unencrytped key value maps.",
          type = "boolean",
        },
        name = {
          description = "Required. ID of the key value map.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Keystore = {
      description = "Datastore for Certificates and Aliases.",
      id = "GoogleCloudApigeeV1Keystore",
      properties = {
        aliases = {
          description = "Output only. Aliases in this keystore.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        name = {
          description = "Required. Resource ID for this keystore. Values must match the regular expression `[\\w[:space:].-]{1,255}`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1KeystoreConfig = {
      id = "GoogleCloudApigeeV1KeystoreConfig",
      properties = {
        aliases = {
          description = "Aliases in the keystore.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1AliasRevisionConfig",
          },
          type = "array",
        },
        name = {
          description = "Resource name in the following format: `organizations/{org}/environments/{env}/keystores/{keystore}`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListApiCategoriesResponse = {
      description = "the response for ListApiCategoriesRequest.",
      id = "GoogleCloudApigeeV1ListApiCategoriesResponse",
      properties = {
        data = {
          description = "Details of categories.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ApiCategoryData",
          },
          type = "array",
        },
        errorCode = {
          description = "ID that can be used to find errors in the log files.",
          type = "string",
        },
        message = {
          description = "Description of the operation.",
          type = "string",
        },
        requestId = {
          description = "ID that can be used to find request details in the log files.",
          type = "string",
        },
        status = {
          description = "Status of the operation.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListApiProductsResponse = {
      id = "GoogleCloudApigeeV1ListApiProductsResponse",
      properties = {
        apiProduct = {
          description = "Lists all API product names defined for an organization.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ApiProduct",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListApiProxiesResponse = {
      description = "To change this message, in the same CL add a change log in go/changing-api-proto-breaks-ui",
      id = "GoogleCloudApigeeV1ListApiProxiesResponse",
      properties = {
        proxies = {
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ApiProxy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListAppsResponse = {
      id = "GoogleCloudApigeeV1ListAppsResponse",
      properties = {
        app = {
          items = {
            ["$ref"] = "GoogleCloudApigeeV1App",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListArchiveDeploymentsResponse = {
      description = "Response for ListArchiveDeployments method.",
      id = "GoogleCloudApigeeV1ListArchiveDeploymentsResponse",
      properties = {
        archiveDeployments = {
          description = "Archive Deployments in the specified environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ArchiveDeployment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in a ListArchiveDeployments request to retrieve the next page. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListAsyncQueriesResponse = {
      description = "The response for ListAsyncQueries.",
      id = "GoogleCloudApigeeV1ListAsyncQueriesResponse",
      properties = {
        queries = {
          description = "The asynchronous queries belong to requested resource name.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1AsyncQuery",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListCustomReportsResponse = {
      description = "This message encapsulates a list of custom report definitions",
      id = "GoogleCloudApigeeV1ListCustomReportsResponse",
      properties = {
        qualifier = {
          items = {
            ["$ref"] = "GoogleCloudApigeeV1CustomReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListDataCollectorsResponse = {
      description = "Response for ListDataCollectors.",
      id = "GoogleCloudApigeeV1ListDataCollectorsResponse",
      properties = {
        dataCollectors = {
          description = "Data collectors in the specified organization.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DataCollector",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in a ListDataCollectors request to retrieve the next page. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListDatastoresResponse = {
      description = "The response for ListDatastores",
      id = "GoogleCloudApigeeV1ListDatastoresResponse",
      properties = {
        datastores = {
          description = "A list of datastores",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Datastore",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListDebugSessionsResponse = {
      id = "GoogleCloudApigeeV1ListDebugSessionsResponse",
      properties = {
        nextPageToken = {
          description = "Page token that you can include in a ListDebugSessionsRequest to retrieve the next page. If omitted, no subsequent pages exist.",
          type = "string",
        },
        sessions = {
          description = "Session info that includes debug session ID and the first transaction creation timestamp.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Session",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListDeploymentsResponse = {
      id = "GoogleCloudApigeeV1ListDeploymentsResponse",
      properties = {
        deployments = {
          description = "List of deployments.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Deployment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListDeveloperAppsResponse = {
      id = "GoogleCloudApigeeV1ListDeveloperAppsResponse",
      properties = {
        app = {
          description = "List of developer apps and their credentials.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeveloperApp",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse = {
      description = "Response for ListDeveloperSubscriptions.",
      id = "GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse",
      properties = {
        developerSubscriptions = {
          description = "List of all subscriptions.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DeveloperSubscription",
          },
          type = "array",
        },
        nextStartKey = {
          description = "Value that can be sent as `startKey` to retrieve the next page of content. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListEndpointAttachmentsResponse = {
      description = "Response for ListEndpointAttachments method.",
      id = "GoogleCloudApigeeV1ListEndpointAttachmentsResponse",
      properties = {
        endpointAttachments = {
          description = "Endpoint attachments in the specified organization.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1EndpointAttachment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in an `ListEndpointAttachments` request to retrieve the next page. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse = {
      description = "Response for ListEnvironmentGroupAttachments.",
      id = "GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse",
      properties = {
        environmentGroupAttachments = {
          description = "EnvironmentGroupAttachments for the specified environment group.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroupAttachment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in a ListEnvironmentGroupAttachments request to retrieve the next page. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListEnvironmentGroupsResponse = {
      description = "Response for ListEnvironmentGroups.",
      id = "GoogleCloudApigeeV1ListEnvironmentGroupsResponse",
      properties = {
        environmentGroups = {
          description = "EnvironmentGroups in the specified organization.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1EnvironmentGroup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in a ListEnvironmentGroups request to retrieve the next page. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListEnvironmentResourcesResponse = {
      description = "Response for ListEnvironmentResources",
      id = "GoogleCloudApigeeV1ListEnvironmentResourcesResponse",
      properties = {
        resourceFile = {
          description = "List of resources files.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ResourceFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListExportsResponse = {
      description = "The response for ListExports",
      id = "GoogleCloudApigeeV1ListExportsResponse",
      properties = {
        exports = {
          description = "Details of the export jobs.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Export",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListHybridIssuersResponse = {
      id = "GoogleCloudApigeeV1ListHybridIssuersResponse",
      properties = {
        issuers = {
          description = "Lists of hybrid services and its trusted issuer email ids.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ServiceIssuersMapping",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListInstanceAttachmentsResponse = {
      description = "Response for ListInstanceAttachments.",
      id = "GoogleCloudApigeeV1ListInstanceAttachmentsResponse",
      properties = {
        attachments = {
          description = "Attachments for the instance.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1InstanceAttachment",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in a ListInstanceAttachments request to retrieve the next page of content. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListInstancesResponse = {
      description = "Response for ListInstances.",
      id = "GoogleCloudApigeeV1ListInstancesResponse",
      properties = {
        instances = {
          description = "Instances in the specified organization.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in a ListInstance request to retrieve the next page of content. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListKeyValueEntriesResponse = {
      description = "The request structure for listing key value map keys and its corresponding values.",
      id = "GoogleCloudApigeeV1ListKeyValueEntriesResponse",
      properties = {
        keyValueEntries = {
          description = "One or more key value map keys and values.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1KeyValueEntry",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token that can be sent as `next_page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListNatAddressesResponse = {
      description = "Response for ListNatAddresses.",
      id = "GoogleCloudApigeeV1ListNatAddressesResponse",
      properties = {
        natAddresses = {
          description = "List of NAT Addresses for the instance.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1NatAddress",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token that you can include in a ListNatAddresses request to retrieve the next page of content. If omitted, no subsequent pages exist.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListOfDevelopersResponse = {
      id = "GoogleCloudApigeeV1ListOfDevelopersResponse",
      properties = {
        developer = {
          description = "List of developers.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Developer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListOrganizationsResponse = {
      id = "GoogleCloudApigeeV1ListOrganizationsResponse",
      properties = {
        organizations = {
          description = "List of Apigee organizations and associated Google Cloud projects.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1OrganizationProjectMapping",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListRatePlansResponse = {
      description = "Response for ListRatePlans.",
      id = "GoogleCloudApigeeV1ListRatePlansResponse",
      properties = {
        nextStartKey = {
          description = "Value that can be sent as `startKey` to retrieve the next page of content. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        ratePlans = {
          description = "List of rate plans in an organization.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1RatePlan",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse = {
      description = "Response for ListSecurityProfileRevisions.",
      id = "GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        securityProfiles = {
          description = "List of security profile revisions. The revisions may be attached or unattached to any environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SecurityProfile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListSecurityProfilesResponse = {
      description = "Response for ListSecurityProfiles.",
      id = "GoogleCloudApigeeV1ListSecurityProfilesResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        securityProfiles = {
          description = "List of security profiles in the organization. The profiles may be attached or unattached to any environment. This will return latest revision of each profile.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SecurityProfile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListSecurityReportsResponse = {
      description = "The response for SecurityReports.",
      id = "GoogleCloudApigeeV1ListSecurityReportsResponse",
      properties = {
        nextPageToken = {
          description = "If the number of security reports exceeded the page size requested, the token can be used to fetch the next page in a subsequent call. If the response is the last page and there are no more reports to return this field is left empty.",
          type = "string",
        },
        securityReports = {
          description = "The security reports belong to requested resource name.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SecurityReport",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListSharedFlowsResponse = {
      description = "To change this message, in the same CL add a change log in go/changing-api-proto-breaks-ui",
      id = "GoogleCloudApigeeV1ListSharedFlowsResponse",
      properties = {
        sharedFlows = {
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SharedFlow",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ListTraceConfigOverridesResponse = {
      description = "Response for ListTraceConfigOverrides.",
      id = "GoogleCloudApigeeV1ListTraceConfigOverridesResponse",
      properties = {
        nextPageToken = {
          description = "Token value that can be passed as `page_token` to retrieve the next page of content.",
          type = "string",
        },
        traceConfigOverrides = {
          description = "List all trace configuration overrides in an environment.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1TraceConfigOverride",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Metadata = {
      description = "Encapsulates additional information about query execution.",
      id = "GoogleCloudApigeeV1Metadata",
      properties = {
        errors = {
          description = "List of error messages as strings.",
          items = {
            type = "string",
          },
          type = "array",
        },
        notices = {
          description = "List of additional information such as data source, if result was truncated. For example: ``` \"notices\": [ \"Source:Postgres\", \"PG Host:uappg0rw.e2e.apigeeks.net\", \"query served by:4b64601e-40de-4eb1-bfb9-eeee7ac929ed\", \"Table used: edge.api.uapgroup2.agg_api\" ]```",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Metric = {
      description = "Encapsulates the metric data point. For example: ```{ \"name\": \"sum(message_count)\", \"values\" : [ { \"timestamp\": 1549004400000, \"value\": \"39.0\" }, { \"timestamp\" : 1548997200000, \"value\" : \"0.0\" } ] }``` or ```{ \"name\": \"sum(message_count)\", \"values\" : [\"39.0\"] }```",
      id = "GoogleCloudApigeeV1Metric",
      properties = {
        name = {
          description = "Metric name.",
          type = "string",
        },
        values = {
          description = "List of metric values. Possible value formats include: `\"values\":[\"39.0\"]` or `\"values\":[ { \"value\": \"39.0\", \"timestamp\": 1232434354} ]`",
          items = {
            type = "any",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1MetricAggregation = {
      description = "The optionally aggregated metric to query with its ordering.",
      id = "GoogleCloudApigeeV1MetricAggregation",
      properties = {
        aggregation = {
          description = "Aggregation function associated with the metric.",
          enum = {
            "AGGREGATION_FUNCTION_UNSPECIFIED",
            "AVG",
            "SUM",
            "MIN",
            "MAX",
            "COUNT_DISTINCT",
          },
          enumDescriptions = {
            "Unspecified Aggregation function.",
            "Average.",
            "Summation.",
            "Min.",
            "Max.",
            "Count distinct",
          },
          type = "string",
        },
        name = {
          description = "Name of the metric",
          type = "string",
        },
        order = {
          description = "Ordering for this aggregation in the result. For time series this is ignored since the ordering of points depends only on the timestamp, not the values.",
          enum = {
            "ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Unspecified order. Default is Descending.",
            "Ascending sort order.",
            "Descending sort order.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1MonetizationConfig = {
      description = "Configuration for the Monetization add-on.",
      id = "GoogleCloudApigeeV1MonetizationConfig",
      properties = {
        enabled = {
          description = "Flag that specifies whether the Monetization add-on is enabled.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1NatAddress = {
      description = "Apigee NAT(network address translation) address. A NAT address is a static external IP address used for Internet egress traffic.",
      id = "GoogleCloudApigeeV1NatAddress",
      properties = {
        ipAddress = {
          description = "Output only. The static IPV4 address.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Required. Resource ID of the NAT address.",
          type = "string",
        },
        state = {
          description = "Output only. State of the nat address.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "RESERVED",
            "ACTIVE",
            "DELETING",
          },
          enumDescriptions = {
            "The resource is in an unspecified state.",
            "The NAT address is being created.",
            "The NAT address is reserved but not yet used for Internet egress.",
            "The NAT address is active and used for Internet egress.",
            "The NAT address is being deleted.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1NodeConfig = {
      description = "NodeConfig for setting the min/max number of nodes associated with the environment.",
      id = "GoogleCloudApigeeV1NodeConfig",
      properties = {
        currentAggregateNodeCount = {
          description = "Output only. The current total number of gateway nodes that each environment currently has across all instances.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        maxNodeCount = {
          description = "Optional. The maximum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended maximum number of nodes for that gateway.",
          format = "int64",
          type = "string",
        },
        minNodeCount = {
          description = "Optional. The minimum total number of gateway nodes that the is reserved for all instances that has the specified environment. If not specified, the default is determined by the recommended minimum number of nodes for that gateway.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Operation = {
      description = "Represents the pairing of REST resource path and the actions (verbs) allowed on the resource path.",
      id = "GoogleCloudApigeeV1Operation",
      properties = {
        methods = {
          description = "methods refers to the REST verbs as in https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html. When none specified, all verb types are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resource = {
          description = "Required. REST resource path associated with the API proxy or remote service.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1OperationConfig = {
      description = "Binds the resources in an API proxy or remote service with the allowed REST methods and associated quota enforcement.",
      id = "GoogleCloudApigeeV1OperationConfig",
      properties = {
        apiSource = {
          description = "Required. Name of the API proxy or remote service with which the resources, methods, and quota are associated.",
          type = "string",
        },
        attributes = {
          description = "Custom attributes associated with the operation.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
        operations = {
          description = "List of resource/method pairs for the API proxy or remote service to which quota will applied. **Note**: Currently, you can specify only a single resource/method pair. The call will fail if more than one resource/method pair is provided.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Operation",
          },
          type = "array",
        },
        quota = {
          ["$ref"] = "GoogleCloudApigeeV1Quota",
          description = "Quota parameters to be enforced for the resources, methods, and API source combination. If none are specified, quota enforcement will not be done.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1OperationGroup = {
      description = "List of operation configuration details associated with Apigee API proxies or remote services. Remote services are non-Apigee proxies, such as Istio-Envoy.",
      id = "GoogleCloudApigeeV1OperationGroup",
      properties = {
        operationConfigType = {
          description = "Flag that specifes whether the configuration is for Apigee API proxy or a remote service. Valid values include `proxy` or `remoteservice`. Defaults to `proxy`. Set to `proxy` when Apigee API proxies are associated with the API product. Set to `remoteservice` when non-Apigee proxies like Istio-Envoy are associated with the API product.",
          type = "string",
        },
        operationConfigs = {
          description = "Required. List of operation configurations for either Apigee API proxies or other remote services that are associated with this API product.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1OperationConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1OperationMetadata = {
      description = "Metadata describing an Operation.",
      id = "GoogleCloudApigeeV1OperationMetadata",
      properties = {
        operationType = {
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "INSERT",
            "DELETE",
            "UPDATE",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        progress = {
          ["$ref"] = "GoogleCloudApigeeV1OperationMetadataProgress",
          description = "Progress of the operation.",
        },
        state = {
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_STARTED",
            "IN_PROGRESS",
            "FINISHED",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        targetResourceName = {
          description = "Name of the resource for which the operation is operating on.",
          type = "string",
        },
        warnings = {
          description = "Warnings encountered while executing the operation.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1OperationMetadataProgress = {
      description = "Information about operation progress.",
      id = "GoogleCloudApigeeV1OperationMetadataProgress",
      properties = {
        description = {
          description = "Description of the operation's progress.",
          type = "string",
        },
        details = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "The additional details of the progress.",
          type = "object",
        },
        percentDone = {
          description = "The percentage of the operation progress.",
          format = "int32",
          type = "integer",
        },
        state = {
          description = "State of the operation.",
          enum = {
            "STATE_UNSPECIFIED",
            "NOT_STARTED",
            "IN_PROGRESS",
            "FINISHED",
          },
          enumDescriptions = {
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
    GoogleCloudApigeeV1OptimizedStats = {
      id = "GoogleCloudApigeeV1OptimizedStats",
      properties = {
        Response = {
          ["$ref"] = "GoogleCloudApigeeV1OptimizedStatsResponse",
          description = "Wraps the `stats` response for JavaScript Optimized Scenario with a response key. For example: ```{ \"Response\": { \"TimeUnit\": [], \"metaData\": { \"errors\": [], \"notices\": [ \"Source:Postgres\", \"Table used: edge.api.aaxgroup001.agg_api\", \"PG Host:ruappg08-ro.production.apigeeks.net\", \"query served by:80c4ebca-6a10-4a2e-8faf-c60c1ee306ca\" ] }, \"resultTruncated\": false, \"stats\": { \"data\": [ { \"identifier\": { \"names\": [ \"apiproxy\" ], \"values\": [ \"sirjee\" ] }, \"metric\": [ { \"env\": \"prod\", \"name\": \"sum(message_count)\", \"values\": [ 36.0 ] }, { \"env\": \"prod\", \"name\": \"sum(is_error)\", \"values\": [ 36.0 ] } ] } ] } } }```",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1OptimizedStatsNode = {
      description = "Encapsulates a data node as represented below: ``` { \"identifier\": { \"names\": [ \"apiproxy\" ], \"values\": [ \"sirjee\" ] }, \"metric\": [ { \"env\": \"prod\", \"name\": \"sum(message_count)\", \"values\": [ 36.0 ] } ] }``` or ``` { \"env\": \"prod\", \"name\": \"sum(message_count)\", \"values\": [ 36.0 ] }``` Depending on whether a dimension is present in the query or not the data node type can be a simple metric value or dimension identifier with list of metrics.",
      id = "GoogleCloudApigeeV1OptimizedStatsNode",
      properties = {
        data = {
          items = {
            type = "any",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1OptimizedStatsResponse = {
      description = "Encapsulates a response format for JavaScript Optimized Scenario.",
      id = "GoogleCloudApigeeV1OptimizedStatsResponse",
      properties = {
        TimeUnit = {
          description = "List of time unit values. Time unit refers to an epoch timestamp value.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        metaData = {
          ["$ref"] = "GoogleCloudApigeeV1Metadata",
          description = "Metadata information about the query executed.",
        },
        resultTruncated = {
          description = "Boolean flag that indicates whether the results were truncated based on the limit parameter.",
          type = "boolean",
        },
        stats = {
          ["$ref"] = "GoogleCloudApigeeV1OptimizedStatsNode",
          description = "`stats` results.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Organization = {
      id = "GoogleCloudApigeeV1Organization",
      properties = {
        addonsConfig = {
          ["$ref"] = "GoogleCloudApigeeV1AddonsConfig",
          description = "Addon configurations of the Apigee organization.",
        },
        analyticsRegion = {
          description = "Required. DEPRECATED: This field will be deprecated once Apigee supports DRZ. Primary Google Cloud region for analytics data storage. For valid values, see [Create an Apigee organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org).",
          type = "string",
        },
        apigeeProjectId = {
          description = "Output only. Apigee Project ID associated with the organization. Use this project to allowlist Apigee in the Service Attachment when using private service connect with Apigee.",
          readOnly = true,
          type = "string",
        },
        attributes = {
          description = "Not used by Apigee.",
          items = {
            type = "string",
          },
          type = "array",
        },
        authorizedNetwork = {
          description = "Compute Engine network used for Service Networking to be peered with Apigee runtime instances. See [Getting started with the Service Networking API](https://cloud.google.com/service-infrastructure/docs/service-networking/getting-started). Valid only when [RuntimeType](#RuntimeType) is set to `CLOUD`. The value must be set before the creation of a runtime instance and can be updated only when there are no runtime instances. For example: `default`. Apigee also supports shared VPC (that is, the host network project is not the same as the one that is peering with Apigee). See [Shared VPC overview](https://cloud.google.com/vpc/docs/shared-vpc). To use a shared VPC network, use the following format: `projects/{host-project-id}/{region}/networks/{network-name}`. For example: `projects/my-sharedvpc-host/global/networks/mynetwork` **Note:** Not supported for Apigee hybrid.",
          type = "string",
        },
        billingType = {
          description = "Billing type of the Apigee organization. See [Apigee pricing](https://cloud.google.com/apigee/pricing).",
          enum = {
            "BILLING_TYPE_UNSPECIFIED",
            "SUBSCRIPTION",
            "EVALUATION",
            "PAYG",
          },
          enumDescriptions = {
            "Billing type not specified.",
            "A pre-paid subscription to Apigee.",
            "Free and limited access to Apigee for evaluation purposes only. only.",
            "Access to Apigee using a Pay-As-You-Go plan.",
          },
          type = "string",
        },
        caCertificate = {
          description = "Output only. Base64-encoded public certificate for the root CA of the Apigee organization. Valid only when [RuntimeType](#RuntimeType) is `CLOUD`.",
          format = "byte",
          readOnly = true,
          type = "string",
        },
        createdAt = {
          description = "Output only. Time that the Apigee organization was created in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        customerName = {
          description = "Not used by Apigee.",
          type = "string",
        },
        description = {
          description = "Description of the Apigee organization.",
          type = "string",
        },
        displayName = {
          description = "Display name for the Apigee organization. Unused, but reserved for future use.",
          type = "string",
        },
        environments = {
          description = "Output only. List of environments in the Apigee organization.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        expiresAt = {
          description = "Output only. Time that the Apigee organization is scheduled for deletion.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        lastModifiedAt = {
          description = "Output only. Time that the Apigee organization was last modified in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Name of the Apigee organization.",
          readOnly = true,
          type = "string",
        },
        portalDisabled = {
          description = "Configuration for the Portals settings.",
          type = "boolean",
        },
        projectId = {
          description = "Output only. Project ID associated with the Apigee organization.",
          readOnly = true,
          type = "string",
        },
        properties = {
          ["$ref"] = "GoogleCloudApigeeV1Properties",
          description = "Properties defined in the Apigee organization profile.",
        },
        runtimeDatabaseEncryptionKeyName = {
          description = "Cloud KMS key name used for encrypting the data that is stored and replicated across runtime instances. Update is not allowed after the organization is created. Required when [RuntimeType](#RuntimeType) is `CLOUD`. If not specified when [RuntimeType](#RuntimeType) is `TRIAL`, a Google-Managed encryption key will be used. For example: \"projects/foo/locations/us/keyRings/bar/cryptoKeys/baz\". **Note:** Not supported for Apigee hybrid.",
          type = "string",
        },
        runtimeType = {
          description = "Required. Runtime type of the Apigee organization based on the Apigee subscription purchased.",
          enum = {
            "RUNTIME_TYPE_UNSPECIFIED",
            "CLOUD",
            "HYBRID",
          },
          enumDescriptions = {
            "Runtime type not specified.",
            "Google-managed Apigee runtime.",
            "User-managed Apigee hybrid runtime.",
          },
          type = "string",
        },
        state = {
          description = "Output only. State of the organization. Values other than ACTIVE means the resource is not ready to use.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "DELETING",
            "UPDATING",
          },
          enumDescriptions = {
            "Resource is in an unspecified state.",
            "Resource is being created.",
            "Resource is provisioned and ready to use.",
            "The resource is being deleted.",
            "The resource is being updated.",
          },
          readOnly = true,
          type = "string",
        },
        subscriptionType = {
          description = "Output only. DEPRECATED: This will eventually be replaced by BillingType. Subscription type of the Apigee organization. Valid values include trial (free, limited, and for evaluation purposes only) or paid (full subscription has been purchased). See [Apigee pricing](https://cloud.google.com/apigee/pricing/).",
          enum = {
            "SUBSCRIPTION_TYPE_UNSPECIFIED",
            "PAID",
            "TRIAL",
          },
          enumDescriptions = {
            "Subscription type not specified.",
            "Full subscription to Apigee has been purchased.",
            "Subscription to Apigee is free, limited, and used for evaluation purposes only.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Not used by Apigee.",
          enum = {
            "TYPE_UNSPECIFIED",
            "TYPE_TRIAL",
            "TYPE_PAID",
            "TYPE_INTERNAL",
          },
          enumDescriptions = {
            "Subscription type not specified.",
            "Subscription to Apigee is free, limited, and used for evaluation purposes only.",
            "Full subscription to Apigee has been purchased. See [Apigee pricing](https://cloud.google.com/apigee/pricing/).",
            "For internal users only.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1OrganizationProjectMapping = {
      id = "GoogleCloudApigeeV1OrganizationProjectMapping",
      properties = {
        location = {
          description = "Output only. The Google Cloud region where control plane data is located. For more information, see https://cloud.google.com/about/locations/.",
          readOnly = true,
          type = "string",
        },
        organization = {
          description = "Name of the Apigee organization.",
          type = "string",
        },
        projectId = {
          description = "Google Cloud project associated with the Apigee organization",
          type = "string",
        },
        projectIds = {
          description = "DEPRECATED: Use `project_id`. An Apigee Organization is mapped to a single project.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1PodStatus = {
      id = "GoogleCloudApigeeV1PodStatus",
      properties = {
        appVersion = {
          description = "Version of the application running in the pod.",
          type = "string",
        },
        deploymentStatus = {
          description = "Status of the deployment. Valid values include: - `deployed`: Successful. - `error` : Failed. - `pending` : Pod has not yet reported on the deployment.",
          type = "string",
        },
        deploymentStatusTime = {
          description = "Time the deployment status was reported in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        deploymentTime = {
          description = "Time the proxy was deployed in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        podName = {
          description = "Name of the pod which is reporting the status.",
          type = "string",
        },
        podStatus = {
          description = "Overall status of the pod (not this specific deployment). Valid values include: - `active`: Up to date. - `stale` : Recently out of date. Pods that have not reported status in a long time are excluded from the output.",
          type = "string",
        },
        podStatusTime = {
          description = "Time the pod status was reported in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        statusCode = {
          description = "Code associated with the deployment status.",
          type = "string",
        },
        statusCodeDetails = {
          description = "Human-readable message associated with the status code.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Point = {
      description = "Point is a group of information collected by runtime plane at critical points of the message flow of the processed API request. This is a list of supported point IDs, categorized to three major buckets. For each category, debug points that we are currently supporting are listed below: - Flow status debug points: StateChange FlowInfo Condition Execution DebugMask Error - Flow control debug points: FlowCallout Paused Resumed FlowReturn BreakFlow Error - Runtime debug points: ScriptExecutor FlowCalloutStepDefinition CustomTarget StepDefinition Oauth2ServicePoint RaiseFault NodeJS The detail information of the given debug point is stored in a list of results.",
      id = "GoogleCloudApigeeV1Point",
      properties = {
        id = {
          description = "Name of a step in the transaction.",
          type = "string",
        },
        results = {
          description = "List of results extracted from a given debug point.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Result",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Properties = {
      description = "Message for compatibility with legacy Edge specification for Java Properties object in JSON.",
      id = "GoogleCloudApigeeV1Properties",
      properties = {
        property = {
          description = "List of all properties in the object",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Property",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Property = {
      description = "A single property entry in the Properties message.",
      id = "GoogleCloudApigeeV1Property",
      properties = {
        name = {
          description = "The property key",
          type = "string",
        },
        value = {
          description = "The property value",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ProvisionOrganizationRequest = {
      description = "Request for ProvisionOrganization.",
      id = "GoogleCloudApigeeV1ProvisionOrganizationRequest",
      properties = {
        analyticsRegion = {
          description = "Primary Cloud Platform region for analytics data storage. For valid values, see [Create an organization](https://cloud.google.com/apigee/docs/hybrid/latest/precog-provision). Defaults to `us-west1`.",
          type = "string",
        },
        authorizedNetwork = {
          description = "Name of the customer project's VPC network. If provided, the network needs to be peered through Service Networking. If none is provided, the organization will have access only to the public internet.",
          type = "string",
        },
        runtimeLocation = {
          description = "Cloud Platform location for the runtime instance. Defaults to zone `us-west1-a`. If a region is provided, `EVAL` organizations will use the region for automatically selecting a zone for the runtime instance.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Query = {
      id = "GoogleCloudApigeeV1Query",
      properties = {
        csvDelimiter = {
          description = "Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\\t`).",
          type = "string",
        },
        dimensions = {
          description = "A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions",
          items = {
            type = "string",
          },
          type = "array",
        },
        envgroupHostname = {
          description = "Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostAsyncQuery where analytics data will be grouped by organization and hostname.",
          type = "string",
        },
        filter = {
          description = "Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax",
          type = "string",
        },
        groupByTimeUnit = {
          description = "Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.",
          type = "string",
        },
        limit = {
          description = "Maximum number of rows that can be returned in the result.",
          format = "int32",
          type = "integer",
        },
        metrics = {
          description = "A list of Metrics.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1QueryMetric",
          },
          type = "array",
        },
        name = {
          description = "Asynchronous Query Name.",
          type = "string",
        },
        outputFormat = {
          description = "Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.",
          type = "string",
        },
        reportDefinitionId = {
          description = "Asynchronous Report ID.",
          type = "string",
        },
        timeRange = {
          description = "Required. Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: \"timeRange\": { \"start\": \"2018-07-29T00:13:00Z\", \"end\": \"2018-08-01T00:18:00Z\" }",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1QueryMetadata = {
      id = "GoogleCloudApigeeV1QueryMetadata",
      properties = {
        dimensions = {
          description = "Dimensions of the AsyncQuery.",
          items = {
            type = "string",
          },
          type = "array",
        },
        endTimestamp = {
          description = "End timestamp of the query range.",
          type = "string",
        },
        metrics = {
          description = "Metrics of the AsyncQuery. Example: [\"name:message_count,func:sum,alias:sum_message_count\"]",
          items = {
            type = "string",
          },
          type = "array",
        },
        outputFormat = {
          description = "Output format.",
          type = "string",
        },
        startTimestamp = {
          description = "Start timestamp of the query range.",
          type = "string",
        },
        timeUnit = {
          description = "Query GroupBy time unit.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1QueryMetric = {
      description = "More info about Metric: https://docs.apigee.com/api-platform/analytics/analytics-reference#metrics",
      id = "GoogleCloudApigeeV1QueryMetric",
      properties = {
        alias = {
          description = "Alias for the metric. Alias will be used to replace metric name in query results.",
          type = "string",
        },
        ["function"] = {
          description = "Aggregation function: avg, min, max, or sum.",
          type = "string",
        },
        name = {
          description = "Required. Metric name.",
          type = "string",
        },
        operator = {
          description = "One of `+`, `-`, `/`, `%`, `*`.",
          type = "string",
        },
        value = {
          description = "Operand value should be provided when operator is set.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1QueryTabularStatsRequest = {
      description = "Request payload representing the query to be run for fetching security statistics as rows.",
      id = "GoogleCloudApigeeV1QueryTabularStatsRequest",
      properties = {
        dimensions = {
          description = "Required. List of dimension names to group the aggregations by.",
          items = {
            type = "string",
          },
          type = "array",
        },
        filter = {
          description = "Filter further on specific dimension values. Follows the same grammar as custom report's filter expressions. Example, apiproxy eq 'foobar'. https://cloud.google.com/apigee/docs/api-platform/analytics/analytics-reference#filters",
          type = "string",
        },
        metrics = {
          description = "Required. List of metrics and their aggregations.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1MetricAggregation",
          },
          type = "array",
        },
        pageSize = {
          description = "Page size represents the number of rows.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Identifies a sequence of rows.",
          type = "string",
        },
        timeRange = {
          ["$ref"] = "GoogleTypeInterval",
          description = "Time range for the stats.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1QueryTabularStatsResponse = {
      description = "Encapsulates two kinds of stats that are results of the dimensions and aggregations requested. - Tabular rows. - Time series data. Example of tabular rows, Represents security stats results as a row of flat values.",
      id = "GoogleCloudApigeeV1QueryTabularStatsResponse",
      properties = {
        columns = {
          description = "Column names corresponding to the same order as the inner values in the stats field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        values = {
          description = "Resultant rows from the executed query.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1QueryTimeSeriesStatsRequest = {
      description = "QueryTimeSeriesStatsRequest represents a query that returns a collection of time series sequences grouped by their values.",
      id = "GoogleCloudApigeeV1QueryTimeSeriesStatsRequest",
      properties = {
        dimensions = {
          description = "List of dimension names to group the aggregations by. If no dimensions are passed, a single trend line representing the requested metric aggregations grouped by environment is returned.",
          items = {
            type = "string",
          },
          type = "array",
        },
        filter = {
          description = "Filter further on specific dimension values. Follows the same grammar as custom report's filter expressions. Example, apiproxy eq 'foobar'. https://cloud.google.com/apigee/docs/api-platform/analytics/analytics-reference#filters",
          type = "string",
        },
        metrics = {
          description = "Required. List of metrics and their aggregations.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1MetricAggregation",
          },
          type = "array",
        },
        pageSize = {
          description = "Page size represents the number of time series sequences, one per unique set of dimensions and their values.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Page token stands for a specific collection of time series sequences.",
          type = "string",
        },
        timeRange = {
          ["$ref"] = "GoogleTypeInterval",
          description = "Required. Time range for the stats.",
        },
        timestampOrder = {
          description = "Order the sequences in increasing or decreasing order of timestamps. Default is descending order of timestamps (latest first).",
          enum = {
            "ORDER_UNSPECIFIED",
            "ASCENDING",
            "DESCENDING",
          },
          enumDescriptions = {
            "Unspecified order. Default is Descending.",
            "Ascending sort order.",
            "Descending sort order.",
          },
          type = "string",
        },
        windowSize = {
          description = "Time buckets to group the stats by.",
          enum = {
            "WINDOW_SIZE_UNSPECIFIED",
            "MINUTE",
            "HOUR",
            "DAY",
            "MONTH",
          },
          enumDescriptions = {
            "Unspecified window size. Default is 1 hour.",
            "1 Minute window",
            "1 Hour window",
            "1 Day window",
            "1 Month window",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1QueryTimeSeriesStatsResponse = {
      description = "Represents security stats result as a collection of time series sequences.",
      id = "GoogleCloudApigeeV1QueryTimeSeriesStatsResponse",
      properties = {
        columns = {
          description = "Column names corresponding to the same order as the inner values in the stats field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Next page token.",
          type = "string",
        },
        values = {
          description = "Results of the query returned as a JSON array.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence = {
      description = "A sequence of time series.",
      id = "GoogleCloudApigeeV1QueryTimeSeriesStatsResponseSequence",
      properties = {
        dimensions = {
          additionalProperties = {
            type = "string",
          },
          description = "Map of dimensions and their values that uniquely identifies a time series sequence.",
          type = "object",
        },
        points = {
          description = "List of points. First value of each inner list is a timestamp.",
          items = {
            items = {
              type = "any",
            },
            type = "array",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Quota = {
      description = "Quota contains the essential parameters needed that can be applied on the resources, methods, API source combination associated with this API product. While Quota is optional, setting it prevents requests from exceeding the provisioned parameters.",
      id = "GoogleCloudApigeeV1Quota",
      properties = {
        interval = {
          description = "Required. Time interval over which the number of request messages is calculated.",
          type = "string",
        },
        limit = {
          description = "Required. Upper limit allowed for the time interval and time unit specified. Requests exceeding this limit will be rejected.",
          type = "string",
        },
        timeUnit = {
          description = "Time unit defined for the `interval`. Valid values include `minute`, `hour`, `day`, or `month`. If `limit` and `interval` are valid, the default value is `hour`; otherwise, the default is null.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RatePlan = {
      description = "Rate plan details.",
      id = "GoogleCloudApigeeV1RatePlan",
      properties = {
        apiproduct = {
          description = "Name of the API product that the rate plan is associated with.",
          type = "string",
        },
        billingPeriod = {
          description = "Frequency at which the customer will be billed.",
          enum = {
            "BILLING_PERIOD_UNSPECIFIED",
            "WEEKLY",
            "MONTHLY",
          },
          enumDescriptions = {
            "Billing period not specified.",
            "Weekly billing period. **Note**: Not supported by Apigee at this time.",
            "Monthly billing period.",
          },
          type = "string",
        },
        consumptionPricingRates = {
          description = "API call volume ranges and the fees charged when the total number of API calls is within a given range. The method used to calculate the final fee depends on the selected pricing model. For example, if the pricing model is `STAIRSTEP` and the ranges are defined as follows: ``` { \"start\": 1, \"end\": 100, \"fee\": 75 }, { \"start\": 101, \"end\": 200, \"fee\": 100 }, } ``` Then the following fees would be charged based on the total number of API calls (assuming the currency selected is `USD`): * 1 call costs $75 * 50 calls cost $75 * 150 calls cost $100 The number of API calls cannot exceed 200.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1RateRange",
          },
          type = "array",
        },
        consumptionPricingType = {
          description = "Pricing model used for consumption-based charges.",
          enum = {
            "CONSUMPTION_PRICING_TYPE_UNSPECIFIED",
            "FIXED_PER_UNIT",
            "BANDED",
            "TIERED",
            "STAIRSTEP",
          },
          enumDescriptions = {
            "Pricing model not specified. This is the default.",
            "Fixed rate charged for each API call.",
            "Variable rate charged for each API call based on price tiers. Example: * 1-100 calls cost $2 per call * 101-200 calls cost $1.50 per call * 201-300 calls cost $1 per call * Total price for 50 calls: 50 x $2 = $100 * Total price for 150 calls: 100 x $2 + 50 x $1.5 = $275 * Total price for 250 calls: 100 x $2 + 100 x $1.5 + 50 x $1 = $400. **Note**: Not supported by Apigee at this time.",
            "**Note**: Not supported by Apigee at this time.",
            "**Note**: Not supported by Apigee at this time.",
          },
          type = "string",
        },
        createdAt = {
          description = "Output only. Time that the rate plan was created in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        currencyCode = {
          description = "Currency to be used for billing. Consists of a three-letter code as defined by the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) standard.",
          type = "string",
        },
        description = {
          description = "Description of the rate plan.",
          type = "string",
        },
        displayName = {
          description = "Display name of the rate plan.",
          type = "string",
        },
        endTime = {
          description = "Time when the rate plan will expire in milliseconds since epoch. Set to 0 or `null` to indicate that the rate plan should never expire.",
          format = "int64",
          type = "string",
        },
        fixedFeeFrequency = {
          description = "Frequency at which the fixed fee is charged.",
          format = "int32",
          type = "integer",
        },
        fixedRecurringFee = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Fixed amount that is charged at a defined interval and billed in advance of use of the API product. The fee will be prorated for the first billing period.",
        },
        lastModifiedAt = {
          description = "Output only. Time the rate plan was last modified in milliseconds since epoch.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Name of the rate plan.",
          readOnly = true,
          type = "string",
        },
        paymentFundingModel = {
          description = "DEPRECATED: This field is no longer supported and will eventually be removed when Apigee Hybrid 1.5/1.6 is no longer supported. Instead, use the `billingType` field inside `DeveloperMonetizationConfig` resource. Flag that specifies the billing account type, prepaid or postpaid.",
          enum = {
            "PAYMENT_FUNDING_MODEL_UNSPECIFIED",
            "PREPAID",
            "POSTPAID",
          },
          enumDescriptions = {
            "Billing account type not specified.",
            "Prepaid billing account type. Developer pays in advance for the use of your API products. Funds are deducted from their prepaid account balance. **Note**: Not supported by Apigee at this time.",
            "Postpaid billing account type. Developer is billed through an invoice after using your API products.",
          },
          type = "string",
        },
        revenueShareRates = {
          description = "Details of the revenue sharing model.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1RevenueShareRange",
          },
          type = "array",
        },
        revenueShareType = {
          description = "Method used to calculate the revenue that is shared with developers.",
          enum = {
            "REVENUE_SHARE_TYPE_UNSPECIFIED",
            "FIXED",
            "VOLUME_BANDED",
          },
          enumDescriptions = {
            "Revenue share type is not specified.",
            "Fixed percentage of the total revenue will be shared. The percentage to be shared can be configured by the API provider.",
            "Amount of revenue shared depends on the number of API calls. The API call volume ranges and the revenue share percentage for each volume can be configured by the API provider. **Note**: Not supported by Apigee at this time.",
          },
          type = "string",
        },
        setupFee = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Initial, one-time fee paid when purchasing the API product.",
        },
        startTime = {
          description = "Time when the rate plan becomes active in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        state = {
          description = "Current state of the rate plan (draft or published).",
          enum = {
            "STATE_UNSPECIFIED",
            "DRAFT",
            "PUBLISHED",
          },
          enumDescriptions = {
            "State of the rate plan is not specified.",
            "Rate plan is in draft mode and only visible to API providers.",
            "Rate plan is published and will become visible to developers for the configured duration (between `startTime` and `endTime`).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RateRange = {
      description = "API call volume range and the fees charged when the total number of API calls is within the range.",
      id = "GoogleCloudApigeeV1RateRange",
      properties = {
        ["end"] = {
          description = "Ending value of the range. Set to 0 or `null` for the last range of values.",
          format = "int64",
          type = "string",
        },
        fee = {
          ["$ref"] = "GoogleTypeMoney",
          description = "Fee to charge when total number of API calls falls within this range.",
        },
        start = {
          description = "Starting value of the range. Set to 0 or `null` for the initial range of values.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Reference = {
      description = "A Reference configuration. References must refer to a keystore that also exists in the parent environment.",
      id = "GoogleCloudApigeeV1Reference",
      properties = {
        description = {
          description = "Optional. A human-readable description of this reference.",
          type = "string",
        },
        name = {
          description = "Required. The resource id of this reference. Values must match the regular expression [\\w\\s\\-.]+.",
          type = "string",
        },
        refers = {
          description = "Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resource_type.",
          type = "string",
        },
        resourceType = {
          description = "The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ReferenceConfig = {
      id = "GoogleCloudApigeeV1ReferenceConfig",
      properties = {
        name = {
          description = "Name of the reference in the following format: `organizations/{org}/environments/{env}/references/{reference}`",
          type = "string",
        },
        resourceName = {
          description = "Name of the referenced resource in the following format: `organizations/{org}/environments/{env}/keystores/{keystore}` Only references to keystore resources are supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ReportInstanceStatusRequest = {
      description = "Request for ReportInstanceStatus.",
      id = "GoogleCloudApigeeV1ReportInstanceStatusRequest",
      properties = {
        instanceUid = {
          description = "A unique ID for the instance which is guaranteed to be unique in case the user installs multiple hybrid runtimes with the same instance ID.",
          type = "string",
        },
        reportTime = {
          description = "The time the report was generated in the runtime. Used to prevent an old status from overwriting a newer one. An instance should space out it's status reports so that clock skew does not play a factor.",
          format = "google-datetime",
          type = "string",
        },
        resources = {
          description = "Status for config resources",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ResourceStatus",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ReportInstanceStatusResponse = {
      description = "Placeholder for future enhancements to status reporting protocol",
      id = "GoogleCloudApigeeV1ReportInstanceStatusResponse",
      properties = {},
      type = "object",
    },
    GoogleCloudApigeeV1ReportProperty = {
      id = "GoogleCloudApigeeV1ReportProperty",
      properties = {
        property = {
          description = "name of the property",
          type = "string",
        },
        value = {
          description = "property values",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Attribute",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ResourceConfig = {
      id = "GoogleCloudApigeeV1ResourceConfig",
      properties = {
        location = {
          description = "Location of the resource as a URI.",
          type = "string",
        },
        name = {
          description = "Resource name in the following format: `organizations/{org}/environments/{env}/resourcefiles/{type}/{file}/revisions/{rev}` Only environment-scoped resource files are supported.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ResourceFile = {
      description = "Metadata about a resource file.",
      id = "GoogleCloudApigeeV1ResourceFile",
      properties = {
        name = {
          description = "ID of the resource file.",
          type = "string",
        },
        type = {
          description = "Resource file type. {{ resource_file_type }}",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ResourceFiles = {
      description = "List of resource files.",
      id = "GoogleCloudApigeeV1ResourceFiles",
      properties = {
        resourceFile = {
          description = "List of resource files.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ResourceFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ResourceStatus = {
      description = "The status of a resource loaded in the runtime.",
      id = "GoogleCloudApigeeV1ResourceStatus",
      properties = {
        resource = {
          description = "The resource name. Currently only two resources are supported: EnvironmentGroup - organizations/{org}/envgroups/{envgroup} EnvironmentConfig - organizations/{org}/environments/{environment}/deployedConfig",
          type = "string",
        },
        revisions = {
          description = "Revisions of the resource currently deployed in the instance.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1RevisionStatus",
          },
          type = "array",
        },
        totalReplicas = {
          description = "The total number of replicas that should have this resource.",
          format = "int32",
          type = "integer",
        },
        uid = {
          description = "The uid of the resource. In the unexpected case that the instance has multiple uids for the same name, they should be reported under separate ResourceStatuses.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Result = {
      description = "Result is short for \"action result\", could be different types identified by \"action_result\" field. Supported types: 1. DebugInfo : generic debug info collected by runtime recorded as a list of properties. For example, the contents could be virtual host info, state change result, or execution metadata. Required fields : properties, timestamp 2. RequestMessage: information of a http request. Contains headers, request URI and http methods type.Required fields : headers, uri, verb 3. ResponseMessage: information of a http response. Contains headers, reason phrase and http status code. Required fields : headers, reasonPhrase, statusCode 4. ErrorMessage: information of a http error message. Contains detail error message, reason phrase and status code. Required fields : content, headers, reasonPhrase, statusCode 5. VariableAccess: a list of variable access actions, can be Get, Set and Remove. Required fields : accessList",
      id = "GoogleCloudApigeeV1Result",
      properties = {
        ActionResult = {
          description = "Type of the action result. Can be one of the five: DebugInfo, RequestMessage, ResponseMessage, ErrorMessage, VariableAccess",
          type = "string",
        },
        accessList = {
          description = "A list of variable access actions agaist the api proxy. Supported values: Get, Set, Remove.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Access",
          },
          type = "array",
        },
        content = {
          description = "Error message content. for example, \"content\" : \"{\\\"fault\\\":{\\\"faultstring\\\":\\\"API timed out\\\",\\\"detail\\\":{\\\"errorcode\\\":\\\"flow.APITimedOut\\\"}}}\"",
          type = "string",
        },
        headers = {
          description = "A list of HTTP headers. for example, '\"headers\" : [ { \"name\" : \"Content-Length\", \"value\" : \"83\" }, { \"name\" : \"Content-Type\", \"value\" : \"application/json\" } ]'",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Property",
          },
          type = "array",
        },
        properties = {
          ["$ref"] = "GoogleCloudApigeeV1Properties",
          description = "Name value pairs used for DebugInfo ActionResult.",
        },
        reasonPhrase = {
          description = "HTTP response phrase",
          type = "string",
        },
        statusCode = {
          description = "HTTP response code",
          type = "string",
        },
        timestamp = {
          description = "Timestamp of when the result is recorded. Its format is dd-mm-yy hh:mm:ss:xxx. For example, `\"timestamp\" : \"12-08-19 00:31:59:960\"`",
          type = "string",
        },
        uRI = {
          description = "The relative path of the api proxy. for example, `\"uRI\" : \"/iloveapis\"`",
          type = "string",
        },
        verb = {
          description = "HTTP method verb",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RevenueShareRange = {
      description = "API call volume range and the percentage of revenue to share with the developer when the total number of API calls is within the range.",
      id = "GoogleCloudApigeeV1RevenueShareRange",
      properties = {
        ["end"] = {
          description = "Ending value of the range. Set to 0 or `null` for the last range of values.",
          format = "int64",
          type = "string",
        },
        sharePercentage = {
          description = "Percentage of the revenue to be shared with the developer. For example, to share 21 percent of the total revenue with the developer, set this value to 21. Specify a decimal number with a maximum of two digits following the decimal point.",
          format = "double",
          type = "number",
        },
        start = {
          description = "Starting value of the range. Set to 0 or `null` for the initial range of values.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RevisionStatus = {
      description = "The status of a specific resource revision.",
      id = "GoogleCloudApigeeV1RevisionStatus",
      properties = {
        errors = {
          description = "Errors reported when attempting to load this revision.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1UpdateError",
          },
          type = "array",
        },
        jsonSpec = {
          description = "The json content of the resource revision. Large specs should be sent individually via the spec field to avoid hitting request size limits.",
          type = "string",
        },
        replicas = {
          description = "The number of replicas that have successfully loaded this revision.",
          format = "int32",
          type = "integer",
        },
        revisionId = {
          description = "The revision of the resource.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RoutingRule = {
      id = "GoogleCloudApigeeV1RoutingRule",
      properties = {
        basepath = {
          description = "URI path prefix used to route to the specified environment. May contain one or more wildcards. For example, path segments consisting of a single `*` character will match any string.",
          type = "string",
        },
        deploymentGroup = {
          description = "Name of a deployment group in an environment bound to the environment group in the following format: `organizations/{org}/environment/{env}/deploymentGroups/{group}` Only one of environment or deployment_group will be set.",
          type = "string",
        },
        envGroupRevision = {
          description = "The env group config revision_id when this rule was added or last updated. This value is set when the rule is created and will only update if the the environment_id changes. It is used to determine if the runtime is up to date with respect to this rule. This field is omitted from the IngressConfig unless the GetDeployedIngressConfig API is called with view=FULL.",
          format = "int64",
          type = "string",
        },
        environment = {
          description = "Name of an environment bound to the environment group in the following format: `organizations/{org}/environments/{env}`. Only one of environment or deployment_group will be set.",
          type = "string",
        },
        otherTargets = {
          description = "Conflicting targets, which will be resource names specifying either deployment groups or environments.",
          items = {
            type = "string",
          },
          type = "array",
        },
        receiver = {
          description = "The resource name of the proxy revision that is receiving this basepath in the following format: `organizations/{org}/apis/{api}/revisions/{rev}`. This field is omitted from the IngressConfig unless the GetDeployedIngressConfig API is called with view=FULL.",
          type = "string",
        },
        updateTime = {
          description = "The unix timestamp when this rule was updated. This is updated whenever env_group_revision is updated. This field is omitted from the IngressConfig unless the GetDeployedIngressConfig API is called with view=FULL.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RuntimeConfig = {
      description = "Runtime configuration for the organization. Response for GetRuntimeConfig.",
      id = "GoogleCloudApigeeV1RuntimeConfig",
      properties = {
        analyticsBucket = {
          description = "Cloud Storage bucket used for uploading Analytics records.",
          type = "string",
        },
        name = {
          description = "Name of the resource in the following format: `organizations/{org}/runtimeConfig`.",
          type = "string",
        },
        tenantProjectId = {
          description = "Output only. Tenant project ID associated with the Apigee organization. The tenant project is used to host Google-managed resources that are dedicated to this Apigee organization. Clients have limited access to resources within the tenant project used to support Apigee runtime instances. Access to the tenant project is managed using SetSyncAuthorization. It can be empty if the tenant project hasn't been created yet.",
          readOnly = true,
          type = "string",
        },
        traceBucket = {
          description = "Cloud Storage bucket used for uploading Trace records.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RuntimeTraceConfig = {
      description = "NEXT ID: 8 RuntimeTraceConfig defines the configurations for distributed trace in an environment.",
      id = "GoogleCloudApigeeV1RuntimeTraceConfig",
      properties = {
        endpoint = {
          description = "Endpoint of the exporter.",
          type = "string",
        },
        exporter = {
          description = "Exporter that is used to view the distributed trace captured using OpenCensus. An exporter sends traces to any backend that is capable of consuming them. Recorded spans can be exported by registered exporters.",
          enum = {
            "EXPORTER_UNSPECIFIED",
            "JAEGER",
            "CLOUD_TRACE",
          },
          enumDescriptions = {
            "Exporter unspecified",
            "Jaeger exporter",
            "Cloudtrace exporter",
          },
          type = "string",
        },
        name = {
          description = "Name of the trace config in the following format: `organizations/{org}/environment/{env}/traceConfig`",
          type = "string",
        },
        overrides = {
          description = "List of trace configuration overrides for spicific API proxies.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1RuntimeTraceConfigOverride",
          },
          type = "array",
        },
        revisionCreateTime = {
          description = "The timestamp that the revision was created or updated.",
          format = "google-datetime",
          type = "string",
        },
        revisionId = {
          description = "Revision number which can be used by the runtime to detect if the trace config has changed between two versions.",
          type = "string",
        },
        samplingConfig = {
          ["$ref"] = "GoogleCloudApigeeV1RuntimeTraceSamplingConfig",
          description = "Trace configuration for all API proxies in an environment.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RuntimeTraceConfigOverride = {
      description = "NEXT ID: 7 Trace configuration override for a specific API proxy in an environment.",
      id = "GoogleCloudApigeeV1RuntimeTraceConfigOverride",
      properties = {
        apiProxy = {
          description = "Name of the API proxy that will have its trace configuration overridden following format: `organizations/{org}/apis/{api}`",
          type = "string",
        },
        name = {
          description = "Name of the trace config override in the following format: `organizations/{org}/environment/{env}/traceConfig/overrides/{override}`",
          type = "string",
        },
        revisionCreateTime = {
          description = "The timestamp that the revision was created or updated.",
          format = "google-datetime",
          type = "string",
        },
        revisionId = {
          description = "Revision number which can be used by the runtime to detect if the trace config override has changed between two versions.",
          type = "string",
        },
        samplingConfig = {
          ["$ref"] = "GoogleCloudApigeeV1RuntimeTraceSamplingConfig",
          description = "Trace configuration override for a specific API proxy in an environment.",
        },
        uid = {
          description = "Unique ID for the configuration override. The ID will only change if the override is deleted and recreated. Corresponds to name's \"override\" field.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1RuntimeTraceSamplingConfig = {
      description = "NEXT ID: 3 RuntimeTraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.",
      id = "GoogleCloudApigeeV1RuntimeTraceSamplingConfig",
      properties = {
        sampler = {
          description = "Sampler of distributed tracing. OFF is the default value.",
          enum = {
            "SAMPLER_UNSPECIFIED",
            "OFF",
            "PROBABILITY",
          },
          enumDescriptions = {
            "Sampler unspecified.",
            "OFF means distributed trace is disabled, or the sampling probability is 0.",
            "PROBABILITY means traces are captured on a probability that defined by sampling_rate. The sampling rate is limited to 0 to 0.5 when this is set.",
          },
          type = "string",
        },
        samplingRate = {
          description = "Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are > 0 and <= 0.5.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Schema = {
      description = "Response for Schema call",
      id = "GoogleCloudApigeeV1Schema",
      properties = {
        dimensions = {
          description = "List of schema fields grouped as dimensions.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SchemaSchemaElement",
          },
          type = "array",
        },
        meta = {
          description = "Additional metadata associated with schema. This is a legacy field and usually consists of an empty array of strings.",
          items = {
            type = "string",
          },
          type = "array",
        },
        metrics = {
          description = "List of schema fields grouped as dimensions that can be used with an aggregate function such as `sum`, `avg`, `min`, and `max`.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SchemaSchemaElement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SchemaSchemaElement = {
      description = "Message type for the schema element",
      id = "GoogleCloudApigeeV1SchemaSchemaElement",
      properties = {
        name = {
          description = "Name of the field.",
          type = "string",
        },
        properties = {
          ["$ref"] = "GoogleCloudApigeeV1SchemaSchemaProperty",
          description = "Properties for the schema field. For example: { \"createTime\": \"2016-02-26T10:23:09.592Z\", \"custom\": \"false\", \"type\": \"string\" }",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SchemaSchemaProperty = {
      description = "Properties for the schema field.",
      id = "GoogleCloudApigeeV1SchemaSchemaProperty",
      properties = {
        createTime = {
          description = "Time the field was created in RFC3339 string form. For example: `2016-02-26T10:23:09.592Z`.",
          type = "string",
        },
        custom = {
          description = "Flag that specifies whether the field is standard in the dataset or a custom field created by the customer. `true` indicates that it is a custom field.",
          type = "string",
        },
        type = {
          description = "Data type of the field.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Score = {
      description = "Represents Security Score.",
      id = "GoogleCloudApigeeV1Score",
      properties = {
        component = {
          ["$ref"] = "GoogleCloudApigeeV1ScoreComponent",
          description = "Component containing score, recommendations and actions.",
        },
        subcomponents = {
          description = "List of all the drilldown score components.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ScoreComponent",
          },
          type = "array",
        },
        timeRange = {
          ["$ref"] = "GoogleTypeInterval",
          description = "Start and end time for the score.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ScoreComponent = {
      description = "Component is an individual security element that is scored.",
      id = "GoogleCloudApigeeV1ScoreComponent",
      properties = {
        calculateTime = {
          description = "Time when score was calculated.",
          format = "google-datetime",
          type = "string",
        },
        dataCaptureTime = {
          description = "Time in the requested time period when data was last captured to compute the score.",
          format = "google-datetime",
          type = "string",
        },
        drilldownPaths = {
          description = "List of paths for next components.",
          items = {
            type = "string",
          },
          type = "array",
        },
        recommendations = {
          description = "List of recommendations to improve API security.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ScoreComponentRecommendation",
          },
          type = "array",
        },
        score = {
          description = "Score for the component.",
          format = "int32",
          type = "integer",
        },
        scorePath = {
          description = "Path of the component. Example: /org@myorg/envgroup@myenvgroup/proxies/proxy@myproxy",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ScoreComponentRecommendation = {
      description = "Recommendation based on security concerns and score.",
      id = "GoogleCloudApigeeV1ScoreComponentRecommendation",
      properties = {
        actions = {
          description = "Actions for the recommendation to improve the security score.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1ScoreComponentRecommendationAction",
          },
          type = "array",
        },
        description = {
          description = "Description of the recommendation.",
          type = "string",
        },
        impact = {
          description = "Potential impact of this recommendation on the overall score. This denotes how important this recommendation is to improve the score.",
          format = "int32",
          type = "integer",
        },
        title = {
          description = "Title represents recommendation title.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ScoreComponentRecommendationAction = {
      description = "Action to improve security score.",
      id = "GoogleCloudApigeeV1ScoreComponentRecommendationAction",
      properties = {
        actionContext = {
          ["$ref"] = "GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext",
          description = "Action context for the action.",
        },
        description = {
          description = "Description of the action.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext = {
      description = "Action context are all the relevant details for the action.",
      id = "GoogleCloudApigeeV1ScoreComponentRecommendationActionActionContext",
      properties = {
        documentationLink = {
          description = "Documentation link for the action.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityProfile = {
      description = "Represents a SecurityProfile resource.",
      id = "GoogleCloudApigeeV1SecurityProfile",
      properties = {
        displayName = {
          description = "Display name of the security profile.",
          type = "string",
        },
        environments = {
          description = "List of environments attached to security profile.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SecurityProfileEnvironment",
          },
          type = "array",
        },
        maxScore = {
          description = "Output only. Maximum security score that can be generated by this profile.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        minScore = {
          description = "Output only. Minimum security score that can be generated by this profile.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        name = {
          description = "Immutable. Name of the security profile resource. Format: organizations/{org}/securityProfiles/{profile}",
          type = "string",
        },
        revisionCreateTime = {
          description = "Output only. The time when revision was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. Revision ID of the security profile.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        revisionPublishTime = {
          description = "Output only. The time when revision was published. Once published, the security profile revision cannot be updated further and can be attached to environments.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        revisionUpdateTime = {
          description = "Output only. The time when revision was updated.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        scoringConfigs = {
          description = "List of profile scoring configs in this revision.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SecurityProfileScoringConfig",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityProfileEnvironment = {
      description = "Environment information of attached environments. Scoring an environment is enabled only if it is attached to a security profile.",
      id = "GoogleCloudApigeeV1SecurityProfileEnvironment",
      properties = {
        attachTime = {
          description = "Output only. Time at which environment was attached to the security profile.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        environment = {
          description = "Output only. Name of the environment.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation = {
      description = "Represents a SecurityProfileEnvironmentAssociation resource.",
      id = "GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation",
      properties = {
        attachTime = {
          description = "Output only. The time when environment was attached to the security profile.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. Name of the profile-environment association resource. Format: organizations/{org}/securityProfiles/{profile}/environments/{env}",
          type = "string",
        },
        securityProfileRevisionId = {
          description = "Revision ID of the security profile.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityProfileScoringConfig = {
      description = "Security configurations to manage scoring.",
      id = "GoogleCloudApigeeV1SecurityProfileScoringConfig",
      properties = {
        description = {
          description = "Description of the config.",
          type = "string",
        },
        scorePath = {
          description = "Path of the component config used for scoring.",
          type = "string",
        },
        title = {
          description = "Title of the config.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityReport = {
      description = "SecurityReport saves all the information about the created security report.",
      id = "GoogleCloudApigeeV1SecurityReport",
      properties = {
        created = {
          description = "Creation time of the query.",
          type = "string",
        },
        displayName = {
          description = "Display Name specified by the user.",
          type = "string",
        },
        envgroupHostname = {
          description = "Hostname is available only when query is executed at host level.",
          type = "string",
        },
        error = {
          description = "Error is set when query fails.",
          type = "string",
        },
        executionTime = {
          description = "ExecutionTime is available only after the query is completed.",
          type = "string",
        },
        queryParams = {
          ["$ref"] = "GoogleCloudApigeeV1SecurityReportMetadata",
          description = "Contains information like metrics, dimenstions etc of the Security Report.",
        },
        reportDefinitionId = {
          description = "Report Definition ID.",
          type = "string",
        },
        result = {
          ["$ref"] = "GoogleCloudApigeeV1SecurityReportResultMetadata",
          description = "Result is available only after the query is completed.",
        },
        resultFileSize = {
          description = "ResultFileSize is available only after the query is completed.",
          type = "string",
        },
        resultRows = {
          description = "ResultRows is available only after the query is completed.",
          format = "int64",
          type = "string",
        },
        self = {
          description = "Self link of the query. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`",
          type = "string",
        },
        state = {
          description = "Query state could be \"enqueued\", \"running\", \"completed\", \"expired\" and \"failed\".",
          type = "string",
        },
        updated = {
          description = "Output only. Last updated timestamp for the query.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityReportMetadata = {
      description = "Metadata for the security report.",
      id = "GoogleCloudApigeeV1SecurityReportMetadata",
      properties = {
        dimensions = {
          description = "Dimensions of the SecurityReport.",
          items = {
            type = "string",
          },
          type = "array",
        },
        endTimestamp = {
          description = "End timestamp of the query range.",
          format = "google-datetime",
          type = "string",
        },
        metrics = {
          description = "Metrics of the SecurityReport. Example: [\"name:bot_count,func:sum,alias:sum_bot_count\"]",
          items = {
            type = "string",
          },
          type = "array",
        },
        mimeType = {
          description = "MIME type / Output format.",
          type = "string",
        },
        startTimestamp = {
          description = "Start timestamp of the query range.",
          format = "google-datetime",
          type = "string",
        },
        timeUnit = {
          description = "Query GroupBy time unit. Example: \"seconds\", \"minute\", \"hour\"",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityReportQuery = {
      description = "Body structure when user makes a request to create a security report.",
      id = "GoogleCloudApigeeV1SecurityReportQuery",
      properties = {
        csvDelimiter = {
          description = "Delimiter used in the CSV file, if `outputFormat` is set to `csv`. Defaults to the `,` (comma) character. Supported delimiter characters include comma (`,`), pipe (`|`), and tab (`\\t`).",
          type = "string",
        },
        dimensions = {
          description = "A list of dimensions. https://docs.apigee.com/api-platform/analytics/analytics-reference#dimensions",
          items = {
            type = "string",
          },
          type = "array",
        },
        displayName = {
          description = "Security Report display name which users can specify.",
          type = "string",
        },
        envgroupHostname = {
          description = "Hostname needs to be specified if query intends to run at host level. This field is only allowed when query is submitted by CreateHostSecurityReport where analytics data will be grouped by organization and hostname.",
          type = "string",
        },
        filter = {
          description = "Boolean expression that can be used to filter data. Filter expressions can be combined using AND/OR terms and should be fully parenthesized to avoid ambiguity. See Analytics metrics, dimensions, and filters reference https://docs.apigee.com/api-platform/analytics/analytics-reference for more information on the fields available to filter on. For more information on the tokens that you use to build filter expressions, see Filter expression syntax. https://docs.apigee.com/api-platform/analytics/asynch-reports-api#filter-expression-syntax",
          type = "string",
        },
        groupByTimeUnit = {
          description = "Time unit used to group the result set. Valid values include: second, minute, hour, day, week, or month. If a query includes groupByTimeUnit, then the result is an aggregation based on the specified time unit and the resultant timestamp does not include milliseconds precision. If a query omits groupByTimeUnit, then the resultant timestamp includes milliseconds precision.",
          type = "string",
        },
        limit = {
          description = "Maximum number of rows that can be returned in the result.",
          format = "int32",
          type = "integer",
        },
        metrics = {
          description = "A list of Metrics.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1SecurityReportQueryMetric",
          },
          type = "array",
        },
        mimeType = {
          description = "Valid values include: `csv` or `json`. Defaults to `json`. Note: Configure the delimiter for CSV output using the csvDelimiter property.",
          type = "string",
        },
        reportDefinitionId = {
          description = "Report Definition ID.",
          type = "string",
        },
        timeRange = {
          description = "Required. Time range for the query. Can use the following predefined strings to specify the time range: `last60minutes` `last24hours` `last7days` Or, specify the timeRange as a structure describing start and end timestamps in the ISO format: yyyy-mm-ddThh:mm:ssZ. Example: \"timeRange\": { \"start\": \"2018-07-29T00:13:00Z\", \"end\": \"2018-08-01T00:18:00Z\" }",
          type = "any",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityReportQueryMetric = {
      description = "Metric of the Query",
      id = "GoogleCloudApigeeV1SecurityReportQueryMetric",
      properties = {
        aggregationFunction = {
          description = "Aggregation function: avg, min, max, or sum.",
          type = "string",
        },
        alias = {
          description = "Alias for the metric. Alias will be used to replace metric name in query results.",
          type = "string",
        },
        name = {
          description = "Required. Metric name.",
          type = "string",
        },
        operator = {
          description = "One of `+`, `-`, `/`, `%`, `*`.",
          type = "string",
        },
        value = {
          description = "Operand value should be provided when operator is set.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityReportResultMetadata = {
      description = "Contains informations about the security report results.",
      id = "GoogleCloudApigeeV1SecurityReportResultMetadata",
      properties = {
        expires = {
          description = "Output only. Expire_time is set to 7 days after report creation. Query result will be unaccessable after this time. Example: \"2021-05-04T13:38:52-07:00\"",
          readOnly = true,
          type = "string",
        },
        self = {
          description = "Self link of the query results. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result` or following format if query is running at host level: `/organizations/myorg/hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd/result`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SecurityReportResultView = {
      description = "The response for security report result view APIs.",
      id = "GoogleCloudApigeeV1SecurityReportResultView",
      properties = {
        code = {
          description = "Error code when there is a failure.",
          format = "int32",
          type = "integer",
        },
        error = {
          description = "Error message when there is a failure.",
          type = "string",
        },
        metadata = {
          ["$ref"] = "GoogleCloudApigeeV1SecurityReportMetadata",
          description = "Metadata contains information like metrics, dimenstions etc of the security report.",
        },
        rows = {
          description = "Rows of security report result. Each row is a JSON object. Example: {sum(message_count): 1, developer_app: \"(not set)\",…}",
          items = {
            type = "any",
          },
          type = "array",
        },
        state = {
          description = "State of retrieving ResultView.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1ServiceIssuersMapping = {
      id = "GoogleCloudApigeeV1ServiceIssuersMapping",
      properties = {
        emailIds = {
          description = "List of trusted issuer email ids.",
          items = {
            type = "string",
          },
          type = "array",
        },
        service = {
          description = "String indicating the Apigee service name.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Session = {
      description = "Session carries the debug session id and its creation time.",
      id = "GoogleCloudApigeeV1Session",
      properties = {
        id = {
          description = "The debug session ID.",
          type = "string",
        },
        timestampMs = {
          description = "The first transaction creation timestamp in millisecond, recorded by UAP.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SetAddonsRequest = {
      description = "Request for SetAddons.",
      id = "GoogleCloudApigeeV1SetAddonsRequest",
      properties = {
        addonsConfig = {
          ["$ref"] = "GoogleCloudApigeeV1AddonsConfig",
          description = "Required. Add-on configurations.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SharedFlow = {
      description = "The metadata describing a shared flow",
      id = "GoogleCloudApigeeV1SharedFlow",
      properties = {
        latestRevisionId = {
          description = "The id of the most recently created revision for this shared flow.",
          type = "string",
        },
        metaData = {
          ["$ref"] = "GoogleCloudApigeeV1EntityMetadata",
          description = "Metadata describing the shared flow.",
        },
        name = {
          description = "The ID of the shared flow.",
          type = "string",
        },
        revision = {
          description = "A list of revisions of this shared flow.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SharedFlowRevision = {
      description = "The metadata describing a shared flow revision.",
      id = "GoogleCloudApigeeV1SharedFlowRevision",
      properties = {
        configurationVersion = {
          ["$ref"] = "GoogleCloudApigeeV1ConfigVersion",
          description = "The version of the configuration schema to which this shared flow conforms. The only supported value currently is majorVersion 4 and minorVersion 0. This setting may be used in the future to enable evolution of the shared flow format.",
        },
        contextInfo = {
          description = "A textual description of the shared flow revision.",
          type = "string",
        },
        createdAt = {
          description = "Time at which this shared flow revision was created, in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        description = {
          description = "Description of the shared flow revision.",
          type = "string",
        },
        displayName = {
          description = "The human readable name of this shared flow.",
          type = "string",
        },
        entityMetaDataAsProperties = {
          additionalProperties = {
            type = "string",
          },
          description = "A Key-Value map of metadata about this shared flow revision.",
          type = "object",
        },
        lastModifiedAt = {
          description = "Time at which this shared flow revision was most recently modified, in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "The resource ID of the parent shared flow.",
          type = "string",
        },
        policies = {
          description = "A list of policy names included in this shared flow revision.",
          items = {
            type = "string",
          },
          type = "array",
        },
        resourceFiles = {
          ["$ref"] = "GoogleCloudApigeeV1ResourceFiles",
          description = "The resource files included in this shared flow revision.",
        },
        resources = {
          description = "A list of the resources included in this shared flow revision formatted as \"{type}://{name}\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        revision = {
          description = "The resource ID of this revision.",
          type = "string",
        },
        sharedFlows = {
          description = "A list of the shared flow names included in this shared flow revision.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "The string \"Application\"",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Stats = {
      description = "Encapsulates a `stats` response.",
      id = "GoogleCloudApigeeV1Stats",
      properties = {
        environments = {
          description = "List of query results on the environment level.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1StatsEnvironmentStats",
          },
          type = "array",
        },
        hosts = {
          description = "List of query results grouped by host.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1StatsHostStats",
          },
          type = "array",
        },
        metaData = {
          ["$ref"] = "GoogleCloudApigeeV1Metadata",
          description = "Metadata information.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1StatsEnvironmentStats = {
      description = "Encapsulates the environment wrapper: ``` \"environments\": [ { \"metrics\": [ { \"name\": \"sum(message_count)\", \"values\": [ \"2.52056245E8\" ] } ], \"name\": \"prod\" } ]```",
      id = "GoogleCloudApigeeV1StatsEnvironmentStats",
      properties = {
        dimensions = {
          description = "List of metrics grouped under dimensions.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DimensionMetric",
          },
          type = "array",
        },
        metrics = {
          description = "In the final response, only one of the following fields will be present based on the dimensions provided. If no dimensions are provided, then only top-level metrics is provided. If dimensions are included, then there will be a top-level dimensions field under environments which will contain metrics values and the dimension name. Example: ``` \"environments\": [ { \"dimensions\": [ { \"metrics\": [ { \"name\": \"sum(message_count)\", \"values\": [ \"2.14049521E8\" ] } ], \"name\": \"nit_proxy\" } ], \"name\": \"prod\" } ]``` or ```\"environments\": [ { \"metrics\": [ { \"name\": \"sum(message_count)\", \"values\": [ \"2.19026331E8\" ] } ], \"name\": \"prod\" } ]``` List of metric values.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Metric",
          },
          type = "array",
        },
        name = {
          description = "Name of the environment.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1StatsHostStats = {
      description = "Encapsulates the hostname wrapper: ``` \"hosts\": [ { \"metrics\": [ { \"name\": \"sum(message_count)\", \"values\": [ \"2.52056245E8\" ] } ], \"name\": \"example.com\" } ]```",
      id = "GoogleCloudApigeeV1StatsHostStats",
      properties = {
        dimensions = {
          description = "List of metrics grouped under dimensions.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1DimensionMetric",
          },
          type = "array",
        },
        metrics = {
          description = "In the final response, only one of the following fields will be present based on the dimensions provided. If no dimensions are provided, then only the top-level metrics are provided. If dimensions are included, then there will be a top-level dimensions field under hostnames which will contain metrics values and the dimension name. Example: ``` \"hosts\": [ { \"dimensions\": [ { \"metrics\": [ { \"name\": \"sum(message_count)\", \"values\": [ \"2.14049521E8\" ] } ], \"name\": \"nit_proxy\" } ], \"name\": \"example.com\" } ]``` OR ```\"hosts\": [ { \"metrics\": [ { \"name\": \"sum(message_count)\", \"values\": [ \"2.19026331E8\" ] } ], \"name\": \"example.com\" } ]``` List of metric values.",
          items = {
            ["$ref"] = "GoogleCloudApigeeV1Metric",
          },
          type = "array",
        },
        name = {
          description = "Hostname used in query.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1Subscription = {
      description = "Pub/Sub subscription of an environment.",
      id = "GoogleCloudApigeeV1Subscription",
      properties = {
        name = {
          description = "Full name of the Pub/Sub subcription. Use the following structure in your request: `subscription \"projects/foo/subscription/bar\"`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1SyncAuthorization = {
      id = "GoogleCloudApigeeV1SyncAuthorization",
      properties = {
        etag = {
          description = "Entity tag (ETag) used for optimistic concurrency control as a way to help prevent simultaneous updates from overwriting each other. For example, when you call [getSyncAuthorization](organizations/getSyncAuthorization) an ETag is returned in the response. Pass that ETag when calling the [setSyncAuthorization](organizations/setSyncAuthorization) to ensure that you are updating the correct version. If you don't pass the ETag in the call to `setSyncAuthorization`, then the existing authorization is overwritten indiscriminately. **Note**: We strongly recommend that you use the ETag in the read-modify-write cycle to avoid race conditions.",
          format = "byte",
          type = "string",
        },
        identities = {
          description = "Required. Array of service accounts to grant access to control plane resources, each specified using the following format: `serviceAccount:` service-account-name. The service-account-name is formatted like an email address. For example: `my-synchronizer-manager-service_account@my_project_id.iam.gserviceaccount.com` You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one. The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/latest/sa-about#create-the-service-accounts).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TargetServer = {
      description = "TargetServer configuration. TargetServers are used to decouple a proxy TargetEndpoint HTTPTargetConnections from concrete URLs for backend services.",
      id = "GoogleCloudApigeeV1TargetServer",
      properties = {
        description = {
          description = "Optional. A human-readable description of this TargetServer.",
          type = "string",
        },
        host = {
          description = "Required. The host name this target connects to. Value must be a valid hostname as described by RFC-1123.",
          type = "string",
        },
        isEnabled = {
          description = "Optional. Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true.",
          type = "boolean",
        },
        name = {
          description = "Required. The resource id of this target server. Values must match the regular expression ",
          type = "string",
        },
        port = {
          description = "Required. The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.",
          format = "int32",
          type = "integer",
        },
        protocol = {
          description = "Immutable. The protocol used by this TargetServer.",
          enum = {
            "PROTOCOL_UNSPECIFIED",
            "HTTP",
            "GRPC",
          },
          enumDescriptions = {
            "UNSPECIFIED defaults to HTTP for backwards compatibility.",
            "The TargetServer uses HTTP.",
            "The TargetServer uses GRPC.",
          },
          type = "string",
        },
        sSLInfo = {
          ["$ref"] = "GoogleCloudApigeeV1TlsInfo",
          description = "Optional. Specifies TLS configuration info for this TargetServer. The JSON name is `sSLInfo` for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TargetServerConfig = {
      id = "GoogleCloudApigeeV1TargetServerConfig",
      properties = {
        enabled = {
          description = "Whether the target server is enabled. An empty/omitted value for this field should be interpreted as true.",
          type = "boolean",
        },
        host = {
          description = "Host name of the target server.",
          type = "string",
        },
        name = {
          description = "Target server revision name in the following format: `organizations/{org}/environments/{env}/targetservers/{targetserver}/revisions/{rev}`",
          type = "string",
        },
        port = {
          description = "Port number for the target server.",
          format = "int32",
          type = "integer",
        },
        protocol = {
          description = "The protocol used by this target server.",
          enum = {
            "PROTOCOL_UNSPECIFIED",
            "HTTP",
            "GRPC",
          },
          enumDescriptions = {
            "UNSPECIFIED defaults to HTTP for backwards compatibility.",
            "The TargetServer uses HTTP.",
            "The TargetServer uses GRPC.",
          },
          type = "string",
        },
        tlsInfo = {
          ["$ref"] = "GoogleCloudApigeeV1TlsInfoConfig",
          description = "TLS settings for the target server.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TestDatastoreResponse = {
      description = "The response for TestDatastore",
      id = "GoogleCloudApigeeV1TestDatastoreResponse",
      properties = {
        error = {
          description = "Output only. Error message of test connection failure",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. It could be `completed` or `failed`",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TlsInfo = {
      description = "TLS configuration information for virtual hosts and TargetServers.",
      id = "GoogleCloudApigeeV1TlsInfo",
      properties = {
        ciphers = {
          description = "The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3.",
          items = {
            type = "string",
          },
          type = "array",
        },
        clientAuthEnabled = {
          description = "Optional. Enables two-way TLS.",
          type = "boolean",
        },
        commonName = {
          ["$ref"] = "GoogleCloudApigeeV1TlsInfoCommonName",
          description = "The TLS Common Name of the certificate.",
        },
        enabled = {
          description = "Required. Enables TLS. If false, neither one-way nor two-way TLS will be enabled.",
          type = "boolean",
        },
        ignoreValidationErrors = {
          description = "If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails.",
          type = "boolean",
        },
        keyAlias = {
          description = "Required if `client_auth_enabled` is true. The resource ID for the alias containing the private key and cert.",
          type = "string",
        },
        keyStore = {
          description = "Required if `client_auth_enabled` is true. The resource ID of the keystore.",
          type = "string",
        },
        protocols = {
          description = "The TLS versioins to be used.",
          items = {
            type = "string",
          },
          type = "array",
        },
        trustStore = {
          description = "The resource ID of the truststore.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TlsInfoCommonName = {
      id = "GoogleCloudApigeeV1TlsInfoCommonName",
      properties = {
        value = {
          description = "The TLS Common Name string of the certificate.",
          type = "string",
        },
        wildcardMatch = {
          description = "Indicates whether the cert should be matched against as a wildcard cert.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TlsInfoConfig = {
      id = "GoogleCloudApigeeV1TlsInfoConfig",
      properties = {
        ciphers = {
          description = "List of ciphers that are granted access.",
          items = {
            type = "string",
          },
          type = "array",
        },
        clientAuthEnabled = {
          description = "Flag that specifies whether client-side authentication is enabled for the target server. Enables two-way TLS.",
          type = "boolean",
        },
        commonName = {
          ["$ref"] = "GoogleCloudApigeeV1CommonNameConfig",
          description = "Common name to validate the target server against.",
        },
        enabled = {
          description = "Flag that specifies whether one-way TLS is enabled. Set to `true` to enable one-way TLS.",
          type = "boolean",
        },
        ignoreValidationErrors = {
          description = "Flag that specifies whether to ignore TLS certificate validation errors. Set to `true` to ignore errors.",
          type = "boolean",
        },
        keyAlias = {
          description = "Name of the alias used for client-side authentication in the following format: `organizations/{org}/environments/{env}/keystores/{keystore}/aliases/{alias}`",
          type = "string",
        },
        keyAliasReference = {
          ["$ref"] = "GoogleCloudApigeeV1KeyAliasReference",
          description = "Reference name and alias pair to use for client-side authentication.",
        },
        protocols = {
          description = "List of TLS protocols that are granted access.",
          items = {
            type = "string",
          },
          type = "array",
        },
        trustStore = {
          description = "Name of the keystore or keystore reference containing trusted certificates for the server in the following format: `organizations/{org}/environments/{env}/keystores/{keystore}` or `organizations/{org}/environments/{env}/references/{reference}`",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TraceConfig = {
      description = "TraceConfig defines the configurations in an environment of distributed trace.",
      id = "GoogleCloudApigeeV1TraceConfig",
      properties = {
        endpoint = {
          description = "Required. Endpoint of the exporter.",
          type = "string",
        },
        exporter = {
          description = "Required. Exporter that is used to view the distributed trace captured using OpenCensus. An exporter sends traces to any backend that is capable of consuming them. Recorded spans can be exported by registered exporters.",
          enum = {
            "EXPORTER_UNSPECIFIED",
            "JAEGER",
            "CLOUD_TRACE",
          },
          enumDescriptions = {
            "Exporter unspecified",
            "Jaeger exporter",
            "Cloudtrace exporter",
          },
          type = "string",
        },
        samplingConfig = {
          ["$ref"] = "GoogleCloudApigeeV1TraceSamplingConfig",
          description = "Distributed trace configuration for all API proxies in an environment. You can also override the configuration for a specific API proxy using the distributed trace configuration overrides API.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TraceConfigOverride = {
      description = "A representation of a configuration override.",
      id = "GoogleCloudApigeeV1TraceConfigOverride",
      properties = {
        apiProxy = {
          description = "ID of the API proxy that will have its trace configuration overridden.",
          type = "string",
        },
        name = {
          description = "ID of the trace configuration override specified as a system-generated UUID.",
          type = "string",
        },
        samplingConfig = {
          ["$ref"] = "GoogleCloudApigeeV1TraceSamplingConfig",
          description = "Trace configuration to override.",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1TraceSamplingConfig = {
      description = "TraceSamplingConfig represents the detail settings of distributed tracing. Only the fields that are defined in the distributed trace configuration can be overridden using the distribute trace configuration override APIs.",
      id = "GoogleCloudApigeeV1TraceSamplingConfig",
      properties = {
        sampler = {
          description = "Sampler of distributed tracing. OFF is the default value.",
          enum = {
            "SAMPLER_UNSPECIFIED",
            "OFF",
            "PROBABILITY",
          },
          enumDescriptions = {
            "Sampler unspecified.",
            "OFF means distributed trace is disabled, or the sampling probability is 0.",
            "PROBABILITY means traces are captured on a probability that defined by sampling_rate. The sampling rate is limited to 0 to 0.5 when this is set.",
          },
          type = "string",
        },
        samplingRate = {
          description = "Field sampling rate. This value is only applicable when using the PROBABILITY sampler. The supported values are > 0 and <= 0.5.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudApigeeV1UpdateError = {
      description = "Details on why a resource update failed in the runtime.",
      id = "GoogleCloudApigeeV1UpdateError",
      properties = {
        code = {
          description = "Status code.",
          enum = {
            "OK",
            "CANCELLED",
            "UNKNOWN",
            "INVALID_ARGUMENT",
            "DEADLINE_EXCEEDED",
            "NOT_FOUND",
            "ALREADY_EXISTS",
            "PERMISSION_DENIED",
            "UNAUTHENTICATED",
            "RESOURCE_EXHAUSTED",
            "FAILED_PRECONDITION",
            "ABORTED",
            "OUT_OF_RANGE",
            "UNIMPLEMENTED",
            "INTERNAL",
            "UNAVAILABLE",
            "DATA_LOSS",
          },
          enumDescriptions = {
            "Not an error; returned on success. HTTP Mapping: 200 OK",
            "The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request",
            "Unknown error. For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error",
            "The client specified an invalid argument. Note that this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request",
            "The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout",
            "Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used. HTTP Mapping: 404 Not Found",
            "The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict",
            "The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden",
            "The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized",
            "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests",
            "The operation was rejected because the system is not in a state required for the operation's execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a) Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use `ABORTED` if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, `FAILED_PRECONDITION` should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request",
            "The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 409 Conflict",
            "The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size. There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done. HTTP Mapping: 400 Bad Request",
            "The operation is not implemented or is not supported/enabled in this service. HTTP Mapping: 501 Not Implemented",
            "Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error",
            "The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503 Service Unavailable",
            "Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error",
          },
          type = "string",
        },
        message = {
          description = "User-friendly error message.",
          type = "string",
        },
        resource = {
          description = "The sub resource specific to this error (e.g. a proxy deployed within the EnvironmentConfig). If empty the error refers to the top level resource.",
          type = "string",
        },
        type = {
          description = "A string that uniquely identifies the type of error. This provides a more reliable means to deduplicate errors across revisions and instances.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleIamV1AuditConfig = {
      description = "Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { \"audit_configs\": [ { \"service\": \"allServices\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" }, { \"log_type\": \"ADMIN_READ\" } ] }, { \"service\": \"sampleservice.googleapis.com\", \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\" }, { \"log_type\": \"DATA_WRITE\", \"exempted_members\": [ \"user:aliya@example.com\" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.",
      id = "GoogleIamV1AuditConfig",
      properties = {
        auditLogConfigs = {
          description = "The configuration for logging of each type of permission.",
          items = {
            ["$ref"] = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1AuditLogConfig = {
      description = "Provides the configuration for logging a type of permissions. Example: { \"audit_log_configs\": [ { \"log_type\": \"DATA_READ\", \"exempted_members\": [ \"user:jose@example.com\" ] }, { \"log_type\": \"DATA_WRITE\" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.",
      id = "GoogleIamV1AuditLogConfig",
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
    GoogleIamV1Binding = {
      description = "Associates `members`, or principals, with a `role`.",
      id = "GoogleIamV1Binding",
      properties = {
        condition = {
          ["$ref"] = "GoogleTypeExpr",
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
    GoogleIamV1Policy = {
      description = "An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** { \"bindings\": [ { \"role\": \"roles/resourcemanager.organizationAdmin\", \"members\": [ \"user:mike@example.com\", \"group:admins@example.com\", \"domain:google.com\", \"serviceAccount:my-project-id@appspot.gserviceaccount.com\" ] }, { \"role\": \"roles/resourcemanager.organizationViewer\", \"members\": [ \"user:eve@example.com\" ], \"condition\": { \"title\": \"expirable access\", \"description\": \"Does not grant access after Sep 2020\", \"expression\": \"request.time < timestamp('2020-10-01T00:00:00.000Z')\", } } ], \"etag\": \"BwWWja0YfJA=\", \"version\": 3 } **YAML example:** bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).",
      id = "GoogleIamV1Policy",
      properties = {
        auditConfigs = {
          description = "Specifies cloud audit logging configuration for this policy.",
          items = {
            ["$ref"] = "GoogleIamV1AuditConfig",
          },
          type = "array",
        },
        bindings = {
          description = "Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `condition` that determines how and when the `bindings` are applied. Each of the `bindings` must contain at least one principal. The `bindings` in a `Policy` can refer to up to 1,500 principals; up to 250 of these principals can be Google groups. Each occurrence of a principal counts towards these limits. For example, if the `bindings` grant 50 different roles to `user:alice@example.com`, and not to any other principal, then you can add another 1,450 principals to the `bindings` in the `Policy`.",
          items = {
            ["$ref"] = "GoogleIamV1Binding",
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
    GoogleIamV1SetIamPolicyRequest = {
      description = "Request message for `SetIamPolicy` method.",
      id = "GoogleIamV1SetIamPolicyRequest",
      properties = {
        policy = {
          ["$ref"] = "GoogleIamV1Policy",
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
    GoogleIamV1TestIamPermissionsRequest = {
      description = "Request message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsRequest",
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
    GoogleIamV1TestIamPermissionsResponse = {
      description = "Response message for `TestIamPermissions` method.",
      id = "GoogleIamV1TestIamPermissionsResponse",
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
    GoogleLongrunningListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunningListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunningOperation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunningOperation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunningOperation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpcStatus",
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
    GoogleProtobufEmpty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobufEmpty",
      properties = {},
      type = "object",
    },
    GoogleRpcPreconditionFailure = {
      description = "Describes what preconditions have failed. For example, if an RPC failed because it required the Terms of Service to be acknowledged, it could list the terms of service violation in the PreconditionFailure message.",
      id = "GoogleRpcPreconditionFailure",
      properties = {
        violations = {
          description = "Describes all precondition violations.",
          items = {
            ["$ref"] = "GoogleRpcPreconditionFailureViolation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleRpcPreconditionFailureViolation = {
      description = "A message type used to describe a single precondition failure.",
      id = "GoogleRpcPreconditionFailureViolation",
      properties = {
        description = {
          description = "A description of how the precondition failed. Developers can use this description to understand how to fix the failure. For example: \"Terms of service not accepted\".",
          type = "string",
        },
        subject = {
          description = "The subject, relative to the type, that failed. For example, \"google.com/cloud\" relative to the \"TOS\" type would indicate which terms of service is being referenced.",
          type = "string",
        },
        type = {
          description = "The type of PreconditionFailure. We recommend using a service-specific enum type to define the supported precondition violation subjects. For example, \"TOS\" for \"Terms of Service violation\".",
          type = "string",
        },
      },
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
    GoogleTypeExpr = {
      description = "Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: \"Summary size limit\" description: \"Determines if a summary is less than 100 chars\" expression: \"document.summary.size() < 100\" Example (Equality): title: \"Requestor is owner\" description: \"Determines if requestor is the document owner\" expression: \"document.owner == request.auth.claims.email\" Example (Logic): title: \"Public documents\" description: \"Determine whether the document should be publicly visible\" expression: \"document.type != 'private' && document.type != 'internal'\" Example (Data Manipulation): title: \"Notification string\" description: \"Create a notification string with a timestamp.\" expression: \"'New message received at ' + string(document.create_time)\" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.",
      id = "GoogleTypeExpr",
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
    GoogleTypeInterval = {
      description = "Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.",
      id = "GoogleTypeInterval",
      properties = {
        endTime = {
          description = "Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will have to be before the end.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will have to be the same or after the start.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleTypeMoney = {
      description = "Represents an amount of money with its currency type.",
      id = "GoogleTypeMoney",
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
  },
  servicePath = "",
  title = "Apigee API",
  version = "v1",
  version_module = true,
}