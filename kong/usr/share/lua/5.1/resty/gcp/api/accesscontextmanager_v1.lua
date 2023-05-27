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
  baseUrl = "https://accesscontextmanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Access Context Manager",
  description = "An API for setting attribute based access control to requests to GCP services.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/access-context-manager/docs/reference/rest/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "accesscontextmanager:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://accesscontextmanager.mtls.googleapis.com/",
  name = "accesscontextmanager",
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
    accessPolicies = {
      methods = {
        create = {
          description = "Creates an access policy. This method fails if the organization already has an access policy. The long-running operation has a successful status after the access policy propagates to long-lasting storage. Syntactic and basic semantic errors are returned in `metadata` as a BadRequest proto.",
          flatPath = "v1/accessPolicies",
          httpMethod = "POST",
          id = "accesscontextmanager.accessPolicies.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/accessPolicies",
          request = {
            ["$ref"] = "AccessPolicy",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes an access policy based on the resource name. The long-running operation has a successful status after the access policy is removed from long-lasting storage.",
          flatPath = "v1/accessPolicies/{accessPoliciesId}",
          httpMethod = "DELETE",
          id = "accesscontextmanager.accessPolicies.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name for the access policy to delete. Format `accessPolicies/{policy_id}`",
              location = "path",
              pattern = "^accessPolicies/[^/]+$",
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
          description = "Returns an access policy based on the name.",
          flatPath = "v1/accessPolicies/{accessPoliciesId}",
          httpMethod = "GET",
          id = "accesscontextmanager.accessPolicies.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name for the access policy to get. Format `accessPolicies/{policy_id}`",
              location = "path",
              pattern = "^accessPolicies/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "AccessPolicy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getIamPolicy = {
          description = "Gets the IAM policy for the specified Access Context Manager access policy.",
          flatPath = "v1/accessPolicies/{accessPoliciesId}:getIamPolicy",
          httpMethod = "POST",
          id = "accesscontextmanager.accessPolicies.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^accessPolicies/[^/]+$",
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
          description = "Lists all access policies in an organization.",
          flatPath = "v1/accessPolicies",
          httpMethod = "GET",
          id = "accesscontextmanager.accessPolicies.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Number of AccessPolicy instances to include in the list. Default 100.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Next page token for the next batch of AccessPolicy instances. Defaults to the first page of results.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. Resource name for the container to list AccessPolicy instances from. Format: `organizations/{org_id}`",
              location = "query",
              type = "string",
            },
          },
          path = "v1/accessPolicies",
          response = {
            ["$ref"] = "ListAccessPoliciesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates an access policy. The long-running operation from this RPC has a successful status after the changes to the access policy propagate to long-lasting storage.",
          flatPath = "v1/accessPolicies/{accessPoliciesId}",
          httpMethod = "PATCH",
          id = "accesscontextmanager.accessPolicies.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Output only. Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}`",
              location = "path",
              pattern = "^accessPolicies/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. Mask to control which fields get updated. Must be non-empty.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "AccessPolicy",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setIamPolicy = {
          description = "Sets the IAM policy for the specified Access Context Manager access policy. This method replaces the existing IAM policy on the access policy. The IAM policy controls the set of users who can perform specific operations on the Access Context Manager access policy.",
          flatPath = "v1/accessPolicies/{accessPoliciesId}:setIamPolicy",
          httpMethod = "POST",
          id = "accesscontextmanager.accessPolicies.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^accessPolicies/[^/]+$",
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
          description = "Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.",
          flatPath = "v1/accessPolicies/{accessPoliciesId}:testIamPermissions",
          httpMethod = "POST",
          id = "accesscontextmanager.accessPolicies.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^accessPolicies/[^/]+$",
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
        accessLevels = {
          methods = {
            create = {
              description = "Creates an access level. The long-running operation from this RPC has a successful status after the access level propagates to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/accessLevels",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.accessLevels.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name for the access policy which owns this Access Level. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/accessLevels",
              request = {
                ["$ref"] = "AccessLevel",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes an access level based on the resource name. The long-running operation from this RPC has a successful status after the access level has been removed from long-lasting storage.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/accessLevels/{accessLevelsId}",
              httpMethod = "DELETE",
              id = "accesscontextmanager.accessPolicies.accessLevels.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the Access Level. Format: `accessPolicies/{policy_id}/accessLevels/{access_level_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/accessLevels/[^/]+$",
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
              description = "Gets an access level based on the resource name.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/accessLevels/{accessLevelsId}",
              httpMethod = "GET",
              id = "accesscontextmanager.accessPolicies.accessLevels.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                accessLevelFormat = {
                  description = "Whether to return `BasicLevels` in the Cloud Common Expression Language rather than as `BasicLevels`. Defaults to AS_DEFINED, where Access Levels are returned as `BasicLevels` or `CustomLevels` based on how they were created. If set to CEL, all Access Levels are returned as `CustomLevels`. In the CEL case, `BasicLevels` are translated to equivalent `CustomLevels`.",
                  enum = {
                    "LEVEL_FORMAT_UNSPECIFIED",
                    "AS_DEFINED",
                    "CEL",
                  },
                  enumDescriptions = {
                    "The format was not specified.",
                    "Uses the format the resource was defined in. BasicLevels are returned as BasicLevels, CustomLevels are returned as CustomLevels.",
                    "Use Cloud Common Expression Language when returning the resource. Both BasicLevels and CustomLevels are returned as CustomLevels.",
                  },
                  location = "query",
                  type = "string",
                },
                name = {
                  description = "Required. Resource name for the Access Level. Format: `accessPolicies/{policy_id}/accessLevels/{access_level_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/accessLevels/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "AccessLevel",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all access levels for an access policy.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/accessLevels",
              httpMethod = "GET",
              id = "accesscontextmanager.accessPolicies.accessLevels.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                accessLevelFormat = {
                  description = "Whether to return `BasicLevels` in the Cloud Common Expression language, as `CustomLevels`, rather than as `BasicLevels`. Defaults to returning `AccessLevels` in the format they were defined.",
                  enum = {
                    "LEVEL_FORMAT_UNSPECIFIED",
                    "AS_DEFINED",
                    "CEL",
                  },
                  enumDescriptions = {
                    "The format was not specified.",
                    "Uses the format the resource was defined in. BasicLevels are returned as BasicLevels, CustomLevels are returned as CustomLevels.",
                    "Use Cloud Common Expression Language when returning the resource. Both BasicLevels and CustomLevels are returned as CustomLevels.",
                  },
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Number of Access Levels to include in the list. Default 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Next page token for the next batch of Access Level instances. Defaults to the first page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name for the access policy to list Access Levels from. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/accessLevels",
              response = {
                ["$ref"] = "ListAccessLevelsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates an access level. The long-running operation from this RPC has a successful status after the changes to the access level propagate to long-lasting storage. If access levels contain errors, an error response is returned for the first error encountered.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/accessLevels/{accessLevelsId}",
              httpMethod = "PATCH",
              id = "accesscontextmanager.accessPolicies.accessLevels.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/accessLevels/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Mask to control which fields get updated. Must be non-empty.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "AccessLevel",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            replaceAll = {
              description = "Replaces all existing access levels in an access policy with the access levels provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. If the replacement contains errors, an error response is returned for the first error encountered. Upon error, the replacement is cancelled, and existing access levels are not affected. The Operation.response field contains ReplaceAccessLevelsResponse. Removing access levels contained in existing service perimeters result in an error.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/accessLevels:replaceAll",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.accessLevels.replaceAll",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name for the access policy which owns these Access Levels. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/accessLevels:replaceAll",
              request = {
                ["$ref"] = "ReplaceAccessLevelsRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/accessLevels/{accessLevelsId}:testIamPermissions",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.accessLevels.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/accessLevels/[^/]+$",
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
        authorizedOrgsDescs = {
          methods = {
            create = {
              description = "Creates a authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. The name of this `AuthorizedOrgsDesc` will be assigned during creation.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/authorizedOrgsDescs",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.authorizedOrgsDescs.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name for the access policy which owns this Authorized Orgs Desc. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/authorizedOrgsDescs",
              request = {
                ["$ref"] = "AuthorizedOrgsDesc",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a authorized orgs desc based on the resource name. The long-running operation from this RPC has a successful status after the authorized orgs desc is removed from long-lasting storage.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/authorizedOrgsDescs/{authorizedOrgsDescsId}",
              httpMethod = "DELETE",
              id = "accesscontextmanager.accessPolicies.authorizedOrgsDescs.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the Authorized Orgs Desc. Format: `accessPolicies/{policy_id}/authorizedOrgsDesc/{authorized_orgs_desc_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/authorizedOrgsDescs/[^/]+$",
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
              description = "Gets a authorized orgs desc based on the resource name.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/authorizedOrgsDescs/{authorizedOrgsDescsId}",
              httpMethod = "GET",
              id = "accesscontextmanager.accessPolicies.authorizedOrgsDescs.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the Authorized Orgs Desc. Format: `accessPolicies/{policy_id}/authorizedOrgsDescs/{authorized_orgs_descs_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/authorizedOrgsDescs/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "AuthorizedOrgsDesc",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all authorized orgs descs for an access policy.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/authorizedOrgsDescs",
              httpMethod = "GET",
              id = "accesscontextmanager.accessPolicies.authorizedOrgsDescs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Number of Authorized Orgs Descs to include in the list. Default 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Next page token for the next batch of Authorized Orgs Desc instances. Defaults to the first page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name for the access policy to list Authorized Orgs Desc from. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/authorizedOrgsDescs",
              response = {
                ["$ref"] = "ListAuthorizedOrgsDescsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a authorized orgs desc. The long-running operation from this RPC has a successful status after the authorized orgs desc propagates to long-lasting storage. If a authorized orgs desc contains errors, an error response is returned for the first error encountered. Only the organization list in `AuthorizedOrgsDesc` can be updated. The name, authorization_type, asset_type and authorization_direction cannot be updated.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/authorizedOrgsDescs/{authorizedOrgsDescsId}",
              httpMethod = "PATCH",
              id = "accesscontextmanager.accessPolicies.authorizedOrgsDescs.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: \"accessPolicies/122256/authorizedOrgs/b3-BhcX_Ud5N\"",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/authorizedOrgsDescs/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Mask to control which fields get updated. Must be non-empty.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "AuthorizedOrgsDesc",
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
        servicePerimeters = {
          methods = {
            commit = {
              description = "Commits the dry-run specification for all the service perimeters in an access policy. A commit operation on a service perimeter involves copying its `spec` field to the `status` field of the service perimeter. Only service perimeters with `use_explicit_dry_run_spec` field set to true are affected by a commit operation. The long-running operation from this RPC has a successful status after the dry-run specifications for all the service perimeters have been committed. If a commit fails, it causes the long-running operation to return an error response and the entire commit operation is cancelled. When successful, the Operation.response field contains CommitServicePerimetersResponse. The `dry_run` and the `spec` fields are cleared after a successful commit operation.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters:commit",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.commit",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name for the parent Access Policy which owns all Service Perimeters in scope for the commit operation. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/servicePerimeters:commit",
              request = {
                ["$ref"] = "CommitServicePerimetersRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name for the access policy which owns this Service Perimeter. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/servicePerimeters",
              request = {
                ["$ref"] = "ServicePerimeter",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a service perimeter based on the resource name. The long-running operation from this RPC has a successful status after the service perimeter is removed from long-lasting storage.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters/{servicePerimetersId}",
              httpMethod = "DELETE",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the Service Perimeter. Format: `accessPolicies/{policy_id}/servicePerimeters/{service_perimeter_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/servicePerimeters/[^/]+$",
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
              description = "Gets a service perimeter based on the resource name.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters/{servicePerimetersId}",
              httpMethod = "GET",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name for the Service Perimeter. Format: `accessPolicies/{policy_id}/servicePerimeters/{service_perimeters_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/servicePerimeters/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "ServicePerimeter",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all service perimeters for an access policy.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters",
              httpMethod = "GET",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Number of Service Perimeters to include in the list. Default 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Next page token for the next batch of Service Perimeter instances. Defaults to the first page of results.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Resource name for the access policy to list Service Perimeters from. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/servicePerimeters",
              response = {
                ["$ref"] = "ListServicePerimetersResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a service perimeter. The long-running operation from this RPC has a successful status after the service perimeter propagates to long-lasting storage. If a service perimeter contains errors, an error response is returned for the first error encountered.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters/{servicePerimetersId}",
              httpMethod = "PATCH",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/servicePerimeters/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Mask to control which fields get updated. Must be non-empty.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "ServicePerimeter",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            replaceAll = {
              description = "Replace all existing service perimeters in an access policy with the service perimeters provided. This is done atomically. The long-running operation from this RPC has a successful status after all replacements propagate to long-lasting storage. Replacements containing errors result in an error response for the first error encountered. Upon an error, replacement are cancelled and existing service perimeters are not affected. The Operation.response field contains ReplaceServicePerimetersResponse.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters:replaceAll",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.replaceAll",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Resource name for the access policy which owns these Service Perimeters. Format: `accessPolicies/{policy_id}`",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/servicePerimeters:replaceAll",
              request = {
                ["$ref"] = "ReplaceServicePerimetersRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            testIamPermissions = {
              description = "Returns the IAM permissions that the caller has on the specified Access Context Manager resource. The resource can be an AccessPolicy, AccessLevel, or ServicePerimeter. This method does not support other resources.",
              flatPath = "v1/accessPolicies/{accessPoliciesId}/servicePerimeters/{servicePerimetersId}:testIamPermissions",
              httpMethod = "POST",
              id = "accesscontextmanager.accessPolicies.servicePerimeters.testIamPermissions",
              parameterOrder = {
                "resource",
              },
              parameters = {
                resource = {
                  description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
                  location = "path",
                  pattern = "^accessPolicies/[^/]+/servicePerimeters/[^/]+$",
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
    operations = {
      methods = {
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          flatPath = "v1/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "accesscontextmanager.operations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^operations/.*$",
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
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "accesscontextmanager.operations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be deleted.",
              location = "path",
              pattern = "^operations/.*$",
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
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "accesscontextmanager.operations.get",
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
          },
        },
        list = {
          description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
          flatPath = "v1/operations",
          httpMethod = "GET",
          id = "accesscontextmanager.operations.list",
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
              pattern = "^operations$",
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
    organizations = {
      resources = {
        gcpUserAccessBindings = {
          methods = {
            create = {
              description = "Creates a GcpUserAccessBinding. If the client specifies a name, the server ignores it. Fails if a resource already exists with the same group_key. Completion of this long-running operation does not necessarily signify that the new binding is deployed onto all affected users, which may take more time.",
              flatPath = "v1/organizations/{organizationsId}/gcpUserAccessBindings",
              httpMethod = "POST",
              id = "accesscontextmanager.organizations.gcpUserAccessBindings.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Example: \"organizations/256\"",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/gcpUserAccessBindings",
              request = {
                ["$ref"] = "GcpUserAccessBinding",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the binding deletion is deployed onto all affected users, which may take more time.",
              flatPath = "v1/organizations/{organizationsId}/gcpUserAccessBindings/{gcpUserAccessBindingsId}",
              httpMethod = "DELETE",
              id = "accesscontextmanager.organizations.gcpUserAccessBindings.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Example: \"organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/gcpUserAccessBindings/[^/]+$",
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
              description = "Gets the GcpUserAccessBinding with the given name.",
              flatPath = "v1/organizations/{organizationsId}/gcpUserAccessBindings/{gcpUserAccessBindingsId}",
              httpMethod = "GET",
              id = "accesscontextmanager.organizations.gcpUserAccessBindings.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Example: \"organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/gcpUserAccessBindings/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GcpUserAccessBinding",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists all GcpUserAccessBindings for a Google Cloud organization.",
              flatPath = "v1/organizations/{organizationsId}/gcpUserAccessBindings",
              httpMethod = "GET",
              id = "accesscontextmanager.organizations.gcpUserAccessBindings.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. Maximum number of items to return. The server may return fewer items. If left blank, the server may return any number of items.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If left blank, returns the first page. To enumerate all items, use the next_page_token from your previous list operation.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Example: \"organizations/256\"",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/gcpUserAccessBindings",
              response = {
                ["$ref"] = "ListGcpUserAccessBindingsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a GcpUserAccessBinding. Completion of this long-running operation does not necessarily signify that the changed binding is deployed onto all affected users, which may take more time.",
              flatPath = "v1/organizations/{organizationsId}/gcpUserAccessBindings/{gcpUserAccessBindingsId}",
              httpMethod = "PATCH",
              id = "accesscontextmanager.organizations.gcpUserAccessBindings.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: \"organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/gcpUserAccessBindings/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. Only the fields specified in this mask are updated. Because name and group_key cannot be changed, update_mask is required and must always be: update_mask { paths: \"access_levels\" }",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GcpUserAccessBinding",
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
  },
  revision = "20230109",
  rootUrl = "https://accesscontextmanager.googleapis.com/",
  schemas = {
    AccessContextManagerOperationMetadata = {
      description = "Metadata of Access Context Manager's Long Running Operations.",
      id = "AccessContextManagerOperationMetadata",
      properties = {},
      type = "object",
    },
    AccessLevel = {
      description = "An `AccessLevel` is a label that can be applied to requests to Google Cloud services, along with a list of requirements necessary for the label to be applied.",
      id = "AccessLevel",
      properties = {
        basic = {
          ["$ref"] = "BasicLevel",
          description = "A `BasicLevel` composed of `Conditions`.",
        },
        custom = {
          ["$ref"] = "CustomLevel",
          description = "A `CustomLevel` written in the Common Expression Language.",
        },
        description = {
          description = "Description of the `AccessLevel` and its use. Does not affect behavior.",
          type = "string",
        },
        name = {
          description = "Resource name for the `AccessLevel`. Format: `accessPolicies/{access_policy}/accessLevels/{access_level}`. The `access_level` component must begin with a letter, followed by alphanumeric characters or `_`. Its maximum length is 50 characters. After you create an `AccessLevel`, you cannot change its `name`.",
          type = "string",
        },
        title = {
          description = "Human readable title. Must be unique within the Policy.",
          type = "string",
        },
      },
      type = "object",
    },
    AccessPolicy = {
      description = "`AccessPolicy` is a container for `AccessLevels` (which define the necessary attributes to use Google Cloud services) and `ServicePerimeters` (which define regions of services able to freely pass data within a perimeter). An access policy is globally visible within an organization, and the restrictions it specifies apply to all projects within an organization.",
      id = "AccessPolicy",
      properties = {
        etag = {
          description = "Output only. An opaque identifier for the current version of the `AccessPolicy`. This will always be a strongly validated etag, meaning that two Access Polices will be identical if and only if their etags are identical. Clients should not expect this to be in any specific format.",
          type = "string",
        },
        name = {
          description = "Output only. Resource name of the `AccessPolicy`. Format: `accessPolicies/{access_policy}`",
          type = "string",
        },
        parent = {
          description = "Required. The parent of this `AccessPolicy` in the Cloud Resource Hierarchy. Currently immutable once created. Format: `organizations/{organization_id}`",
          type = "string",
        },
        scopes = {
          description = "The scopes of a policy define which resources an ACM policy can restrict, and where ACM resources can be referenced. For example, a policy with scopes=[\"folders/123\"] has the following behavior: - vpcsc perimeters can only restrict projects within folders/123 - access levels can only be referenced by resources within folders/123. If empty, there are no limitations on which resources can be restricted by an ACM policy, and there are no limitations on where ACM resources can be referenced. Only one policy can include a given scope (attempting to create a second policy which includes \"folders/123\" will result in an error). Currently, scopes cannot be modified after a policy is created. Currently, policies can only have a single scope. Format: list of `folders/{folder_number}` or `projects/{project_number}`",
          items = {
            type = "string",
          },
          type = "array",
        },
        title = {
          description = "Required. Human readable title. Does not affect behavior.",
          type = "string",
        },
      },
      type = "object",
    },
    ApiOperation = {
      description = "Identification for an API Operation.",
      id = "ApiOperation",
      properties = {
        methodSelectors = {
          description = "API methods or permissions to allow. Method or permission must belong to the service specified by `service_name` field. A single MethodSelector entry with `*` specified for the `method` field will allow all methods AND permissions for the service specified in `service_name`.",
          items = {
            ["$ref"] = "MethodSelector",
          },
          type = "array",
        },
        serviceName = {
          description = "The name of the API whose methods or permissions the IngressPolicy or EgressPolicy want to allow. A single ApiOperation with `service_name` field set to `*` will allow all methods AND permissions for all services.",
          type = "string",
        },
      },
      type = "object",
    },
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
    AuthorizedOrgsDesc = {
      description = "`AuthorizedOrgsDesc` is a resource that contains a list of organizations for a authorization type and asset type and its authorization direction.",
      id = "AuthorizedOrgsDesc",
      properties = {
        assetType = {
          description = "The asset type of this authorized orgs desc. e.g. device, credential strength.",
          enum = {
            "ASSET_TYPE_UNSPECIFIED",
            "ASSET_TYPE_DEVICE",
            "ASSET_TYPE_CREDENTIAL_STRENGTH",
          },
          enumDescriptions = {
            "No asset type specified.",
            "Device asset type.",
            "credential strength asset type.",
          },
          type = "string",
        },
        authorizationDirection = {
          description = "Authorization direction of this authorization relationship. i.e. Whether to allow specified orgs to evaluate this org's traffic, or allow specified orgs' traffic to be evaluated by this org. Orgs specified as `AUTHORIZATION_DIRECTION_TO` in this AuthorizedOrgsDesc[com.google.identity.accesscontextmanager.v1.AuthorizedOrgsDesc] must also specify this org as the `AUTHORIZATION_DIRECTION_FROM` in their own AuthorizedOrgsDesc in order for this relationship to take effect. Orgs specified as `AUTHORIZATION_DIRECTION_FROM` in this AuthorizedOrgsDesc[com.google.identity.accesscontextmanager.v1.AuthorizedOrgsDesc] must also specify this org as the `AUTHORIZATION_DIRECTION_TO` in their own AuthorizedOrgsDesc in order for this relationship to take effect.",
          enum = {
            "AUTHORIZATION_DIRECTION_UNSPECIFIED",
            "AUTHORIZATION_DIRECTION_TO",
            "AUTHORIZATION_DIRECTION_FROM",
          },
          enumDescriptions = {
            "No direction specified.",
            "Specified orgs will evaluate traffic.",
            "Specified orgs' traffic will be evaluated.",
          },
          type = "string",
        },
        authorizationType = {
          description = "The authorization type of this authorized orgs desc. e.g.authorization, troubleshooting or logging.",
          enum = {
            "AUTHORIZATION_TYPE_UNSPECIFIED",
            "AUTHORIZATION_TYPE_TRUST",
          },
          enumDescriptions = {
            "No authorization type specified.",
            "This authorization relationship is \"trust\".",
          },
          type = "string",
        },
        name = {
          description = "Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: \"accessPolicies/122256/authorizedOrgs/b3-BhcX_Ud5N\"",
          type = "string",
        },
        orgs = {
          description = "The list of organization ids in this AuthorizedOrgsDesc.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BasicLevel = {
      description = "`BasicLevel` is an `AccessLevel` using a set of recommended features.",
      id = "BasicLevel",
      properties = {
        combiningFunction = {
          description = "How the `conditions` list should be combined to determine if a request is granted this `AccessLevel`. If AND is used, each `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. If OR is used, at least one `Condition` in `conditions` must be satisfied for the `AccessLevel` to be applied. Default behavior is AND.",
          enum = {
            "AND",
            "OR",
          },
          enumDescriptions = {
            "All `Conditions` must be true for the `BasicLevel` to be true.",
            "If at least one `Condition` is true, then the `BasicLevel` is true.",
          },
          type = "string",
        },
        conditions = {
          description = "Required. A list of requirements for the `AccessLevel` to be granted.",
          items = {
            ["$ref"] = "Condition",
          },
          type = "array",
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
    CommitServicePerimetersRequest = {
      description = "A request to commit dry-run specs in all Service Perimeters belonging to an Access Policy.",
      id = "CommitServicePerimetersRequest",
      properties = {
        etag = {
          description = "Optional. The etag for the version of the Access Policy that this commit operation is to be performed on. If, at the time of commit, the etag for the Access Policy stored in Access Context Manager is different from the specified etag, then the commit operation will not be performed and the call will fail. This field is not required. If etag is not provided, the operation will be performed as if a valid etag is provided.",
          type = "string",
        },
      },
      type = "object",
    },
    CommitServicePerimetersResponse = {
      description = "A response to CommitServicePerimetersRequest. This will be put inside of Operation.response field.",
      id = "CommitServicePerimetersResponse",
      properties = {
        servicePerimeters = {
          description = "List of all the Service Perimeter instances in the Access Policy.",
          items = {
            ["$ref"] = "ServicePerimeter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Condition = {
      description = "A condition necessary for an `AccessLevel` to be granted. The Condition is an AND over its fields. So a Condition is true if: 1) the request IP is from one of the listed subnetworks AND 2) the originating device complies with the listed device policy AND 3) all listed access levels are granted AND 4) the request was sent at a time allowed by the DateTimeRestriction.",
      id = "Condition",
      properties = {
        devicePolicy = {
          ["$ref"] = "DevicePolicy",
          description = "Device specific restrictions, all restrictions must hold for the Condition to be true. If not specified, all devices are allowed.",
        },
        ipSubnetworks = {
          description = "CIDR block IP subnetwork specification. May be IPv4 or IPv6. Note that for a CIDR IP address block, the specified IP address portion must be properly truncated (i.e. all the host bits must be zero) or the input is considered malformed. For example, \"192.0.2.0/24\" is accepted but \"192.0.2.1/24\" is not. Similarly, for IPv6, \"2001:db8::/32\" is accepted whereas \"2001:db8::1/32\" is not. The originating IP of a request must be in one of the listed subnets in order for this Condition to be true. If empty, all IP addresses are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        members = {
          description = "The request must be made by one of the provided user or service accounts. Groups are not supported. Syntax: `user:{emailid}` `serviceAccount:{emailid}` If not specified, a request may come from any user.",
          items = {
            type = "string",
          },
          type = "array",
        },
        negate = {
          description = "Whether to negate the Condition. If true, the Condition becomes a NAND over its non-empty fields, each field must be false for the Condition overall to be satisfied. Defaults to false.",
          type = "boolean",
        },
        regions = {
          description = "The request must originate from one of the provided countries/regions. Must be valid ISO 3166-1 alpha-2 codes.",
          items = {
            type = "string",
          },
          type = "array",
        },
        requiredAccessLevels = {
          description = "A list of other access levels defined in the same `Policy`, referenced by resource name. Referencing an `AccessLevel` which does not exist is an error. All access levels listed must be granted for the Condition to be true. Example: \"`accessPolicies/MY_POLICY/accessLevels/LEVEL_NAME\"`",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomLevel = {
      description = "`CustomLevel` is an `AccessLevel` using the Cloud Common Expression Language to represent the necessary conditions for the level to apply to a request. See CEL spec at: https://github.com/google/cel-spec",
      id = "CustomLevel",
      properties = {
        expr = {
          ["$ref"] = "Expr",
          description = "Required. A Cloud CEL expression evaluating to a boolean.",
        },
      },
      type = "object",
    },
    DevicePolicy = {
      description = "`DevicePolicy` specifies device specific restrictions necessary to acquire a given access level. A `DevicePolicy` specifies requirements for requests from devices to be granted access levels, it does not do any enforcement on the device. `DevicePolicy` acts as an AND over all specified fields, and each repeated field is an OR over its elements. Any unset fields are ignored. For example, if the proto is { os_type : DESKTOP_WINDOWS, os_type : DESKTOP_LINUX, encryption_status: ENCRYPTED}, then the DevicePolicy will be true for requests originating from encrypted Linux desktops and encrypted Windows desktops.",
      id = "DevicePolicy",
      properties = {
        allowedDeviceManagementLevels = {
          description = "Allowed device management levels, an empty list allows all management levels.",
          items = {
            enum = {
              "MANAGEMENT_UNSPECIFIED",
              "NONE",
              "BASIC",
              "COMPLETE",
            },
            enumDescriptions = {
              "The device's management level is not specified or not known.",
              "The device is not managed.",
              "Basic management is enabled, which is generally limited to monitoring and wiping the corporate account.",
              "Complete device management. This includes more thorough monitoring and the ability to directly manage the device (such as remote wiping). This can be enabled through the Android Enterprise Platform.",
            },
            type = "string",
          },
          type = "array",
        },
        allowedEncryptionStatuses = {
          description = "Allowed encryptions statuses, an empty list allows all statuses.",
          items = {
            enum = {
              "ENCRYPTION_UNSPECIFIED",
              "ENCRYPTION_UNSUPPORTED",
              "UNENCRYPTED",
              "ENCRYPTED",
            },
            enumDescriptions = {
              "The encryption status of the device is not specified or not known.",
              "The device does not support encryption.",
              "The device supports encryption, but is currently unencrypted.",
              "The device is encrypted.",
            },
            type = "string",
          },
          type = "array",
        },
        osConstraints = {
          description = "Allowed OS versions, an empty list allows all types and all versions.",
          items = {
            ["$ref"] = "OsConstraint",
          },
          type = "array",
        },
        requireAdminApproval = {
          description = "Whether the device needs to be approved by the customer admin.",
          type = "boolean",
        },
        requireCorpOwned = {
          description = "Whether the device needs to be corp owned.",
          type = "boolean",
        },
        requireScreenlock = {
          description = "Whether or not screenlock is required for the DevicePolicy to be true. Defaults to `false`.",
          type = "boolean",
        },
      },
      type = "object",
    },
    EgressFrom = {
      description = "Defines the conditions under which an EgressPolicy matches a request. Conditions based on information about the source of the request. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed.",
      id = "EgressFrom",
      properties = {
        identities = {
          description = "A list of identities that are allowed access through this [EgressPolicy]. Should be in the format of email address. The email address should represent individual user or service account only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        identityType = {
          description = "Specifies the type of identities that are allowed access to outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.",
          enum = {
            "IDENTITY_TYPE_UNSPECIFIED",
            "ANY_IDENTITY",
            "ANY_USER_ACCOUNT",
            "ANY_SERVICE_ACCOUNT",
          },
          enumDescriptions = {
            "No blanket identity group specified.",
            "Authorize access from all identities outside the perimeter.",
            "Authorize access from all human users outside the perimeter.",
            "Authorize access from all service accounts outside the perimeter.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    EgressPolicy = {
      description = "Policy for egress from perimeter. EgressPolicies match requests based on `egress_from` and `egress_to` stanzas. For an EgressPolicy to match, both `egress_from` and `egress_to` stanzas must be matched. If an EgressPolicy matches a request, the request is allowed to span the ServicePerimeter boundary. For example, an EgressPolicy can be used to allow VMs on networks within the ServicePerimeter to access a defined set of projects outside the perimeter in certain contexts (e.g. to read data from a Cloud Storage bucket or query against a BigQuery dataset). EgressPolicies are concerned with the *resources* that a request relates as well as the API services and API actions being used. They do not related to the direction of data movement. More detailed documentation for this concept can be found in the descriptions of EgressFrom and EgressTo.",
      id = "EgressPolicy",
      properties = {
        egressFrom = {
          ["$ref"] = "EgressFrom",
          description = "Defines conditions on the source of a request causing this EgressPolicy to apply.",
        },
        egressTo = {
          ["$ref"] = "EgressTo",
          description = "Defines the conditions on the ApiOperation and destination resources that cause this EgressPolicy to apply.",
        },
      },
      type = "object",
    },
    EgressTo = {
      description = "Defines the conditions under which an EgressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the `resources` specified. Note that if the destination of the request is also protected by a ServicePerimeter, then that ServicePerimeter must have an IngressPolicy which allows access in order for this request to succeed. The request must match `operations` AND `resources` fields in order to be allowed egress out of the perimeter.",
      id = "EgressTo",
      properties = {
        externalResources = {
          description = "A list of external resources that are allowed to be accessed. Only AWS and Azure resources are supported. For Amazon S3, the supported format is s3://BUCKET_NAME. For Azure Storage, the supported format is azure://myaccount.blob.core.windows.net/CONTAINER_NAME. A request matches if it contains an external resource in this list (Example: s3://bucket/path). Currently '*' is not allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
        operations = {
          description = "A list of ApiOperations allowed to be performed by the sources specified in the corresponding EgressFrom. A request matches if it uses an operation/service in this list.",
          items = {
            ["$ref"] = "ApiOperation",
          },
          type = "array",
        },
        resources = {
          description = "A list of resources, currently only projects in the form `projects/`, that are allowed to be accessed by sources defined in the corresponding EgressFrom. A request matches if it contains a resource in this list. If `*` is specified for `resources`, then this EgressTo rule will authorize access to all resources outside the perimeter.",
          items = {
            type = "string",
          },
          type = "array",
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
    GcpUserAccessBinding = {
      description = "Restricts access to Cloud Console and Google Cloud APIs for a set of users using Context-Aware Access.",
      id = "GcpUserAccessBinding",
      properties = {
        accessLevels = {
          description = "Required. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: \"accessPolicies/9522/accessLevels/device_trusted\"",
          items = {
            type = "string",
          },
          type = "array",
        },
        groupKey = {
          description = "Required. Immutable. Google Group id whose members are subject to this binding's restrictions. See \"id\" in the [G Suite Directory API's Groups resource] (https://developers.google.com/admin-sdk/directory/v1/reference/groups#resource). If a group's email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: \"01d520gv4vjcrht\"",
          type = "string",
        },
        name = {
          description = "Immutable. Assigned by the server during creation. The last segment has an arbitrary length and has only URI unreserved characters (as defined by [RFC 3986 Section 2.3](https://tools.ietf.org/html/rfc3986#section-2.3)). Should not be specified by the client during creation. Example: \"organizations/256/gcpUserAccessBindings/b3-BhcX_Ud5N\"",
          type = "string",
        },
      },
      type = "object",
    },
    GcpUserAccessBindingOperationMetadata = {
      description = "Currently, a completed operation means nothing. In the future, this metadata and a completed operation may indicate that the binding has taken effect and is affecting access decisions for all users.",
      id = "GcpUserAccessBindingOperationMetadata",
      properties = {},
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
    IngressFrom = {
      description = "Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the source of the request. The request must satisfy what is defined in `sources` AND identity related fields in order to match.",
      id = "IngressFrom",
      properties = {
        identities = {
          description = "A list of identities that are allowed access through this ingress policy. Should be in the format of email address. The email address should represent individual user or service account only.",
          items = {
            type = "string",
          },
          type = "array",
        },
        identityType = {
          description = "Specifies the type of identities that are allowed access from outside the perimeter. If left unspecified, then members of `identities` field will be allowed access.",
          enum = {
            "IDENTITY_TYPE_UNSPECIFIED",
            "ANY_IDENTITY",
            "ANY_USER_ACCOUNT",
            "ANY_SERVICE_ACCOUNT",
          },
          enumDescriptions = {
            "No blanket identity group specified.",
            "Authorize access from all identities outside the perimeter.",
            "Authorize access from all human users outside the perimeter.",
            "Authorize access from all service accounts outside the perimeter.",
          },
          type = "string",
        },
        sources = {
          description = "Sources that this IngressPolicy authorizes access from.",
          items = {
            ["$ref"] = "IngressSource",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IngressPolicy = {
      description = "Policy for ingress into ServicePerimeter. IngressPolicies match requests based on `ingress_from` and `ingress_to` stanzas. For an ingress policy to match, both the `ingress_from` and `ingress_to` stanzas must be matched. If an IngressPolicy matches a request, the request is allowed through the perimeter boundary from outside the perimeter. For example, access from the internet can be allowed either based on an AccessLevel or, for traffic hosted on Google Cloud, the project of the source network. For access from private networks, using the project of the hosting network is required. Individual ingress policies can be limited by restricting which services and/or actions they match using the `ingress_to` field.",
      id = "IngressPolicy",
      properties = {
        ingressFrom = {
          ["$ref"] = "IngressFrom",
          description = "Defines the conditions on the source of a request causing this IngressPolicy to apply.",
        },
        ingressTo = {
          ["$ref"] = "IngressTo",
          description = "Defines the conditions on the ApiOperation and request destination that cause this IngressPolicy to apply.",
        },
      },
      type = "object",
    },
    IngressSource = {
      description = "The source that IngressPolicy authorizes access from.",
      id = "IngressSource",
      properties = {
        accessLevel = {
          description = "An AccessLevel resource name that allow resources within the ServicePerimeters to be accessed from the internet. AccessLevels listed must be in the same policy as this ServicePerimeter. Referencing a nonexistent AccessLevel will cause an error. If no AccessLevel names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `accessPolicies/MY_POLICY/accessLevels/MY_LEVEL`. If a single `*` is specified for `access_level`, then all IngressSources will be allowed.",
          type = "string",
        },
        resource = {
          description = "A Google Cloud resource that is allowed to ingress the perimeter. Requests from these resources will be allowed to access perimeter data. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`. The project may be in any Google Cloud organization, not just the organization that the perimeter is defined in. `*` is not allowed, the case of allowing all Google Cloud resources only is not supported.",
          type = "string",
        },
      },
      type = "object",
    },
    IngressTo = {
      description = "Defines the conditions under which an IngressPolicy matches a request. Conditions are based on information about the ApiOperation intended to be performed on the target resource of the request. The request must satisfy what is defined in `operations` AND `resources` in order to match.",
      id = "IngressTo",
      properties = {
        operations = {
          description = "A list of ApiOperations allowed to be performed by the sources specified in corresponding IngressFrom in this ServicePerimeter.",
          items = {
            ["$ref"] = "ApiOperation",
          },
          type = "array",
        },
        resources = {
          description = "A list of resources, currently only projects in the form `projects/`, protected by this ServicePerimeter that are allowed to be accessed by sources defined in the corresponding IngressFrom. If a single `*` is specified, then access to all resources inside the perimeter are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAccessLevelsResponse = {
      description = "A response to `ListAccessLevelsRequest`.",
      id = "ListAccessLevelsResponse",
      properties = {
        accessLevels = {
          description = "List of the Access Level instances.",
          items = {
            ["$ref"] = "AccessLevel",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If the value is empty, no further results remain.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAccessPoliciesResponse = {
      description = "A response to `ListAccessPoliciesRequest`.",
      id = "ListAccessPoliciesResponse",
      properties = {
        accessPolicies = {
          description = "List of the AccessPolicy instances.",
          items = {
            ["$ref"] = "AccessPolicy",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If the value is empty, no further results remain.",
          type = "string",
        },
      },
      type = "object",
    },
    ListAuthorizedOrgsDescsResponse = {
      description = "A response to `ListAuthorizedOrgsDescsRequest`.",
      id = "ListAuthorizedOrgsDescsResponse",
      properties = {
        authorizedOrgsDescs = {
          description = "List of the Authorized Orgs Desc instances.",
          items = {
            ["$ref"] = "AuthorizedOrgsDesc",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If the value is empty, no further results remain.",
          type = "string",
        },
      },
      type = "object",
    },
    ListGcpUserAccessBindingsResponse = {
      description = "Response of ListGcpUserAccessBindings.",
      id = "ListGcpUserAccessBindingsResponse",
      properties = {
        gcpUserAccessBindings = {
          description = "GcpUserAccessBinding",
          items = {
            ["$ref"] = "GcpUserAccessBinding",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to get the next page of items. If blank, there are no more items.",
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
    ListServicePerimetersResponse = {
      description = "A response to `ListServicePerimetersRequest`.",
      id = "ListServicePerimetersResponse",
      properties = {
        nextPageToken = {
          description = "The pagination token to retrieve the next page of results. If the value is empty, no further results remain.",
          type = "string",
        },
        servicePerimeters = {
          description = "List of the Service Perimeter instances.",
          items = {
            ["$ref"] = "ServicePerimeter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MethodSelector = {
      description = "An allowed method or permission of a service specified in ApiOperation.",
      id = "MethodSelector",
      properties = {
        method = {
          description = "Value for `method` should be a valid method name for the corresponding `service_name` in ApiOperation. If `*` used as value for `method`, then ALL methods and permissions are allowed.",
          type = "string",
        },
        permission = {
          description = "Value for `permission` should be a valid Cloud IAM permission for the corresponding `service_name` in ApiOperation.",
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
    OsConstraint = {
      description = "A restriction on the OS type and version of devices making requests.",
      id = "OsConstraint",
      properties = {
        minimumVersion = {
          description = "The minimum allowed OS version. If not set, any version of this OS satisfies the constraint. Format: `\"major.minor.patch\"`. Examples: `\"10.5.301\"`, `\"9.2.1\"`.",
          type = "string",
        },
        osType = {
          description = "Required. The allowed OS type.",
          enum = {
            "OS_UNSPECIFIED",
            "DESKTOP_MAC",
            "DESKTOP_WINDOWS",
            "DESKTOP_LINUX",
            "DESKTOP_CHROME_OS",
            "ANDROID",
            "IOS",
          },
          enumDescriptions = {
            "The operating system of the device is not specified or not known.",
            "A desktop Mac operating system.",
            "A desktop Windows operating system.",
            "A desktop Linux operating system.",
            "A desktop ChromeOS operating system.",
            "An Android operating system.",
            "An iOS operating system.",
          },
          type = "string",
        },
        requireVerifiedChromeOs = {
          description = "Only allows requests from devices with a verified Chrome OS. Verifications includes requirements that the device is enterprise-managed, conformant to domain policies, and the caller has permission to call the API targeted by the request.",
          type = "boolean",
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
    ReplaceAccessLevelsRequest = {
      description = "A request to replace all existing Access Levels in an Access Policy with the Access Levels provided. This is done atomically.",
      id = "ReplaceAccessLevelsRequest",
      properties = {
        accessLevels = {
          description = "Required. The desired Access Levels that should replace all existing Access Levels in the Access Policy.",
          items = {
            ["$ref"] = "AccessLevel",
          },
          type = "array",
        },
        etag = {
          description = "Optional. The etag for the version of the Access Policy that this replace operation is to be performed on. If, at the time of replace, the etag for the Access Policy stored in Access Context Manager is different from the specified etag, then the replace operation will not be performed and the call will fail. This field is not required. If etag is not provided, the operation will be performed as if a valid etag is provided.",
          type = "string",
        },
      },
      type = "object",
    },
    ReplaceAccessLevelsResponse = {
      description = "A response to ReplaceAccessLevelsRequest. This will be put inside of Operation.response field.",
      id = "ReplaceAccessLevelsResponse",
      properties = {
        accessLevels = {
          description = "List of the Access Level instances.",
          items = {
            ["$ref"] = "AccessLevel",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReplaceServicePerimetersRequest = {
      description = "A request to replace all existing Service Perimeters in an Access Policy with the Service Perimeters provided. This is done atomically.",
      id = "ReplaceServicePerimetersRequest",
      properties = {
        etag = {
          description = "Optional. The etag for the version of the Access Policy that this replace operation is to be performed on. If, at the time of replace, the etag for the Access Policy stored in Access Context Manager is different from the specified etag, then the replace operation will not be performed and the call will fail. This field is not required. If etag is not provided, the operation will be performed as if a valid etag is provided.",
          type = "string",
        },
        servicePerimeters = {
          description = "Required. The desired Service Perimeters that should replace all existing Service Perimeters in the Access Policy.",
          items = {
            ["$ref"] = "ServicePerimeter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ReplaceServicePerimetersResponse = {
      description = "A response to ReplaceServicePerimetersRequest. This will be put inside of Operation.response field.",
      id = "ReplaceServicePerimetersResponse",
      properties = {
        servicePerimeters = {
          description = "List of the Service Perimeter instances.",
          items = {
            ["$ref"] = "ServicePerimeter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ServicePerimeter = {
      description = "`ServicePerimeter` describes a set of Google Cloud resources which can freely import and export data amongst themselves, but not export outside of the `ServicePerimeter`. If a request with a source within this `ServicePerimeter` has a target outside of the `ServicePerimeter`, the request will be blocked. Otherwise the request is allowed. There are two types of Service Perimeter - Regular and Bridge. Regular Service Perimeters cannot overlap, a single Google Cloud project can only belong to a single regular Service Perimeter. Service Perimeter Bridges can contain only Google Cloud projects as members, a single Google Cloud project may belong to multiple Service Perimeter Bridges.",
      id = "ServicePerimeter",
      properties = {
        description = {
          description = "Description of the `ServicePerimeter` and its use. Does not affect behavior.",
          type = "string",
        },
        name = {
          description = "Resource name for the `ServicePerimeter`. Format: `accessPolicies/{access_policy}/servicePerimeters/{service_perimeter}`. The `service_perimeter` component must begin with a letter, followed by alphanumeric characters or `_`. After you create a `ServicePerimeter`, you cannot change its `name`.",
          type = "string",
        },
        perimeterType = {
          description = "Perimeter type indicator. A single project is allowed to be a member of single regular perimeter, but multiple service perimeter bridges. A project cannot be a included in a perimeter bridge without being included in regular perimeter. For perimeter bridges, the restricted service list as well as access level lists must be empty.",
          enum = {
            "PERIMETER_TYPE_REGULAR",
            "PERIMETER_TYPE_BRIDGE",
          },
          enumDescriptions = {
            "Regular Perimeter. When no value is specified, the perimeter uses this type.",
            "Perimeter Bridge.",
          },
          type = "string",
        },
        spec = {
          ["$ref"] = "ServicePerimeterConfig",
          description = "Proposed (or dry run) ServicePerimeter configuration. This configuration allows to specify and test ServicePerimeter configuration without enforcing actual access restrictions. Only allowed to be set when the \"use_explicit_dry_run_spec\" flag is set.",
        },
        status = {
          ["$ref"] = "ServicePerimeterConfig",
          description = "Current ServicePerimeter configuration. Specifies sets of resources, restricted services and access levels that determine perimeter content and boundaries.",
        },
        title = {
          description = "Human readable title. Must be unique within the Policy.",
          type = "string",
        },
        useExplicitDryRunSpec = {
          description = "Use explicit dry run spec flag. Ordinarily, a dry-run spec implicitly exists for all Service Perimeters, and that spec is identical to the status for those Service Perimeters. When this flag is set, it inhibits the generation of the implicit spec, thereby allowing the user to explicitly provide a configuration (\"spec\") to use in a dry-run version of the Service Perimeter. This allows the user to test changes to the enforced config (\"status\") without actually enforcing them. This testing is done through analyzing the differences between currently enforced and suggested restrictions. use_explicit_dry_run_spec must bet set to True if any of the fields in the spec are set to non-default values.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ServicePerimeterConfig = {
      description = "`ServicePerimeterConfig` specifies a set of Google Cloud resources that describe specific Service Perimeter configuration.",
      id = "ServicePerimeterConfig",
      properties = {
        accessLevels = {
          description = "A list of `AccessLevel` resource names that allow resources within the `ServicePerimeter` to be accessed from the internet. `AccessLevels` listed must be in the same policy as this `ServicePerimeter`. Referencing a nonexistent `AccessLevel` is a syntax error. If no `AccessLevel` names are listed, resources within the perimeter can only be accessed via Google Cloud calls with request origins within the perimeter. Example: `\"accessPolicies/MY_POLICY/accessLevels/MY_LEVEL\"`. For Service Perimeter Bridge, must be empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        egressPolicies = {
          description = "List of EgressPolicies to apply to the perimeter. A perimeter may have multiple EgressPolicies, each of which is evaluated separately. Access is granted if any EgressPolicy grants it. Must be empty for a perimeter bridge.",
          items = {
            ["$ref"] = "EgressPolicy",
          },
          type = "array",
        },
        ingressPolicies = {
          description = "List of IngressPolicies to apply to the perimeter. A perimeter may have multiple IngressPolicies, each of which is evaluated separately. Access is granted if any Ingress Policy grants it. Must be empty for a perimeter bridge.",
          items = {
            ["$ref"] = "IngressPolicy",
          },
          type = "array",
        },
        resources = {
          description = "A list of Google Cloud resources that are inside of the service perimeter. Currently only projects and VPCs are allowed. Project format: `projects/{project_number}` VPC format: `//compute.googleapis.com/projects/{PROJECT_ID}/global/networks/{NAME}`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        restrictedServices = {
          description = "Google Cloud services that are subject to the Service Perimeter restrictions. For example, if `storage.googleapis.com` is specified, access to the storage buckets inside the perimeter must meet the perimeter's access restrictions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        vpcAccessibleServices = {
          ["$ref"] = "VpcAccessibleServices",
          description = "Configuration for APIs allowed within Perimeter.",
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
    VpcAccessibleServices = {
      description = "Specifies how APIs are allowed to communicate within the Service Perimeter.",
      id = "VpcAccessibleServices",
      properties = {
        allowedServices = {
          description = "The list of APIs usable within the Service Perimeter. Must be empty unless 'enable_restriction' is True. You can specify a list of individual services, as well as include the 'RESTRICTED-SERVICES' value, which automatically includes all of the services protected by the perimeter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        enableRestriction = {
          description = "Whether to restrict API calls within the Service Perimeter to the list of APIs specified in 'allowed_services'.",
          type = "boolean",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Access Context Manager API",
  version = "v1",
  version_module = true,
}