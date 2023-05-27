return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
        ["https://www.googleapis.com/auth/ndev.clouddns.readonly"] = {
          description = "View your DNS records hosted by Google Cloud DNS",
        },
        ["https://www.googleapis.com/auth/ndev.clouddns.readwrite"] = {
          description = "View and manage your DNS records hosted by Google Cloud DNS",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://dns.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Dns",
  description = "",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/dns/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "dns:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://dns.mtls.googleapis.com/",
  name = "dns",
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
    changes = {
      methods = {
        create = {
          description = "Atomically updates the ResourceRecordSet collection.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/changes",
          httpMethod = "POST",
          id = "dns.changes.create",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/changes",
          request = {
            ["$ref"] = "Change",
          },
          response = {
            ["$ref"] = "Change",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        get = {
          description = "Fetches the representation of an existing Change.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/changes/{changeId}",
          httpMethod = "GET",
          id = "dns.changes.get",
          parameterOrder = {
            "project",
            "managedZone",
            "changeId",
          },
          parameters = {
            changeId = {
              description = "The identifier of the requested change, from a previous ResourceRecordSetsChangeResponse.",
              location = "path",
              required = true,
              type = "string",
            },
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/changes/{changeId}",
          response = {
            ["$ref"] = "Change",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates Changes to a ResourceRecordSet collection.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/changes",
          httpMethod = "GET",
          id = "dns.changes.list",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            sortBy = {
              default = "changeSequence",
              description = "Sorting criterion. The only supported value is change sequence.",
              enum = {
                "changeSequence",
              },
              enumDescriptions = {
                "",
              },
              location = "query",
              type = "string",
            },
            sortOrder = {
              description = "Sorting order direction: 'ascending' or 'descending'.",
              location = "query",
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/changes",
          response = {
            ["$ref"] = "ChangesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    dnsKeys = {
      methods = {
        get = {
          description = "Fetches the representation of an existing DnsKey.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}",
          httpMethod = "GET",
          id = "dns.dnsKeys.get",
          parameterOrder = {
            "project",
            "managedZone",
            "dnsKeyId",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            digestType = {
              description = "An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recommended digest type is computed and displayed.",
              location = "query",
              type = "string",
            },
            dnsKeyId = {
              description = "The identifier of the requested DnsKey.",
              location = "path",
              required = true,
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys/{dnsKeyId}",
          response = {
            ["$ref"] = "DnsKey",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates DnsKeys to a ResourceRecordSet collection.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys",
          httpMethod = "GET",
          id = "dns.dnsKeys.list",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            digestType = {
              description = "An optional comma-separated list of digest types to compute and display for key signing keys. If omitted, the recommended digest type is computed and displayed.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/dnsKeys",
          response = {
            ["$ref"] = "DnsKeysListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    managedZoneOperations = {
      methods = {
        get = {
          description = "Fetches the representation of an existing Operation.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/operations/{operation}",
          httpMethod = "GET",
          id = "dns.managedZoneOperations.get",
          parameterOrder = {
            "project",
            "managedZone",
            "operation",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            operation = {
              description = "Identifies the operation addressed by this request (ID of the operation).",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/operations/{operation}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates Operations for the given ManagedZone.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/operations",
          httpMethod = "GET",
          id = "dns.managedZoneOperations.list",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            managedZone = {
              description = "Identifies the managed zone addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            sortBy = {
              default = "startTime",
              description = "Sorting criterion. The only supported values are START_TIME and ID.",
              enum = {
                "startTime",
                "id",
              },
              enumDescriptions = {
                "",
                "",
              },
              location = "query",
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/operations",
          response = {
            ["$ref"] = "ManagedZoneOperationsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    managedZones = {
      methods = {
        create = {
          description = "Creates a new ManagedZone.",
          flatPath = "dns/v1/projects/{project}/managedZones",
          httpMethod = "POST",
          id = "dns.managedZones.create",
          parameterOrder = {
            "project",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones",
          request = {
            ["$ref"] = "ManagedZone",
          },
          response = {
            ["$ref"] = "ManagedZone",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        delete = {
          description = "Deletes a previously created ManagedZone.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}",
          httpMethod = "DELETE",
          id = "dns.managedZones.delete",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        get = {
          description = "Fetches the representation of an existing ManagedZone.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}",
          httpMethod = "GET",
          id = "dns.managedZones.get",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}",
          response = {
            ["$ref"] = "ManagedZone",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.",
          flatPath = "dns/v1/projects/{projectsId}/managedZones/{managedZonesId}:getIamPolicy",
          httpMethod = "POST",
          id = "dns.managedZones.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/managedZones/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GoogleIamV1GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "GoogleIamV1Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates ManagedZones that have been created but not yet deleted.",
          flatPath = "dns/v1/projects/{project}/managedZones",
          httpMethod = "GET",
          id = "dns.managedZones.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            dnsName = {
              description = "Restricts the list to return only zones with this domain name.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones",
          response = {
            ["$ref"] = "ManagedZonesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        patch = {
          description = "Applies a partial update to an existing ManagedZone.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}",
          httpMethod = "PATCH",
          id = "dns.managedZones.patch",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}",
          request = {
            ["$ref"] = "ManagedZone",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.",
          flatPath = "dns/v1/projects/{projectsId}/managedZones/{managedZonesId}:setIamPolicy",
          httpMethod = "POST",
          id = "dns.managedZones.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/managedZones/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/{+resource}:setIamPolicy",
          request = {
            ["$ref"] = "GoogleIamV1SetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "GoogleIamV1Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        testIamPermissions = {
          description = "Returns permissions that a caller has on the specified resource. If the resource does not exist, this returns an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may \"fail open\" without warning.",
          flatPath = "dns/v1/projects/{projectsId}/managedZones/{managedZonesId}:testIamPermissions",
          httpMethod = "POST",
          id = "dns.managedZones.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+/managedZones/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/{+resource}:testIamPermissions",
          request = {
            ["$ref"] = "GoogleIamV1TestIamPermissionsRequest",
          },
          response = {
            ["$ref"] = "GoogleIamV1TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        update = {
          description = "Updates an existing ManagedZone.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}",
          httpMethod = "PUT",
          id = "dns.managedZones.update",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}",
          request = {
            ["$ref"] = "ManagedZone",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    policies = {
      methods = {
        create = {
          description = "Creates a new Policy.",
          flatPath = "dns/v1/projects/{project}/policies",
          httpMethod = "POST",
          id = "dns.policies.create",
          parameterOrder = {
            "project",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/policies",
          request = {
            ["$ref"] = "Policy",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        delete = {
          description = "Deletes a previously created Policy. Fails if the policy is still being referenced by a network.",
          flatPath = "dns/v1/projects/{project}/policies/{policy}",
          httpMethod = "DELETE",
          id = "dns.policies.delete",
          parameterOrder = {
            "project",
            "policy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            policy = {
              description = "User given friendly name of the policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/policies/{policy}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        get = {
          description = "Fetches the representation of an existing Policy.",
          flatPath = "dns/v1/projects/{project}/policies/{policy}",
          httpMethod = "GET",
          id = "dns.policies.get",
          parameterOrder = {
            "project",
            "policy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            policy = {
              description = "User given friendly name of the policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/policies/{policy}",
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates all Policies associated with a project.",
          flatPath = "dns/v1/projects/{project}/policies",
          httpMethod = "GET",
          id = "dns.policies.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/policies",
          response = {
            ["$ref"] = "PoliciesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        patch = {
          description = "Applies a partial update to an existing Policy.",
          flatPath = "dns/v1/projects/{project}/policies/{policy}",
          httpMethod = "PATCH",
          id = "dns.policies.patch",
          parameterOrder = {
            "project",
            "policy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            policy = {
              description = "User given friendly name of the policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/policies/{policy}",
          request = {
            ["$ref"] = "Policy",
          },
          response = {
            ["$ref"] = "PoliciesPatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        update = {
          description = "Updates an existing Policy.",
          flatPath = "dns/v1/projects/{project}/policies/{policy}",
          httpMethod = "PUT",
          id = "dns.policies.update",
          parameterOrder = {
            "project",
            "policy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            policy = {
              description = "User given friendly name of the policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/policies/{policy}",
          request = {
            ["$ref"] = "Policy",
          },
          response = {
            ["$ref"] = "PoliciesUpdateResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    projects = {
      methods = {
        get = {
          description = "Fetches the representation of an existing Project.",
          flatPath = "dns/v1/projects/{project}",
          httpMethod = "GET",
          id = "dns.projects.get",
          parameterOrder = {
            "project",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}",
          response = {
            ["$ref"] = "Project",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    resourceRecordSets = {
      methods = {
        create = {
          description = "Creates a new ResourceRecordSet.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets",
          httpMethod = "POST",
          id = "dns.resourceRecordSets.create",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets",
          request = {
            ["$ref"] = "ResourceRecordSet",
          },
          response = {
            ["$ref"] = "ResourceRecordSet",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        delete = {
          description = "Deletes a previously created ResourceRecordSet.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}",
          httpMethod = "DELETE",
          id = "dns.resourceRecordSets.delete",
          parameterOrder = {
            "project",
            "managedZone",
            "name",
            "type",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "Fully qualified domain name.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            type = {
              description = "RRSet type.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}",
          response = {
            ["$ref"] = "ResourceRecordSetsDeleteResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        get = {
          description = "Fetches the representation of an existing ResourceRecordSet.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}",
          httpMethod = "GET",
          id = "dns.resourceRecordSets.get",
          parameterOrder = {
            "project",
            "managedZone",
            "name",
            "type",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "Fully qualified domain name.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            type = {
              description = "RRSet type.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}",
          response = {
            ["$ref"] = "ResourceRecordSet",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates ResourceRecordSets that you have created but not yet deleted.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets",
          httpMethod = "GET",
          id = "dns.resourceRecordSets.list",
          parameterOrder = {
            "project",
            "managedZone",
          },
          parameters = {
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            name = {
              description = "Restricts the list to return only records with this fully qualified domain name.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            type = {
              description = "Restricts the list to return only records of this type. If present, the \"name\" parameter must also be present.",
              location = "query",
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets",
          response = {
            ["$ref"] = "ResourceRecordSetsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        patch = {
          description = "Applies a partial update to an existing ResourceRecordSet.",
          flatPath = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}",
          httpMethod = "PATCH",
          id = "dns.resourceRecordSets.patch",
          parameterOrder = {
            "project",
            "managedZone",
            "name",
            "type",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            managedZone = {
              description = "Identifies the managed zone addressed by this request. Can be the managed zone name or ID.",
              location = "path",
              required = true,
              type = "string",
            },
            name = {
              description = "Fully qualified domain name.",
              location = "path",
              required = true,
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            type = {
              description = "RRSet type.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/managedZones/{managedZone}/rrsets/{name}/{type}",
          request = {
            ["$ref"] = "ResourceRecordSet",
          },
          response = {
            ["$ref"] = "ResourceRecordSet",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    responsePolicies = {
      methods = {
        create = {
          description = "Creates a new Response Policy",
          flatPath = "dns/v1/projects/{project}/responsePolicies",
          httpMethod = "POST",
          id = "dns.responsePolicies.create",
          parameterOrder = {
            "project",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies",
          request = {
            ["$ref"] = "ResponsePolicy",
          },
          response = {
            ["$ref"] = "ResponsePolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        delete = {
          description = "Deletes a previously created Response Policy. Fails if the response policy is non-empty or still being referenced by a network.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          httpMethod = "DELETE",
          id = "dns.responsePolicies.delete",
          parameterOrder = {
            "project",
            "responsePolicy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        get = {
          description = "Fetches the representation of an existing Response Policy.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          httpMethod = "GET",
          id = "dns.responsePolicies.get",
          parameterOrder = {
            "project",
            "responsePolicy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          response = {
            ["$ref"] = "ResponsePolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates all Response Policies associated with a project.",
          flatPath = "dns/v1/projects/{project}/responsePolicies",
          httpMethod = "GET",
          id = "dns.responsePolicies.list",
          parameterOrder = {
            "project",
          },
          parameters = {
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies",
          response = {
            ["$ref"] = "ResponsePoliciesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        patch = {
          description = "Applies a partial update to an existing Response Policy.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          httpMethod = "PATCH",
          id = "dns.responsePolicies.patch",
          parameterOrder = {
            "project",
            "responsePolicy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the response policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          request = {
            ["$ref"] = "ResponsePolicy",
          },
          response = {
            ["$ref"] = "ResponsePoliciesPatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        update = {
          description = "Updates an existing Response Policy.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          httpMethod = "PUT",
          id = "dns.responsePolicies.update",
          parameterOrder = {
            "project",
            "responsePolicy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}",
          request = {
            ["$ref"] = "ResponsePolicy",
          },
          response = {
            ["$ref"] = "ResponsePoliciesUpdateResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
    responsePolicyRules = {
      methods = {
        create = {
          description = "Creates a new Response Policy Rule.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules",
          httpMethod = "POST",
          id = "dns.responsePolicyRules.create",
          parameterOrder = {
            "project",
            "responsePolicy",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy containing the Response Policy Rule.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules",
          request = {
            ["$ref"] = "ResponsePolicyRule",
          },
          response = {
            ["$ref"] = "ResponsePolicyRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        delete = {
          description = "Deletes a previously created Response Policy Rule.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          httpMethod = "DELETE",
          id = "dns.responsePolicyRules.delete",
          parameterOrder = {
            "project",
            "responsePolicy",
            "responsePolicyRule",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy containing the Response Policy Rule.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicyRule = {
              description = "User assigned name of the Response Policy Rule addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        get = {
          description = "Fetches the representation of an existing Response Policy Rule.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          httpMethod = "GET",
          id = "dns.responsePolicyRules.get",
          parameterOrder = {
            "project",
            "responsePolicy",
            "responsePolicyRule",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy containing the Response Policy Rule.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicyRule = {
              description = "User assigned name of the Response Policy Rule addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          response = {
            ["$ref"] = "ResponsePolicyRule",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        list = {
          description = "Enumerates all Response Policy Rules associated with a project.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules",
          httpMethod = "GET",
          id = "dns.responsePolicyRules.list",
          parameterOrder = {
            "project",
            "responsePolicy",
          },
          parameters = {
            maxResults = {
              description = "Optional. Maximum number of results to be returned. If unspecified, the server decides how many results to return.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy to list.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules",
          response = {
            ["$ref"] = "ResponsePolicyRulesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
            "https://www.googleapis.com/auth/ndev.clouddns.readonly",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        patch = {
          description = "Applies a partial update to an existing Response Policy Rule.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          httpMethod = "PATCH",
          id = "dns.responsePolicyRules.patch",
          parameterOrder = {
            "project",
            "responsePolicy",
            "responsePolicyRule",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy containing the Response Policy Rule.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicyRule = {
              description = "User assigned name of the Response Policy Rule addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          request = {
            ["$ref"] = "ResponsePolicyRule",
          },
          response = {
            ["$ref"] = "ResponsePolicyRulesPatchResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
        update = {
          description = "Updates an existing Response Policy Rule.",
          flatPath = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          httpMethod = "PUT",
          id = "dns.responsePolicyRules.update",
          parameterOrder = {
            "project",
            "responsePolicy",
            "responsePolicyRule",
          },
          parameters = {
            clientOperationId = {
              description = "For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.",
              location = "query",
              type = "string",
            },
            project = {
              description = "Identifies the project addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicy = {
              description = "User assigned name of the Response Policy containing the Response Policy Rule.",
              location = "path",
              required = true,
              type = "string",
            },
            responsePolicyRule = {
              description = "User assigned name of the Response Policy Rule addressed by this request.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "dns/v1/projects/{project}/responsePolicies/{responsePolicy}/rules/{responsePolicyRule}",
          request = {
            ["$ref"] = "ResponsePolicyRule",
          },
          response = {
            ["$ref"] = "ResponsePolicyRulesUpdateResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/ndev.clouddns.readwrite",
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://dns.googleapis.com/",
  schemas = {
    Change = {
      description = "A Change represents a set of ResourceRecordSet additions and deletions applied atomically to a ManagedZone. ResourceRecordSets within a ManagedZone are modified by creating a new Change element in the Changes collection. In turn the Changes collection also records the past modifications to the ResourceRecordSets in a ManagedZone. The current state of the ManagedZone is the sum effect of applying all Change elements in the Changes collection in sequence.",
      id = "Change",
      properties = {
        additions = {
          description = "Which ResourceRecordSets to add?",
          items = {
            ["$ref"] = "ResourceRecordSet",
          },
          type = "array",
        },
        deletions = {
          description = "Which ResourceRecordSets to remove? Must match existing data exactly.",
          items = {
            ["$ref"] = "ResourceRecordSet",
          },
          type = "array",
        },
        id = {
          description = "Unique identifier for the resource; defined by the server (output only).",
          type = "string",
        },
        isServing = {
          description = "If the DNS queries for the zone will be served.",
          type = "boolean",
        },
        kind = {
          default = "dns#change",
          type = "string",
        },
        startTime = {
          description = "The time that this operation was started by the server (output only). This is in RFC3339 text format.",
          type = "string",
        },
        status = {
          description = "Status of the operation (output only). A status of \"done\" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.",
          enum = {
            "pending",
            "done",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ChangesListResponse = {
      description = "The response to a request to enumerate Changes to a ResourceRecordSets collection.",
      id = "ChangesListResponse",
      properties = {
        changes = {
          description = "The requested changes.",
          items = {
            ["$ref"] = "Change",
          },
          type = "array",
        },
        header = {
          ["$ref"] = "ResponseHeader",
        },
        kind = {
          default = "dns#changesListResponse",
          description = "Type of resource.",
          type = "string",
        },
        nextPageToken = {
          description = "The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token. This lets you retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a \"snapshot\" of collections larger than the maximum page size.",
          type = "string",
        },
      },
      type = "object",
    },
    DnsKey = {
      description = "A DNSSEC key pair.",
      id = "DnsKey",
      properties = {
        algorithm = {
          description = "String mnemonic specifying the DNSSEC algorithm of this key. Immutable after creation time.",
          enum = {
            "rsasha1",
            "rsasha256",
            "rsasha512",
            "ecdsap256sha256",
            "ecdsap384sha384",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        creationTime = {
          description = "The time that this resource was created in the control plane. This is in RFC3339 text format. Output only.",
          type = "string",
        },
        description = {
          description = "A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the resource's function.",
          type = "string",
        },
        digests = {
          description = "Cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. Output only.",
          items = {
            ["$ref"] = "DnsKeyDigest",
          },
          type = "array",
        },
        id = {
          description = "Unique identifier for the resource; defined by the server (output only).",
          type = "string",
        },
        isActive = {
          description = "Active keys are used to sign subsequent changes to the ManagedZone. Inactive keys are still present as DNSKEY Resource Records for the use of resolvers validating existing signatures.",
          type = "boolean",
        },
        keyLength = {
          description = "Length of the key in bits. Specified at creation time, and then immutable.",
          format = "uint32",
          type = "integer",
        },
        keyTag = {
          description = "The key tag is a non-cryptographic hash of the a DNSKEY resource record associated with this DnsKey. The key tag can be used to identify a DNSKEY more quickly (but it is not a unique identifier). In particular, the key tag is used in a parent zone's DS record to point at the DNSKEY in this child ManagedZone. The key tag is a number in the range [0, 65535] and the algorithm to calculate it is specified in RFC4034 Appendix B. Output only.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "dns#dnsKey",
          type = "string",
        },
        publicKey = {
          description = "Base64 encoded public half of this key. Output only.",
          type = "string",
        },
        type = {
          description = "One of \"KEY_SIGNING\" or \"ZONE_SIGNING\". Keys of type KEY_SIGNING have the Secure Entry Point flag set and, when active, are used to sign only resource record sets of type DNSKEY. Otherwise, the Secure Entry Point flag is cleared, and this key is used to sign only resource record sets of other types. Immutable after creation time.",
          enum = {
            "keySigning",
            "zoneSigning",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DnsKeyDigest = {
      id = "DnsKeyDigest",
      properties = {
        digest = {
          description = "The base-16 encoded bytes of this digest. Suitable for use in a DS resource record.",
          type = "string",
        },
        type = {
          description = "Specifies the algorithm used to calculate this digest.",
          enum = {
            "sha1",
            "sha256",
            "sha384",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DnsKeySpec = {
      description = "Parameters for DnsKey key generation. Used for generating initial keys for a new ManagedZone and as default when adding a new DnsKey.",
      id = "DnsKeySpec",
      properties = {
        algorithm = {
          description = "String mnemonic specifying the DNSSEC algorithm of this key.",
          enum = {
            "rsasha1",
            "rsasha256",
            "rsasha512",
            "ecdsap256sha256",
            "ecdsap384sha384",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        keyLength = {
          description = "Length of the keys in bits.",
          format = "uint32",
          type = "integer",
        },
        keyType = {
          description = "Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK). Key signing keys have the Secure Entry Point flag set and, when active, are only used to sign resource record sets of type DNSKEY. Zone signing keys do not have the Secure Entry Point flag set and are used to sign all other types of resource record sets.",
          enum = {
            "keySigning",
            "zoneSigning",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        kind = {
          default = "dns#dnsKeySpec",
          type = "string",
        },
      },
      type = "object",
    },
    DnsKeysListResponse = {
      description = "The response to a request to enumerate DnsKeys in a ManagedZone.",
      id = "DnsKeysListResponse",
      properties = {
        dnsKeys = {
          description = "The requested resources.",
          items = {
            ["$ref"] = "DnsKey",
          },
          type = "array",
        },
        header = {
          ["$ref"] = "ResponseHeader",
        },
        kind = {
          default = "dns#dnsKeysListResponse",
          description = "Type of resource.",
          type = "string",
        },
        nextPageToken = {
          description = "The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token. In this way you can retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. There is no way to retrieve a \"snapshot\" of collections larger than the maximum page size.",
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
    GoogleIamV1GetIamPolicyRequest = {
      description = "Request message for `GetIamPolicy` method.",
      id = "GoogleIamV1GetIamPolicyRequest",
      properties = {
        options = {
          ["$ref"] = "GoogleIamV1GetPolicyOptions",
          description = "OPTIONAL: A `GetPolicyOptions` object for specifying options to `GetIamPolicy`.",
        },
      },
      type = "object",
    },
    GoogleIamV1GetPolicyOptions = {
      description = "Encapsulates settings provided to GetIamPolicy.",
      id = "GoogleIamV1GetPolicyOptions",
      properties = {
        requestedPolicyVersion = {
          description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
          format = "int32",
          type = "integer",
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
    ManagedZone = {
      description = "A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service.",
      id = "ManagedZone",
      properties = {
        cloudLoggingConfig = {
          ["$ref"] = "ManagedZoneCloudLoggingConfig",
        },
        creationTime = {
          description = "The time that this resource was created on the server. This is in RFC3339 text format. Output only.",
          type = "string",
        },
        description = {
          description = "A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the managed zone's function.",
          type = "string",
        },
        dnsName = {
          description = "The DNS name of this managed zone, for instance \"example.com.\".",
          type = "string",
        },
        dnssecConfig = {
          ["$ref"] = "ManagedZoneDnsSecConfig",
          description = "DNSSEC configuration.",
        },
        forwardingConfig = {
          ["$ref"] = "ManagedZoneForwardingConfig",
          description = "The presence for this field indicates that outbound forwarding is enabled for this zone. The value of this field contains the set of destinations to forward to.",
        },
        id = {
          description = "Unique identifier for the resource; defined by the server (output only)",
          format = "uint64",
          type = "string",
        },
        kind = {
          default = "dns#managedZone",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User labels.",
          type = "object",
        },
        name = {
          description = "User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes.",
          type = "string",
        },
        nameServerSet = {
          description = "Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users leave this field unset. If you need to use this field, contact your account team.",
          type = "string",
        },
        nameServers = {
          description = "Delegate your managed_zone to these virtual name servers; defined by the server (output only)",
          items = {
            type = "string",
          },
          type = "array",
        },
        peeringConfig = {
          ["$ref"] = "ManagedZonePeeringConfig",
          description = "The presence of this field indicates that DNS Peering is enabled for this zone. The value of this field contains the network to peer with.",
        },
        privateVisibilityConfig = {
          ["$ref"] = "ManagedZonePrivateVisibilityConfig",
          description = "For privately visible zones, the set of Virtual Private Cloud resources that the zone is visible from.",
        },
        reverseLookupConfig = {
          ["$ref"] = "ManagedZoneReverseLookupConfig",
          description = "The presence of this field indicates that this is a managed reverse lookup zone and Cloud DNS resolves reverse lookup queries using automatically configured records for VPC resources. This only applies to networks listed under private_visibility_config.",
        },
        serviceDirectoryConfig = {
          ["$ref"] = "ManagedZoneServiceDirectoryConfig",
          description = "This field links to the associated service directory namespace. Do not set this field for public zones or forwarding zones.",
        },
        visibility = {
          description = "The zone's visibility: public zones are exposed to the Internet, while private zones are visible only to Virtual Private Cloud resources.",
          enum = {
            "public",
            "private",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZoneCloudLoggingConfig = {
      description = "Cloud Logging configurations for publicly visible zones.",
      id = "ManagedZoneCloudLoggingConfig",
      properties = {
        enableLogging = {
          description = "If set, enable query logging for this ManagedZone. False by default, making logging opt-in.",
          type = "boolean",
        },
        kind = {
          default = "dns#managedZoneCloudLoggingConfig",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZoneDnsSecConfig = {
      id = "ManagedZoneDnsSecConfig",
      properties = {
        defaultKeySpecs = {
          description = "Specifies parameters for generating initial DnsKeys for this ManagedZone. Can only be changed while the state is OFF.",
          items = {
            ["$ref"] = "DnsKeySpec",
          },
          type = "array",
        },
        kind = {
          default = "dns#managedZoneDnsSecConfig",
          type = "string",
        },
        nonExistence = {
          description = "Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.",
          enum = {
            "nsec",
            "nsec3",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        state = {
          description = "Specifies whether DNSSEC is enabled, and what mode it is in.",
          enum = {
            "off",
            "on",
            "transfer",
          },
          enumDescriptions = {
            "DNSSEC is disabled; the zone is not signed.",
            "DNSSEC is enabled; the zone is signed and fully managed.",
            "DNSSEC is enabled, but in a \"transfer\" mode.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZoneForwardingConfig = {
      id = "ManagedZoneForwardingConfig",
      properties = {
        kind = {
          default = "dns#managedZoneForwardingConfig",
          type = "string",
        },
        targetNameServers = {
          description = "List of target name servers to forward to. Cloud DNS selects the best available name server if more than one target is given.",
          items = {
            ["$ref"] = "ManagedZoneForwardingConfigNameServerTarget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManagedZoneForwardingConfigNameServerTarget = {
      id = "ManagedZoneForwardingConfigNameServerTarget",
      properties = {
        forwardingPath = {
          description = "Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on IP address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.",
          enum = {
            "default",
            "private",
          },
          enumDescriptions = {
            "Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses forward to the target through the VPC and non-RFC1918 addresses forward to the target through the internet",
            "Cloud DNS always forwards to this target through the VPC.",
          },
          type = "string",
        },
        ipv4Address = {
          description = "IPv4 address of a target name server.",
          type = "string",
        },
        ipv6Address = {
          description = "IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.",
          type = "string",
        },
        kind = {
          default = "dns#managedZoneForwardingConfigNameServerTarget",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZoneOperationsListResponse = {
      id = "ManagedZoneOperationsListResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        kind = {
          default = "dns#managedZoneOperationsListResponse",
          description = "Type of resource.",
          type = "string",
        },
        nextPageToken = {
          description = "The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you retrieve the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.",
          type = "string",
        },
        operations = {
          description = "The operation resources.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManagedZonePeeringConfig = {
      id = "ManagedZonePeeringConfig",
      properties = {
        kind = {
          default = "dns#managedZonePeeringConfig",
          type = "string",
        },
        targetNetwork = {
          ["$ref"] = "ManagedZonePeeringConfigTargetNetwork",
          description = "The network with which to peer.",
        },
      },
      type = "object",
    },
    ManagedZonePeeringConfigTargetNetwork = {
      id = "ManagedZonePeeringConfigTargetNetwork",
      properties = {
        deactivateTime = {
          description = "The time at which the zone was deactivated, in RFC 3339 date-time format. An empty string indicates that the peering connection is active. The producer network can deactivate a zone. The zone is automatically deactivated if the producer network that the zone targeted is deleted. Output only.",
          type = "string",
        },
        kind = {
          default = "dns#managedZonePeeringConfigTargetNetwork",
          type = "string",
        },
        networkUrl = {
          description = "The fully qualified URL of the VPC network to forward queries to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZonePrivateVisibilityConfig = {
      id = "ManagedZonePrivateVisibilityConfig",
      properties = {
        gkeClusters = {
          description = "The list of Google Kubernetes Engine clusters that can see this zone.",
          items = {
            ["$ref"] = "ManagedZonePrivateVisibilityConfigGKECluster",
          },
          type = "array",
        },
        kind = {
          default = "dns#managedZonePrivateVisibilityConfig",
          type = "string",
        },
        networks = {
          description = "The list of VPC networks that can see this zone.",
          items = {
            ["$ref"] = "ManagedZonePrivateVisibilityConfigNetwork",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManagedZonePrivateVisibilityConfigGKECluster = {
      id = "ManagedZonePrivateVisibilityConfigGKECluster",
      properties = {
        gkeClusterName = {
          description = "The resource name of the cluster to bind this ManagedZone to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get",
          type = "string",
        },
        kind = {
          default = "dns#managedZonePrivateVisibilityConfigGKECluster",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZonePrivateVisibilityConfigNetwork = {
      id = "ManagedZonePrivateVisibilityConfigNetwork",
      properties = {
        kind = {
          default = "dns#managedZonePrivateVisibilityConfigNetwork",
          type = "string",
        },
        networkUrl = {
          description = "The fully qualified URL of the VPC network to bind to. Format this URL like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZoneReverseLookupConfig = {
      id = "ManagedZoneReverseLookupConfig",
      properties = {
        kind = {
          default = "dns#managedZoneReverseLookupConfig",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZoneServiceDirectoryConfig = {
      description = "Contains information about Service Directory-backed zones.",
      id = "ManagedZoneServiceDirectoryConfig",
      properties = {
        kind = {
          default = "dns#managedZoneServiceDirectoryConfig",
          type = "string",
        },
        namespace = {
          ["$ref"] = "ManagedZoneServiceDirectoryConfigNamespace",
          description = "Contains information about the namespace associated with the zone.",
        },
      },
      type = "object",
    },
    ManagedZoneServiceDirectoryConfigNamespace = {
      id = "ManagedZoneServiceDirectoryConfigNamespace",
      properties = {
        deletionTime = {
          description = "The time that the namespace backing this zone was deleted; an empty string if it still exists. This is in RFC3339 text format. Output only.",
          type = "string",
        },
        kind = {
          default = "dns#managedZoneServiceDirectoryConfigNamespace",
          type = "string",
        },
        namespaceUrl = {
          description = "The fully qualified URL of the namespace associated with the zone. Format must be https://servicedirectory.googleapis.com/v1/projects/{project}/locations/{location}/namespaces/{namespace}",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedZonesListResponse = {
      id = "ManagedZonesListResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        kind = {
          default = "dns#managedZonesListResponse",
          description = "Type of resource.",
          type = "string",
        },
        managedZones = {
          description = "The managed zone resources.",
          items = {
            ["$ref"] = "ManagedZone",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.",
          type = "string",
        },
      },
      type = "object",
    },
    Operation = {
      description = "An operation represents a successful mutation performed on a Cloud DNS resource. Operations provide: - An audit log of server resource mutations. - A way to recover/retry API calls in the case where the response is never received by the caller. Use the caller specified client_operation_id.",
      id = "Operation",
      properties = {
        dnsKeyContext = {
          ["$ref"] = "OperationDnsKeyContext",
          description = "Only populated if the operation targeted a DnsKey (output only).",
        },
        id = {
          description = "Unique identifier for the resource. This is the client_operation_id if the client specified it when the mutation was initiated, otherwise, it is generated by the server. The name must be 1-63 characters long and match the regular expression [-a-z0-9]? (output only)",
          type = "string",
        },
        kind = {
          default = "dns#operation",
          type = "string",
        },
        startTime = {
          description = "The time that this operation was started by the server. This is in RFC3339 text format (output only).",
          type = "string",
        },
        status = {
          description = "Status of the operation. Can be one of the following: \"PENDING\" or \"DONE\" (output only). A status of \"DONE\" means that the request to update the authoritative servers has been sent, but the servers might not be updated yet.",
          enum = {
            "pending",
            "done",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        type = {
          description = "Type of the operation. Operations include insert, update, and delete (output only).",
          type = "string",
        },
        user = {
          description = "User who requested the operation, for example: user@example.com. cloud-dns-system for operations automatically done by the system. (output only)",
          type = "string",
        },
        zoneContext = {
          ["$ref"] = "OperationManagedZoneContext",
          description = "Only populated if the operation targeted a ManagedZone (output only).",
        },
      },
      type = "object",
    },
    OperationDnsKeyContext = {
      id = "OperationDnsKeyContext",
      properties = {
        newValue = {
          ["$ref"] = "DnsKey",
          description = "The post-operation DnsKey resource.",
        },
        oldValue = {
          ["$ref"] = "DnsKey",
          description = "The pre-operation DnsKey resource.",
        },
      },
      type = "object",
    },
    OperationManagedZoneContext = {
      id = "OperationManagedZoneContext",
      properties = {
        newValue = {
          ["$ref"] = "ManagedZone",
          description = "The post-operation ManagedZone resource.",
        },
        oldValue = {
          ["$ref"] = "ManagedZone",
          description = "The pre-operation ManagedZone resource.",
        },
      },
      type = "object",
    },
    PoliciesListResponse = {
      id = "PoliciesListResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        kind = {
          default = "dns#policiesListResponse",
          description = "Type of resource.",
          type = "string",
        },
        nextPageToken = {
          description = "The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.",
          type = "string",
        },
        policies = {
          description = "The policy resources.",
          items = {
            ["$ref"] = "Policy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PoliciesPatchResponse = {
      id = "PoliciesPatchResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        policy = {
          ["$ref"] = "Policy",
        },
      },
      type = "object",
    },
    PoliciesUpdateResponse = {
      id = "PoliciesUpdateResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        policy = {
          ["$ref"] = "Policy",
        },
      },
      type = "object",
    },
    Policy = {
      description = "A policy is a collection of DNS rules applied to one or more Virtual Private Cloud resources.",
      id = "Policy",
      properties = {
        alternativeNameServerConfig = {
          ["$ref"] = "PolicyAlternativeNameServerConfig",
          description = "Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.",
        },
        description = {
          description = "A mutable string of at most 1024 characters associated with this resource for the user's convenience. Has no effect on the policy's function.",
          type = "string",
        },
        enableInboundForwarding = {
          description = "Allows networks bound to this policy to receive DNS queries sent by VMs or applications over VPN connections. When enabled, a virtual IP address is allocated from each of the subnetworks that are bound to this policy.",
          type = "boolean",
        },
        enableLogging = {
          description = "Controls whether logging is enabled for the networks bound to this policy. Defaults to no logging if not set.",
          type = "boolean",
        },
        id = {
          description = "Unique identifier for the resource; defined by the server (output only).",
          format = "uint64",
          type = "string",
        },
        kind = {
          default = "dns#policy",
          type = "string",
        },
        name = {
          description = "User-assigned name for this policy.",
          type = "string",
        },
        networks = {
          description = "List of network names specifying networks to which this policy is applied.",
          items = {
            ["$ref"] = "PolicyNetwork",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PolicyAlternativeNameServerConfig = {
      id = "PolicyAlternativeNameServerConfig",
      properties = {
        kind = {
          default = "dns#policyAlternativeNameServerConfig",
          type = "string",
        },
        targetNameServers = {
          description = "Sets an alternative name server for the associated networks. When specified, all DNS queries are forwarded to a name server that you choose. Names such as .internal are not available when an alternative name server is specified.",
          items = {
            ["$ref"] = "PolicyAlternativeNameServerConfigTargetNameServer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    PolicyAlternativeNameServerConfigTargetNameServer = {
      id = "PolicyAlternativeNameServerConfigTargetNameServer",
      properties = {
        forwardingPath = {
          description = "Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud DNS makes forwarding decisions based on address ranges; that is, RFC1918 addresses go to the VPC network, non-RFC1918 addresses go to the internet. When set to PRIVATE, Cloud DNS always sends queries through the VPC network for this target.",
          enum = {
            "default",
            "private",
          },
          enumDescriptions = {
            "Cloud DNS makes forwarding decision based on IP address ranges; that is, RFC1918 addresses forward to the target through the VPC and non-RFC1918 addresses forward to the target through the internet",
            "Cloud DNS always forwards to this target through the VPC.",
          },
          type = "string",
        },
        ipv4Address = {
          description = "IPv4 address to forward queries to.",
          type = "string",
        },
        ipv6Address = {
          description = "IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being populated. Public preview as of November 2022.",
          type = "string",
        },
        kind = {
          default = "dns#policyAlternativeNameServerConfigTargetNameServer",
          type = "string",
        },
      },
      type = "object",
    },
    PolicyNetwork = {
      id = "PolicyNetwork",
      properties = {
        kind = {
          default = "dns#policyNetwork",
          type = "string",
        },
        networkUrl = {
          description = "The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}",
          type = "string",
        },
      },
      type = "object",
    },
    Project = {
      description = "A project resource. The project is a top level container for resources including Cloud DNS ManagedZones. Projects can be created only in the APIs console. Next tag: 7.",
      id = "Project",
      properties = {
        id = {
          description = "User assigned unique identifier for the resource (output only).",
          type = "string",
        },
        kind = {
          default = "dns#project",
          type = "string",
        },
        number = {
          description = "Unique numeric identifier for the resource; defined by the server (output only).",
          format = "uint64",
          type = "string",
        },
        quota = {
          ["$ref"] = "Quota",
          description = "Quotas assigned to this project (output only).",
        },
      },
      type = "object",
    },
    Quota = {
      description = "Limits associated with a Project.",
      id = "Quota",
      properties = {
        dnsKeysPerManagedZone = {
          description = "Maximum allowed number of DnsKeys per ManagedZone.",
          format = "int32",
          type = "integer",
        },
        gkeClustersPerManagedZone = {
          description = "Maximum allowed number of GKE clusters to which a privately scoped zone can be attached.",
          format = "int32",
          type = "integer",
        },
        gkeClustersPerPolicy = {
          description = "Maximum allowed number of GKE clusters per policy.",
          format = "int32",
          type = "integer",
        },
        gkeClustersPerResponsePolicy = {
          description = "Maximum allowed number of GKE clusters per response policy.",
          format = "int32",
          type = "integer",
        },
        itemsPerRoutingPolicy = {
          description = "Maximum allowed number of items per routing policy.",
          format = "int32",
          type = "integer",
        },
        kind = {
          default = "dns#quota",
          type = "string",
        },
        managedZones = {
          description = "Maximum allowed number of managed zones in the project.",
          format = "int32",
          type = "integer",
        },
        managedZonesPerGkeCluster = {
          description = "Maximum allowed number of managed zones which can be attached to a GKE cluster.",
          format = "int32",
          type = "integer",
        },
        managedZonesPerNetwork = {
          description = "Maximum allowed number of managed zones which can be attached to a network.",
          format = "int32",
          type = "integer",
        },
        networksPerManagedZone = {
          description = "Maximum allowed number of networks to which a privately scoped zone can be attached.",
          format = "int32",
          type = "integer",
        },
        networksPerPolicy = {
          description = "Maximum allowed number of networks per policy.",
          format = "int32",
          type = "integer",
        },
        networksPerResponsePolicy = {
          description = "Maximum allowed number of networks per response policy.",
          format = "int32",
          type = "integer",
        },
        peeringZonesPerTargetNetwork = {
          description = "Maximum allowed number of consumer peering zones per target network owned by this producer project",
          format = "int32",
          type = "integer",
        },
        policies = {
          description = "Maximum allowed number of policies per project.",
          format = "int32",
          type = "integer",
        },
        resourceRecordsPerRrset = {
          description = "Maximum allowed number of ResourceRecords per ResourceRecordSet.",
          format = "int32",
          type = "integer",
        },
        responsePolicies = {
          description = "Maximum allowed number of response policies per project.",
          format = "int32",
          type = "integer",
        },
        responsePolicyRulesPerResponsePolicy = {
          description = "Maximum allowed number of rules per response policy.",
          format = "int32",
          type = "integer",
        },
        rrsetAdditionsPerChange = {
          description = "Maximum allowed number of ResourceRecordSets to add per ChangesCreateRequest.",
          format = "int32",
          type = "integer",
        },
        rrsetDeletionsPerChange = {
          description = "Maximum allowed number of ResourceRecordSets to delete per ChangesCreateRequest.",
          format = "int32",
          type = "integer",
        },
        rrsetsPerManagedZone = {
          description = "Maximum allowed number of ResourceRecordSets per zone in the project.",
          format = "int32",
          type = "integer",
        },
        targetNameServersPerManagedZone = {
          description = "Maximum allowed number of target name servers per managed forwarding zone.",
          format = "int32",
          type = "integer",
        },
        targetNameServersPerPolicy = {
          description = "Maximum allowed number of alternative target name servers per policy.",
          format = "int32",
          type = "integer",
        },
        totalRrdataSizePerChange = {
          description = "Maximum allowed size for total rrdata in one ChangesCreateRequest in bytes.",
          format = "int32",
          type = "integer",
        },
        whitelistedKeySpecs = {
          description = "DNSSEC algorithm and key length types that can be used for DnsKeys.",
          items = {
            ["$ref"] = "DnsKeySpec",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicy = {
      description = "A RRSetRoutingPolicy represents ResourceRecordSet data that is returned dynamically with the response varying based on configured properties such as geolocation or by weighted random selection.",
      id = "RRSetRoutingPolicy",
      properties = {
        geo = {
          ["$ref"] = "RRSetRoutingPolicyGeoPolicy",
        },
        kind = {
          default = "dns#rRSetRoutingPolicy",
          type = "string",
        },
        primaryBackup = {
          ["$ref"] = "RRSetRoutingPolicyPrimaryBackupPolicy",
        },
        wrr = {
          ["$ref"] = "RRSetRoutingPolicyWrrPolicy",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicyGeoPolicy = {
      description = "Configures a RRSetRoutingPolicy that routes based on the geo location of the querying user.",
      id = "RRSetRoutingPolicyGeoPolicy",
      properties = {
        enableFencing = {
          description = "Without fencing, if health check fails for all configured items in the current geo bucket, we'll failover to the next nearest geo bucket. With fencing, if health check is enabled, as long as some targets in the current geo bucket are healthy, we'll return only the healthy targets. However, if they're all unhealthy, we won't failover to the next nearest bucket, we'll simply return all the items in the current bucket even though they're unhealthy.",
          type = "boolean",
        },
        items = {
          description = "The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.",
          items = {
            ["$ref"] = "RRSetRoutingPolicyGeoPolicyGeoPolicyItem",
          },
          type = "array",
        },
        kind = {
          default = "dns#rRSetRoutingPolicyGeoPolicy",
          type = "string",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicyGeoPolicyGeoPolicyItem = {
      description = "ResourceRecordSet data for one geo location.",
      id = "RRSetRoutingPolicyGeoPolicyGeoPolicyItem",
      properties = {
        healthCheckedTargets = {
          ["$ref"] = "RRSetRoutingPolicyHealthCheckTargets",
          description = "For A and AAAA types only. Endpoints to return in the query result only if they are healthy. These can be specified along with rrdata within this item.",
        },
        kind = {
          default = "dns#rRSetRoutingPolicyGeoPolicyGeoPolicyItem",
          type = "string",
        },
        location = {
          description = "The geo-location granularity is a GCP region. This location string should correspond to a GCP region. e.g. \"us-east1\", \"southamerica-east1\", \"asia-east1\", etc.",
          type = "string",
        },
        rrdatas = {
          items = {
            type = "string",
          },
          type = "array",
        },
        signatureRrdatas = {
          description = "DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 ip per item. .",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicyHealthCheckTargets = {
      description = "HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.",
      id = "RRSetRoutingPolicyHealthCheckTargets",
      properties = {
        internalLoadBalancers = {
          items = {
            ["$ref"] = "RRSetRoutingPolicyLoadBalancerTarget",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicyLoadBalancerTarget = {
      id = "RRSetRoutingPolicyLoadBalancerTarget",
      properties = {
        ipAddress = {
          description = "The frontend IP address of the",
          type = "string",
        },
        ipProtocol = {
          enum = {
            "undefined",
            "tcp",
            "udp",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        kind = {
          default = "dns#rRSetRoutingPolicyLoadBalancerTarget",
          type = "string",
        },
        loadBalancerType = {
          enum = {
            "none",
            "regionalL4ilb",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        networkUrl = {
          description = "The fully qualified url of the network on which the ILB is",
          type = "string",
        },
        port = {
          description = "Load Balancer to health check. The configured port of the Load Balancer.",
          type = "string",
        },
        project = {
          description = "present. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network} The project ID in which the ILB exists.",
          type = "string",
        },
        region = {
          description = "The region for regional ILBs.",
          type = "string",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicyPrimaryBackupPolicy = {
      description = "Configures a RRSetRoutingPolicy such that all queries are responded with the primary_targets if they are healthy. And if all of them are unhealthy, then we fallback to a geo localized policy.",
      id = "RRSetRoutingPolicyPrimaryBackupPolicy",
      properties = {
        backupGeoTargets = {
          ["$ref"] = "RRSetRoutingPolicyGeoPolicy",
          description = "Backup targets provide a regional failover policy for the otherwise global primary targets. If serving state is set to BACKUP, this policy essentially becomes a geo routing policy.",
        },
        kind = {
          default = "dns#rRSetRoutingPolicyPrimaryBackupPolicy",
          type = "string",
        },
        primaryTargets = {
          ["$ref"] = "RRSetRoutingPolicyHealthCheckTargets",
        },
        trickleTraffic = {
          description = "When serving state is PRIMARY, this field provides the option of sending a small percentage of the traffic to the backup targets.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicyWrrPolicy = {
      description = "Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.",
      id = "RRSetRoutingPolicyWrrPolicy",
      properties = {
        items = {
          items = {
            ["$ref"] = "RRSetRoutingPolicyWrrPolicyWrrPolicyItem",
          },
          type = "array",
        },
        kind = {
          default = "dns#rRSetRoutingPolicyWrrPolicy",
          type = "string",
        },
      },
      type = "object",
    },
    RRSetRoutingPolicyWrrPolicyWrrPolicyItem = {
      description = "A routing block which contains the routing information for one WRR item.",
      id = "RRSetRoutingPolicyWrrPolicyWrrPolicyItem",
      properties = {
        healthCheckedTargets = {
          ["$ref"] = "RRSetRoutingPolicyHealthCheckTargets",
          description = "endpoints that need to be health checked before making the routing decision. The unhealthy endpoints will be omitted from the result. If all endpoints within a buckete are unhealthy, we'll choose a different bucket (sampled w.r.t. its weight) for responding. Note that if DNSSEC is enabled for this zone, only one of rrdata or health_checked_targets can be set.",
        },
        kind = {
          default = "dns#rRSetRoutingPolicyWrrPolicyWrrPolicyItem",
          type = "string",
        },
        rrdatas = {
          items = {
            type = "string",
          },
          type = "array",
        },
        signatureRrdatas = {
          description = "DNSSEC generated signatures for all the rrdata within this item. Note that if health checked targets are provided for DNSSEC enabled zones, there's a restriction of 1 ip per item. .",
          items = {
            type = "string",
          },
          type = "array",
        },
        weight = {
          description = "The weight corresponding to this subset of rrdata. When multiple WeightedRoundRobinPolicyItems are configured, the probability of returning an rrset is proportional to its weight relative to the sum of weights configured for all items. This weight should be non-negative.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ResourceRecordSet = {
      description = "A unit of data that is returned by the DNS servers.",
      id = "ResourceRecordSet",
      properties = {
        kind = {
          default = "dns#resourceRecordSet",
          type = "string",
        },
        name = {
          description = "For example, www.example.com.",
          type = "string",
        },
        routingPolicy = {
          ["$ref"] = "RRSetRoutingPolicy",
          description = "Configures dynamic query responses based on geo location of querying user or a weighted round robin based routing policy. A ResourceRecordSet should only have either rrdata (static) or routing_policy (dynamic). An error is returned otherwise.",
        },
        rrdatas = {
          description = "As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.",
          items = {
            type = "string",
          },
          type = "array",
        },
        signatureRrdatas = {
          description = "As defined in RFC 4034 (section 3.2).",
          items = {
            type = "string",
          },
          type = "array",
        },
        ttl = {
          description = "Number of seconds that this ResourceRecordSet can be cached by resolvers.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The identifier of a supported record type. See the list of Supported DNS record types.",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceRecordSetsDeleteResponse = {
      id = "ResourceRecordSetsDeleteResponse",
      properties = {},
      type = "object",
    },
    ResourceRecordSetsListResponse = {
      id = "ResourceRecordSetsListResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        kind = {
          default = "dns#resourceRecordSetsListResponse",
          description = "Type of resource.",
          type = "string",
        },
        nextPageToken = {
          description = "The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your pagination token. This lets you retrieve complete contents of even larger collections, one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.",
          type = "string",
        },
        rrsets = {
          description = "The resource record set resources.",
          items = {
            ["$ref"] = "ResourceRecordSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResponseHeader = {
      description = "Elements common to every response.",
      id = "ResponseHeader",
      properties = {
        operationId = {
          description = "For mutating operation requests that completed successfully. This is the client_operation_id if the client specified it, otherwise it is generated by the server (output only).",
          type = "string",
        },
      },
      type = "object",
    },
    ResponsePoliciesListResponse = {
      id = "ResponsePoliciesListResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        nextPageToken = {
          description = "The presence of this field indicates that more results exist following your last page of results in pagination order. To fetch them, make another list request by using this value as your page token. This lets you view the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.",
          type = "string",
        },
        responsePolicies = {
          description = "The Response Policy resources.",
          items = {
            ["$ref"] = "ResponsePolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResponsePoliciesPatchResponse = {
      id = "ResponsePoliciesPatchResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        responsePolicy = {
          ["$ref"] = "ResponsePolicy",
        },
      },
      type = "object",
    },
    ResponsePoliciesUpdateResponse = {
      id = "ResponsePoliciesUpdateResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        responsePolicy = {
          ["$ref"] = "ResponsePolicy",
        },
      },
      type = "object",
    },
    ResponsePolicy = {
      description = "A Response Policy is a collection of selectors that apply to queries made against one or more Virtual Private Cloud networks.",
      id = "ResponsePolicy",
      properties = {
        description = {
          description = "User-provided description for this Response Policy.",
          type = "string",
        },
        gkeClusters = {
          description = "The list of Google Kubernetes Engine clusters to which this response policy is applied.",
          items = {
            ["$ref"] = "ResponsePolicyGKECluster",
          },
          type = "array",
        },
        id = {
          description = "Unique identifier for the resource; defined by the server (output only).",
          format = "int64",
          type = "string",
        },
        kind = {
          default = "dns#responsePolicy",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "User labels.",
          type = "object",
        },
        networks = {
          description = "List of network names specifying networks to which this policy is applied.",
          items = {
            ["$ref"] = "ResponsePolicyNetwork",
          },
          type = "array",
        },
        responsePolicyName = {
          description = "User assigned name for this Response Policy.",
          type = "string",
        },
      },
      type = "object",
    },
    ResponsePolicyGKECluster = {
      id = "ResponsePolicyGKECluster",
      properties = {
        gkeClusterName = {
          description = "The resource name of the cluster to bind this response policy to. This should be specified in the format like: projects/*/locations/*/clusters/*. This is referenced from GKE projects.locations.clusters.get API: https://cloud.google.com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get",
          type = "string",
        },
        kind = {
          default = "dns#responsePolicyGKECluster",
          type = "string",
        },
      },
      type = "object",
    },
    ResponsePolicyNetwork = {
      id = "ResponsePolicyNetwork",
      properties = {
        kind = {
          default = "dns#responsePolicyNetwork",
          type = "string",
        },
        networkUrl = {
          description = "The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}",
          type = "string",
        },
      },
      type = "object",
    },
    ResponsePolicyRule = {
      description = "A Response Policy Rule is a selector that applies its behavior to queries that match the selector. Selectors are DNS names, which may be wildcards or exact matches. Each DNS query subject to a Response Policy matches at most one ResponsePolicyRule, as identified by the dns_name field with the longest matching suffix.",
      id = "ResponsePolicyRule",
      properties = {
        behavior = {
          description = "Answer this query with a behavior rather than DNS data.",
          enum = {
            "behaviorUnspecified",
            "bypassResponsePolicy",
          },
          enumDescriptions = {
            "",
            "Skip a less-specific ResponsePolicyRule and continue normal query logic. This can be used with a less-specific wildcard selector to exempt a subset of the wildcard ResponsePolicyRule from the ResponsePolicy behavior and query the public Internet instead. For instance, if these rules exist: *.example.com -> LocalData 1.2.3.4 foo.example.com -> Behavior 'bypassResponsePolicy' Then a query for 'foo.example.com' skips the wildcard. This additionally functions to facilitate the allowlist feature. RPZs can be applied to multiple levels in the (eventually org, folder, project, network) hierarchy. If a rule is applied at a higher level of the hierarchy, adding a passthru rule at a lower level will supersede that, and a query from an affected vm to that domain will be exempt from the RPZ and proceed to normal resolution behavior.",
          },
          type = "string",
        },
        dnsName = {
          description = "The DNS name (wildcard or exact) to apply this rule to. Must be unique within the Response Policy Rule.",
          type = "string",
        },
        kind = {
          default = "dns#responsePolicyRule",
          type = "string",
        },
        localData = {
          ["$ref"] = "ResponsePolicyRuleLocalData",
          description = "Answer this query directly with DNS data. These ResourceRecordSets override any other DNS behavior for the matched name; in particular they override private zones, the public internet, and GCP internal DNS. No SOA nor NS types are allowed.",
        },
        ruleName = {
          description = "An identifier for this rule. Must be unique with the ResponsePolicy.",
          type = "string",
        },
      },
      type = "object",
    },
    ResponsePolicyRuleLocalData = {
      id = "ResponsePolicyRuleLocalData",
      properties = {
        localDatas = {
          description = "All resource record sets for this selector, one per resource record type. The name must match the dns_name.",
          items = {
            ["$ref"] = "ResourceRecordSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResponsePolicyRulesListResponse = {
      id = "ResponsePolicyRulesListResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        nextPageToken = {
          description = "The presence of this field indicates that there exist more results following your last page of results in pagination order. To fetch them, make another list request using this value as your page token. This lets you the complete contents of even very large collections one page at a time. However, if the contents of the collection change between the first and last paginated list request, the set of all elements returned are an inconsistent view of the collection. You cannot retrieve a consistent snapshot of a collection larger than the maximum page size.",
          type = "string",
        },
        responsePolicyRules = {
          description = "The Response Policy Rule resources.",
          items = {
            ["$ref"] = "ResponsePolicyRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ResponsePolicyRulesPatchResponse = {
      id = "ResponsePolicyRulesPatchResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        responsePolicyRule = {
          ["$ref"] = "ResponsePolicyRule",
        },
      },
      type = "object",
    },
    ResponsePolicyRulesUpdateResponse = {
      id = "ResponsePolicyRulesUpdateResponse",
      properties = {
        header = {
          ["$ref"] = "ResponseHeader",
        },
        responsePolicyRule = {
          ["$ref"] = "ResponsePolicyRule",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud DNS API",
  version = "v1",
}