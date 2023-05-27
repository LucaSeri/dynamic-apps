return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/appengine.admin"] = {
          description = "View and manage your applications deployed on Google App Engine",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://appengine.googleapis.com/",
  batchPath = "batch",
  description = "Provisions and manages developers' App Engine applications.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/appengine/docs/admin-api/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "appengine:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://appengine.mtls.googleapis.com/",
  name = "appengine",
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
    apps = {
      methods = {
        create = {
          description = "Creates an App Engine application for a Google Cloud Platform project. Required fields: id - The ID of the target Cloud Platform project. location - The region (https://cloud.google.com/appengine/docs/locations) where you want the App Engine application located.For more information about App Engine applications, see Managing Projects, Applications, and Billing (https://cloud.google.com/appengine/docs/standard/python/console/).",
          flatPath = "v1/apps",
          httpMethod = "POST",
          id = "appengine.apps.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/apps",
          request = {
            ["$ref"] = "Application",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets information about an application.",
          flatPath = "v1/apps/{appsId}",
          httpMethod = "GET",
          id = "appengine.apps.get",
          parameterOrder = {
            "appsId",
          },
          parameters = {
            appsId = {
              description = "Part of `name`. Name of the Application resource to get. Example: apps/myapp.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/apps/{appsId}",
          response = {
            ["$ref"] = "Application",
          },
          scopes = {
            "https://www.googleapis.com/auth/appengine.admin",
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        patch = {
          description = "Updates the specified Application resource. You can update the following fields: auth_domain - Google authentication domain for controlling user access to the application. default_cookie_expiration - Cookie expiration policy for the application. iap - Identity-Aware Proxy properties for the application.",
          flatPath = "v1/apps/{appsId}",
          httpMethod = "PATCH",
          id = "appengine.apps.patch",
          parameterOrder = {
            "appsId",
          },
          parameters = {
            appsId = {
              description = "Part of `name`. Name of the Application resource to update. Example: apps/myapp.",
              location = "path",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. Standard field mask for the set of fields to be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/apps/{appsId}",
          request = {
            ["$ref"] = "Application",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        repair = {
          description = "Recreates the required App Engine features for the specified App Engine application, for example a Cloud Storage bucket or App Engine service account. Use this method if you receive an error message about a missing feature, for example, Error retrieving the App Engine service account. If you have deleted your App Engine service account, this will not be able to recreate it. Instead, you should attempt to use the IAM undelete API if possible at https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts/undelete?apix_params=%7B\"name\"%3A\"projects%2F-%2FserviceAccounts%2Funique_id\"%2C\"resource\"%3A%7B%7D%7D . If the deletion was recent, the numeric ID can be found in the Cloud Console Activity Log.",
          flatPath = "v1/apps/{appsId}:repair",
          httpMethod = "POST",
          id = "appengine.apps.repair",
          parameterOrder = {
            "appsId",
          },
          parameters = {
            appsId = {
              description = "Part of `name`. Name of the application to repair. Example: apps/myapp",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/apps/{appsId}:repair",
          request = {
            ["$ref"] = "RepairApplicationRequest",
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
        authorizedCertificates = {
          methods = {
            create = {
              description = "Uploads the specified SSL certificate.",
              flatPath = "v1/apps/{appsId}/authorizedCertificates",
              httpMethod = "POST",
              id = "appengine.apps.authorizedCertificates.create",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `parent`. Name of the parent Application resource. Example: apps/myapp.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/authorizedCertificates",
              request = {
                ["$ref"] = "AuthorizedCertificate",
              },
              response = {
                ["$ref"] = "AuthorizedCertificate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes the specified SSL certificate.",
              flatPath = "v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}",
              httpMethod = "DELETE",
              id = "appengine.apps.authorizedCertificates.delete",
              parameterOrder = {
                "appsId",
                "authorizedCertificatesId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource to delete. Example: apps/myapp/authorizedCertificates/12345.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                authorizedCertificatesId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets the specified SSL certificate.",
              flatPath = "v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}",
              httpMethod = "GET",
              id = "appengine.apps.authorizedCertificates.get",
              parameterOrder = {
                "appsId",
                "authorizedCertificatesId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource requested. Example: apps/myapp/authorizedCertificates/12345.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                authorizedCertificatesId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "Controls the set of fields returned in the GET response.",
                  enum = {
                    "BASIC_CERTIFICATE",
                    "FULL_CERTIFICATE",
                  },
                  enumDescriptions = {
                    "Basic certificate information, including applicable domains and expiration date.",
                    "The information from BASIC_CERTIFICATE, plus detailed information on the domain mappings that have this certificate mapped.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}",
              response = {
                ["$ref"] = "AuthorizedCertificate",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists all SSL certificates the user is authorized to administer.",
              flatPath = "v1/apps/{appsId}/authorizedCertificates",
              httpMethod = "GET",
              id = "appengine.apps.authorizedCertificates.list",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `parent`. Name of the parent Application resource. Example: apps/myapp.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum results to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
                view = {
                  description = "Controls the set of fields returned in the LIST response.",
                  enum = {
                    "BASIC_CERTIFICATE",
                    "FULL_CERTIFICATE",
                  },
                  enumDescriptions = {
                    "Basic certificate information, including applicable domains and expiration date.",
                    "The information from BASIC_CERTIFICATE, plus detailed information on the domain mappings that have this certificate mapped.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/authorizedCertificates",
              response = {
                ["$ref"] = "ListAuthorizedCertificatesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            patch = {
              description = "Updates the specified SSL certificate. To renew a certificate and maintain its existing domain mappings, update certificate_data with a new certificate. The new certificate must be applicable to the same domains as the original certificate. The certificate display_name may also be updated.",
              flatPath = "v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}",
              httpMethod = "PATCH",
              id = "appengine.apps.authorizedCertificates.patch",
              parameterOrder = {
                "appsId",
                "authorizedCertificatesId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource to update. Example: apps/myapp/authorizedCertificates/12345.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                authorizedCertificatesId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Standard field mask for the set of fields to be updated. Updates are only supported on the certificate_raw_data and display_name fields.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/authorizedCertificates/{authorizedCertificatesId}",
              request = {
                ["$ref"] = "AuthorizedCertificate",
              },
              response = {
                ["$ref"] = "AuthorizedCertificate",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        authorizedDomains = {
          methods = {
            list = {
              description = "Lists all domains the user is authorized to administer.",
              flatPath = "v1/apps/{appsId}/authorizedDomains",
              httpMethod = "GET",
              id = "appengine.apps.authorizedDomains.list",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `parent`. Name of the parent Application resource. Example: apps/myapp.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum results to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/authorizedDomains",
              response = {
                ["$ref"] = "ListAuthorizedDomainsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
        },
        domainMappings = {
          methods = {
            create = {
              description = "Maps a domain to an application. A user must be authorized to administer a domain in order to map it to an application. For a list of available authorized domains, see AuthorizedDomains.ListAuthorizedDomains.",
              flatPath = "v1/apps/{appsId}/domainMappings",
              httpMethod = "POST",
              id = "appengine.apps.domainMappings.create",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `parent`. Name of the parent Application resource. Example: apps/myapp.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                overrideStrategy = {
                  description = "Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.",
                  enum = {
                    "UNSPECIFIED_DOMAIN_OVERRIDE_STRATEGY",
                    "STRICT",
                    "OVERRIDE",
                  },
                  enumDescriptions = {
                    "Strategy unspecified. Defaults to STRICT.",
                    "Overrides not allowed. If a mapping already exists for the specified domain, the request will return an ALREADY_EXISTS (409).",
                    "Overrides allowed. If a mapping already exists for the specified domain, the request will overwrite it. Note that this might stop another Google product from serving. For example, if the domain is mapped to another App Engine application, that app will no longer serve from that domain.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/domainMappings",
              request = {
                ["$ref"] = "DomainMapping",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes the specified domain mapping. A user must be authorized to administer the associated domain in order to delete a DomainMapping resource.",
              flatPath = "v1/apps/{appsId}/domainMappings/{domainMappingsId}",
              httpMethod = "DELETE",
              id = "appengine.apps.domainMappings.delete",
              parameterOrder = {
                "appsId",
                "domainMappingsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource to delete. Example: apps/myapp/domainMappings/example.com.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                domainMappingsId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/domainMappings/{domainMappingsId}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets the specified domain mapping.",
              flatPath = "v1/apps/{appsId}/domainMappings/{domainMappingsId}",
              httpMethod = "GET",
              id = "appengine.apps.domainMappings.get",
              parameterOrder = {
                "appsId",
                "domainMappingsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource requested. Example: apps/myapp/domainMappings/example.com.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                domainMappingsId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/domainMappings/{domainMappingsId}",
              response = {
                ["$ref"] = "DomainMapping",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists the domain mappings on an application.",
              flatPath = "v1/apps/{appsId}/domainMappings",
              httpMethod = "GET",
              id = "appengine.apps.domainMappings.list",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `parent`. Name of the parent Application resource. Example: apps/myapp.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum results to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/domainMappings",
              response = {
                ["$ref"] = "ListDomainMappingsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            patch = {
              description = "Updates the specified domain mapping. To map an SSL certificate to a domain mapping, update certificate_id to point to an AuthorizedCertificate resource. A user must be authorized to administer the associated domain in order to update a DomainMapping resource.",
              flatPath = "v1/apps/{appsId}/domainMappings/{domainMappingsId}",
              httpMethod = "PATCH",
              id = "appengine.apps.domainMappings.patch",
              parameterOrder = {
                "appsId",
                "domainMappingsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource to update. Example: apps/myapp/domainMappings/example.com.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                domainMappingsId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Standard field mask for the set of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/domainMappings/{domainMappingsId}",
              request = {
                ["$ref"] = "DomainMapping",
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
        firewall = {
          resources = {
            ingressRules = {
              methods = {
                batchUpdate = {
                  description = "Replaces the entire firewall ruleset in one bulk operation. This overrides and replaces the rules of an existing firewall with the new rules.If the final rule does not match traffic with the '*' wildcard IP range, then an \"allow all\" rule is explicitly added to the end of the list.",
                  flatPath = "v1/apps/{appsId}/firewall/ingressRules:batchUpdate",
                  httpMethod = "POST",
                  id = "appengine.apps.firewall.ingressRules.batchUpdate",
                  parameterOrder = {
                    "appsId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `name`. Name of the Firewall collection to set. Example: apps/myapp/firewall/ingressRules.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/firewall/ingressRules:batchUpdate",
                  request = {
                    ["$ref"] = "BatchUpdateIngressRulesRequest",
                  },
                  response = {
                    ["$ref"] = "BatchUpdateIngressRulesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                create = {
                  description = "Creates a firewall rule for the application.",
                  flatPath = "v1/apps/{appsId}/firewall/ingressRules",
                  httpMethod = "POST",
                  id = "appengine.apps.firewall.ingressRules.create",
                  parameterOrder = {
                    "appsId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `parent`. Name of the parent Firewall collection in which to create a new rule. Example: apps/myapp/firewall/ingressRules.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/firewall/ingressRules",
                  request = {
                    ["$ref"] = "FirewallRule",
                  },
                  response = {
                    ["$ref"] = "FirewallRule",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes the specified firewall rule.",
                  flatPath = "v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}",
                  httpMethod = "DELETE",
                  id = "appengine.apps.firewall.ingressRules.delete",
                  parameterOrder = {
                    "appsId",
                    "ingressRulesId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `name`. Name of the Firewall resource to delete. Example: apps/myapp/firewall/ingressRules/100.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    ingressRulesId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the specified firewall rule.",
                  flatPath = "v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}",
                  httpMethod = "GET",
                  id = "appengine.apps.firewall.ingressRules.get",
                  parameterOrder = {
                    "appsId",
                    "ingressRulesId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `name`. Name of the Firewall resource to retrieve. Example: apps/myapp/firewall/ingressRules/100.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    ingressRulesId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}",
                  response = {
                    ["$ref"] = "FirewallRule",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/appengine.admin",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Lists the firewall rules of an application.",
                  flatPath = "v1/apps/{appsId}/firewall/ingressRules",
                  httpMethod = "GET",
                  id = "appengine.apps.firewall.ingressRules.list",
                  parameterOrder = {
                    "appsId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `parent`. Name of the Firewall collection to retrieve. Example: apps/myapp/firewall/ingressRules.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    matchingAddress = {
                      description = "A valid IP Address. If set, only rules matching this address will be returned. The first returned rule will be the rule that fires on requests from this IP.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum results to return per page.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Continuation token for fetching the next page of results.",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/firewall/ingressRules",
                  response = {
                    ["$ref"] = "ListIngressRulesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/appengine.admin",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                patch = {
                  description = "Updates the specified firewall rule.",
                  flatPath = "v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}",
                  httpMethod = "PATCH",
                  id = "appengine.apps.firewall.ingressRules.patch",
                  parameterOrder = {
                    "appsId",
                    "ingressRulesId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `name`. Name of the Firewall resource to update. Example: apps/myapp/firewall/ingressRules/100.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    ingressRulesId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Standard field mask for the set of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/firewall/ingressRules/{ingressRulesId}",
                  request = {
                    ["$ref"] = "FirewallRule",
                  },
                  response = {
                    ["$ref"] = "FirewallRule",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
        locations = {
          methods = {
            get = {
              description = "Gets information about a location.",
              flatPath = "v1/apps/{appsId}/locations/{locationsId}",
              httpMethod = "GET",
              id = "appengine.apps.locations.get",
              parameterOrder = {
                "appsId",
                "locationsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Resource name for the location.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                locationsId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/locations/{locationsId}",
              response = {
                ["$ref"] = "Location",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists information about the supported locations for this service.",
              flatPath = "v1/apps/{appsId}/locations",
              httpMethod = "GET",
              id = "appengine.apps.locations.list",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. The resource that owns the locations collection, if applicable.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                filter = {
                  description = "A filter to narrow down results to a preferred subset. The filtering language accepts strings like \"displayName=tokyo\", and is documented in more detail in AIP-160 (https://google.aip.dev/160).",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of results to return. If not set, the service selects a default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token received from the next_page_token field in the response. Send that page token to receive the subsequent page.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/locations",
              response = {
                ["$ref"] = "ListLocationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
        },
        operations = {
          methods = {
            get = {
              description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
              flatPath = "v1/apps/{appsId}/operations/{operationsId}",
              httpMethod = "GET",
              id = "appengine.apps.operations.get",
              parameterOrder = {
                "appsId",
                "operationsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. The name of the operation resource.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                operationsId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/operations/{operationsId}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns UNIMPLEMENTED.NOTE: the name binding allows API services to override the binding to use different resource name schemes, such as users/*/operations. To override the binding, API services can add a binding such as \"/v1/{name=users/*}/operations\" to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
              flatPath = "v1/apps/{appsId}/operations",
              httpMethod = "GET",
              id = "appengine.apps.operations.list",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. The name of the operation's parent resource.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                filter = {
                  description = "The standard list filter.",
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
              },
              path = "v1/apps/{appsId}/operations",
              response = {
                ["$ref"] = "ListOperationsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
        },
        services = {
          methods = {
            delete = {
              description = "Deletes the specified service and all enclosed versions.",
              flatPath = "v1/apps/{appsId}/services/{servicesId}",
              httpMethod = "DELETE",
              id = "appengine.apps.services.delete",
              parameterOrder = {
                "appsId",
                "servicesId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource requested. Example: apps/myapp/services/default.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                servicesId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/services/{servicesId}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets the current configuration of the specified service.",
              flatPath = "v1/apps/{appsId}/services/{servicesId}",
              httpMethod = "GET",
              id = "appengine.apps.services.get",
              parameterOrder = {
                "appsId",
                "servicesId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource requested. Example: apps/myapp/services/default.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                servicesId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/services/{servicesId}",
              response = {
                ["$ref"] = "Service",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            list = {
              description = "Lists all the services in the application.",
              flatPath = "v1/apps/{appsId}/services",
              httpMethod = "GET",
              id = "appengine.apps.services.list",
              parameterOrder = {
                "appsId",
              },
              parameters = {
                appsId = {
                  description = "Part of `parent`. Name of the parent Application resource. Example: apps/myapp.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Maximum results to return per page.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Continuation token for fetching the next page of results.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/services",
              response = {
                ["$ref"] = "ListServicesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/appengine.admin",
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
            patch = {
              description = "Updates the configuration of the specified service.",
              flatPath = "v1/apps/{appsId}/services/{servicesId}",
              httpMethod = "PATCH",
              id = "appengine.apps.services.patch",
              parameterOrder = {
                "appsId",
                "servicesId",
              },
              parameters = {
                appsId = {
                  description = "Part of `name`. Name of the resource to update. Example: apps/myapp/services/default.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                migrateTraffic = {
                  description = "Set to true to gradually shift traffic to one or more versions that you specify. By default, traffic is shifted immediately. For gradual traffic migration, the target versions must be located within instances that are configured for both warmup requests (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#InboundServiceType) and automatic scaling (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#AutomaticScaling). You must specify the shardBy (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services#ShardBy) field in the Service resource. Gradual traffic migration is not supported in the App Engine flexible environment. For examples, see Migrating and Splitting Traffic (https://cloud.google.com/appengine/docs/admin-api/migrating-splitting-traffic).",
                  location = "query",
                  type = "boolean",
                },
                servicesId = {
                  description = "Part of `name`. See documentation of `appsId`.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Standard field mask for the set of fields to be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/apps/{appsId}/services/{servicesId}",
              request = {
                ["$ref"] = "Service",
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
            versions = {
              methods = {
                create = {
                  description = "Deploys code and resource files to a new version.",
                  flatPath = "v1/apps/{appsId}/services/{servicesId}/versions",
                  httpMethod = "POST",
                  id = "appengine.apps.services.versions.create",
                  parameterOrder = {
                    "appsId",
                    "servicesId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `parent`. Name of the parent resource to create this version under. Example: apps/myapp/services/default.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    servicesId = {
                      description = "Part of `parent`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/services/{servicesId}/versions",
                  request = {
                    ["$ref"] = "Version",
                  },
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes an existing Version resource.",
                  flatPath = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}",
                  httpMethod = "DELETE",
                  id = "appengine.apps.services.versions.delete",
                  parameterOrder = {
                    "appsId",
                    "servicesId",
                    "versionsId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `name`. Name of the resource requested. Example: apps/myapp/services/default/versions/v1.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    servicesId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    versionsId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.",
                  flatPath = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}",
                  httpMethod = "GET",
                  id = "appengine.apps.services.versions.get",
                  parameterOrder = {
                    "appsId",
                    "servicesId",
                    "versionsId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `name`. Name of the resource requested. Example: apps/myapp/services/default/versions/v1.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    servicesId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    versionsId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "Controls the set of fields returned in the Get response.",
                      enum = {
                        "BASIC",
                        "FULL",
                      },
                      enumDescriptions = {
                        "Basic version information including scaling and inbound services, but not detailed deployment information.",
                        "The information from BASIC, plus detailed information about the deployment. This format is required when creating resources, but is not returned in Get or List by default.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}",
                  response = {
                    ["$ref"] = "Version",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/appengine.admin",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                list = {
                  description = "Lists the versions of a service.",
                  flatPath = "v1/apps/{appsId}/services/{servicesId}/versions",
                  httpMethod = "GET",
                  id = "appengine.apps.services.versions.list",
                  parameterOrder = {
                    "appsId",
                    "servicesId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `parent`. Name of the parent Service resource. Example: apps/myapp/services/default.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    pageSize = {
                      description = "Maximum results to return per page.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Continuation token for fetching the next page of results.",
                      location = "query",
                      type = "string",
                    },
                    servicesId = {
                      description = "Part of `parent`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    view = {
                      description = "Controls the set of fields returned in the List response.",
                      enum = {
                        "BASIC",
                        "FULL",
                      },
                      enumDescriptions = {
                        "Basic version information including scaling and inbound services, but not detailed deployment information.",
                        "The information from BASIC, plus detailed information about the deployment. This format is required when creating resources, but is not returned in Get or List by default.",
                      },
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/services/{servicesId}/versions",
                  response = {
                    ["$ref"] = "ListVersionsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/appengine.admin",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
                patch = {
                  description = "Updates the specified Version resource. You can specify the following fields depending on the App Engine environment and type of scaling that the version resource uses:Standard environment instance_class (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.instance_class)automatic scaling in the standard environment: automatic_scaling.min_idle_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.max_idle_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automaticScaling.standard_scheduler_settings.max_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.min_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.target_cpu_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings) automaticScaling.standard_scheduler_settings.target_throughput_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StandardSchedulerSettings)basic scaling or manual scaling in the standard environment: serving_status (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status) manual_scaling.instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)Flexible environment serving_status (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.serving_status)automatic scaling in the flexible environment: automatic_scaling.min_total_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.max_total_instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.cool_down_period_sec (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling) automatic_scaling.cpu_utilization.target_utilization (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#Version.FIELDS.automatic_scaling)manual scaling in the flexible environment: manual_scaling.instances (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#manualscaling)",
                  flatPath = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}",
                  httpMethod = "PATCH",
                  id = "appengine.apps.services.versions.patch",
                  parameterOrder = {
                    "appsId",
                    "servicesId",
                    "versionsId",
                  },
                  parameters = {
                    appsId = {
                      description = "Part of `name`. Name of the resource to update. Example: apps/myapp/services/default/versions/1.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    servicesId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "Standard field mask for the set of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    versionsId = {
                      description = "Part of `name`. See documentation of `appsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}",
                  request = {
                    ["$ref"] = "Version",
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
                instances = {
                  methods = {
                    debug = {
                      description = "Enables debugging on a VM instance. This allows you to use the SSH command to connect to the virtual machine where the instance lives. While in \"debug mode\", the instance continues to serve live traffic. You should delete the instance when you are done debugging and then allow the system to take over and determine if another instance should be started.Only applicable for instances in App Engine flexible environment.",
                      flatPath = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}:debug",
                      httpMethod = "POST",
                      id = "appengine.apps.services.versions.instances.debug",
                      parameterOrder = {
                        "appsId",
                        "servicesId",
                        "versionsId",
                        "instancesId",
                      },
                      parameters = {
                        appsId = {
                          description = "Part of `name`. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/instance-1.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        instancesId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        servicesId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        versionsId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}:debug",
                      request = {
                        ["$ref"] = "DebugInstanceRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Stops a running instance.The instance might be automatically recreated based on the scaling settings of the version. For more information, see \"How Instances are Managed\" (standard environment (https://cloud.google.com/appengine/docs/standard/python/how-instances-are-managed) | flexible environment (https://cloud.google.com/appengine/docs/flexible/python/how-instances-are-managed)).To ensure that instances are not re-created and avoid getting billed, you can stop all instances within the target version by changing the serving status of the version to STOPPED with the apps.services.versions.patch (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions/patch) method.",
                      flatPath = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}",
                      httpMethod = "DELETE",
                      id = "appengine.apps.services.versions.instances.delete",
                      parameterOrder = {
                        "appsId",
                        "servicesId",
                        "versionsId",
                        "instancesId",
                      },
                      parameters = {
                        appsId = {
                          description = "Part of `name`. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/instance-1.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        instancesId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        servicesId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        versionsId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}",
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets instance information.",
                      flatPath = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}",
                      httpMethod = "GET",
                      id = "appengine.apps.services.versions.instances.get",
                      parameterOrder = {
                        "appsId",
                        "servicesId",
                        "versionsId",
                        "instancesId",
                      },
                      parameters = {
                        appsId = {
                          description = "Part of `name`. Name of the resource requested. Example: apps/myapp/services/default/versions/v1/instances/instance-1.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        instancesId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        servicesId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        versionsId = {
                          description = "Part of `name`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances/{instancesId}",
                      response = {
                        ["$ref"] = "Instance",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/appengine.admin",
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
                      },
                    },
                    list = {
                      description = "Lists the instances of a version.Tip: To aggregate details about instances over time, see the Stackdriver Monitoring API (https://cloud.google.com/monitoring/api/ref_v3/rest/v3/projects.timeSeries/list).",
                      flatPath = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances",
                      httpMethod = "GET",
                      id = "appengine.apps.services.versions.instances.list",
                      parameterOrder = {
                        "appsId",
                        "servicesId",
                        "versionsId",
                      },
                      parameters = {
                        appsId = {
                          description = "Part of `parent`. Name of the parent Version resource. Example: apps/myapp/services/default/versions/v1.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        pageSize = {
                          description = "Maximum results to return per page.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Continuation token for fetching the next page of results.",
                          location = "query",
                          type = "string",
                        },
                        servicesId = {
                          description = "Part of `parent`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        versionsId = {
                          description = "Part of `parent`. See documentation of `appsId`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/apps/{appsId}/services/{servicesId}/versions/{versionsId}/instances",
                      response = {
                        ["$ref"] = "ListInstancesResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/appengine.admin",
                        "https://www.googleapis.com/auth/cloud-platform",
                        "https://www.googleapis.com/auth/cloud-platform.read-only",
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
    projects = {
      resources = {
        locations = {
          resources = {
            applications = {
              methods = {
                get = {
                  description = "Gets information about an application.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}",
                  httpMethod = "GET",
                  id = "appengine.projects.locations.applications.get",
                  parameterOrder = {
                    "projectsId",
                    "locationsId",
                    "applicationsId",
                  },
                  parameters = {
                    applicationsId = {
                      description = "Part of `name`. See documentation of `projectsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    locationsId = {
                      description = "Part of `name`. See documentation of `projectsId`.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    projectsId = {
                      description = "Part of `name`. Name of the Application resource to get. Example: apps/myapp.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/projects/{projectsId}/locations/{locationsId}/applications/{applicationsId}",
                  response = {
                    ["$ref"] = "Application",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/appengine.admin",
                    "https://www.googleapis.com/auth/cloud-platform",
                    "https://www.googleapis.com/auth/cloud-platform.read-only",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230109",
  rootUrl = "https://appengine.googleapis.com/",
  schemas = {
    ApiConfigHandler = {
      description = "Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration for API handlers.",
      id = "ApiConfigHandler",
      properties = {
        authFailAction = {
          description = "Action to take when users access resources that require authentication. Defaults to redirect.",
          enum = {
            "AUTH_FAIL_ACTION_UNSPECIFIED",
            "AUTH_FAIL_ACTION_REDIRECT",
            "AUTH_FAIL_ACTION_UNAUTHORIZED",
          },
          enumDescriptions = {
            "Not specified. AUTH_FAIL_ACTION_REDIRECT is assumed.",
            "Redirects user to \"accounts.google.com\". The user is redirected back to the application URL after signing in or creating an account.",
            "Rejects request with a 401 HTTP status code and an error message.",
          },
          type = "string",
        },
        login = {
          description = "Level of login required to access this resource. Defaults to optional.",
          enum = {
            "LOGIN_UNSPECIFIED",
            "LOGIN_OPTIONAL",
            "LOGIN_ADMIN",
            "LOGIN_REQUIRED",
          },
          enumDescriptions = {
            "Not specified. LOGIN_OPTIONAL is assumed.",
            "Does not require that the user is signed in.",
            "If the user is not signed in, the auth_fail_action is taken. In addition, if the user is not an administrator for the application, they are given an error message regardless of auth_fail_action. If the user is an administrator, the handler proceeds.",
            "If the user has signed in, the handler proceeds normally. Otherwise, the auth_fail_action is taken.",
          },
          type = "string",
        },
        script = {
          description = "Path to the script from the application root directory.",
          type = "string",
        },
        securityLevel = {
          description = "Security (HTTPS) enforcement for this URL.",
          enum = {
            "SECURE_UNSPECIFIED",
            "SECURE_DEFAULT",
            "SECURE_NEVER",
            "SECURE_OPTIONAL",
            "SECURE_ALWAYS",
          },
          enumDescriptions = {
            "Not specified.",
            "Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used, and respond accordingly.",
            "Requests for a URL that match this handler that use HTTPS are automatically redirected to the HTTP equivalent URL.",
            "Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.",
            "Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.",
          },
          type = "string",
        },
        url = {
          description = "URL to serve the endpoint at.",
          type = "string",
        },
      },
      type = "object",
    },
    ApiEndpointHandler = {
      description = "Uses Google Cloud Endpoints to handle requests.",
      id = "ApiEndpointHandler",
      properties = {
        scriptPath = {
          description = "Path to the script from the application root directory.",
          type = "string",
        },
      },
      type = "object",
    },
    Application = {
      description = "An Application resource contains the top-level configuration of an App Engine application.",
      id = "Application",
      properties = {
        authDomain = {
          description = "Google Apps authentication domain that controls which users can access this application.Defaults to open access for any Google Account.",
          type = "string",
        },
        codeBucket = {
          description = "Google Cloud Storage bucket that can be used for storing files associated with this application. This bucket is associated with the application and can be used by the gcloud deployment commands.@OutputOnly",
          type = "string",
        },
        databaseType = {
          description = "The type of the Cloud Firestore or Cloud Datastore database associated with this application.",
          enum = {
            "DATABASE_TYPE_UNSPECIFIED",
            "CLOUD_DATASTORE",
            "CLOUD_FIRESTORE",
            "CLOUD_DATASTORE_COMPATIBILITY",
          },
          enumDescriptions = {
            "Database type is unspecified.",
            "Cloud Datastore",
            "Cloud Firestore Native",
            "Cloud Firestore in Datastore Mode",
          },
          type = "string",
        },
        defaultBucket = {
          description = "Google Cloud Storage bucket that can be used by this application to store content.@OutputOnly",
          type = "string",
        },
        defaultCookieExpiration = {
          description = "Cookie expiration policy for this application.",
          format = "google-duration",
          type = "string",
        },
        defaultHostname = {
          description = "Hostname used to reach this application, as resolved by App Engine.@OutputOnly",
          type = "string",
        },
        dispatchRules = {
          description = "HTTP path dispatch rules for requests to the application that do not explicitly target a service or version. Rules are order-dependent. Up to 20 dispatch rules can be supported.",
          items = {
            ["$ref"] = "UrlDispatchRule",
          },
          type = "array",
        },
        featureSettings = {
          ["$ref"] = "FeatureSettings",
          description = "The feature specific settings to be used in the application.",
        },
        gcrDomain = {
          description = "The Google Container Registry domain used for storing managed build docker images for this application.",
          type = "string",
        },
        iap = {
          ["$ref"] = "IdentityAwareProxy",
        },
        id = {
          description = "Identifier of the Application resource. This identifier is equivalent to the project ID of the Google Cloud Platform project where you want to deploy your application. Example: myapp.",
          type = "string",
        },
        locationId = {
          description = "Location from which this application runs. Application instances run out of the data centers in the specified location, which is also where all of the application's end user content is stored.Defaults to us-central.View the list of supported locations (https://cloud.google.com/appengine/docs/locations).",
          type = "string",
        },
        name = {
          description = "Full path to the Application resource in the API. Example: apps/myapp.@OutputOnly",
          type = "string",
        },
        serviceAccount = {
          description = "The service account associated with the application. This is the app-level default identity. If no identity provided during create version, Admin API will fallback to this one.",
          type = "string",
        },
        servingStatus = {
          description = "Serving status of this application.",
          enum = {
            "UNSPECIFIED",
            "SERVING",
            "USER_DISABLED",
            "SYSTEM_DISABLED",
          },
          enumDescriptions = {
            "Serving status is unspecified.",
            "Application is serving.",
            "Application has been disabled by the user.",
            "Application has been disabled by the system.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AuthorizedCertificate = {
      description = "An SSL certificate that a user has been authorized to administer. A user is authorized to administer any certificate that applies to one of their authorized domains.",
      id = "AuthorizedCertificate",
      properties = {
        certificateRawData = {
          ["$ref"] = "CertificateRawData",
          description = "The SSL certificate serving the AuthorizedCertificate resource. This must be obtained independently from a certificate authority.",
        },
        displayName = {
          description = "The user-specified display name of the certificate. This is not guaranteed to be unique. Example: My Certificate.",
          type = "string",
        },
        domainMappingsCount = {
          description = "Aggregate count of the domain mappings with this certificate mapped. This count includes domain mappings on applications for which the user does not have VIEWER permissions.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.@OutputOnly",
          format = "int32",
          type = "integer",
        },
        domainNames = {
          description = "Topmost applicable domains of this certificate. This certificate applies to these domains and their subdomains. Example: example.com.@OutputOnly",
          items = {
            type = "string",
          },
          type = "array",
        },
        expireTime = {
          description = "The time when this certificate expires. To update the renewal time on this certificate, upload an SSL certificate with a different expiration time using AuthorizedCertificates.UpdateAuthorizedCertificate.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        id = {
          description = "Relative name of the certificate. This is a unique value autogenerated on AuthorizedCertificate resource creation. Example: 12345.@OutputOnly",
          type = "string",
        },
        managedCertificate = {
          ["$ref"] = "ManagedCertificate",
          description = "Only applicable if this certificate is managed by App Engine. Managed certificates are tied to the lifecycle of a DomainMapping and cannot be updated or deleted via the AuthorizedCertificates API. If this certificate is manually administered by the user, this field will be empty.@OutputOnly",
        },
        name = {
          description = "Full path to the AuthorizedCertificate resource in the API. Example: apps/myapp/authorizedCertificates/12345.@OutputOnly",
          type = "string",
        },
        visibleDomainMappings = {
          description = "The full paths to user visible Domain Mapping resources that have this certificate mapped. Example: apps/myapp/domainMappings/example.com.This may not represent the full list of mapped domain mappings if the user does not have VIEWER permissions on all of the applications that have this certificate mapped. See domain_mappings_count for a complete count.Only returned by GET or LIST requests when specifically requested by the view=FULL_CERTIFICATE option.@OutputOnly",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AuthorizedDomain = {
      description = "A domain that a user has been authorized to administer. To authorize use of a domain, verify ownership via Webmaster Central (https://www.google.com/webmasters/verification/home).",
      id = "AuthorizedDomain",
      properties = {
        id = {
          description = "Fully qualified domain name of the domain authorized for use. Example: example.com.",
          type = "string",
        },
        name = {
          description = "Full path to the AuthorizedDomain resource in the API. Example: apps/myapp/authorizedDomains/example.com.@OutputOnly",
          type = "string",
        },
      },
      type = "object",
    },
    AutomaticScaling = {
      description = "Automatic scaling is based on request rate, response latencies, and other application metrics.",
      id = "AutomaticScaling",
      properties = {
        coolDownPeriod = {
          description = "The time period that the Autoscaler (https://cloud.google.com/compute/docs/autoscaler/) should wait before it starts collecting information from a new instance. This prevents the autoscaler from collecting information when the instance is initializing, during which the collected usage would not be reliable. Only applicable in the App Engine flexible environment.",
          format = "google-duration",
          type = "string",
        },
        cpuUtilization = {
          ["$ref"] = "CpuUtilization",
          description = "Target scaling by CPU usage.",
        },
        diskUtilization = {
          ["$ref"] = "DiskUtilization",
          description = "Target scaling by disk usage.",
        },
        maxConcurrentRequests = {
          description = "Number of concurrent requests an automatic scaling instance can accept before the scheduler spawns a new instance.Defaults to a runtime-specific value.",
          format = "int32",
          type = "integer",
        },
        maxIdleInstances = {
          description = "Maximum number of idle instances that should be maintained for this version.",
          format = "int32",
          type = "integer",
        },
        maxPendingLatency = {
          description = "Maximum amount of time that a request should wait in the pending queue before starting a new instance to handle it.",
          format = "google-duration",
          type = "string",
        },
        maxTotalInstances = {
          description = "Maximum number of instances that should be started to handle requests for this version.",
          format = "int32",
          type = "integer",
        },
        minIdleInstances = {
          description = "Minimum number of idle instances that should be maintained for this version. Only applicable for the default version of a service.",
          format = "int32",
          type = "integer",
        },
        minPendingLatency = {
          description = "Minimum amount of time a request should wait in the pending queue before starting a new instance to handle it.",
          format = "google-duration",
          type = "string",
        },
        minTotalInstances = {
          description = "Minimum number of running instances that should be maintained for this version.",
          format = "int32",
          type = "integer",
        },
        networkUtilization = {
          ["$ref"] = "NetworkUtilization",
          description = "Target scaling by network usage.",
        },
        requestUtilization = {
          ["$ref"] = "RequestUtilization",
          description = "Target scaling by request utilization.",
        },
        standardSchedulerSettings = {
          ["$ref"] = "StandardSchedulerSettings",
          description = "Scheduler settings for standard environment.",
        },
      },
      type = "object",
    },
    BasicScaling = {
      description = "A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.",
      id = "BasicScaling",
      properties = {
        idleTimeout = {
          description = "Duration of time after the last request that an instance must wait before the instance is shut down.",
          format = "google-duration",
          type = "string",
        },
        maxInstances = {
          description = "Maximum number of instances to create for this version.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BatchUpdateIngressRulesRequest = {
      description = "Request message for Firewall.BatchUpdateIngressRules.",
      id = "BatchUpdateIngressRulesRequest",
      properties = {
        ingressRules = {
          description = "A list of FirewallRules to replace the existing set.",
          items = {
            ["$ref"] = "FirewallRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchUpdateIngressRulesResponse = {
      description = "Response message for Firewall.UpdateAllIngressRules.",
      id = "BatchUpdateIngressRulesResponse",
      properties = {
        ingressRules = {
          description = "The full list of ingress FirewallRules for this application.",
          items = {
            ["$ref"] = "FirewallRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CertificateRawData = {
      description = "An SSL certificate obtained from a certificate authority.",
      id = "CertificateRawData",
      properties = {
        privateKey = {
          description = "Unencrypted PEM encoded RSA private key. This field is set once on certificate creation and then encrypted. The key size must be 2048 bits or fewer. Must include the header and footer. Example: -----BEGIN RSA PRIVATE KEY----- -----END RSA PRIVATE KEY----- @InputOnly",
          type = "string",
        },
        publicCertificate = {
          description = "PEM encoded x.509 public key certificate. This field is set once on certificate creation. Must include the header and footer. Example: -----BEGIN CERTIFICATE----- -----END CERTIFICATE----- ",
          type = "string",
        },
      },
      type = "object",
    },
    CloudBuildOptions = {
      description = "Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.",
      id = "CloudBuildOptions",
      properties = {
        appYamlPath = {
          description = "Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.",
          type = "string",
        },
        cloudBuildTimeout = {
          description = "The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    ContainerInfo = {
      description = "Docker image that is used to create a container and start a VM instance for the version that you deploy. Only applicable for instances running in the App Engine flexible environment.",
      id = "ContainerInfo",
      properties = {
        image = {
          description = "URI to the hosted container image in Google Container Registry. The URI must be fully qualified and include a tag or digest. Examples: \"gcr.io/my-project/image:tag\" or \"gcr.io/my-project/image@digest\"",
          type = "string",
        },
      },
      type = "object",
    },
    CpuUtilization = {
      description = "Target scaling by CPU usage.",
      id = "CpuUtilization",
      properties = {
        aggregationWindowLength = {
          description = "Period of time over which CPU utilization is calculated.",
          format = "google-duration",
          type = "string",
        },
        targetUtilization = {
          description = "Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    CreateVersionMetadataV1 = {
      description = "Metadata for the given google.longrunning.Operation during a google.appengine.v1.CreateVersionRequest.",
      id = "CreateVersionMetadataV1",
      properties = {
        cloudBuildId = {
          description = "The Cloud Build ID if one was created as part of the version create. @OutputOnly",
          type = "string",
        },
      },
      type = "object",
    },
    CreateVersionMetadataV1Alpha = {
      description = "Metadata for the given google.longrunning.Operation during a google.appengine.v1alpha.CreateVersionRequest.",
      id = "CreateVersionMetadataV1Alpha",
      properties = {
        cloudBuildId = {
          description = "The Cloud Build ID if one was created as part of the version create. @OutputOnly",
          type = "string",
        },
      },
      type = "object",
    },
    CreateVersionMetadataV1Beta = {
      description = "Metadata for the given google.longrunning.Operation during a google.appengine.v1beta.CreateVersionRequest.",
      id = "CreateVersionMetadataV1Beta",
      properties = {
        cloudBuildId = {
          description = "The Cloud Build ID if one was created as part of the version create. @OutputOnly",
          type = "string",
        },
      },
      type = "object",
    },
    DebugInstanceRequest = {
      description = "Request message for Instances.DebugInstance.",
      id = "DebugInstanceRequest",
      properties = {
        sshKey = {
          description = "Public SSH key to add to the instance. Examples: [USERNAME]:ssh-rsa [KEY_VALUE] [USERNAME] [USERNAME]:ssh-rsa [KEY_VALUE] google-ssh {\"userName\":\"[USERNAME]\",\"expireOn\":\"[EXPIRE_TIME]\"}For more information, see Adding and Removing SSH Keys (https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys).",
          type = "string",
        },
      },
      type = "object",
    },
    Deployment = {
      description = "Code and application artifacts used to deploy a version to App Engine.",
      id = "Deployment",
      properties = {
        cloudBuildOptions = {
          ["$ref"] = "CloudBuildOptions",
          description = "Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.",
        },
        container = {
          ["$ref"] = "ContainerInfo",
          description = "The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.",
        },
        files = {
          additionalProperties = {
            ["$ref"] = "FileInfo",
          },
          description = "Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.",
          type = "object",
        },
        zip = {
          ["$ref"] = "ZipInfo",
          description = "The zip file for this deployment, if this is a zip deployment.",
        },
      },
      type = "object",
    },
    DiskUtilization = {
      description = "Target scaling by disk usage. Only applicable in the App Engine flexible environment.",
      id = "DiskUtilization",
      properties = {
        targetReadBytesPerSecond = {
          description = "Target bytes read per second.",
          format = "int32",
          type = "integer",
        },
        targetReadOpsPerSecond = {
          description = "Target ops read per seconds.",
          format = "int32",
          type = "integer",
        },
        targetWriteBytesPerSecond = {
          description = "Target bytes written per second.",
          format = "int32",
          type = "integer",
        },
        targetWriteOpsPerSecond = {
          description = "Target ops written per second.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DomainMapping = {
      description = "A domain serving an App Engine application.",
      id = "DomainMapping",
      properties = {
        id = {
          description = "Relative name of the domain serving the application. Example: example.com.",
          type = "string",
        },
        name = {
          description = "Full path to the DomainMapping resource in the API. Example: apps/myapp/domainMapping/example.com.@OutputOnly",
          type = "string",
        },
        resourceRecords = {
          description = "The resource records required to configure this domain mapping. These records must be added to the domain's DNS configuration in order to serve the application via this domain mapping.@OutputOnly",
          items = {
            ["$ref"] = "ResourceRecord",
          },
          type = "array",
        },
        sslSettings = {
          ["$ref"] = "SslSettings",
          description = "SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.",
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
    EndpointsApiService = {
      description = "Google Cloud Endpoints (https://cloud.google.com/endpoints) configuration. The Endpoints API Service provides tooling for serving Open API and gRPC endpoints via an NGINX proxy. Only valid for App Engine Flexible environment deployments.The fields here refer to the name and configuration ID of a \"service\" resource in the Service Management API (https://cloud.google.com/service-management/overview).",
      id = "EndpointsApiService",
      properties = {
        configId = {
          description = "Endpoints service configuration ID as specified by the Service Management API. For example \"2016-09-19r1\".By default, the rollout strategy for Endpoints is RolloutStrategy.FIXED. This means that Endpoints starts up with a particular configuration ID. When a new configuration is rolled out, Endpoints must be given the new configuration ID. The config_id field is used to give the configuration ID and is required in this case.Endpoints also has a rollout strategy called RolloutStrategy.MANAGED. When using this, Endpoints fetches the latest configuration and does not need the configuration ID. In this case, config_id must be omitted.",
          type = "string",
        },
        disableTraceSampling = {
          description = "Enable or disable trace sampling. By default, this is set to false for enabled.",
          type = "boolean",
        },
        name = {
          description = "Endpoints service name which is the name of the \"service\" resource in the Service Management API. For example \"myapi.endpoints.myproject.cloud.goog\"",
          type = "string",
        },
        rolloutStrategy = {
          description = "Endpoints rollout strategy. If FIXED, config_id must be specified. If MANAGED, config_id must be omitted.",
          enum = {
            "UNSPECIFIED_ROLLOUT_STRATEGY",
            "FIXED",
            "MANAGED",
          },
          enumDescriptions = {
            "Not specified. Defaults to FIXED.",
            "Endpoints service configuration ID will be fixed to the configuration ID specified by config_id.",
            "Endpoints service configuration ID will be updated with each rollout.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Entrypoint = {
      description = "The entrypoint for the application.",
      id = "Entrypoint",
      properties = {
        shell = {
          description = "The format should be a shell command that can be fed to bash -c.",
          type = "string",
        },
      },
      type = "object",
    },
    ErrorHandler = {
      description = "Custom static error page to be served when an error occurs.",
      id = "ErrorHandler",
      properties = {
        errorCode = {
          description = "Error condition this handler applies to.",
          enum = {
            "ERROR_CODE_UNSPECIFIED",
            "ERROR_CODE_DEFAULT",
            "ERROR_CODE_OVER_QUOTA",
            "ERROR_CODE_DOS_API_DENIAL",
            "ERROR_CODE_TIMEOUT",
          },
          enumDescriptions = {
            "Not specified. ERROR_CODE_DEFAULT is assumed.",
            "All other error types.",
            "Application has exceeded a resource quota.",
            "Client blocked by the application's Denial of Service protection configuration.",
            "Deadline reached before the application responds.",
          },
          type = "string",
        },
        mimeType = {
          description = "MIME type of file. Defaults to text/html.",
          type = "string",
        },
        staticFile = {
          description = "Static file content to be served for this error.",
          type = "string",
        },
      },
      type = "object",
    },
    FeatureSettings = {
      description = "The feature specific settings to be used in the application. These define behaviors that are user configurable.",
      id = "FeatureSettings",
      properties = {
        splitHealthChecks = {
          description = "Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.",
          type = "boolean",
        },
        useContainerOptimizedOs = {
          description = "If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.",
          type = "boolean",
        },
      },
      type = "object",
    },
    FileInfo = {
      description = "Single source file that is part of the version to be deployed. Each source file that is deployed must be specified separately.",
      id = "FileInfo",
      properties = {
        mimeType = {
          description = "The MIME type of the file.Defaults to the value from Google Cloud Storage.",
          type = "string",
        },
        sha1Sum = {
          description = "The SHA1 hash of the file, in hex.",
          type = "string",
        },
        sourceUrl = {
          description = "URL source to use to fetch this file. Must be a URL to a resource in Google Cloud Storage in the form 'http(s)://storage.googleapis.com//'.",
          type = "string",
        },
      },
      type = "object",
    },
    FirewallRule = {
      description = "A single firewall rule that is evaluated against incoming traffic and provides an action to take on matched requests.",
      id = "FirewallRule",
      properties = {
        action = {
          description = "The action to take on matched requests.",
          enum = {
            "UNSPECIFIED_ACTION",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "",
            "Matching requests are allowed.",
            "Matching requests are denied.",
          },
          type = "string",
        },
        description = {
          description = "An optional string description of this rule. This field has a maximum length of 400 characters.",
          type = "string",
        },
        priority = {
          description = "A positive integer between 1, Int32.MaxValue-1 that defines the order of rule evaluation. Rules with the lowest priority are evaluated first.A default rule at priority Int32.MaxValue matches all IPv4 and IPv6 traffic when no previous rule matches. Only the action of this rule can be modified by the user.",
          format = "int32",
          type = "integer",
        },
        sourceRange = {
          description = "IP address or range, defined using CIDR notation, of requests that this rule applies to. You can use the wildcard character \"*\" to match all IPs equivalent to \"0/0\" and \"::/0\" together. Examples: 192.168.1.1 or 192.168.0.0/16 or 2001:db8::/32 or 2001:0db8:0000:0042:0000:8a2e:0370:7334. Truncation will be silently performed on addresses which are not properly truncated. For example, 1.2.3.4/24 is accepted as the same address as 1.2.3.0/24. Similarly, for IPv6, 2001:db8::1/32 is accepted as the same address as 2001:db8::/32.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleAppengineV1betaLocationMetadata = {
      description = "Metadata for the given google.cloud.location.Location.",
      id = "GoogleAppengineV1betaLocationMetadata",
      properties = {
        flexibleEnvironmentAvailable = {
          description = "App Engine flexible environment is available in the given location.@OutputOnly",
          type = "boolean",
        },
        searchApiAvailable = {
          description = "Output only. Search API (https://cloud.google.com/appengine/docs/standard/python/search) is available in the given location.",
          readOnly = true,
          type = "boolean",
        },
        standardEnvironmentAvailable = {
          description = "App Engine standard environment is available in the given location.@OutputOnly",
          type = "boolean",
        },
      },
      type = "object",
    },
    HealthCheck = {
      description = "Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances. Only applicable for instances in App Engine flexible environment.",
      id = "HealthCheck",
      properties = {
        checkInterval = {
          description = "Interval between health checks.",
          format = "google-duration",
          type = "string",
        },
        disableHealthCheck = {
          description = "Whether to explicitly disable health checks for this instance.",
          type = "boolean",
        },
        healthyThreshold = {
          description = "Number of consecutive successful health checks required before receiving traffic.",
          format = "uint32",
          type = "integer",
        },
        host = {
          description = "Host header to send when performing an HTTP health check. Example: \"myapp.appspot.com\"",
          type = "string",
        },
        restartThreshold = {
          description = "Number of consecutive failed health checks required before an instance is restarted.",
          format = "uint32",
          type = "integer",
        },
        timeout = {
          description = "Time before the health check is considered failed.",
          format = "google-duration",
          type = "string",
        },
        unhealthyThreshold = {
          description = "Number of consecutive failed health checks required before removing traffic.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    IdentityAwareProxy = {
      description = "Identity-Aware Proxy",
      id = "IdentityAwareProxy",
      properties = {
        enabled = {
          description = "Whether the serving infrastructure will authenticate and authorize all incoming requests.If true, the oauth2_client_id and oauth2_client_secret fields must be non-empty.",
          type = "boolean",
        },
        oauth2ClientId = {
          description = "OAuth2 client ID to use for the authentication flow.",
          type = "string",
        },
        oauth2ClientSecret = {
          description = "OAuth2 client secret to use for the authentication flow.For security reasons, this value cannot be retrieved via the API. Instead, the SHA-256 hash of the value is returned in the oauth2_client_secret_sha256 field.@InputOnly",
          type = "string",
        },
        oauth2ClientSecretSha256 = {
          description = "Hex-encoded SHA-256 hash of the client secret.@OutputOnly",
          type = "string",
        },
      },
      type = "object",
    },
    Instance = {
      description = "An Instance resource is the computing unit that App Engine uses to automatically scale an application.",
      id = "Instance",
      properties = {
        appEngineRelease = {
          description = "Output only. App Engine release this instance is running on.",
          readOnly = true,
          type = "string",
        },
        availability = {
          description = "Output only. Availability of the instance.",
          enum = {
            "UNSPECIFIED",
            "RESIDENT",
            "DYNAMIC",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          readOnly = true,
          type = "string",
        },
        averageLatency = {
          description = "Output only. Average latency (ms) over the last minute.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        errors = {
          description = "Output only. Number of errors since this instance was started.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        id = {
          description = "Output only. Relative name of the instance within the version. Example: instance-1.",
          readOnly = true,
          type = "string",
        },
        memoryUsage = {
          description = "Output only. Total memory in use (bytes).",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. Full path to the Instance resource in the API. Example: apps/myapp/services/default/versions/v1/instances/instance-1.",
          readOnly = true,
          type = "string",
        },
        qps = {
          description = "Output only. Average queries per second (QPS) over the last minute.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        requests = {
          description = "Output only. Number of requests since this instance was started.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        startTime = {
          description = "Output only. Time that this instance was started.@OutputOnly",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        vmDebugEnabled = {
          description = "Output only. Whether this instance is in debug mode. Only applicable for instances in App Engine flexible environment.",
          readOnly = true,
          type = "boolean",
        },
        vmId = {
          description = "Output only. Virtual machine ID of this instance. Only applicable for instances in App Engine flexible environment.",
          readOnly = true,
          type = "string",
        },
        vmIp = {
          description = "Output only. The IP address of this instance. Only applicable for instances in App Engine flexible environment.",
          readOnly = true,
          type = "string",
        },
        vmLiveness = {
          description = "Output only. The liveness health check of this instance. Only applicable for instances in App Engine flexible environment.",
          enum = {
            "LIVENESS_STATE_UNSPECIFIED",
            "UNKNOWN",
            "HEALTHY",
            "UNHEALTHY",
            "DRAINING",
            "TIMEOUT",
          },
          enumDescriptions = {
            "There is no liveness health check for the instance. Only applicable for instances in App Engine standard environment.",
            "The health checking system is aware of the instance but its health is not known at the moment.",
            "The instance is reachable i.e. a connection to the application health checking endpoint can be established, and conforms to the requirements defined by the health check.",
            "The instance is reachable, but does not conform to the requirements defined by the health check.",
            "The instance is being drained. The existing connections to the instance have time to complete, but the new ones are being refused.",
            "The instance is unreachable i.e. a connection to the application health checking endpoint cannot be established, or the server does not respond within the specified timeout.",
          },
          readOnly = true,
          type = "string",
        },
        vmName = {
          description = "Output only. Name of the virtual machine where this instance lives. Only applicable for instances in App Engine flexible environment.",
          readOnly = true,
          type = "string",
        },
        vmStatus = {
          description = "Output only. Status of the virtual machine where this instance lives. Only applicable for instances in App Engine flexible environment.",
          readOnly = true,
          type = "string",
        },
        vmZoneName = {
          description = "Output only. Zone where the virtual machine is located. Only applicable for instances in App Engine flexible environment.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Library = {
      description = "Third-party Python runtime library that is required by the application.",
      id = "Library",
      properties = {
        name = {
          description = "Name of the library. Example: \"django\".",
          type = "string",
        },
        version = {
          description = "Version of the library to select, or \"latest\".",
          type = "string",
        },
      },
      type = "object",
    },
    ListAuthorizedCertificatesResponse = {
      description = "Response message for AuthorizedCertificates.ListAuthorizedCertificates.",
      id = "ListAuthorizedCertificatesResponse",
      properties = {
        certificates = {
          description = "The SSL certificates the user is authorized to administer.",
          items = {
            ["$ref"] = "AuthorizedCertificate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAuthorizedDomainsResponse = {
      description = "Response message for AuthorizedDomains.ListAuthorizedDomains.",
      id = "ListAuthorizedDomainsResponse",
      properties = {
        domains = {
          description = "The authorized domains belonging to the user.",
          items = {
            ["$ref"] = "AuthorizedDomain",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDomainMappingsResponse = {
      description = "Response message for DomainMappings.ListDomainMappings.",
      id = "ListDomainMappingsResponse",
      properties = {
        domainMappings = {
          description = "The domain mappings for the application.",
          items = {
            ["$ref"] = "DomainMapping",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListIngressRulesResponse = {
      description = "Response message for Firewall.ListIngressRules.",
      id = "ListIngressRulesResponse",
      properties = {
        ingressRules = {
          description = "The ingress FirewallRules for this application.",
          items = {
            ["$ref"] = "FirewallRule",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInstancesResponse = {
      description = "Response message for Instances.ListInstances.",
      id = "ListInstancesResponse",
      properties = {
        instances = {
          description = "The instances belonging to the requested version.",
          items = {
            ["$ref"] = "Instance",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
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
    ListServicesResponse = {
      description = "Response message for Services.ListServices.",
      id = "ListServicesResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        services = {
          description = "The services belonging to the requested application.",
          items = {
            ["$ref"] = "Service",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListVersionsResponse = {
      description = "Response message for Versions.ListVersions.",
      id = "ListVersionsResponse",
      properties = {
        nextPageToken = {
          description = "Continuation token for fetching the next page of results.",
          type = "string",
        },
        versions = {
          description = "The versions belonging to the requested service.",
          items = {
            ["$ref"] = "Version",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LivenessCheck = {
      description = "Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.",
      id = "LivenessCheck",
      properties = {
        checkInterval = {
          description = "Interval between health checks.",
          format = "google-duration",
          type = "string",
        },
        failureThreshold = {
          description = "Number of consecutive failed checks required before considering the VM unhealthy.",
          format = "uint32",
          type = "integer",
        },
        host = {
          description = "Host header to send when performing a HTTP Liveness check. Example: \"myapp.appspot.com\"",
          type = "string",
        },
        initialDelay = {
          description = "The initial delay before starting to execute the checks.",
          format = "google-duration",
          type = "string",
        },
        path = {
          description = "The request path.",
          type = "string",
        },
        successThreshold = {
          description = "Number of consecutive successful checks required before considering the VM healthy.",
          format = "uint32",
          type = "integer",
        },
        timeout = {
          description = "Time before the check is considered failed.",
          format = "google-duration",
          type = "string",
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
          description = "Cross-service attributes for the location. For example {\"cloud.googleapis.com/region\": \"us-east1\"} ",
          type = "object",
        },
        locationId = {
          description = "The canonical id for this location. For example: \"us-east1\".",
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
          description = "Resource name for the location, which may vary between implementations. For example: \"projects/example-project/locations/us-east1\"",
          type = "string",
        },
      },
      type = "object",
    },
    LocationMetadata = {
      description = "Metadata for the given google.cloud.location.Location.",
      id = "LocationMetadata",
      properties = {
        flexibleEnvironmentAvailable = {
          description = "App Engine flexible environment is available in the given location.@OutputOnly",
          type = "boolean",
        },
        searchApiAvailable = {
          description = "Output only. Search API (https://cloud.google.com/appengine/docs/standard/python/search) is available in the given location.",
          readOnly = true,
          type = "boolean",
        },
        standardEnvironmentAvailable = {
          description = "App Engine standard environment is available in the given location.@OutputOnly",
          type = "boolean",
        },
      },
      type = "object",
    },
    ManagedCertificate = {
      description = "A certificate managed by App Engine.",
      id = "ManagedCertificate",
      properties = {
        lastRenewalTime = {
          description = "Time at which the certificate was last renewed. The renewal process is fully managed. Certificate renewal will automatically occur before the certificate expires. Renewal errors can be tracked via ManagementStatus.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        status = {
          description = "Status of certificate management. Refers to the most recent certificate acquisition or renewal attempt.@OutputOnly",
          enum = {
            "MANAGEMENT_STATUS_UNSPECIFIED",
            "OK",
            "PENDING",
            "FAILED_RETRYING_NOT_VISIBLE",
            "FAILED_PERMANENT",
            "FAILED_RETRYING_CAA_FORBIDDEN",
            "FAILED_RETRYING_CAA_CHECKING",
          },
          enumDescriptions = {
            "",
            "Certificate was successfully obtained and inserted into the serving system.",
            "Certificate is under active attempts to acquire or renew.",
            "Most recent renewal failed due to an invalid DNS setup and will be retried. Renewal attempts will continue to fail until the certificate domain's DNS configuration is fixed. The last successfully provisioned certificate may still be serving.",
            "All renewal attempts have been exhausted, likely due to an invalid DNS setup.",
            "Most recent renewal failed due to an explicit CAA record that does not include one of the in-use CAs (Google CA and Let's Encrypt). Renewals will continue to fail until the CAA is reconfigured. The last successfully provisioned certificate may still be serving.",
            "Most recent renewal failed due to a CAA retrieval failure. This means that the domain's DNS provider does not properly handle CAA records, failing requests for CAA records when no CAA records are defined. Renewals will continue to fail until the DNS provider is changed or a CAA record is added for the given domain. The last successfully provisioned certificate may still be serving.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ManualScaling = {
      description = "A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.",
      id = "ManualScaling",
      properties = {
        instances = {
          description = "Number of instances to assign to the service at the start. This number can later be altered by using the Modules API (https://cloud.google.com/appengine/docs/python/modules/functions) set_num_instances() function.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Network = {
      description = "Extra network settings. Only applicable in the App Engine flexible environment.",
      id = "Network",
      properties = {
        forwardedPorts = {
          description = "List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.",
          items = {
            type = "string",
          },
          type = "array",
        },
        instanceIpMode = {
          description = "The IP mode for instances. Only applicable in the App Engine flexible environment.",
          enum = {
            "INSTANCE_IP_MODE_UNSPECIFIED",
            "EXTERNAL",
            "INTERNAL",
          },
          enumDescriptions = {
            "Unspecified is treated as EXTERNAL.",
            "Instances are created with both internal and external IP addresses.",
            "Instances are created with internal IP addresses only.",
          },
          type = "string",
        },
        instanceTag = {
          description = "Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.",
          type = "string",
        },
        name = {
          description = "Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.",
          type = "string",
        },
        sessionAffinity = {
          description = "Enable session affinity. Only applicable in the App Engine flexible environment.",
          type = "boolean",
        },
        subnetworkName = {
          description = "Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkSettings = {
      description = "A NetworkSettings resource is a container for ingress settings for a version or service.",
      id = "NetworkSettings",
      properties = {
        ingressTrafficAllowed = {
          description = "The ingress settings for version or service.",
          enum = {
            "INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED",
            "INGRESS_TRAFFIC_ALLOWED_ALL",
            "INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY",
            "INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB",
          },
          enumDescriptions = {
            "Unspecified",
            "Allow HTTP traffic from public and private sources.",
            "Allow HTTP traffic from only private VPC sources.",
            "Allow HTTP traffic from private VPC sources and through load balancers.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    NetworkUtilization = {
      description = "Target scaling by network usage. Only applicable in the App Engine flexible environment.",
      id = "NetworkUtilization",
      properties = {
        targetReceivedBytesPerSecond = {
          description = "Target bytes received per second.",
          format = "int32",
          type = "integer",
        },
        targetReceivedPacketsPerSecond = {
          description = "Target packets received per second.",
          format = "int32",
          type = "integer",
        },
        targetSentBytesPerSecond = {
          description = "Target bytes sent per second.",
          format = "int32",
          type = "integer",
        },
        targetSentPacketsPerSecond = {
          description = "Target packets sent per second.",
          format = "int32",
          type = "integer",
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
    OperationMetadataV1 = {
      description = "Metadata for the given google.longrunning.Operation.",
      id = "OperationMetadataV1",
      properties = {
        createVersionMetadata = {
          ["$ref"] = "CreateVersionMetadataV1",
        },
        endTime = {
          description = "Time that this operation completed.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        ephemeralMessage = {
          description = "Ephemeral message that may change every time the operation is polled. @OutputOnly",
          type = "string",
        },
        insertTime = {
          description = "Time that this operation was created.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        method = {
          description = "API method that initiated this operation. Example: google.appengine.v1.Versions.CreateVersion.@OutputOnly",
          type = "string",
        },
        target = {
          description = "Name of the resource that this operation is acting on. Example: apps/myapp/services/default.@OutputOnly",
          type = "string",
        },
        user = {
          description = "User who requested this operation.@OutputOnly",
          type = "string",
        },
        warning = {
          description = "Durable messages that persist on every operation poll. @OutputOnly",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OperationMetadataV1Alpha = {
      description = "Metadata for the given google.longrunning.Operation.",
      id = "OperationMetadataV1Alpha",
      properties = {
        createVersionMetadata = {
          ["$ref"] = "CreateVersionMetadataV1Alpha",
        },
        endTime = {
          description = "Time that this operation completed.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        ephemeralMessage = {
          description = "Ephemeral message that may change every time the operation is polled. @OutputOnly",
          type = "string",
        },
        insertTime = {
          description = "Time that this operation was created.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        method = {
          description = "API method that initiated this operation. Example: google.appengine.v1alpha.Versions.CreateVersion.@OutputOnly",
          type = "string",
        },
        target = {
          description = "Name of the resource that this operation is acting on. Example: apps/myapp/services/default.@OutputOnly",
          type = "string",
        },
        user = {
          description = "User who requested this operation.@OutputOnly",
          type = "string",
        },
        warning = {
          description = "Durable messages that persist on every operation poll. @OutputOnly",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OperationMetadataV1Beta = {
      description = "Metadata for the given google.longrunning.Operation.",
      id = "OperationMetadataV1Beta",
      properties = {
        createVersionMetadata = {
          ["$ref"] = "CreateVersionMetadataV1Beta",
        },
        endTime = {
          description = "Time that this operation completed.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        ephemeralMessage = {
          description = "Ephemeral message that may change every time the operation is polled. @OutputOnly",
          type = "string",
        },
        insertTime = {
          description = "Time that this operation was created.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        method = {
          description = "API method that initiated this operation. Example: google.appengine.v1beta.Versions.CreateVersion.@OutputOnly",
          type = "string",
        },
        target = {
          description = "Name of the resource that this operation is acting on. Example: apps/myapp/services/default.@OutputOnly",
          type = "string",
        },
        user = {
          description = "User who requested this operation.@OutputOnly",
          type = "string",
        },
        warning = {
          description = "Durable messages that persist on every operation poll. @OutputOnly",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProjectEvent = {
      description = "The request sent to CLHs during project events.",
      id = "ProjectEvent",
      properties = {
        eventId = {
          description = "The unique ID for this project event. CLHs can use this value to dedup repeated calls. required",
          type = "string",
        },
        phase = {
          enum = {
            "UNKNOWN",
            "BEFORE_RESOURCE_HANDLING",
            "AFTER_RESOURCE_HANDLING",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        projectMetadata = {
          ["$ref"] = "ProjectsMetadata",
          description = "The projects metadata for this project. required",
        },
        state = {
          ["$ref"] = "ProjectState",
          description = "The state of the project that led to this event.",
        },
      },
      type = "object",
    },
    ProjectState = {
      description = "ProjectState contains the externally-visible project state that is used to communicate the state and reasoning for that state to the CLH. This data is not persisted by CCFE, but is instead derived from CCFE's internal representation of the project state.",
      id = "ProjectState",
      properties = {
        currentReasons = {
          ["$ref"] = "Reasons",
        },
        previousReasons = {
          ["$ref"] = "Reasons",
          description = "The previous and current reasons for a project state will be sent for a project event. CLHs that need to know the signal that caused the project event to trigger (edges) as opposed to just knowing the state can act upon differences in the previous and current reasons.Reasons will be provided for every system: service management, data governance, abuse, and billing.If this is a CCFE-triggered event used for reconciliation then the current reasons will be set to their *_CONTROL_PLANE_SYNC state. The previous reasons will contain the last known set of non-unknown non-control_plane_sync reasons for the state.Reasons fields are deprecated. New tenants should only use the state field. If you must know the reason(s) behind a specific state, please consult with CCFE team first (cloud-ccfe-discuss@google.com).",
        },
        state = {
          description = "The current state of the project. This state is the culmination of all of the opinions from external systems that CCFE knows about of the project.",
          enum = {
            "UNKNOWN_STATE",
            "ON",
            "OFF",
            "DELETED",
          },
          enumDescriptions = {
            "A project should never be in an unknown state. Receipt of a project with this state is an error.",
            "CCFE considers the project to be serving or transitioning into serving.",
            "CCFE considers the project to be in an OFF state. This could occur due to various factors. The state could be triggered by Google-internal audits (ex. abuse suspension, billing closed) or cleanups trigged by compliance systems (ex. data governance hide). User-initiated events such as service management deactivation trigger a project to an OFF state.CLHs might choose to do nothing in this case or to turn off costly resources. CLHs need to consider the customer experience if an ON/OFF/ON sequence of state transitions occurs vs. the cost of deleting resources, keeping metadata about resources, or even keeping resources live for a period of time.CCFE will not send any new customer requests to the CLH when the project is in an OFF state. However, CCFE will allow all previous customer requests relayed to CLH to complete.",
            "This state indicates that the project has been (or is being) completely removed. This is often due to a data governance purge request and therefore resources should be deleted when this state is reached.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ProjectsMetadata = {
      description = "ProjectsMetadata is the metadata CCFE stores about the all the relevant projects (tenant, consumer, producer).",
      id = "ProjectsMetadata",
      properties = {
        consumerProjectId = {
          description = "The consumer project id.",
          type = "string",
        },
        consumerProjectNumber = {
          description = "The consumer project number.",
          format = "int64",
          type = "string",
        },
        consumerProjectState = {
          description = "The CCFE state of the consumer project. It is the same state that is communicated to the CLH during project events. Notice that this field is not set in the DB, it is only set in this proto when communicated to CLH in the side channel.",
          enum = {
            "UNKNOWN_STATE",
            "ON",
            "OFF",
            "DELETED",
          },
          enumDescriptions = {
            "A project should never be in an unknown state. Receipt of a project with this state is an error.",
            "CCFE considers the project to be serving or transitioning into serving.",
            "CCFE considers the project to be in an OFF state. This could occur due to various factors. The state could be triggered by Google-internal audits (ex. abuse suspension, billing closed) or cleanups trigged by compliance systems (ex. data governance hide). User-initiated events such as service management deactivation trigger a project to an OFF state.CLHs might choose to do nothing in this case or to turn off costly resources. CLHs need to consider the customer experience if an ON/OFF/ON sequence of state transitions occurs vs. the cost of deleting resources, keeping metadata about resources, or even keeping resources live for a period of time.CCFE will not send any new customer requests to the CLH when the project is in an OFF state. However, CCFE will allow all previous customer requests relayed to CLH to complete.",
            "This state indicates that the project has been (or is being) completely removed. This is often due to a data governance purge request and therefore resources should be deleted when this state is reached.",
          },
          type = "string",
        },
        p4ServiceAccount = {
          description = "The service account authorized to operate on the consumer project. Note: CCFE only propagates P4SA with default tag to CLH.",
          type = "string",
        },
        producerProjectId = {
          description = "The producer project id.",
          type = "string",
        },
        producerProjectNumber = {
          description = "The producer project number.",
          format = "int64",
          type = "string",
        },
        tenantProjectId = {
          description = "The tenant project id.",
          type = "string",
        },
        tenantProjectNumber = {
          description = "The tenant project number.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ReadinessCheck = {
      description = "Readiness checking configuration for VM instances. Unhealthy instances are removed from traffic rotation.",
      id = "ReadinessCheck",
      properties = {
        appStartTimeout = {
          description = "A maximum time limit on application initialization, measured from moment the application successfully replies to a healthcheck until it is ready to serve traffic.",
          format = "google-duration",
          type = "string",
        },
        checkInterval = {
          description = "Interval between health checks.",
          format = "google-duration",
          type = "string",
        },
        failureThreshold = {
          description = "Number of consecutive failed checks required before removing traffic.",
          format = "uint32",
          type = "integer",
        },
        host = {
          description = "Host header to send when performing a HTTP Readiness check. Example: \"myapp.appspot.com\"",
          type = "string",
        },
        path = {
          description = "The request path.",
          type = "string",
        },
        successThreshold = {
          description = "Number of consecutive successful checks required before receiving traffic.",
          format = "uint32",
          type = "integer",
        },
        timeout = {
          description = "Time before the check is considered failed.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Reasons = {
      description = "Projects transition between and within states based on reasons sent from various systems. CCFE will provide the CLH with reasons for the current state per system.The current systems that CCFE supports are: Service Management (Inception) Data Governance (Wipeout) Abuse (Ares) Billing (Internal Cloud Billing API)",
      id = "Reasons",
      properties = {
        abuse = {
          enum = {
            "ABUSE_UNKNOWN_REASON",
            "ABUSE_CONTROL_PLANE_SYNC",
            "SUSPEND",
            "REINSTATE",
          },
          enumDescriptions = {
            "An unknown reason indicates that the abuse system has not sent a signal for this project.",
            "Due to various reasons CCFE might proactively restate a project state to a CLH to ensure that the CLH and CCFE are both aware of the project state. This reason can be tied to any of the states.",
            "If a project is deemed abusive we receive a suspend signal. Suspend is a reason to put the project into an INTERNAL_OFF state.",
            "Projects that were once considered abusive can later be deemed non-abusive. When this happens we must reinstate the project. Reinstate is a reason to put the project into an ON state.",
          },
          type = "string",
        },
        billing = {
          enum = {
            "BILLING_UNKNOWN_REASON",
            "BILLING_CONTROL_PLANE_SYNC",
            "PROBATION",
            "CLOSE",
            "OPEN",
          },
          enumDescriptions = {
            "An unknown reason indicates that the billing system has not sent a signal for this project.",
            "Due to various reasons CCFE might proactively restate a project state to a CLH to ensure that the CLH and CCFE are both aware of the project state. This reason can be tied to any of the states.",
            "Minor infractions cause a probation signal to be sent. Probation is a reason to put the project into a ON state even though it is a negative signal. CCFE will block mutations for this project while it is on billing probation, but the CLH is expected to serve non-mutation requests.",
            "When a billing account is closed, it is a stronger signal about non-payment. Close is a reason to put the project into an INTERNAL_OFF state.",
            "Consumers can re-open billing accounts and update accounts to pull them out of probation. When this happens, we get a signal that the account is open. Open is a reason to put the project into an ON state.",
          },
          type = "string",
        },
        dataGovernance = {
          enum = {
            "DATA_GOVERNANCE_UNKNOWN_REASON",
            "DATA_GOVERNANCE_CONTROL_PLANE_SYNC",
            "HIDE",
            "UNHIDE",
            "PURGE",
          },
          enumDescriptions = {
            "An unknown reason indicates that data governance has not sent a signal for this project.",
            "Due to various reasons CCFE might proactively restate a project state to a CLH to ensure that the CLH and CCFE are both aware of the project state. This reason can be tied to any of the states.",
            "When a project is deleted we retain some data for a period of time to allow the consumer to change their mind. Data governance sends a signal to hide the data when this occurs. Hide is a reason to put the project in an INTERNAL_OFF state.",
            "The decision to un-delete a project can be made. When this happens data governance tells us to unhide any hidden data. Unhide is a reason to put the project in an ON state.",
            "After a period of time data must be completely removed from our systems. When data governance sends a purge signal we need to remove data. Purge is a reason to put the project in a DELETED state. Purge is the only event that triggers a delete mutation. All other events have update semantics.",
          },
          type = "string",
        },
        serviceManagement = {
          enum = {
            "SERVICE_MANAGEMENT_UNKNOWN_REASON",
            "SERVICE_MANAGEMENT_CONTROL_PLANE_SYNC",
            "ACTIVATION",
            "PREPARE_DEACTIVATION",
            "ABORT_DEACTIVATION",
            "COMMIT_DEACTIVATION",
          },
          enumDescriptions = {
            "An unknown reason indicates that we have not received a signal from service management about this project. Since projects are created by request of service management, this reason should never be set.",
            "Due to various reasons CCFE might proactively restate a project state to a CLH to ensure that the CLH and CCFE are both aware of the project state. This reason can be tied to any of the states.",
            "When a customer activates an API CCFE notifies the CLH and sets the project to the ON state.",
            "When a customer deactivates and API service management starts a two-step process to perform the deactivation. The first step is to prepare. Prepare is a reason to put the project in a EXTERNAL_OFF state.",
            "If the deactivation is cancelled, service managed needs to abort the deactivation. Abort is a reason to put the project in an ON state.",
            "If the deactivation is followed through with, service management needs to finish deactivation. Commit is a reason to put the project in a DELETED state.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RepairApplicationRequest = {
      description = "Request message for 'Applications.RepairApplication'.",
      id = "RepairApplicationRequest",
      properties = {},
      type = "object",
    },
    RequestUtilization = {
      description = "Target scaling by request utilization. Only applicable in the App Engine flexible environment.",
      id = "RequestUtilization",
      properties = {
        targetConcurrentRequests = {
          description = "Target number of concurrent requests.",
          format = "int32",
          type = "integer",
        },
        targetRequestCountPerSecond = {
          description = "Target requests per second.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ResourceRecord = {
      description = "A DNS resource record.",
      id = "ResourceRecord",
      properties = {
        name = {
          description = "Relative name of the object affected by this record. Only applicable for CNAME records. Example: 'www'.",
          type = "string",
        },
        rrdata = {
          description = "Data for this record. Values vary by record type, as defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1).",
          type = "string",
        },
        type = {
          description = "Resource record type. Example: AAAA.",
          enum = {
            "RECORD_TYPE_UNSPECIFIED",
            "A",
            "AAAA",
            "CNAME",
          },
          enumDescriptions = {
            "An unknown resource record.",
            "An A resource record. Data is an IPv4 address.",
            "An AAAA resource record. Data is an IPv6 address.",
            "A CNAME resource record. Data is a domain name to be aliased.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Resources = {
      description = "Machine resources for a version.",
      id = "Resources",
      properties = {
        cpu = {
          description = "Number of CPU cores needed.",
          format = "double",
          type = "number",
        },
        diskGb = {
          description = "Disk size (GB) needed.",
          format = "double",
          type = "number",
        },
        kmsKeyReference = {
          description = "The name of the encryption key that is stored in Google Cloud KMS. Only should be used by Cloud Composer to encrypt the vm disk",
          type = "string",
        },
        memoryGb = {
          description = "Memory (GB) needed.",
          format = "double",
          type = "number",
        },
        volumes = {
          description = "User specified volumes.",
          items = {
            ["$ref"] = "Volume",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ScriptHandler = {
      description = "Executes a script to handle the request that matches the URL pattern.",
      id = "ScriptHandler",
      properties = {
        scriptPath = {
          description = "Path to the script from the application root directory.",
          type = "string",
        },
      },
      type = "object",
    },
    Service = {
      description = "A Service resource is a logical component of an application that can share state and communicate in a secure fashion with other services. For example, an application that handles customer requests might include separate services to handle tasks such as backend data analysis or API requests from mobile devices. Each service has a collection of versions that define a specific set of code used to implement the functionality of that service.",
      id = "Service",
      properties = {
        id = {
          description = "Relative name of the service within the application. Example: default.@OutputOnly",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "A set of labels to apply to this service. Labels are key/value pairs that describe the service and all resources that belong to it (e.g., versions). The labels can be used to search and group resources, and are propagated to the usage and billing reports, enabling fine-grain analysis of costs. An example of using labels is to tag resources belonging to different environments (e.g., \"env=prod\", \"env=qa\"). Label keys and values can be no longer than 63 characters and can only contain lowercase letters, numeric characters, underscores, dashes, and international characters. Label keys must start with a lowercase letter or an international character. Each service can have at most 32 labels.",
          type = "object",
        },
        name = {
          description = "Full path to the Service resource in the API. Example: apps/myapp/services/default.@OutputOnly",
          type = "string",
        },
        networkSettings = {
          ["$ref"] = "NetworkSettings",
          description = "Ingress settings for this service. Will apply to all versions.",
        },
        split = {
          ["$ref"] = "TrafficSplit",
          description = "Mapping that defines fractional HTTP traffic diversion to different versions within the service.",
        },
      },
      type = "object",
    },
    SslSettings = {
      description = "SSL configuration for a DomainMapping resource.",
      id = "SslSettings",
      properties = {
        certificateId = {
          description = "ID of the AuthorizedCertificate resource configuring SSL for the application. Clearing this field will remove SSL support.By default, a managed certificate is automatically created for every domain mapping. To omit SSL support or to configure SSL manually, specify SslManagementType.MANUAL on a CREATE or UPDATE request. You must be authorized to administer the AuthorizedCertificate resource to manually map it to a DomainMapping resource. Example: 12345.",
          type = "string",
        },
        pendingManagedCertificateId = {
          description = "ID of the managed AuthorizedCertificate resource currently being provisioned, if applicable. Until the new managed certificate has been successfully provisioned, the previous SSL state will be preserved. Once the provisioning process completes, the certificate_id field will reflect the new managed certificate and this field will be left empty. To remove SSL support while there is still a pending managed certificate, clear the certificate_id field with an UpdateDomainMappingRequest.@OutputOnly",
          type = "string",
        },
        sslManagementType = {
          description = "SSL management type for this domain. If AUTOMATIC, a managed certificate is automatically provisioned. If MANUAL, certificate_id must be manually specified in order to configure SSL for this domain.",
          enum = {
            "SSL_MANAGEMENT_TYPE_UNSPECIFIED",
            "AUTOMATIC",
            "MANUAL",
          },
          enumDescriptions = {
            "Defaults to AUTOMATIC.",
            "SSL support for this domain is configured automatically. The mapped SSL certificate will be automatically renewed.",
            "SSL support for this domain is configured manually by the user. Either the domain has no SSL support or a user-obtained SSL certificate has been explictly mapped to this domain.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    StandardSchedulerSettings = {
      description = "Scheduler settings for standard environment.",
      id = "StandardSchedulerSettings",
      properties = {
        maxInstances = {
          description = "Maximum number of instances to run for this version. Set to zero to disable max_instances configuration.",
          format = "int32",
          type = "integer",
        },
        minInstances = {
          description = "Minimum number of instances to run for this version. Set to zero to disable min_instances configuration.",
          format = "int32",
          type = "integer",
        },
        targetCpuUtilization = {
          description = "Target CPU utilization ratio to maintain when scaling.",
          format = "double",
          type = "number",
        },
        targetThroughputUtilization = {
          description = "Target throughput utilization ratio to maintain when scaling",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    StaticFilesHandler = {
      description = "Files served directly to the user for a given URL, such as images, CSS stylesheets, or JavaScript source files. Static file handlers describe which files in the application directory are static files, and which URLs serve them.",
      id = "StaticFilesHandler",
      properties = {
        applicationReadable = {
          description = "Whether files should also be uploaded as code data. By default, files declared in static file handlers are uploaded as static data and are only served to end users; they cannot be read by the application. If enabled, uploads are charged against both your code and static data storage resource quotas.",
          type = "boolean",
        },
        expiration = {
          description = "Time a static file served by this handler should be cached by web proxies and browsers.",
          format = "google-duration",
          type = "string",
        },
        httpHeaders = {
          additionalProperties = {
            type = "string",
          },
          description = "HTTP headers to use for all responses from these URLs.",
          type = "object",
        },
        mimeType = {
          description = "MIME type used to serve all files served by this handler.Defaults to file-specific MIME types, which are derived from each file's filename extension.",
          type = "string",
        },
        path = {
          description = "Path to the static files matched by the URL pattern, from the application root directory. The path can refer to text matched in groupings in the URL pattern.",
          type = "string",
        },
        requireMatchingFile = {
          description = "Whether this handler should match the request if the file referenced by the handler does not exist.",
          type = "boolean",
        },
        uploadPathRegex = {
          description = "Regular expression that matches the file paths for all files that should be referenced by this handler.",
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
    TrafficSplit = {
      description = "Traffic routing configuration for versions within a single service. Traffic splits define how traffic directed to the service is assigned to versions.",
      id = "TrafficSplit",
      properties = {
        allocations = {
          additionalProperties = {
            format = "double",
            type = "number",
          },
          description = "Mapping from version IDs within the service to fractional (0.000, 1] allocations of traffic for that version. Each version can be specified only once, but some versions in the service may not have any traffic allocation. Services that have traffic allocated cannot be deleted until either the service is deleted or their traffic allocation is removed. Allocations must sum to 1. Up to two decimal place precision is supported for IP-based splits and up to three decimal places is supported for cookie-based splits.",
          type = "object",
        },
        shardBy = {
          description = "Mechanism used to determine which version a request is sent to. The traffic selection algorithm will be stable for either type until allocations are changed.",
          enum = {
            "UNSPECIFIED",
            "COOKIE",
            "IP",
            "RANDOM",
          },
          enumDescriptions = {
            "Diversion method unspecified.",
            "Diversion based on a specially named cookie, \"GOOGAPPUID.\" The cookie must be set by the application itself or no diversion will occur.",
            "Diversion based on applying the modulus operation to a fingerprint of the IP address.",
            "Diversion based on weighted random assignment. An incoming request is randomly routed to a version in the traffic split, with probability proportional to the version's traffic share.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    UrlDispatchRule = {
      description = "Rules to match an HTTP request and dispatch that request to a service.",
      id = "UrlDispatchRule",
      properties = {
        domain = {
          description = "Domain name to match against. The wildcard \"*\" is supported if specified before a period: \"*.\".Defaults to matching all domains: \"*\".",
          type = "string",
        },
        path = {
          description = "Pathname within the host. Must start with a \"/\". A single \"*\" can be included at the end of the path.The sum of the lengths of the domain and path may not exceed 100 characters.",
          type = "string",
        },
        service = {
          description = "Resource ID of a service in this application that should serve the matched request. The service must already exist. Example: default.",
          type = "string",
        },
      },
      type = "object",
    },
    UrlMap = {
      description = "URL pattern and description of how the URL should be handled. App Engine can handle URLs by executing application code or by serving static files uploaded with the version, such as images, CSS, or JavaScript.",
      id = "UrlMap",
      properties = {
        apiEndpoint = {
          ["$ref"] = "ApiEndpointHandler",
          description = "Uses API Endpoints to handle requests.",
        },
        authFailAction = {
          description = "Action to take when users access resources that require authentication. Defaults to redirect.",
          enum = {
            "AUTH_FAIL_ACTION_UNSPECIFIED",
            "AUTH_FAIL_ACTION_REDIRECT",
            "AUTH_FAIL_ACTION_UNAUTHORIZED",
          },
          enumDescriptions = {
            "Not specified. AUTH_FAIL_ACTION_REDIRECT is assumed.",
            "Redirects user to \"accounts.google.com\". The user is redirected back to the application URL after signing in or creating an account.",
            "Rejects request with a 401 HTTP status code and an error message.",
          },
          type = "string",
        },
        login = {
          description = "Level of login required to access this resource. Not supported for Node.js in the App Engine standard environment.",
          enum = {
            "LOGIN_UNSPECIFIED",
            "LOGIN_OPTIONAL",
            "LOGIN_ADMIN",
            "LOGIN_REQUIRED",
          },
          enumDescriptions = {
            "Not specified. LOGIN_OPTIONAL is assumed.",
            "Does not require that the user is signed in.",
            "If the user is not signed in, the auth_fail_action is taken. In addition, if the user is not an administrator for the application, they are given an error message regardless of auth_fail_action. If the user is an administrator, the handler proceeds.",
            "If the user has signed in, the handler proceeds normally. Otherwise, the auth_fail_action is taken.",
          },
          type = "string",
        },
        redirectHttpResponseCode = {
          description = "30x code to use when performing redirects for the secure field. Defaults to 302.",
          enum = {
            "REDIRECT_HTTP_RESPONSE_CODE_UNSPECIFIED",
            "REDIRECT_HTTP_RESPONSE_CODE_301",
            "REDIRECT_HTTP_RESPONSE_CODE_302",
            "REDIRECT_HTTP_RESPONSE_CODE_303",
            "REDIRECT_HTTP_RESPONSE_CODE_307",
          },
          enumDescriptions = {
            "Not specified. 302 is assumed.",
            "301 Moved Permanently code.",
            "302 Moved Temporarily code.",
            "303 See Other code.",
            "307 Temporary Redirect code.",
          },
          type = "string",
        },
        script = {
          ["$ref"] = "ScriptHandler",
          description = "Executes a script to handle the requests that match this URL pattern. Only the auto value is supported for Node.js in the App Engine standard environment, for example \"script\": \"auto\".",
        },
        securityLevel = {
          description = "Security (HTTPS) enforcement for this URL.",
          enum = {
            "SECURE_UNSPECIFIED",
            "SECURE_DEFAULT",
            "SECURE_NEVER",
            "SECURE_OPTIONAL",
            "SECURE_ALWAYS",
          },
          enumDescriptions = {
            "Not specified.",
            "Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used, and respond accordingly.",
            "Requests for a URL that match this handler that use HTTPS are automatically redirected to the HTTP equivalent URL.",
            "Both HTTP and HTTPS requests with URLs that match the handler succeed without redirects. The application can examine the request to determine which protocol was used and respond accordingly.",
            "Requests for a URL that match this handler that do not use HTTPS are automatically redirected to the HTTPS URL with the same path. Query parameters are reserved for the redirect.",
          },
          type = "string",
        },
        staticFiles = {
          ["$ref"] = "StaticFilesHandler",
          description = "Returns the contents of a file, such as an image, as the response.",
        },
        urlRegex = {
          description = "URL prefix. Uses regular expression syntax, which means regexp special characters must be escaped, but should not contain groupings. All URLs that begin with this prefix are handled by this handler, using the portion of the URL after the prefix as part of the file path.",
          type = "string",
        },
      },
      type = "object",
    },
    Version = {
      description = "A Version resource is a specific set of source code and configuration files that are deployed into a service.",
      id = "Version",
      properties = {
        apiConfig = {
          ["$ref"] = "ApiConfigHandler",
          description = "Serving configuration for Google Cloud Endpoints (https://cloud.google.com/endpoints).Only returned in GET requests if view=FULL is set.",
        },
        appEngineApis = {
          description = "Allows App Engine second generation runtimes to access the legacy bundled services.",
          type = "boolean",
        },
        automaticScaling = {
          ["$ref"] = "AutomaticScaling",
          description = "Automatic scaling is based on request rate, response latencies, and other application metrics. Instances are dynamically created and destroyed as needed in order to handle traffic.",
        },
        basicScaling = {
          ["$ref"] = "BasicScaling",
          description = "A service with basic scaling will create an instance when the application receives a request. The instance will be turned down when the app becomes idle. Basic scaling is ideal for work that is intermittent or driven by user activity.",
        },
        betaSettings = {
          additionalProperties = {
            type = "string",
          },
          description = "Metadata settings that are supplied to this version to enable beta runtime features.",
          type = "object",
        },
        buildEnvVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Environment variables available to the build environment.Only returned in GET requests if view=FULL is set.",
          type = "object",
        },
        createTime = {
          description = "Time that this version was created.@OutputOnly",
          format = "google-datetime",
          type = "string",
        },
        createdBy = {
          description = "Email address of the user who created this version.@OutputOnly",
          type = "string",
        },
        defaultExpiration = {
          description = "Duration that static files should be cached by web proxies and browsers. Only applicable if the corresponding StaticFilesHandler (https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions#StaticFilesHandler) does not specify its own expiration time.Only returned in GET requests if view=FULL is set.",
          format = "google-duration",
          type = "string",
        },
        deployment = {
          ["$ref"] = "Deployment",
          description = "Code and application artifacts that make up this version.Only returned in GET requests if view=FULL is set.",
        },
        diskUsageBytes = {
          description = "Total size in bytes of all the files that are included in this version and currently hosted on the App Engine disk.@OutputOnly",
          format = "int64",
          type = "string",
        },
        endpointsApiService = {
          ["$ref"] = "EndpointsApiService",
          description = "Cloud Endpoints configuration.If endpoints_api_service is set, the Cloud Endpoints Extensible Service Proxy will be provided to serve the API implemented by the app.",
        },
        entrypoint = {
          ["$ref"] = "Entrypoint",
          description = "The entrypoint for the application.",
        },
        env = {
          description = "App Engine execution environment for this version.Defaults to standard.",
          type = "string",
        },
        envVariables = {
          additionalProperties = {
            type = "string",
          },
          description = "Environment variables available to the application.Only returned in GET requests if view=FULL is set.",
          type = "object",
        },
        errorHandlers = {
          description = "Custom static error pages. Limited to 10KB per page.Only returned in GET requests if view=FULL is set.",
          items = {
            ["$ref"] = "ErrorHandler",
          },
          type = "array",
        },
        handlers = {
          description = "An ordered list of URL-matching patterns that should be applied to incoming requests. The first matching URL handles the request and other request handlers are not attempted.Only returned in GET requests if view=FULL is set.",
          items = {
            ["$ref"] = "UrlMap",
          },
          type = "array",
        },
        healthCheck = {
          ["$ref"] = "HealthCheck",
          description = "Configures health checking for instances. Unhealthy instances are stopped and replaced with new instances. Only applicable in the App Engine flexible environment.Only returned in GET requests if view=FULL is set.",
        },
        id = {
          description = "Relative name of the version within the service. Example: v1. Version names can contain only lowercase letters, numbers, or hyphens. Reserved names: \"default\", \"latest\", and any name with the prefix \"ah-\".",
          type = "string",
        },
        inboundServices = {
          description = "Before an application can receive email or XMPP messages, the application must be configured to enable the service.",
          items = {
            enum = {
              "INBOUND_SERVICE_UNSPECIFIED",
              "INBOUND_SERVICE_MAIL",
              "INBOUND_SERVICE_MAIL_BOUNCE",
              "INBOUND_SERVICE_XMPP_ERROR",
              "INBOUND_SERVICE_XMPP_MESSAGE",
              "INBOUND_SERVICE_XMPP_SUBSCRIBE",
              "INBOUND_SERVICE_XMPP_PRESENCE",
              "INBOUND_SERVICE_CHANNEL_PRESENCE",
              "INBOUND_SERVICE_WARMUP",
            },
            enumDescriptions = {
              "Not specified.",
              "Allows an application to receive mail.",
              "Allows an application to receive email-bound notifications.",
              "Allows an application to receive error stanzas.",
              "Allows an application to receive instant messages.",
              "Allows an application to receive user subscription POSTs.",
              "Allows an application to receive a user's chat presence.",
              "Registers an application for notifications when a client connects or disconnects from a channel.",
              "Enables warmup requests.",
            },
            type = "string",
          },
          type = "array",
        },
        instanceClass = {
          description = "Instance class that is used to run this version. Valid values are: AutomaticScaling: F1, F2, F4, F4_1G ManualScaling or BasicScaling: B1, B2, B4, B8, B4_1GDefaults to F1 for AutomaticScaling and B1 for ManualScaling or BasicScaling.",
          type = "string",
        },
        libraries = {
          description = "Configuration for third-party Python runtime libraries that are required by the application.Only returned in GET requests if view=FULL is set.",
          items = {
            ["$ref"] = "Library",
          },
          type = "array",
        },
        livenessCheck = {
          ["$ref"] = "LivenessCheck",
          description = "Configures liveness health checking for instances. Unhealthy instances are stopped and replaced with new instancesOnly returned in GET requests if view=FULL is set.",
        },
        manualScaling = {
          ["$ref"] = "ManualScaling",
          description = "A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time. Manually scaled versions are sometimes referred to as \"backends\".",
        },
        name = {
          description = "Full path to the Version resource in the API. Example: apps/myapp/services/default/versions/v1.@OutputOnly",
          type = "string",
        },
        network = {
          ["$ref"] = "Network",
          description = "Extra network settings. Only applicable in the App Engine flexible environment.",
        },
        nobuildFilesRegex = {
          description = "Files that match this pattern will not be built into this version. Only applicable for Go runtimes.Only returned in GET requests if view=FULL is set.",
          type = "string",
        },
        readinessCheck = {
          ["$ref"] = "ReadinessCheck",
          description = "Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.Only returned in GET requests if view=FULL is set.",
        },
        resources = {
          ["$ref"] = "Resources",
          description = "Machine resources for this version. Only applicable in the App Engine flexible environment.",
        },
        runtime = {
          description = "Desired runtime. Example: python27.",
          type = "string",
        },
        runtimeApiVersion = {
          description = "The version of the API in the given runtime environment. Please see the app.yaml reference for valid values at https://cloud.google.com/appengine/docs/standard//config/appref",
          type = "string",
        },
        runtimeChannel = {
          description = "The channel of the runtime to use. Only available for some runtimes. Defaults to the default channel.",
          type = "string",
        },
        runtimeMainExecutablePath = {
          description = "The path or name of the app's main executable.",
          type = "string",
        },
        serviceAccount = {
          description = "The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as default if this field is neither provided in app.yaml file nor through CLI flag.",
          type = "string",
        },
        servingStatus = {
          description = "Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.SERVING_STATUS_UNSPECIFIED is an invalid value. Defaults to SERVING.",
          enum = {
            "SERVING_STATUS_UNSPECIFIED",
            "SERVING",
            "STOPPED",
          },
          enumDescriptions = {
            "Not specified.",
            "Currently serving. Instances are created according to the scaling settings of the version.",
            "Disabled. No instances will be created and the scaling settings are ignored until the state of the version changes to SERVING.",
          },
          type = "string",
        },
        threadsafe = {
          description = "Whether multiple requests can be dispatched to this version at once.",
          type = "boolean",
        },
        versionUrl = {
          description = "Serving URL for this version. Example: \"https://myversion-dot-myservice-dot-myapp.appspot.com\"@OutputOnly",
          type = "string",
        },
        vm = {
          description = "Whether to deploy this version in a container on a virtual machine.",
          type = "boolean",
        },
        vpcAccessConnector = {
          ["$ref"] = "VpcAccessConnector",
          description = "Enables VPC connectivity for standard apps.",
        },
        zones = {
          description = "The Google Compute Engine zones that are supported by this version in the App Engine flexible environment. Deprecated.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Volume = {
      description = "Volumes mounted within the app container. Only applicable in the App Engine flexible environment.",
      id = "Volume",
      properties = {
        name = {
          description = "Unique name for the volume.",
          type = "string",
        },
        sizeGb = {
          description = "Volume size in gigabytes.",
          format = "double",
          type = "number",
        },
        volumeType = {
          description = "Underlying volume type, e.g. 'tmpfs'.",
          type = "string",
        },
      },
      type = "object",
    },
    VpcAccessConnector = {
      description = "VPC access connector specification.",
      id = "VpcAccessConnector",
      properties = {
        egressSetting = {
          description = "The egress setting for the connector, controlling what traffic is diverted through it.",
          enum = {
            "EGRESS_SETTING_UNSPECIFIED",
            "ALL_TRAFFIC",
            "PRIVATE_IP_RANGES",
          },
          enumDescriptions = {
            "",
            "Force the use of VPC Access for all egress traffic from the function.",
            "Use the VPC Access Connector for private IP space from RFC1918.",
          },
          type = "string",
        },
        name = {
          description = "Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.",
          type = "string",
        },
      },
      type = "object",
    },
    ZipInfo = {
      description = "The zip file information for a zip deployment.",
      id = "ZipInfo",
      properties = {
        filesCount = {
          description = "An estimate of the number of files in a zip for a zip deployment. If set, must be greater than or equal to the actual number of files. Used for optimizing performance; if not provided, deployment may be slow.",
          format = "int32",
          type = "integer",
        },
        sourceUrl = {
          description = "URL of the zip file to deploy from. Must be a URL to a resource in Google Cloud Storage in the form 'http(s)://storage.googleapis.com//'.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "App Engine Admin API",
  version = "v1",
  version_module = true,
}