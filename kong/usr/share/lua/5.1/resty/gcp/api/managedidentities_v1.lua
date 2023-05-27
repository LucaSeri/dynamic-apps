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
  baseUrl = "https://managedidentities.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Managed Service for Microsoft Active Directory Consumer API",
  description = "The Managed Service for Microsoft Active Directory API is used for managing a highly available, hardened service running Microsoft Active Directory (AD).",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/managed-microsoft-ad/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "managedidentities:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://managedidentities.mtls.googleapis.com/",
  name = "managedidentities",
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
              id = "managedidentities.projects.locations.get",
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
              id = "managedidentities.projects.locations.list",
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
            global = {
              resources = {
                domains = {
                  methods = {
                    attachTrust = {
                      description = "Adds an AD trust to a domain.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:attachTrust",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.attachTrust",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource domain name, project name and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:attachTrust",
                      request = {
                        ["$ref"] = "AttachTrustRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    create = {
                      description = "Creates a Microsoft AD domain.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        domainName = {
                          description = "Required. The fully qualified domain name. e.g. mydomain.myorganization.com, with the following restrictions: * Must contain only lowercase letters, numbers, periods and hyphens. * Must start with a letter. * Must contain between 2-64 characters. * Must end with a number or a letter. * Must not start with period. * First segment length (mydomain for example above) shouldn't exceed 15 chars. * The last segment cannot be fully numeric. * Must be unique within the customer project.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource project name and location using the form: `projects/{project_id}/locations/global`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/domains",
                      request = {
                        ["$ref"] = "Domain",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a domain.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}",
                      httpMethod = "DELETE",
                      id = "managedidentities.projects.locations.global.domains.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
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
                    detachTrust = {
                      description = "Removes an AD trust.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:detachTrust",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.detachTrust",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource domain name, project name, and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:detachTrust",
                      request = {
                        ["$ref"] = "DetachTrustRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    extendSchema = {
                      description = "Extend Schema for Domain",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:extendSchema",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.extendSchema",
                      parameterOrder = {
                        "domain",
                      },
                      parameters = {
                        domain = {
                          description = "Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+domain}:extendSchema",
                      request = {
                        ["$ref"] = "ExtendSchemaRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets information about a domain.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.domains.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Domain",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.domains.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getLdapssettings = {
                      description = "Gets the domain ldaps settings.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/ldapssettings",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.domains.getLdapssettings",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/ldapssettings",
                      response = {
                        ["$ref"] = "LDAPSSettings",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists domains in a project.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.domains.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. A filter specifying constraints of a list operation. For example, `Domain.fqdn=\"mydomain.myorginization\"`.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specifies the ordering of results. See [Sorting order](https://cloud.google.com/apis/design/design_patterns#sorting_order) for more information.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used. Regardless of the page_size value, the response may include a partial list. Callers should rely on a response's next_page_token to determine if there are additional results to list.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Optional. The `next_page_token` value returned from a previous ListDomainsRequest request, if any.",
                          location = "query",
                          type = "string",
                        },
                        parent = {
                          description = "Required. The resource name of the domain location using the form: `projects/{project_id}/locations/global`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/domains",
                      response = {
                        ["$ref"] = "ListDomainsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the metadata and configuration of a domain.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}",
                      httpMethod = "PATCH",
                      id = "managedidentities.projects.locations.global.domains.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include fields from Domain: * `labels` * `locations` * `authorized_networks` * `audit_logs_enabled`",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Domain",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    reconfigureTrust = {
                      description = "Updates the DNS conditional forwarder.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:reconfigureTrust",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.reconfigureTrust",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource domain name, project name and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:reconfigureTrust",
                      request = {
                        ["$ref"] = "ReconfigureTrustRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    resetAdminPassword = {
                      description = "Resets a domain's administrator password.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:resetAdminPassword",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.resetAdminPassword",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:resetAdminPassword",
                      request = {
                        ["$ref"] = "ResetAdminPasswordRequest",
                      },
                      response = {
                        ["$ref"] = "ResetAdminPasswordResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    restore = {
                      description = "RestoreDomain restores domain backup mentioned in the RestoreDomainRequest",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:restore",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.restore",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Resource name for the domain to which the backup belongs",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:restore",
                      request = {
                        ["$ref"] = "RestoreDomainRequest",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
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
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
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
                    updateLdapssettings = {
                      description = "Patches a single ldaps settings.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/ldapssettings",
                      httpMethod = "PATCH",
                      id = "managedidentities.projects.locations.global.domains.updateLdapssettings",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The resource name of the LDAPS settings. Uses the form: `projects/{project}/locations/{location}/domains/{domain}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update. At least one path must be supplied in this field. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}/ldapssettings",
                      request = {
                        ["$ref"] = "LDAPSSettings",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    validateTrust = {
                      description = "Validates a trust state, that the target domain is reachable, and that the target domain is able to accept incoming trust requests.",
                      flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}:validateTrust",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.domains.validateTrust",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. The resource domain name, project name, and location using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}:validateTrust",
                      request = {
                        ["$ref"] = "ValidateTrustRequest",
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
                    backups = {
                      methods = {
                        create = {
                          description = "Creates a Backup for a domain.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups",
                          httpMethod = "POST",
                          id = "managedidentities.projects.locations.global.domains.backups.create",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            backupId = {
                              description = "Required. Backup Id, unique name to identify the backups with the following restrictions: * Must be lowercase letters, numbers, and hyphens * Must start with a letter. * Must contain between 1-63 characters. * Must end with a number or a letter. * Must be unique within the domain.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/backups",
                          request = {
                            ["$ref"] = "Backup",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        delete = {
                          description = "Deletes identified Backup.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups/{backupsId}",
                          httpMethod = "DELETE",
                          id = "managedidentities.projects.locations.global.domains.backups.delete",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The backup resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}/backups/{backup_id}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+/backups/[^/]+$",
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
                          description = "Gets details of a single Backup.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups/{backupsId}",
                          httpMethod = "GET",
                          id = "managedidentities.projects.locations.global.domains.backups.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. The backup resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}/backups/{backup_id}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+/backups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "Backup",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        getIamPolicy = {
                          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups/{backupsId}:getIamPolicy",
                          httpMethod = "GET",
                          id = "managedidentities.projects.locations.global.domains.backups.getIamPolicy",
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
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+/backups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+resource}:getIamPolicy",
                          response = {
                            ["$ref"] = "Policy",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists Backup in a given project.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups",
                          httpMethod = "GET",
                          id = "managedidentities.projects.locations.global.domains.backups.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Filter specifying constraints of a list operation.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. Specifies the ordering of results following syntax at https://cloud.google.com/apis/design/design_patterns#sorting_order.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response's next_page_token to determine if there are more instances left to be queried.",
                              format = "int32",
                              location = "query",
                              type = "integer",
                            },
                            pageToken = {
                              description = "Optional. The `next_page_token` value returned from a previous List request, if any.",
                              location = "query",
                              type = "string",
                            },
                            parent = {
                              description = "Required. The domain resource name using the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/backups",
                          response = {
                            ["$ref"] = "ListBackupsResponse",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        patch = {
                          description = "Updates the labels for specified Backup.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups/{backupsId}",
                          httpMethod = "PATCH",
                          id = "managedidentities.projects.locations.global.domains.backups.patch",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Output only. The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+/backups/[^/]+$",
                              required = true,
                              type = "string",
                            },
                            updateMask = {
                              description = "Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields from Backup: * `labels`",
                              format = "google-fieldmask",
                              location = "query",
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          request = {
                            ["$ref"] = "Backup",
                          },
                          response = {
                            ["$ref"] = "Operation",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        setIamPolicy = {
                          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups/{backupsId}:setIamPolicy",
                          httpMethod = "POST",
                          id = "managedidentities.projects.locations.global.domains.backups.setIamPolicy",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+/backups/[^/]+$",
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
                          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/backups/{backupsId}:testIamPermissions",
                          httpMethod = "POST",
                          id = "managedidentities.projects.locations.global.domains.backups.testIamPermissions",
                          parameterOrder = {
                            "resource",
                          },
                          parameters = {
                            resource = {
                              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+/backups/[^/]+$",
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
                    },
                    sqlIntegrations = {
                      methods = {
                        get = {
                          description = "Gets details of a single sqlIntegration.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/sqlIntegrations/{sqlIntegrationsId}",
                          httpMethod = "GET",
                          id = "managedidentities.projects.locations.global.domains.sqlIntegrations.get",
                          parameterOrder = {
                            "name",
                          },
                          parameters = {
                            name = {
                              description = "Required. SQLIntegration resource name using the form: `projects/{project_id}/locations/global/domains/{domain}/sqlIntegrations/{name}`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+/sqlIntegrations/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+name}",
                          response = {
                            ["$ref"] = "SqlIntegration",
                          },
                          scopes = {
                            "https://www.googleapis.com/auth/cloud-platform",
                          },
                        },
                        list = {
                          description = "Lists SqlIntegrations in a given domain.",
                          flatPath = "v1/projects/{projectsId}/locations/global/domains/{domainsId}/sqlIntegrations",
                          httpMethod = "GET",
                          id = "managedidentities.projects.locations.global.domains.sqlIntegrations.list",
                          parameterOrder = {
                            "parent",
                          },
                          parameters = {
                            filter = {
                              description = "Optional. Filter specifying constraints of a list operation. For example, `SqlIntegration.name=\"sql\"`.",
                              location = "query",
                              type = "string",
                            },
                            orderBy = {
                              description = "Optional. Specifies the ordering of results following syntax at https://cloud.google.com/apis/design/design_patterns#sorting_order.",
                              location = "query",
                              type = "string",
                            },
                            pageSize = {
                              description = "Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response'ANIZATIONs next_page_token to determine if there are more instances left to be queried.",
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
                              description = "Required. The resource name of the SqlIntegrations using the form: `projects/{project_id}/locations/global/domains/*`",
                              location = "path",
                              pattern = "^projects/[^/]+/locations/global/domains/[^/]+$",
                              required = true,
                              type = "string",
                            },
                          },
                          path = "v1/{+parent}/sqlIntegrations",
                          response = {
                            ["$ref"] = "ListSqlIntegrationsResponse",
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
                    cancel = {
                      description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                      flatPath = "v1/projects/{projectsId}/locations/global/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/operations/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/operations/{operationsId}",
                      httpMethod = "DELETE",
                      id = "managedidentities.projects.locations.global.operations.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/operations/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.operations.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/operations/[^/]+$",
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
                      flatPath = "v1/projects/{projectsId}/locations/global/operations",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.operations.list",
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
                          pattern = "^projects/[^/]+/locations/global/operations$",
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
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "ListOperationsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                  },
                },
                peerings = {
                  methods = {
                    create = {
                      description = "Creates a Peering for Managed AD instance.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.peerings.create",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        parent = {
                          description = "Required. Resource project name and location using the form: `projects/{project_id}/locations/global`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                        peeringId = {
                          description = "Required. Peering Id, unique name to identify peering. It should follow the regex format \"^(?:[a-z](?:[-a-z0-9]{0,61}[a-z0-9])?)$\"",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/peerings",
                      request = {
                        ["$ref"] = "Peering",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes identified Peering.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings/{peeringsId}",
                      httpMethod = "DELETE",
                      id = "managedidentities.projects.locations.global.peerings.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Peering resource name using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/peerings/[^/]+$",
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
                      description = "Gets details of a single Peering.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings/{peeringsId}",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.peerings.get",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Required. Peering resource name using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/peerings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      response = {
                        ["$ref"] = "Peering",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    getIamPolicy = {
                      description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings/{peeringsId}:getIamPolicy",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.peerings.getIamPolicy",
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
                          pattern = "^projects/[^/]+/locations/global/peerings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+resource}:getIamPolicy",
                      response = {
                        ["$ref"] = "Policy",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    list = {
                      description = "Lists Peerings in a given project.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings",
                      httpMethod = "GET",
                      id = "managedidentities.projects.locations.global.peerings.list",
                      parameterOrder = {
                        "parent",
                      },
                      parameters = {
                        filter = {
                          description = "Optional. Filter specifying constraints of a list operation. For example, `peering.authorized_network=\"projects/myprojectid/global/networks/mynetwork\"`.",
                          location = "query",
                          type = "string",
                        },
                        orderBy = {
                          description = "Optional. Specifies the ordering of results following syntax at https://cloud.google.com/apis/design/design_patterns#sorting_order.",
                          location = "query",
                          type = "string",
                        },
                        pageSize = {
                          description = "Optional. The maximum number of items to return. If not specified, a default value of 1000 will be used by the service. Regardless of the page_size value, the response may include a partial list and a caller should only rely on response's next_page_token to determine if there are more instances left to be queried.",
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
                          description = "Required. The resource name of the peering location using the form: `projects/{project_id}/locations/global`",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/{+parent}/peerings",
                      response = {
                        ["$ref"] = "ListPeeringsResponse",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    patch = {
                      description = "Updates the labels for specified Peering.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings/{peeringsId}",
                      httpMethod = "PATCH",
                      id = "managedidentities.projects.locations.global.peerings.patch",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "Output only. Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/peerings/[^/]+$",
                          required = true,
                          type = "string",
                        },
                        updateMask = {
                          description = "Required. Mask of fields to update. At least one path must be supplied in this field. The elements of the repeated paths field may only include these fields from Peering: * `labels`",
                          format = "google-fieldmask",
                          location = "query",
                          type = "string",
                        },
                      },
                      path = "v1/{+name}",
                      request = {
                        ["$ref"] = "Peering",
                      },
                      response = {
                        ["$ref"] = "Operation",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    setIamPolicy = {
                      description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings/{peeringsId}:setIamPolicy",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.peerings.setIamPolicy",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/peerings/[^/]+$",
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
                      description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
                      flatPath = "v1/projects/{projectsId}/locations/global/peerings/{peeringsId}:testIamPermissions",
                      httpMethod = "POST",
                      id = "managedidentities.projects.locations.global.peerings.testIamPermissions",
                      parameterOrder = {
                        "resource",
                      },
                      parameters = {
                        resource = {
                          description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/global/peerings/[^/]+$",
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
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20221227",
  rootUrl = "https://managedidentities.googleapis.com/",
  schemas = {
    AttachTrustRequest = {
      description = "Request message for AttachTrust",
      id = "AttachTrustRequest",
      properties = {
        trust = {
          ["$ref"] = "Trust",
          description = "Required. The domain trust resource.",
        },
      },
      type = "object",
    },
    Backup = {
      description = "Represents a Managed Microsoft Identities backup.",
      id = "Backup",
      properties = {
        createTime = {
          description = "Output only. The time the backups was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata.",
          type = "object",
        },
        name = {
          description = "Output only. The unique name of the Backup in the form of `projects/{project_id}/locations/global/domains/{domain_name}/backups/{name}`",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the backup.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "ACTIVE",
            "FAILED",
            "DELETING",
          },
          enumDescriptions = {
            "Not set.",
            "Backup is being created.",
            "Backup has been created and validated.",
            "Backup has been created but failed validation.",
            "Backup is being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        statusMessage = {
          description = "Output only. Additional information about the current status of this backup, if available.",
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Output only. Indicates whether it’s an on-demand backup or scheduled.",
          enum = {
            "TYPE_UNSPECIFIED",
            "ON_DEMAND",
            "SCHEDULED",
          },
          enumDescriptions = {
            "Backup was manually created.",
            "Backup was manually created.",
            "Backup was automatically created.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update time.",
          format = "google-datetime",
          readOnly = true,
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
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    Certificate = {
      description = "Certificate used to configure LDAPS.",
      id = "Certificate",
      properties = {
        expireTime = {
          description = "The certificate expire time.",
          format = "google-datetime",
          type = "string",
        },
        issuingCertificate = {
          ["$ref"] = "Certificate",
          description = "The issuer of this certificate.",
        },
        subject = {
          description = "The certificate subject.",
          type = "string",
        },
        subjectAlternativeName = {
          description = "The additional hostnames for the domain.",
          items = {
            type = "string",
          },
          type = "array",
        },
        thumbprint = {
          description = "The certificate thumbprint which uniquely identifies the certificate.",
          type = "string",
        },
      },
      type = "object",
    },
    DailyCycle = {
      description = "Time window specified for daily operations.",
      id = "DailyCycle",
      properties = {
        duration = {
          description = "Output only. Duration of the time window, set by service producer.",
          format = "google-duration",
          type = "string",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "Time within the day to start the operations.",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "Date",
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
    DenyMaintenancePeriod = {
      description = "DenyMaintenancePeriod definition. Maintenance is forbidden within the deny period. The start_date must be less than the end_date.",
      id = "DenyMaintenancePeriod",
      properties = {
        endDate = {
          ["$ref"] = "Date",
          description = "Deny period end date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be before the end.",
        },
        startDate = {
          ["$ref"] = "Date",
          description = "Deny period start date. This can be: * A full date, with non-zero year, month and day values. * A month and day value, with a zero year. Allows recurring deny periods each year. Date matching this period will have to be the same or after the start.",
        },
        time = {
          ["$ref"] = "TimeOfDay",
          description = "Time in UTC when the Blackout period starts on start_date and ends on end_date. This can be: * Full time. * All zeros for 00:00:00 UTC",
        },
      },
      type = "object",
    },
    DetachTrustRequest = {
      description = "Request message for DetachTrust",
      id = "DetachTrustRequest",
      properties = {
        trust = {
          ["$ref"] = "Trust",
          description = "Required. The domain trust resource to removed.",
        },
      },
      type = "object",
    },
    Domain = {
      description = "Represents a managed Microsoft Active Directory domain. If the domain is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.",
      id = "Domain",
      properties = {
        admin = {
          description = "Optional. The name of delegated administrator account used to perform Active Directory operations. If not specified, `setupadmin` will be used.",
          type = "string",
        },
        auditLogsEnabled = {
          description = "Optional. Configuration for audit logs. True if audit logs are enabled, else false. Default is audit logs disabled.",
          type = "boolean",
        },
        authorizedNetworks = {
          description = "Optional. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) the domain instance is connected to. Networks can be added using UpdateDomain. The domain is only available on networks listed in `authorized_networks`. If CIDR subnets overlap between networks, domain creation will fail.",
          items = {
            type = "string",
          },
          type = "array",
        },
        createTime = {
          description = "Output only. The time the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        fqdn = {
          description = "Output only. The fully-qualified domain name of the exposed domain used by clients to connect to the service. Similar to what would be chosen for an Active Directory set up on an internal network.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels that can contain user-provided metadata.",
          type = "object",
        },
        locations = {
          description = "Required. Locations where domain needs to be provisioned. regions e.g. us-west1 or us-east4 Service supports up to 4 locations at once. Each location will use a /26 block.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Required. The unique name of the domain using the form: `projects/{project_id}/locations/global/domains/{domain_name}`.",
          type = "string",
        },
        reservedIpRange = {
          description = "Required. The CIDR range of internal addresses that are reserved for this domain. Reserved networks must be /24 or larger. Ranges must be unique and non-overlapping with existing subnets in [Domain].[authorized_networks].",
          type = "string",
        },
        state = {
          description = "Output only. The current state of this domain.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "UPDATING",
            "DELETING",
            "REPAIRING",
            "PERFORMING_MAINTENANCE",
            "UNAVAILABLE",
          },
          enumDescriptions = {
            "Not set.",
            "The domain is being created.",
            "The domain has been created and is fully usable.",
            "The domain's configuration is being updated.",
            "The domain is being deleted.",
            "The domain is being repaired and may be unusable. Details can be found in the `status_message` field.",
            "The domain is undergoing maintenance.",
            "The domain is not serving requests.",
          },
          readOnly = true,
          type = "string",
        },
        statusMessage = {
          description = "Output only. Additional information about the current status of this domain, if available.",
          readOnly = true,
          type = "string",
        },
        trusts = {
          description = "Output only. The current trusts associated with the domain.",
          items = {
            ["$ref"] = "Trust",
          },
          readOnly = true,
          type = "array",
        },
        updateTime = {
          description = "Output only. The last update time.",
          format = "google-datetime",
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
    ExtendSchemaRequest = {
      description = "ExtendSchemaRequest is the request message for ExtendSchema method.",
      id = "ExtendSchemaRequest",
      properties = {
        description = {
          description = "Required. Description for Schema Change.",
          type = "string",
        },
        fileContents = {
          description = "File uploaded as a byte stream input.",
          format = "byte",
          type = "string",
        },
        gcsPath = {
          description = "File stored in Cloud Storage bucket and represented in the form projects/{project_id}/buckets/{bucket_name}/objects/{object_name} File should be in the same project as the domain.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudManagedidentitiesV1OpMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudManagedidentitiesV1OpMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
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
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
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
    GoogleCloudManagedidentitiesV1alpha1OpMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudManagedidentitiesV1alpha1OpMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
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
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
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
    GoogleCloudManagedidentitiesV1beta1OpMetadata = {
      description = "Represents the metadata of the long-running operation.",
      id = "GoogleCloudManagedidentitiesV1beta1OpMetadata",
      properties = {
        apiVersion = {
          description = "Output only. API version used to start the operation.",
          readOnly = true,
          type = "string",
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
        requestedCancellation = {
          description = "Output only. Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          readOnly = true,
          type = "boolean",
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
    GoogleCloudSaasacceleratorManagementProvidersV1Instance = {
      id = "GoogleCloudSaasacceleratorManagementProvidersV1Instance",
      properties = {
        consumerDefinedName = {
          description = "consumer_defined_name is the name that is set by the consumer. On the other hand Name field represents system-assigned id of an instance so consumers are not necessarily aware of it. consumer_defined_name is used for notification/UI purposes for consumer to recognize their instances.",
          type = "string",
        },
        createTime = {
          description = "Output only. Timestamp when the resource was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        instanceType = {
          description = "Optional. The instance_type of this instance of format: projects/{project_number}/locations/{location_id}/instanceTypes/{instance_type_id}. Instance Type represents a high-level tier or SKU of the service that this instance belong to. When enabled(eg: Maintenance Rollout), Rollout uses 'instance_type' along with 'software_versions' to determine whether instance needs an update or not.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.",
          type = "object",
        },
        maintenancePolicyNames = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Deprecated. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the referenced policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go/cloud-saas-mw-ug.",
          type = "object",
        },
        maintenanceSchedules = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule",
          },
          description = "The MaintenanceSchedule contains the scheduling information of published maintenance schedule with same key as software_versions.",
          type = "object",
        },
        maintenanceSettings = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings",
          description = "Optional. The MaintenanceSettings associated with instance.",
        },
        name = {
          description = "Unique name of the resource. It uses the form: `projects/{project_number}/locations/{location_id}/instances/{instance_id}` Note: This name is passed, stored and logged across the rollout system. So use of consumer project_id or any other consumer PII in the name is strongly discouraged for wipeout (go/wipeout) compliance. See go/elysium/project_ids#storage-guidance for more details.",
          type = "string",
        },
        notificationParameters = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter",
          },
          description = "Optional. notification_parameter are information that service producers may like to include that is not relevant to Rollout. This parameter will only be passed to Gamma and Cloud Logging for notification/logging purpose.",
          type = "object",
        },
        producerMetadata = {
          additionalProperties = {
            type = "string",
          },
          description = "Output only. Custom string attributes used primarily to expose producer-specific information in monitoring dashboards. See go/get-instance-metadata.",
          readOnly = true,
          type = "object",
        },
        provisionedResources = {
          description = "Output only. The list of data plane resources provisioned for this instance, e.g. compute VMs. See go/get-instance-metadata.",
          items = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource",
          },
          readOnly = true,
          type = "array",
        },
        slmInstanceTemplate = {
          description = "Link to the SLM instance template. Only populated when updating SLM instances via SSA's Actuation service adaptor. Service producers with custom control plane (e.g. Cloud SQL) doesn't need to populate this field. Instead they should use software_versions.",
          type = "string",
        },
        sloMetadata = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata",
          description = "Output only. SLO metadata for instance classification in the Standardized dataplane SLO platform. See go/cloud-ssa-standard-slo for feature description.",
          readOnly = true,
        },
        softwareVersions = {
          additionalProperties = {
            type = "string",
          },
          description = "Software versions that are used to deploy this instance. This can be mutated by rollout services.",
          type = "object",
        },
        state = {
          description = "Output only. Current lifecycle state of the resource (e.g. if it's being created or ready to use).",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "READY",
            "UPDATING",
            "REPAIRING",
            "DELETING",
            "ERROR",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Instance is being created.",
            "Instance has been created and is ready to use.",
            "Instance is being updated.",
            "Instance is unheathy and under repair.",
            "Instance is being deleted.",
            "Instance encountered an error and is in indeterministic state.",
          },
          readOnly = true,
          type = "string",
        },
        tenantProjectId = {
          description = "Output only. ID of the associated GCP tenant project. See go/get-instance-metadata.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp when the resource was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule = {
      description = "Maintenance schedule which is exposed to customer and potentially end user, indicating published upcoming future maintenance schedule",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSchedule",
      properties = {
        canReschedule = {
          description = "This field is deprecated, and will be always set to true since reschedule can happen multiple times now. This field should not be removed until all service producers remove this for their customers.",
          type = "boolean",
        },
        endTime = {
          description = "The scheduled end time for the maintenance.",
          format = "google-datetime",
          type = "string",
        },
        rolloutManagementPolicy = {
          description = "The rollout management policy this maintenance schedule is associated with. When doing reschedule update request, the reschedule should be against this given policy.",
          type = "string",
        },
        scheduleDeadlineTime = {
          description = "schedule_deadline_time is the time deadline any schedule start time cannot go beyond, including reschedule. It's normally the initial schedule start time plus maintenance window length (1 day or 1 week). Maintenance cannot be scheduled to start beyond this deadline.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The scheduled start time for the maintenance.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings = {
      description = "Maintenance settings associated with instance. Allows service producers and end users to assign settings that controls maintenance on this instance.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1MaintenanceSettings",
      properties = {
        exclude = {
          description = "Optional. Exclude instance from maintenance. When true, rollout service will not attempt maintenance on the instance. Rollout service will include the instance in reported rollout progress as not attempted.",
          type = "boolean",
        },
        isRollback = {
          description = "Optional. If the update call is triggered from rollback, set the value as true.",
          type = "boolean",
        },
        maintenancePolicies = {
          additionalProperties = {
            ["$ref"] = "MaintenancePolicy",
          },
          description = "Optional. The MaintenancePolicies that have been attached to the instance. The key must be of the type name of the oneof policy name defined in MaintenancePolicy, and the embedded policy must define the same policy type. For complete details of MaintenancePolicy, please refer to go/cloud-saas-mw-ug. If only the name is needed, then only populate MaintenancePolicy.name.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata = {
      description = "Node information for custom per-node SLO implementations. SSA does not support per-node SLO, but producers can populate per-node information in SloMetadata for custom precomputations. SSA Eligibility Exporter will emit per-node metric based on this information.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata",
      properties = {
        location = {
          description = "The location of the node, if different from instance location.",
          type = "string",
        },
        nodeId = {
          description = "The id of the node. This should be equal to SaasInstanceNode.node_id.",
          type = "string",
        },
        perSliEligibility = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility",
          description = "If present, this will override eligibility for the node coming from instance or exclusions for specified SLIs.",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter = {
      description = "Contains notification related data.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1NotificationParameter",
      properties = {
        values = {
          description = "Optional. Array of string values. e.g. instance's replica information.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility = {
      description = "PerSliSloEligibility is a mapping from an SLI name to eligibility.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility",
      properties = {
        eligibilities = {
          additionalProperties = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility",
          },
          description = "An entry in the eligibilities map specifies an eligibility for a particular SLI for the given instance. The SLI key in the name must be a valid SLI name specified in the Eligibility Exporter binary flags otherwise an error will be emitted by Eligibility Exporter and the oncaller will be alerted. If an SLI has been defined in the binary flags but the eligibilities map does not contain it, the corresponding SLI time series will not be emitted by the Eligibility Exporter. This ensures a smooth rollout and compatibility between the data produced by different versions of the Eligibility Exporters. If eligibilities map contains a key for an SLI which has not been declared in the binary flags, there will be an error message emitted in the Eligibility Exporter log and the metric for the SLI in question will not be emitted.",
          type = "object",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource = {
      description = "Describes provisioned dataplane resources.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1ProvisionedResource",
      properties = {
        resourceType = {
          description = "Type of the resource. This can be either a GCP resource or a custom one (e.g. another cloud provider's VM). For GCP compute resources use singular form of the names listed in GCP compute API documentation (https://cloud.google.com/compute/docs/reference/rest/v1/), prefixed with 'compute-', for example: 'compute-instance', 'compute-disk', 'compute-autoscaler'.",
          type = "string",
        },
        resourceUrl = {
          description = "URL identifying the resource, e.g. \"https://www.googleapis.com/compute/v1/projects/...)\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility = {
      description = "SloEligibility is a tuple containing eligibility value: true if an instance is eligible for SLO calculation or false if it should be excluded from all SLO-related calculations along with a user-defined reason.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1SloEligibility",
      properties = {
        eligible = {
          description = "Whether an instance is eligible or ineligible.",
          type = "boolean",
        },
        reason = {
          description = "User-defined reason for the current value of instance eligibility. Usually, this can be directly mapped to the internal state. An empty reason is allowed.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata = {
      description = "SloMetadata contains resources required for proper SLO classification of the instance.",
      id = "GoogleCloudSaasacceleratorManagementProvidersV1SloMetadata",
      properties = {
        nodes = {
          description = "Optional. List of nodes. Some producers need to use per-node metadata to calculate SLO. This field allows such producers to publish per-node SLO meta data, which will be consumed by SSA Eligibility Exporter and published in the form of per node metric to Monarch.",
          items = {
            ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1NodeSloMetadata",
          },
          type = "array",
        },
        perSliEligibility = {
          ["$ref"] = "GoogleCloudSaasacceleratorManagementProvidersV1PerSliSloEligibility",
          description = "Optional. Multiple per-instance SLI eligibilities which apply for individual SLIs.",
        },
        tier = {
          description = "Name of the SLO tier the Instance belongs to. This name will be expected to match the tiers specified in the service SLO configuration. Field is mandatory and must not be empty.",
          type = "string",
        },
      },
      type = "object",
    },
    LDAPSSettings = {
      description = "LDAPSSettings represents the ldaps settings for domain resource. LDAP is the Lightweight Directory Access Protocol, defined in https://tools.ietf.org/html/rfc4511. The settings object configures LDAP over SSL/TLS, whether it is over port 636 or the StartTLS operation. If LDAPSSettings is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.",
      id = "LDAPSSettings",
      properties = {
        certificate = {
          ["$ref"] = "Certificate",
          description = "Output only. The certificate used to configure LDAPS. Certificates can be chained with a maximum length of 15.",
          readOnly = true,
        },
        certificatePassword = {
          description = "Input only. The password used to encrypt the uploaded PFX certificate.",
          type = "string",
        },
        certificatePfx = {
          description = "Input only. The uploaded PKCS12-formatted certificate to configure LDAPS with. It will enable the domain controllers in this domain to accept LDAPS connections (either LDAP over SSL/TLS or the StartTLS operation). A valid certificate chain must form a valid x.509 certificate chain (or be comprised of a single self-signed certificate. It must be encrypted with either: 1) PBES2 + PBKDF2 + AES256 encryption and SHA256 PRF; or 2) pbeWithSHA1And3-KeyTripleDES-CBC Private key must be included for the leaf / single self-signed certificate. Note: For a fqdn your-example-domain.com, the wildcard fqdn is *.your-example-domain.com. Specifically the leaf certificate must have: - Either a blank subject or a subject with CN matching the wildcard fqdn. - Exactly two SANs - the fqdn and wildcard fqdn. - Encipherment and digital key signature key usages. - Server authentication extended key usage (OID=1.3.6.1.5.5.7.3.1) - Private key must be in one of the following formats: RSA, ECDSA, ED25519. - Private key must have appropriate key length: 2048 for RSA, 256 for ECDSA - Signature algorithm of the leaf certificate cannot be MD2, MD5 or SHA1.",
          format = "byte",
          type = "string",
        },
        name = {
          description = "The resource name of the LDAPS settings. Uses the form: `projects/{project}/locations/{location}/domains/{domain}`.",
          type = "string",
        },
        state = {
          description = "Output only. The current state of this LDAPS settings.",
          enum = {
            "STATE_UNSPECIFIED",
            "UPDATING",
            "ACTIVE",
            "FAILED",
          },
          enumDescriptions = {
            "Not Set",
            "The LDAPS setting is being updated.",
            "The LDAPS setting is ready.",
            "The LDAPS setting is not applied correctly.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListBackupsResponse = {
      description = "ListBackupsResponse is the response message for ListBackups method.",
      id = "ListBackupsResponse",
      properties = {
        backups = {
          description = "A list of Cloud AD backups in the domain.",
          items = {
            ["$ref"] = "Backup",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
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
    ListDomainsResponse = {
      description = "Response message for ListDomains",
      id = "ListDomainsResponse",
      properties = {
        domains = {
          description = "A list of Managed Identities Service domains in the project.",
          items = {
            ["$ref"] = "Domain",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results, or empty if there are no more results in the list.",
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
    ListPeeringsResponse = {
      description = "ListPeeringsResponse is the response message for ListPeerings method.",
      id = "ListPeeringsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        peerings = {
          description = "A list of Managed Identities Service Peerings in the project.",
          items = {
            ["$ref"] = "Peering",
          },
          type = "array",
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
    ListSqlIntegrationsResponse = {
      description = "ListSqlIntegrationsResponse is the response message for ListSqlIntegrations method.",
      id = "ListSqlIntegrationsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        sqlIntegrations = {
          description = "A list of SQLIntegrations of a domain.",
          items = {
            ["$ref"] = "SqlIntegration",
          },
          type = "array",
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
    MaintenancePolicy = {
      description = "LINT.IfChange Defines policies to service maintenance events.",
      id = "MaintenancePolicy",
      properties = {
        createTime = {
          description = "Output only. The time when the resource was created.",
          format = "google-datetime",
          type = "string",
        },
        description = {
          description = "Optional. Description of what this policy is for. Create/Update methods return INVALID_ARGUMENT if the length is greater than 512.",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user provided metadata. Each label is a key-value pair, where both the key and the value are arbitrary strings provided by the user.",
          type = "object",
        },
        name = {
          description = "Required. MaintenancePolicy name using the form: `projects/{project_id}/locations/{location_id}/maintenancePolicies/{maintenance_policy_id}` where {project_id} refers to a GCP consumer project ID, {location_id} refers to a GCP region/zone, {maintenance_policy_id} must be 1-63 characters long and match the regular expression `[a-z0-9]([-a-z0-9]*[a-z0-9])?`.",
          type = "string",
        },
        state = {
          description = "Optional. The state of the policy.",
          enum = {
            "STATE_UNSPECIFIED",
            "READY",
            "DELETING",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Resource is ready to be used.",
            "Resource is being deleted. It can no longer be attached to instances.",
          },
          type = "string",
        },
        updatePolicy = {
          ["$ref"] = "UpdatePolicy",
          description = "Maintenance policy applicable to instance update.",
        },
        updateTime = {
          description = "Output only. The time when the resource was updated.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    MaintenanceWindow = {
      description = "MaintenanceWindow definition.",
      id = "MaintenanceWindow",
      properties = {
        dailyCycle = {
          ["$ref"] = "DailyCycle",
          description = "Daily cycle.",
        },
        weeklyCycle = {
          ["$ref"] = "WeeklyCycle",
          description = "Weekly cycle.",
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
    Peering = {
      description = "Represents a Managed Service for Microsoft Active Directory Peering.",
      id = "Peering",
      properties = {
        authorizedNetwork = {
          description = "Required. The full names of the Google Compute Engine [networks](/compute/docs/networks-and-firewalls#networks) to which the instance is connected. Caller needs to make sure that CIDR subnets do not overlap between networks, else peering creation will fail.",
          type = "string",
        },
        createTime = {
          description = "Output only. The time the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        domainResource = {
          description = "Required. Full domain resource path for the Managed AD Domain involved in peering. The resource path should be in the form: `projects/{project_id}/locations/global/domains/{domain_name}`",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Resource labels to represent user-provided metadata.",
          type = "object",
        },
        name = {
          description = "Output only. Unique name of the peering in this scope including projects and location using the form: `projects/{project_id}/locations/global/peerings/{peering_id}`.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of this Peering.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "CONNECTED",
            "DISCONNECTED",
            "DELETING",
          },
          enumDescriptions = {
            "Not set.",
            "Peering is being created.",
            "Peering is connected.",
            "Peering is disconnected.",
            "Peering is being deleted.",
          },
          readOnly = true,
          type = "string",
        },
        statusMessage = {
          description = "Output only. Additional information about the current status of this peering, if available.",
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Last update time.",
          format = "google-datetime",
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
    ReconfigureTrustRequest = {
      description = "Request message for ReconfigureTrust",
      id = "ReconfigureTrustRequest",
      properties = {
        targetDnsIpAddresses = {
          description = "Required. The target DNS server IP addresses to resolve the remote domain involved in the trust.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetDomainName = {
          description = "Required. The fully-qualified target domain name which will be in trust with current domain.",
          type = "string",
        },
      },
      type = "object",
    },
    ResetAdminPasswordRequest = {
      description = "Request message for ResetAdminPassword",
      id = "ResetAdminPasswordRequest",
      properties = {},
      type = "object",
    },
    ResetAdminPasswordResponse = {
      description = "Response message for ResetAdminPassword",
      id = "ResetAdminPasswordResponse",
      properties = {
        password = {
          description = "A random password. See admin for more information.",
          type = "string",
        },
      },
      type = "object",
    },
    RestoreDomainRequest = {
      description = "RestoreDomainRequest is the request received by RestoreDomain rpc",
      id = "RestoreDomainRequest",
      properties = {
        backupId = {
          description = "Required. ID of the backup to be restored",
          type = "string",
        },
      },
      type = "object",
    },
    Schedule = {
      description = "Configure the schedule.",
      id = "Schedule",
      properties = {
        day = {
          description = "Allows to define schedule that runs specified day of the week.",
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
        duration = {
          description = "Output only. Duration of the time window, set by service producer.",
          format = "google-duration",
          type = "string",
        },
        startTime = {
          ["$ref"] = "TimeOfDay",
          description = "Time within the window to start the operations.",
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
    SqlIntegration = {
      description = "Represents the SQL instance integrated with Managed AD.",
      id = "SqlIntegration",
      properties = {
        createTime = {
          description = "Output only. The time the SQL integration was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "The unique name of the SQL integration in the form of `projects/{project_id}/locations/global/domains/{domain_name}/sqlIntegrations/{sql_integration}`",
          type = "string",
        },
        sqlInstance = {
          description = "The full resource name of an integrated SQL instance",
          type = "string",
        },
        state = {
          description = "Output only. The current state of the SQL integration.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "DELETING",
            "READY",
          },
          enumDescriptions = {
            "Not Set",
            "The SQL integration is being created.",
            "The SQL integration is being deleted.",
            "The SQL integration is ready.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The time the SQL integration was updated.",
          format = "google-datetime",
          readOnly = true,
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
    TimeOfDay = {
      description = "Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.",
      id = "TimeOfDay",
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
    Trust = {
      description = "Represents a relationship between two domains. This allows a controller in one domain to authenticate a user in another domain. If the trust is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.",
      id = "Trust",
      properties = {
        createTime = {
          description = "Output only. The time the instance was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        lastTrustHeartbeatTime = {
          description = "Output only. The last heartbeat time when the trust was known to be connected.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        selectiveAuthentication = {
          description = "Optional. The trust authentication type, which decides whether the trusted side has forest/domain wide access or selective access to an approved set of resources.",
          type = "boolean",
        },
        state = {
          description = "Output only. The current state of the trust.",
          enum = {
            "STATE_UNSPECIFIED",
            "CREATING",
            "UPDATING",
            "DELETING",
            "CONNECTED",
            "DISCONNECTED",
          },
          enumDescriptions = {
            "Not set.",
            "The domain trust is being created.",
            "The domain trust is being updated.",
            "The domain trust is being deleted.",
            "The domain trust is connected.",
            "The domain trust is disconnected.",
          },
          readOnly = true,
          type = "string",
        },
        stateDescription = {
          description = "Output only. Additional information about the current state of the trust, if available.",
          readOnly = true,
          type = "string",
        },
        targetDnsIpAddresses = {
          description = "Required. The target DNS server IP addresses which can resolve the remote domain involved in the trust.",
          items = {
            type = "string",
          },
          type = "array",
        },
        targetDomainName = {
          description = "Required. The fully qualified target domain name which will be in trust with the current domain.",
          type = "string",
        },
        trustDirection = {
          description = "Required. The trust direction, which decides if the current domain is trusted, trusting, or both.",
          enum = {
            "TRUST_DIRECTION_UNSPECIFIED",
            "INBOUND",
            "OUTBOUND",
            "BIDIRECTIONAL",
          },
          enumDescriptions = {
            "Not set.",
            "The inbound direction represents the trusting side.",
            "The outboud direction represents the trusted side.",
            "The bidirectional direction represents the trusted / trusting side.",
          },
          type = "string",
        },
        trustHandshakeSecret = {
          description = "Required. The trust secret used for the handshake with the target domain. This will not be stored.",
          type = "string",
        },
        trustType = {
          description = "Required. The type of trust represented by the trust resource.",
          enum = {
            "TRUST_TYPE_UNSPECIFIED",
            "FOREST",
            "EXTERNAL",
          },
          enumDescriptions = {
            "Not set.",
            "The forest trust.",
            "The external domain trust.",
          },
          type = "string",
        },
        updateTime = {
          description = "Output only. The last update time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    UpdatePolicy = {
      description = "Maintenance policy applicable to instance updates.",
      id = "UpdatePolicy",
      properties = {
        channel = {
          description = "Optional. Relative scheduling channel applied to resource.",
          enum = {
            "UPDATE_CHANNEL_UNSPECIFIED",
            "EARLIER",
            "LATER",
            "WEEK1",
            "WEEK2",
            "WEEK5",
          },
          enumDescriptions = {
            "Unspecified channel.",
            "Early channel within a customer project.",
            "Later channel within a customer project.",
            "! ! The follow channels can ONLY be used if you adopt the new MW system! ! ! NOTE: all WEEK channels are assumed to be under a weekly window. ! There is currently no dedicated channel definitions for Daily windows. ! If you use Daily window, the system will assume a 1d (24Hours) advanced ! notification period b/w EARLY and LATER. ! We may consider support more flexible daily channel specifications in ! the future. WEEK1 == EARLIER with minimum 7d advanced notification. {7d, 14d} The system will treat them equally and will use WEEK1 whenever it can. New customers are encouraged to use this channel annotation.",
            "WEEK2 == LATER with minimum 14d advanced notification {14d, 21d}.",
            "WEEK5 == 40d support. minimum 35d advanced notification {35d, 42d}.",
          },
          type = "string",
        },
        denyMaintenancePeriods = {
          description = "Deny Maintenance Period that is applied to resource to indicate when maintenance is forbidden. User can specify zero or more non-overlapping deny periods. Maximum number of deny_maintenance_periods expected is one.",
          items = {
            ["$ref"] = "DenyMaintenancePeriod",
          },
          type = "array",
        },
        window = {
          ["$ref"] = "MaintenanceWindow",
          description = "Optional. Maintenance window that is applied to resources covered by this policy.",
        },
      },
      type = "object",
    },
    ValidateTrustRequest = {
      description = "Request message for ValidateTrust",
      id = "ValidateTrustRequest",
      properties = {
        trust = {
          ["$ref"] = "Trust",
          description = "Required. The domain trust to validate trust state for.",
        },
      },
      type = "object",
    },
    WeeklyCycle = {
      description = "Time window specified for weekly operations.",
      id = "WeeklyCycle",
      properties = {
        schedule = {
          description = "User can specify multiple windows in a week. Minimum of 1 window.",
          items = {
            ["$ref"] = "Schedule",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Managed Service for Microsoft Active Directory API",
  version = "v1",
  version_module = true,
}
