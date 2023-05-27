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
  baseUrl = "https://orgpolicy.googleapis.com/",
  batchPath = "batch",
  canonicalName = "OrgPolicy API",
  description = "The Org Policy API allows users to configure governance rules on their GCP resources across the Cloud Resource Hierarchy.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/orgpolicy/docs/reference/rest/index.html",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "orgpolicy:v2",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://orgpolicy.mtls.googleapis.com/",
  name = "orgpolicy",
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
    folders = {
      resources = {
        constraints = {
          methods = {
            list = {
              description = "Lists `Constraints` that could be applied on the specified resource.",
              flatPath = "v2/folders/{foldersId}/constraints",
              httpMethod = "GET",
              id = "orgpolicy.folders.constraints.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The Cloud resource that parents the constraint. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/constraints",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2ListConstraintsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        policies = {
          methods = {
            create = {
              description = "Creates a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given Cloud resource.",
              flatPath = "v2/folders/{foldersId}/policies",
              httpMethod = "POST",
              id = "orgpolicy.folders.policies.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The Cloud resource that will parent the new Policy. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/policies",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or Org Policy does not exist.",
              flatPath = "v2/folders/{foldersId}/policies/{policiesId}",
              httpMethod = "DELETE",
              id = "orgpolicy.folders.policies.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the policy to delete. See `Policy` for naming rules.",
                  location = "path",
                  pattern = "^folders/[^/]+/policies/[^/]+$",
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
              description = "Gets a `Policy` on a resource. If no `Policy` is set on the resource, NOT_FOUND is returned. The `etag` value can be used with `UpdatePolicy()` to update a `Policy` during read-modify-write.",
              flatPath = "v2/folders/{foldersId}/policies/{policiesId}",
              httpMethod = "GET",
              id = "orgpolicy.folders.policies.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the policy. See `Policy` for naming requirements.",
                  location = "path",
                  pattern = "^folders/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getEffectivePolicy = {
              description = "Gets the effective `Policy` on a resource. This is the result of merging `Policies` in the resource hierarchy and evaluating conditions. The returned `Policy` will not have an `etag` or `condition` set because it is a computed `Policy` across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.",
              flatPath = "v2/folders/{foldersId}/policies/{policiesId}:getEffectivePolicy",
              httpMethod = "GET",
              id = "orgpolicy.folders.policies.getEffectivePolicy",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The effective policy to compute. See `Policy` for naming rules.",
                  location = "path",
                  pattern = "^folders/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}:getEffectivePolicy",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Retrieves all of the `Policies` that exist on a particular resource.",
              flatPath = "v2/folders/{foldersId}/policies",
              httpMethod = "GET",
              id = "orgpolicy.folders.policies.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The target Cloud resource that parents the set of constraints and policies that will be returned from this call. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/policies",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2ListPoliciesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the policy Note: the supplied policy will perform a full overwrite of all fields.",
              flatPath = "v2/folders/{foldersId}/policies/{policiesId}",
              httpMethod = "PATCH",
              id = "orgpolicy.folders.policies.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, \"projects/123/policies/compute.disableSerialPortAccess\". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.",
                  location = "path",
                  pattern = "^folders/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Field mask used to specify the fields to be overwritten in the policy by the set. The fields specified in the update_mask are relative to the policy, not the full request.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
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
        constraints = {
          methods = {
            list = {
              description = "Lists `Constraints` that could be applied on the specified resource.",
              flatPath = "v2/organizations/{organizationsId}/constraints",
              httpMethod = "GET",
              id = "orgpolicy.organizations.constraints.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The Cloud resource that parents the constraint. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/constraints",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2ListConstraintsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        customConstraints = {
          methods = {
            create = {
              description = "Creates a CustomConstraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the organization does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the constraint already exists on the given organization.",
              flatPath = "v2/organizations/{organizationsId}/customConstraints",
              httpMethod = "POST",
              id = "orgpolicy.organizations.customConstraints.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. Must be in the following form: * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/customConstraints",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2CustomConstraint",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2CustomConstraint",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a Custom Constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist.",
              flatPath = "v2/organizations/{organizationsId}/customConstraints/{customConstraintsId}",
              httpMethod = "DELETE",
              id = "orgpolicy.organizations.customConstraints.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the custom constraint to delete. See `CustomConstraint` for naming rules.",
                  location = "path",
                  pattern = "^organizations/[^/]+/customConstraints/[^/]+$",
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
              description = "Gets a CustomConstraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the CustomConstraint does not exist.",
              flatPath = "v2/organizations/{organizationsId}/customConstraints/{customConstraintsId}",
              httpMethod = "GET",
              id = "orgpolicy.organizations.customConstraints.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the custom constraint. See `CustomConstraint` for naming requirements.",
                  location = "path",
                  pattern = "^organizations/[^/]+/customConstraints/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2CustomConstraint",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Retrieves all of the `CustomConstraints` that exist on a particular organization resource.",
              flatPath = "v2/organizations/{organizationsId}/customConstraints",
              httpMethod = "GET",
              id = "orgpolicy.organizations.customConstraints.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The target Cloud resource that parents the set of custom constraints that will be returned from this call. Must be in one of the following forms: * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/customConstraints",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2ListCustomConstraintsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a Custom Constraint. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Note: the supplied policy will perform a full overwrite of all fields.",
              flatPath = "v2/organizations/{organizationsId}/customConstraints/{customConstraintsId}",
              httpMethod = "PATCH",
              id = "orgpolicy.organizations.customConstraints.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example : \"organizations/123/customConstraints/custom.createOnlyE2TypeVms\" The max length is 70 characters and the min length is 1. Note that the prefix \"organizations/{organization_id}/customConstraints/\" is not counted.",
                  location = "path",
                  pattern = "^organizations/[^/]+/customConstraints/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2CustomConstraint",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2CustomConstraint",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        policies = {
          methods = {
            create = {
              description = "Creates a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given Cloud resource.",
              flatPath = "v2/organizations/{organizationsId}/policies",
              httpMethod = "POST",
              id = "orgpolicy.organizations.policies.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The Cloud resource that will parent the new Policy. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/policies",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or Org Policy does not exist.",
              flatPath = "v2/organizations/{organizationsId}/policies/{policiesId}",
              httpMethod = "DELETE",
              id = "orgpolicy.organizations.policies.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the policy to delete. See `Policy` for naming rules.",
                  location = "path",
                  pattern = "^organizations/[^/]+/policies/[^/]+$",
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
              description = "Gets a `Policy` on a resource. If no `Policy` is set on the resource, NOT_FOUND is returned. The `etag` value can be used with `UpdatePolicy()` to update a `Policy` during read-modify-write.",
              flatPath = "v2/organizations/{organizationsId}/policies/{policiesId}",
              httpMethod = "GET",
              id = "orgpolicy.organizations.policies.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the policy. See `Policy` for naming requirements.",
                  location = "path",
                  pattern = "^organizations/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getEffectivePolicy = {
              description = "Gets the effective `Policy` on a resource. This is the result of merging `Policies` in the resource hierarchy and evaluating conditions. The returned `Policy` will not have an `etag` or `condition` set because it is a computed `Policy` across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.",
              flatPath = "v2/organizations/{organizationsId}/policies/{policiesId}:getEffectivePolicy",
              httpMethod = "GET",
              id = "orgpolicy.organizations.policies.getEffectivePolicy",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The effective policy to compute. See `Policy` for naming rules.",
                  location = "path",
                  pattern = "^organizations/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}:getEffectivePolicy",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Retrieves all of the `Policies` that exist on a particular resource.",
              flatPath = "v2/organizations/{organizationsId}/policies",
              httpMethod = "GET",
              id = "orgpolicy.organizations.policies.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The target Cloud resource that parents the set of constraints and policies that will be returned from this call. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/policies",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2ListPoliciesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the policy Note: the supplied policy will perform a full overwrite of all fields.",
              flatPath = "v2/organizations/{organizationsId}/policies/{policiesId}",
              httpMethod = "PATCH",
              id = "orgpolicy.organizations.policies.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, \"projects/123/policies/compute.disableSerialPortAccess\". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.",
                  location = "path",
                  pattern = "^organizations/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Field mask used to specify the fields to be overwritten in the policy by the set. The fields specified in the update_mask are relative to the policy, not the full request.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
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
        constraints = {
          methods = {
            list = {
              description = "Lists `Constraints` that could be applied on the specified resource.",
              flatPath = "v2/projects/{projectsId}/constraints",
              httpMethod = "GET",
              id = "orgpolicy.projects.constraints.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The Cloud resource that parents the constraint. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/constraints",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2ListConstraintsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
        policies = {
          methods = {
            create = {
              description = "Creates a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint does not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ALREADY_EXISTS` if the policy already exists on the given Cloud resource.",
              flatPath = "v2/projects/{projectsId}/policies",
              httpMethod = "POST",
              id = "orgpolicy.projects.policies.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The Cloud resource that will parent the new Policy. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/policies",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or Org Policy does not exist.",
              flatPath = "v2/projects/{projectsId}/policies/{policiesId}",
              httpMethod = "DELETE",
              id = "orgpolicy.projects.policies.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the policy to delete. See `Policy` for naming rules.",
                  location = "path",
                  pattern = "^projects/[^/]+/policies/[^/]+$",
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
              description = "Gets a `Policy` on a resource. If no `Policy` is set on the resource, NOT_FOUND is returned. The `etag` value can be used with `UpdatePolicy()` to update a `Policy` during read-modify-write.",
              flatPath = "v2/projects/{projectsId}/policies/{policiesId}",
              httpMethod = "GET",
              id = "orgpolicy.projects.policies.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Resource name of the policy. See `Policy` for naming requirements.",
                  location = "path",
                  pattern = "^projects/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            getEffectivePolicy = {
              description = "Gets the effective `Policy` on a resource. This is the result of merging `Policies` in the resource hierarchy and evaluating conditions. The returned `Policy` will not have an `etag` or `condition` set because it is a computed `Policy` across multiple resources. Subtrees of Resource Manager resource hierarchy with 'under:' prefix will not be expanded.",
              flatPath = "v2/projects/{projectsId}/policies/{policiesId}:getEffectivePolicy",
              httpMethod = "GET",
              id = "orgpolicy.projects.policies.getEffectivePolicy",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The effective policy to compute. See `Policy` for naming rules.",
                  location = "path",
                  pattern = "^projects/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+name}:getEffectivePolicy",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Retrieves all of the `Policies` that exist on a particular resource.",
              flatPath = "v2/projects/{projectsId}/policies",
              httpMethod = "GET",
              id = "orgpolicy.projects.policies.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Size of the pages to be returned. This is currently unsupported and will be ignored. The server may at any point start using this field to limit page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token used to retrieve the next page. This is currently unsupported and will be ignored. The server may at any point start using this field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The target Cloud resource that parents the set of constraints and policies that will be returned from this call. Must be in one of the following forms: * `projects/{project_number}` * `projects/{project_id}` * `folders/{folder_id}` * `organizations/{organization_id}`",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v2/{+parent}/policies",
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2ListPoliciesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a Policy. Returns a `google.rpc.Status` with `google.rpc.Code.NOT_FOUND` if the constraint or the policy do not exist. Returns a `google.rpc.Status` with `google.rpc.Code.ABORTED` if the etag supplied in the request does not match the persisted etag of the policy Note: the supplied policy will perform a full overwrite of all fields.",
              flatPath = "v2/projects/{projectsId}/policies/{policiesId}",
              httpMethod = "PATCH",
              id = "orgpolicy.projects.policies.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, \"projects/123/policies/compute.disableSerialPortAccess\". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.",
                  location = "path",
                  pattern = "^projects/[^/]+/policies/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Field mask used to specify the fields to be overwritten in the policy by the set. The fields specified in the update_mask are relative to the policy, not the full request.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v2/{+name}",
              request = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
              },
              response = {
                ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
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
  revision = "20230116",
  rootUrl = "https://orgpolicy.googleapis.com/",
  schemas = {
    GoogleCloudOrgpolicyV2AlternatePolicySpec = {
      description = "Similar to PolicySpec but with an extra 'launch' field for launch reference. The PolicySpec here is specific for dry-run/darklaunch.",
      id = "GoogleCloudOrgpolicyV2AlternatePolicySpec",
      properties = {
        launch = {
          description = "Reference to the launch that will be used while audit logging and to control the launch. Should be set only in the alternate policy.",
          type = "string",
        },
        spec = {
          ["$ref"] = "GoogleCloudOrgpolicyV2PolicySpec",
          description = "Specify `Constraint` for configurations of Cloud Platform resources.",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2Constraint = {
      description = "A `constraint` describes a way to restrict resource's configuration. For example, you could enforce a constraint that controls which cloud services can be activated across an organization, or whether a Compute Engine instance can have serial port connections established. `Constraints` can be configured by the organization's policy administrator to fit the needs of the organization by setting a `policy` that includes `constraints` at different locations in the organization's resource hierarchy. Policies are inherited down the resource hierarchy from higher levels, but can also be overridden. For details about the inheritance rules please read about `policies`. `Constraints` have a default behavior determined by the `constraint_default` field, which is the enforcement behavior that is used in the absence of a `policy` being defined or inherited for the resource in question.",
      id = "GoogleCloudOrgpolicyV2Constraint",
      properties = {
        booleanConstraint = {
          ["$ref"] = "GoogleCloudOrgpolicyV2ConstraintBooleanConstraint",
          description = "Defines this constraint as being a BooleanConstraint.",
        },
        constraintDefault = {
          description = "The evaluation behavior of this constraint in the absence of 'Policy'.",
          enum = {
            "CONSTRAINT_DEFAULT_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "This is only used for distinguishing unset values and should never be used.",
            "Indicate that all values are allowed for list constraints. Indicate that enforcement is off for boolean constraints.",
            "Indicate that all values are denied for list constraints. Indicate that enforcement is on for boolean constraints.",
          },
          type = "string",
        },
        description = {
          description = "Detailed description of what this `Constraint` controls as well as how and where it is enforced. Mutable.",
          type = "string",
        },
        displayName = {
          description = "The human readable name. Mutable.",
          type = "string",
        },
        listConstraint = {
          ["$ref"] = "GoogleCloudOrgpolicyV2ConstraintListConstraint",
          description = "Defines this constraint as being a ListConstraint.",
        },
        name = {
          description = "Immutable. The resource name of the Constraint. Must be in one of the following forms: * `projects/{project_number}/constraints/{constraint_name}` * `folders/{folder_id}/constraints/{constraint_name}` * `organizations/{organization_id}/constraints/{constraint_name}` For example, \"/projects/123/constraints/compute.disableSerialPortAccess\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2ConstraintBooleanConstraint = {
      description = "A `Constraint` that is either enforced or not. For example a constraint `constraints/compute.disableSerialPortAccess`. If it is enforced on a VM instance, serial port connections will not be opened to that instance.",
      id = "GoogleCloudOrgpolicyV2ConstraintBooleanConstraint",
      properties = {},
      type = "object",
    },
    GoogleCloudOrgpolicyV2ConstraintListConstraint = {
      description = "A `Constraint` that allows or disallows a list of string values, which are configured by an Organization's policy administrator with a `Policy`.",
      id = "GoogleCloudOrgpolicyV2ConstraintListConstraint",
      properties = {
        supportsIn = {
          description = "Indicates whether values grouped into categories can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `\"in:Python\"` would match any value in the 'Python' group.",
          type = "boolean",
        },
        supportsUnder = {
          description = "Indicates whether subtrees of Cloud Resource Manager resource hierarchy can be used in `Policy.allowed_values` and `Policy.denied_values`. For example, `\"under:folders/123\"` would match any resource under the 'folders/123' folder.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2CustomConstraint = {
      description = "A custom constraint defined by customers which can *only* be applied to the given resource types and organization. By creating a custom constraint, customers can applied policies of this custom constraint. *Creating a custom constraint itself does NOT apply any policy enforcement*.",
      id = "GoogleCloudOrgpolicyV2CustomConstraint",
      properties = {
        actionType = {
          description = "Allow or deny type.",
          enum = {
            "ACTION_TYPE_UNSPECIFIED",
            "ALLOW",
            "DENY",
          },
          enumDescriptions = {
            "Unspecified. Will results in user error.",
            "Allowed action type.",
            "Deny action type.",
          },
          type = "string",
        },
        condition = {
          description = "Org policy condition/expression. For example: `resource.instanceName.matches(\"[production|test]_.*_(\\d)+\")'` or, `resource.management.auto_upgrade == true` The max length of the condition is 1000 characters.",
          type = "string",
        },
        description = {
          description = "Detailed information about this custom policy constraint. The max length of the description is 2000 characters.",
          type = "string",
        },
        displayName = {
          description = "One line display name for the UI. The max length of the display_name is 200 characters.",
          type = "string",
        },
        methodTypes = {
          description = "All the operations being applied for this constraint.",
          items = {
            enum = {
              "METHOD_TYPE_UNSPECIFIED",
              "CREATE",
              "UPDATE",
              "DELETE",
            },
            enumDescriptions = {
              "Unspecified. Will results in user error.",
              "Constraint applied when creating the resource.",
              "Constraint applied when updating the resource.",
              "Constraint applied when deleting the resource. Not supported yet.",
            },
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Immutable. Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example : \"organizations/123/customConstraints/custom.createOnlyE2TypeVms\" The max length is 70 characters and the min length is 1. Note that the prefix \"organizations/{organization_id}/customConstraints/\" is not counted.",
          type = "string",
        },
        resourceTypes = {
          description = "Immutable. The Resource Instance type on which this policy applies to. Format will be of the form : \"/\" Example: * `compute.googleapis.com/Instance`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        updateTime = {
          description = "Output only. The last time this custom constraint was updated. This represents the last time that the `CreateCustomConstraint` or `UpdateCustomConstraint` RPC was called",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2ListConstraintsResponse = {
      description = "The response returned from the ListConstraints method.",
      id = "GoogleCloudOrgpolicyV2ListConstraintsResponse",
      properties = {
        constraints = {
          description = "The collection of constraints that are available on the targeted resource.",
          items = {
            ["$ref"] = "GoogleCloudOrgpolicyV2Constraint",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token used to retrieve the next page. This is currently not used.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2ListCustomConstraintsResponse = {
      description = "The response returned from the ListCustomConstraints method. It will be empty if no `CustomConstraints` are set on the organization resource.",
      id = "GoogleCloudOrgpolicyV2ListCustomConstraintsResponse",
      properties = {
        customConstraints = {
          description = "All `CustomConstraints` that exist on the organization resource. It will be empty if no `CustomConstraints` are set.",
          items = {
            ["$ref"] = "GoogleCloudOrgpolicyV2CustomConstraint",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token used to retrieve the next page. This is currently not used, but the server may at any point start supplying a valid token.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2ListPoliciesResponse = {
      description = "The response returned from the ListPolicies method. It will be empty if no `Policies` are set on the resource.",
      id = "GoogleCloudOrgpolicyV2ListPoliciesResponse",
      properties = {
        nextPageToken = {
          description = "Page token used to retrieve the next page. This is currently not used, but the server may at any point start supplying a valid token.",
          type = "string",
        },
        policies = {
          description = "All `Policies` that exist on the resource. It will be empty if no `Policies` are set.",
          items = {
            ["$ref"] = "GoogleCloudOrgpolicyV2Policy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2Policy = {
      description = "Defines a Cloud Organization `Policy` which is used to specify `Constraints` for configurations of Cloud Platform resources.",
      id = "GoogleCloudOrgpolicyV2Policy",
      properties = {
        alternate = {
          ["$ref"] = "GoogleCloudOrgpolicyV2AlternatePolicySpec",
          description = "Deprecated.",
        },
        dryRunSpec = {
          ["$ref"] = "GoogleCloudOrgpolicyV2PolicySpec",
          description = "dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.",
        },
        name = {
          description = "Immutable. The resource name of the Policy. Must be one of the following forms, where constraint_name is the name of the constraint which this Policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, \"projects/123/policies/compute.disableSerialPortAccess\". Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.",
          type = "string",
        },
        spec = {
          ["$ref"] = "GoogleCloudOrgpolicyV2PolicySpec",
          description = "Basic information about the Organization Policy.",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2PolicySpec = {
      description = "Defines a Cloud Organization `PolicySpec` which is used to specify `Constraints` for configurations of Cloud Platform resources.",
      id = "GoogleCloudOrgpolicyV2PolicySpec",
      properties = {
        etag = {
          description = "An opaque tag indicating the current version of the `Policy`, used for concurrency control. This field is ignored if used in a `CreatePolicy` request. When the `Policy` is returned from either a `GetPolicy` or a `ListPolicies` request, this `etag` indicates the version of the current `Policy` to use when executing a read-modify-write loop. When the `Policy` is returned from a `GetEffectivePolicy` request, the `etag` will be unset.",
          type = "string",
        },
        inheritFromParent = {
          description = "Determines the inheritance behavior for this `Policy`. If `inherit_from_parent` is true, PolicyRules set higher up in the hierarchy (up to the closest root) are inherited and present in the effective policy. If it is false, then no rules are inherited, and this Policy becomes the new root for evaluation. This field can be set only for Policies which configure list constraints.",
          type = "boolean",
        },
        reset = {
          description = "Ignores policies set above this resource and restores the `constraint_default` enforcement behavior of the specific `Constraint` at this resource. This field can be set in policies for either list or boolean constraints. If set, `rules` must be empty and `inherit_from_parent` must be set to false.",
          type = "boolean",
        },
        rules = {
          description = "Up to 10 PolicyRules are allowed. In Policies for boolean constraints, the following requirements apply: - There must be one and only one PolicyRule where condition is unset. - BooleanPolicyRules with conditions must set `enforced` to the opposite of the PolicyRule without a condition. - During policy evaluation, PolicyRules with conditions that are true for a target resource take precedence.",
          items = {
            ["$ref"] = "GoogleCloudOrgpolicyV2PolicySpecPolicyRule",
          },
          type = "array",
        },
        updateTime = {
          description = "Output only. The time stamp this was previously updated. This represents the last time a call to `CreatePolicy` or `UpdatePolicy` was made for that `Policy`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2PolicySpecPolicyRule = {
      description = "A rule used to express this policy.",
      id = "GoogleCloudOrgpolicyV2PolicySpecPolicyRule",
      properties = {
        allowAll = {
          description = "Setting this to true means that all values are allowed. This field can be set only in Policies for list constraints.",
          type = "boolean",
        },
        condition = {
          ["$ref"] = "GoogleTypeExpr",
          description = "A condition which determines whether this rule is used in the evaluation of the policy. When set, the `expression` field in the `Expr' must include from 1 to 10 subexpressions, joined by the \"||\" or \"&&\" operators. Each subexpression must be of the form \"resource.matchTag('/tag_key_short_name, 'tag_value_short_name')\". or \"resource.matchTagId('tagKeys/key_id', 'tagValues/value_id')\". where key_name and value_name are the resource names for Label Keys and Values. These names are available from the Tag Manager Service. An example expression is: \"resource.matchTag('123456789/environment, 'prod')\". or \"resource.matchTagId('tagKeys/123', 'tagValues/456')\".",
        },
        denyAll = {
          description = "Setting this to true means that all values are denied. This field can be set only in Policies for list constraints.",
          type = "boolean",
        },
        enforce = {
          description = "If `true`, then the `Policy` is enforced. If `false`, then any configuration is acceptable. This field can be set only in Policies for boolean constraints.",
          type = "boolean",
        },
        values = {
          ["$ref"] = "GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues",
          description = "List of values to be used for this PolicyRule. This field can be set only in Policies for list constraints.",
        },
      },
      type = "object",
    },
    GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues = {
      description = "A message that holds specific allowed and denied values. This message can define specific values and subtrees of Cloud Resource Manager resource hierarchy (`Organizations`, `Folders`, `Projects`) that are allowed or denied. This is achieved by using the `under:` and optional `is:` prefixes. The `under:` prefix is used to denote resource subtree values. The `is:` prefix is used to denote specific values, and is required only if the value contains a \":\". Values prefixed with \"is:\" are treated the same as values with no prefix. Ancestry subtrees must be in one of the following formats: - \"projects/\", e.g. \"projects/tokyo-rain-123\" - \"folders/\", e.g. \"folders/1234\" - \"organizations/\", e.g. \"organizations/1234\" The `supports_under` field of the associated `Constraint` defines whether ancestry prefixes can be used.",
      id = "GoogleCloudOrgpolicyV2PolicySpecPolicyRuleStringValues",
      properties = {
        allowedValues = {
          description = "List of values allowed at this resource.",
          items = {
            type = "string",
          },
          type = "array",
        },
        deniedValues = {
          description = "List of values denied at this resource.",
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
  },
  servicePath = "",
  title = "Organization Policy API",
  version = "v2",
  version_module = true,
}