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
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudresourcemanager.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Resource Manager",
  description = "Creates, reads, and updates metadata for Google Cloud Platform resource containers.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/resource-manager",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudresourcemanager:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudresourcemanager.mtls.googleapis.com/",
  name = "cloudresourcemanager",
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
    effectiveTags = {
      methods = {
        list = {
          description = "Return a list of effective tags for the given Google Cloud resource, as specified in `parent`.",
          flatPath = "v3/effectiveTags",
          httpMethod = "GET",
          id = "cloudresourcemanager.effectiveTags.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of effective tags to return in the response. The server allows a maximum of 300 effective tags to return in a single page. If unspecified, the server will use 100 as the default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to `ListEffectiveTags` that indicates from where this listing should continue.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The full resource name of a resource for which you want to list the effective tags. E.g. \"//cloudresourcemanager.googleapis.com/projects/123\"",
              location = "query",
              type = "string",
            },
          },
          path = "v3/effectiveTags",
          response = {
            ["$ref"] = "ListEffectiveTagsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    folders = {
      methods = {
        create = {
          description = "Creates a folder in the resource hierarchy. Returns an `Operation` which can be used to track the progress of the folder creation workflow. Upon success, the `Operation.response` field will be populated with the created Folder. In order to succeed, the addition of this new folder must not violate the folder naming, height, or fanout constraints. + The folder's `display_name` must be distinct from all other folders that share its parent. + The addition of the folder must not cause the active folder hierarchy to exceed a height of 10. Note, the full active + deleted folder hierarchy is allowed to reach a height of 20; this provides additional headroom when moving folders that contain deleted folders. + The addition of the folder must not cause the total number of folders under its parent to exceed 300. If the operation fails due to a folder constraint violation, some errors may be returned by the `CreateFolder` request, with status code `FAILED_PRECONDITION` and an error description. Other folder constraint violations will be communicated in the `Operation`, with the specific `PreconditionFailure` returned in the details list in the `Operation.error` field. The caller must have `resourcemanager.folders.create` permission on the identified parent.",
          flatPath = "v3/folders",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.create",
          parameterOrder = {},
          parameters = {},
          path = "v3/folders",
          request = {
            ["$ref"] = "Folder",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Requests deletion of a folder. The folder is moved into the DELETE_REQUESTED state immediately, and is deleted approximately 30 days later. This method may only be called on an empty folder, where a folder is empty if it doesn't contain any folders or projects in the ACTIVE state. If called on a folder in DELETE_REQUESTED state the operation will result in a no-op success. The caller must have `resourcemanager.folders.delete` permission on the identified folder.",
          flatPath = "v3/folders/{foldersId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.folders.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the folder to be deleted. Must be of the form `folders/{folder_id}`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Retrieves a folder identified by the supplied resource name. Valid folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.",
          flatPath = "v3/folders/{foldersId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.folders.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the folder to retrieve. Must be of the form `folders/{folder_id}`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Folder",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the folder's resource name, for example: \"folders/1234\". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.",
          flatPath = "v3/folders/{foldersId}:getIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists the folders that are direct descendants of supplied parent resource. `list()` provides a strongly consistent view of the folders underneath the specified parent resource. `list()` returns folders sorted based upon the (ascending) lexical ordering of their display_name. The caller must have `resourcemanager.folders.list` permission on the identified parent.",
          flatPath = "v3/folders",
          httpMethod = "GET",
          id = "cloudresourcemanager.folders.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to `ListFolders` that indicates where this listing should continue from.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The name of the parent resource whose folders are being listed. Only children of this parent resource are listed; descendants are not listed. If the parent is a folder, use the value `folders/{folder_id}`. If the parent is an organization, use the value `organizations/{org_id}`. Access to this method is controlled by checking the `resourcemanager.folders.list` permission on the `parent`.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Optional. Controls whether folders in the DELETE_REQUESTED state should be returned. Defaults to false.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/folders",
          response = {
            ["$ref"] = "ListFoldersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        move = {
          description = "Moves a folder under a new resource parent. Returns an `Operation` which can be used to track the progress of the folder move workflow. Upon success, the `Operation.response` field will be populated with the moved folder. Upon failure, a `FolderOperationError` categorizing the failure cause will be returned - if the failure occurs synchronously then the `FolderOperationError` will be returned in the `Status.details` field. If it occurs asynchronously, then the FolderOperation will be returned in the `Operation.error` field. In addition, the `Operation.metadata` field will be populated with a `FolderOperation` message as an aid to stateless clients. Folder moves will be rejected if they violate either the naming, height, or fanout constraints described in the CreateFolder documentation. The caller must have `resourcemanager.folders.move` permission on the folder's current and proposed new parent.",
          flatPath = "v3/folders/{foldersId}:move",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.move",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the Folder to move. Must be of the form folders/{folder_id}",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}:move",
          request = {
            ["$ref"] = "MoveFolderRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates a folder, changing its `display_name`. Changes to the folder `display_name` will be rejected if they violate either the `display_name` formatting rules or the naming constraints described in the CreateFolder documentation. The folder's `display_name` must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be between 3 and 30 characters. This is captured by the regular expression: `\\p{L}\\p{N}{1,28}[\\p{L}\\p{N}]`. The caller must have `resourcemanager.folders.update` permission on the identified folder. If the update fails due to the unique name constraint then a `PreconditionFailure` explaining this violation will be returned in the Status.details field.",
          flatPath = "v3/folders/{foldersId}",
          httpMethod = "PATCH",
          id = "cloudresourcemanager.folders.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Output only. The resource name of the folder. Its format is `folders/{folder_id}`, for example: \"folders/1234\".",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. Fields to be updated. Only the `display_name` can be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v3/{+name}",
          request = {
            ["$ref"] = "Folder",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        search = {
          description = "Search for folders that match specific filter criteria. `search()` provides an eventually consistent view of the folders a user has access to which meet the specified filter criteria. This will only return folders on which the caller has the permission `resourcemanager.folders.get`.",
          flatPath = "v3/folders:search",
          httpMethod = "GET",
          id = "cloudresourcemanager.folders.search",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to `SearchFolders` that indicates from where search should continue.",
              location = "query",
              type = "string",
            },
            query = {
              description = "Optional. Search criteria used to select the folders to return. If no search criteria is specified then all accessible folders will be returned. Query expressions can be used to restrict results based upon displayName, state and parent, where the operators `=` (`:`) `NOT`, `AND` and `OR` can be used along with the suffix wildcard symbol `*`. The `displayName` field in a query expression should use escaped quotes for values that include whitespace to prevent unexpected behavior. ``` | Field | Description | |-------------------------|----------------------------------------| | displayName | Filters by displayName. | | parent | Filters by parent (for example: folders/123). | | state, lifecycleState | Filters by state. | ``` Some example queries are: * Query `displayName=Test*` returns Folder resources whose display name starts with \"Test\". * Query `state=ACTIVE` returns Folder resources with `state` set to `ACTIVE`. * Query `parent=folders/123` returns Folder resources that have `folders/123` as a parent resource. * Query `parent=folders/123 AND state=ACTIVE` returns active Folder resources that have `folders/123` as a parent resource. * Query `displayName=\\\\\"Test String\\\\\"` returns Folder resources with display names that include both \"Test\" and \"String\".",
              location = "query",
              type = "string",
            },
          },
          path = "v3/folders:search",
          response = {
            ["$ref"] = "SearchFoldersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on a folder, replacing any existing policy. The `resource` field should be the folder's resource name, for example: \"folders/1234\". The caller must have `resourcemanager.folders.setIamPolicy` permission on the identified folder.",
          flatPath = "v3/folders/{foldersId}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:setIamPolicy",
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
          description = "Returns permissions that a caller has on the specified folder. The `resource` field should be the folder's resource name, for example: \"folders/1234\". There are no permissions required for making this API call.",
          flatPath = "v3/folders/{foldersId}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:testIamPermissions",
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
        undelete = {
          description = "Cancels the deletion request for a folder. This method may be called on a folder in any state. If the folder is in the ACTIVE state the result will be a no-op success. In order to succeed, the folder's parent must be in the ACTIVE state. In addition, reintroducing the folder into the tree must not violate folder naming, height, and fanout constraints described in the CreateFolder documentation. The caller must have `resourcemanager.folders.undelete` permission on the identified folder.",
          flatPath = "v3/folders/{foldersId}:undelete",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.undelete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the folder to undelete. Must be of the form `folders/{folder_id}`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}:undelete",
          request = {
            ["$ref"] = "UndeleteFolderRequest",
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
    liens = {
      methods = {
        create = {
          description = "Create a Lien which applies to the resource denoted by the `parent` field. Callers of this method will require permission on the `parent` resource. For example, applying to `projects/1234` requires permission `resourcemanager.projects.updateLiens`. NOTE: Some resources may limit the number of Liens which may be applied.",
          flatPath = "v3/liens",
          httpMethod = "POST",
          id = "cloudresourcemanager.liens.create",
          parameterOrder = {},
          parameters = {},
          path = "v3/liens",
          request = {
            ["$ref"] = "Lien",
          },
          response = {
            ["$ref"] = "Lien",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        delete = {
          description = "Delete a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.updateLiens`.",
          flatPath = "v3/liens/{liensId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.liens.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name/identifier of the Lien to delete.",
              location = "path",
              pattern = "^liens/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        get = {
          description = "Retrieve a Lien by `name`. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`",
          flatPath = "v3/liens/{liensId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.liens.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name/identifier of the Lien.",
              location = "path",
              pattern = "^liens/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Lien",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "List all Liens applied to the `parent` resource. Callers of this method will require permission on the `parent` resource. For example, a Lien with a `parent` of `projects/1234` requires permission `resourcemanager.projects.get`.",
          flatPath = "v3/liens",
          httpMethod = "GET",
          id = "cloudresourcemanager.liens.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of items to return. This is a suggestion for the server. The server can return fewer liens than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The `next_page_token` value returned from a previous List request, if any.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The name of the resource to list all attached Liens. For example, `projects/1234`. (google.api.field_policy).resource_type annotation is not set since the parent depends on the meta api implementation. This field could be a project or other sub project resources.",
              location = "query",
              type = "string",
            },
          },
          path = "v3/liens",
          response = {
            ["$ref"] = "ListLiensResponse",
          },
          scopes = {
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
          flatPath = "v3/operations/{operationsId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.operations.get",
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
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    organizations = {
      methods = {
        get = {
          description = "Fetches an organization resource identified by the specified resource name.",
          flatPath = "v3/organizations/{organizationsId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.organizations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the Organization to fetch. This is the organization's relative path in the API, formatted as \"organizations/[organizationId]\". For example, \"organizations/1234\".",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Organization",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for an organization resource. The policy may be empty if no such policy or resource exists. The `resource` field should be the organization's resource name, for example: \"organizations/123\". Authorization requires the IAM permission `resourcemanager.organizations.getIamPolicy` on the specified organization.",
          flatPath = "v3/organizations/{organizationsId}:getIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        search = {
          description = "Searches organization resources that are visible to the user and satisfy the specified filter. This method returns organizations in an unspecified order. New organizations do not necessarily appear at the end of the results, and may take a small amount of time to appear. Search will only return organizations on which the user has the permission `resourcemanager.organizations.get`",
          flatPath = "v3/organizations:search",
          httpMethod = "GET",
          id = "cloudresourcemanager.organizations.search",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of organizations to return in the response. The server can return fewer organizations than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to `SearchOrganizations` that indicates from where listing should continue.",
              location = "query",
              type = "string",
            },
            query = {
              description = "Optional. An optional query string used to filter the Organizations to return in the response. Query rules are case-insensitive. ``` | Field | Description | |------------------|--------------------------------------------| | directoryCustomerId, owner.directoryCustomerId | Filters by directory customer id. | | domain | Filters by domain. | ``` Organizations may be queried by `directoryCustomerId` or by `domain`, where the domain is a G Suite domain, for example: * Query `directorycustomerid:123456789` returns Organization resources with `owner.directory_customer_id` equal to `123456789`. * Query `domain:google.com` returns Organization resources corresponding to the domain `google.com`.",
              location = "query",
              type = "string",
            },
          },
          path = "v3/organizations:search",
          response = {
            ["$ref"] = "SearchOrganizationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on an organization resource. Replaces any existing policy. The `resource` field should be the organization's resource name, for example: \"organizations/123\". Authorization requires the IAM permission `resourcemanager.organizations.setIamPolicy` on the specified organization.",
          flatPath = "v3/organizations/{organizationsId}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:setIamPolicy",
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
          description = "Returns the permissions that a caller has on the specified organization. The `resource` field should be the organization's resource name, for example: \"organizations/123\". There are no permissions required for making this API call.",
          flatPath = "v3/organizations/{organizationsId}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudresourcemanager.organizations.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^organizations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:testIamPermissions",
          request = {
            ["$ref"] = "TestIamPermissionsRequest",
          },
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    projects = {
      methods = {
        create = {
          description = "Request that a new project be created. The result is an `Operation` which can be used to track the creation process. This process usually takes a few seconds, but can sometimes take much longer. The tracking `Operation` is automatically deleted after a few hours, so there is no need to call `DeleteOperation`.",
          flatPath = "v3/projects",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.create",
          parameterOrder = {},
          parameters = {},
          path = "v3/projects",
          request = {
            ["$ref"] = "Project",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Marks the project identified by the specified `name` (for example, `projects/415104041262`) for deletion. This method will only affect the project if it has a lifecycle state of ACTIVE. This method changes the Project's lifecycle state from ACTIVE to DELETE_REQUESTED. The deletion starts at an unspecified time, at which point the Project is no longer accessible. Until the deletion completes, you can check the lifecycle state checked by retrieving the project with GetProject, and the project remains visible to ListProjects. However, you cannot update the project. After the deletion completes, the project is not retrievable by the GetProject, ListProjects, and SearchProjects methods. This method behaves idempotently, such that deleting a `DELETE_REQUESTED` project will not cause an error, but also won't do anything. The caller must have `resourcemanager.projects.delete` permissions for this project.",
          flatPath = "v3/projects/{projectsId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.projects.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the Project (for example, `projects/415104041262`).",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Retrieves the project identified by the specified `name` (for example, `projects/415104041262`). The caller must have `resourcemanager.projects.get` permission for this project.",
          flatPath = "v3/projects/{projectsId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.projects.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the project (for example, `projects/415104041262`).",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Project",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Returns the IAM access control policy for the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123. Permission is denied if the policy or the resource do not exist.",
          flatPath = "v3/projects/{projectsId}:getIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists projects that are direct children of the specified folder or organization resource. `list()` provides a strongly consistent view of the projects underneath the specified parent resource. `list()` returns projects sorted based upon the (ascending) lexical ordering of their `display_name`. The caller must have `resourcemanager.projects.list` permission on the identified parent.",
          flatPath = "v3/projects",
          httpMethod = "GET",
          id = "cloudresourcemanager.projects.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of projects to return in the response. The server can return fewer projects than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to ListProjects that indicates from where listing should continue.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The name of the parent resource whose projects are being listed. Only children of this parent resource are listed; descendants are not listed. If the parent is a folder, use the value `folders/{folder_id}`. If the parent is an organization, use the value `organizations/{org_id}`.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Optional. Indicate that projects in the `DELETE_REQUESTED` state should also be returned. Normally only `ACTIVE` projects are returned.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/projects",
          response = {
            ["$ref"] = "ListProjectsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        move = {
          description = "Move a project to another place in your resource hierarchy, under a new resource parent. Returns an operation which can be used to track the process of the project move workflow. Upon success, the `Operation.response` field will be populated with the moved project. The caller must have `resourcemanager.projects.move` permission on the project, on the project's current and proposed new parent. If project has no current parent, or it currently does not have an associated organization resource, you will also need the `resourcemanager.projects.setIamPolicy` permission in the project. ",
          flatPath = "v3/projects/{projectsId}:move",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.move",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the project to move.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}:move",
          request = {
            ["$ref"] = "MoveProjectRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates the `display_name` and labels of the project identified by the specified `name` (for example, `projects/415104041262`). Deleting all labels requires an update mask for labels field. The caller must have `resourcemanager.projects.update` permission for this project.",
          flatPath = "v3/projects/{projectsId}",
          httpMethod = "PATCH",
          id = "cloudresourcemanager.projects.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Output only. The unique resource name of the project. It is an int64 generated number prefixed by \"projects/\". Example: `projects/415104041262`",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. An update mask to selectively update fields.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v3/{+name}",
          request = {
            ["$ref"] = "Project",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        search = {
          description = "Search for projects that the caller has both `resourcemanager.projects.get` permission on, and also satisfy the specified query. This method returns projects in an unspecified order. This method is eventually consistent with project mutations; this means that a newly created project may not appear in the results or recent updates to an existing project may not be reflected in the results. To retrieve the latest state of a project, use the GetProject method.",
          flatPath = "v3/projects:search",
          httpMethod = "GET",
          id = "cloudresourcemanager.projects.search",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of projects to return in the response. The server can return fewer projects than requested. If unspecified, server picks an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to ListProjects that indicates from where listing should continue.",
              location = "query",
              type = "string",
            },
            query = {
              description = "Optional. A query string for searching for projects that the caller has `resourcemanager.projects.get` permission to. If multiple fields are included in the query, then it will return results that match any of the fields. Some eligible fields are: ``` | Field | Description | |-------------------------|----------------------------------------------| | displayName, name | Filters by displayName. | | parent | Project's parent (for example: folders/123, organizations/*). Prefer parent field over parent.type and parent.id.| | parent.type | Parent's type: `folder` or `organization`. | | parent.id | Parent's id number (for example: 123) | | id, projectId | Filters by projectId. | | state, lifecycleState | Filters by state. | | labels | Filters by label name or value. | | labels.\\ (where *key* is the name of a label) | Filters by label name.| ``` Search expressions are case insensitive. Some examples queries: ``` | Query | Description | |------------------|-----------------------------------------------------| | name:how* | The project's name starts with \"how\". | | name:Howl | The project's name is `Howl` or `howl`. | | name:HOWL | Equivalent to above. | | NAME:howl | Equivalent to above. | | labels.color:* | The project has the label `color`. | | labels.color:red | The project's label `color` has the value `red`. | | labels.color:red labels.size:big | The project's label `color` has the value `red` or its label `size` has the value `big`. | ``` If no query is specified, the call will return projects for which the user has the `resourcemanager.projects.get` permission.",
              location = "query",
              type = "string",
            },
          },
          path = "v3/projects:search",
          response = {
            ["$ref"] = "SearchProjectsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setIamPolicy = {
          description = "Sets the IAM access control policy for the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123. CAUTION: This method will replace the existing policy, and cannot be used to append additional IAM settings. Note: Removing service accounts from policies or changing their roles can render services completely inoperable. It is important to understand how the service account is being used before removing or updating its roles. The following constraints apply when using `setIamPolicy()`: + Project does not support `allUsers` and `allAuthenticatedUsers` as `members` in a `Binding` of a `Policy`. + The owner role can be granted to a `user`, `serviceAccount`, or a group that is part of an organization. For example, group@myownpersonaldomain.com could be added as an owner to a project in the myownpersonaldomain.com organization, but not the examplepetstore.com organization. + Service accounts can be made owners of a project directly without any restrictions. However, to be added as an owner, a user must be invited using the Cloud Platform console and must accept the invitation. + A user cannot be granted the owner role using `setIamPolicy()`. The user must be granted the owner role using the Cloud Platform Console and must explicitly accept the invitation. + Invitations to grant the owner role cannot be sent using `setIamPolicy()`; they must be sent only using the Cloud Platform Console. + If the project is not part of an organization, there must be at least one owner who has accepted the Terms of Service (ToS) agreement in the policy. Calling `setIamPolicy()` to remove the last ToS-accepted owner from the policy will fail. This restriction also applies to legacy projects that no longer have owners who have accepted the ToS. Edits to IAM policies will be rejected until the lack of a ToS-accepting owner is rectified. If the project is part of an organization, you can remove all owners, potentially making the organization inaccessible.",
          flatPath = "v3/projects/{projectsId}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:setIamPolicy",
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
          description = "Returns permissions that a caller has on the specified project, in the format `projects/{ProjectIdOrNumber}` e.g. projects/123..",
          flatPath = "v3/projects/{projectsId}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:testIamPermissions",
          request = {
            ["$ref"] = "TestIamPermissionsRequest",
          },
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        undelete = {
          description = "Restores the project identified by the specified `name` (for example, `projects/415104041262`). You can only use this method for a project that has a lifecycle state of DELETE_REQUESTED. After deletion starts, the project cannot be restored. The caller must have `resourcemanager.projects.undelete` permission for this project.",
          flatPath = "v3/projects/{projectsId}:undelete",
          httpMethod = "POST",
          id = "cloudresourcemanager.projects.undelete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the project (for example, `projects/415104041262`). Required.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}:undelete",
          request = {
            ["$ref"] = "UndeleteProjectRequest",
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
    tagBindings = {
      methods = {
        create = {
          description = "Creates a TagBinding between a TagValue and a Google Cloud resource.",
          flatPath = "v3/tagBindings",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagBindings.create",
          parameterOrder = {},
          parameters = {
            validateOnly = {
              description = "Optional. Set to true to perform the validations necessary for creating the resource, but not actually perform the action.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/tagBindings",
          request = {
            ["$ref"] = "TagBinding",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a TagBinding.",
          flatPath = "v3/tagBindings/{tagBindingsId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.tagBindings.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the TagBinding. This is a String of the form: `tagBindings/{id}` (e.g. `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).",
              location = "path",
              pattern = "^tagBindings/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists the TagBindings for the given Google Cloud resource, as specified with `parent`. NOTE: The `parent` field is expected to be a full resource name: https://cloud.google.com/apis/design/resource_names#full_resource_name",
          flatPath = "v3/tagBindings",
          httpMethod = "GET",
          id = "cloudresourcemanager.tagBindings.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of TagBindings to return in the response. The server allows a maximum of 300 TagBindings to return. If unspecified, the server will use 100 as the default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to `ListTagBindings` that indicates where this listing should continue from.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The full resource name of a resource for which you want to list existing TagBindings. E.g. \"//cloudresourcemanager.googleapis.com/projects/123\"",
              location = "query",
              type = "string",
            },
          },
          path = "v3/tagBindings",
          response = {
            ["$ref"] = "ListTagBindingsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
    tagKeys = {
      methods = {
        create = {
          description = "Creates a new TagKey. If another request with the same parameters is sent while the original request is in process, the second request will receive an error. A maximum of 1000 TagKeys can exist under a parent at any given time.",
          flatPath = "v3/tagKeys",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagKeys.create",
          parameterOrder = {},
          parameters = {
            validateOnly = {
              description = "Optional. Set to true to perform validations necessary for creating the resource, but not actually perform the action.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/tagKeys",
          request = {
            ["$ref"] = "TagKey",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a TagKey. The TagKey cannot be deleted if it has any child TagValues.",
          flatPath = "v3/tagKeys/{tagKeysId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.tagKeys.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            etag = {
              description = "Optional. The etag known to the client for the expected state of the TagKey. This is to be used for optimistic concurrency.",
              location = "query",
              type = "string",
            },
            name = {
              description = "Required. The resource name of a TagKey to be deleted in the format `tagKeys/123`. The TagKey cannot be a parent of any existing TagValues or it will not be deleted successfully.",
              location = "path",
              pattern = "^tagKeys/[^/]+$",
              required = true,
              type = "string",
            },
            validateOnly = {
              description = "Optional. Set as true to perform validations necessary for deletion, but not actually perform the action.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Retrieves a TagKey. This method will return `PERMISSION_DENIED` if the key does not exist or the user does not have permission to view it.",
          flatPath = "v3/tagKeys/{tagKeysId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.tagKeys.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. A resource name in the format `tagKeys/{id}`, such as `tagKeys/123`.",
              location = "path",
              pattern = "^tagKeys/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "TagKey",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a TagKey. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagKey's resource name. For example, \"tagKeys/1234\". The caller must have `cloudresourcemanager.googleapis.com/tagKeys.getIamPolicy` permission on the specified TagKey.",
          flatPath = "v3/tagKeys/{tagKeysId}:getIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagKeys.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^tagKeys/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists all TagKeys for a parent resource.",
          flatPath = "v3/tagKeys",
          httpMethod = "GET",
          id = "cloudresourcemanager.tagKeys.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of TagKeys to return in the response. The server allows a maximum of 300 TagKeys to return. If unspecified, the server will use 100 as the default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to `ListTagKey` that indicates where this listing should continue from.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required. The resource name of the new TagKey's parent. Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.",
              location = "query",
              type = "string",
            },
          },
          path = "v3/tagKeys",
          response = {
            ["$ref"] = "ListTagKeysResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        patch = {
          description = "Updates the attributes of the TagKey resource.",
          flatPath = "v3/tagKeys/{tagKeysId}",
          httpMethod = "PATCH",
          id = "cloudresourcemanager.tagKeys.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.",
              location = "path",
              pattern = "^tagKeys/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Fields to be updated. The mask may only contain `description` or `etag`. If omitted entirely, both `description` and `etag` are assumed to be significant.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            validateOnly = {
              description = "Set as true to perform validations necessary for updating the resource, but not actually perform the action.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/{+name}",
          request = {
            ["$ref"] = "TagKey",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on a TagKey, replacing any existing policy. The `resource` field should be the TagKey's resource name. For example, \"tagKeys/1234\". The caller must have `resourcemanager.tagKeys.setIamPolicy` permission on the identified tagValue.",
          flatPath = "v3/tagKeys/{tagKeysId}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagKeys.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^tagKeys/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:setIamPolicy",
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
          description = "Returns permissions that a caller has on the specified TagKey. The `resource` field should be the TagKey's resource name. For example, \"tagKeys/1234\". There are no permissions required for making this API call.",
          flatPath = "v3/tagKeys/{tagKeysId}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagKeys.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^tagKeys/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:testIamPermissions",
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
    tagValues = {
      methods = {
        create = {
          description = "Creates a TagValue as a child of the specified TagKey. If a another request with the same parameters is sent while the original request is in process the second request will receive an error. A maximum of 1000 TagValues can exist under a TagKey at any given time.",
          flatPath = "v3/tagValues",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagValues.create",
          parameterOrder = {},
          parameters = {
            validateOnly = {
              description = "Optional. Set as true to perform the validations necessary for creating the resource, but not actually perform the action.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/tagValues",
          request = {
            ["$ref"] = "TagValue",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a TagValue. The TagValue cannot have any bindings when it is deleted.",
          flatPath = "v3/tagValues/{tagValuesId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.tagValues.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            etag = {
              description = "Optional. The etag known to the client for the expected state of the TagValue. This is to be used for optimistic concurrency.",
              location = "query",
              type = "string",
            },
            name = {
              description = "Required. Resource name for TagValue to be deleted in the format tagValues/456.",
              location = "path",
              pattern = "^tagValues/[^/]+$",
              required = true,
              type = "string",
            },
            validateOnly = {
              description = "Optional. Set as true to perform the validations necessary for deletion, but not actually perform the action.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Retrieves a TagValue. This method will return `PERMISSION_DENIED` if the value does not exist or the user does not have permission to view it.",
          flatPath = "v3/tagValues/{tagValuesId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.tagValues.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. Resource name for TagValue to be fetched in the format `tagValues/456`.",
              location = "path",
              pattern = "^tagValues/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+name}",
          response = {
            ["$ref"] = "TagValue",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a TagValue. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. The caller must have the `cloudresourcemanager.googleapis.com/tagValues.getIamPolicy` permission on the identified TagValue to get the access control policy.",
          flatPath = "v3/tagValues/{tagValuesId}:getIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagValues.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^tagValues/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:getIamPolicy",
          request = {
            ["$ref"] = "GetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        list = {
          description = "Lists all TagValues for a specific TagKey.",
          flatPath = "v3/tagValues",
          httpMethod = "GET",
          id = "cloudresourcemanager.tagValues.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of TagValues to return in the response. The server allows a maximum of 300 TagValues to return. If unspecified, the server will use 100 as the default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. A pagination token returned from a previous call to `ListTagValues` that indicates where this listing should continue from.",
              location = "query",
              type = "string",
            },
            parent = {
              description = "Required.",
              location = "query",
              type = "string",
            },
          },
          path = "v3/tagValues",
          response = {
            ["$ref"] = "ListTagValuesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        patch = {
          description = "Updates the attributes of the TagValue resource.",
          flatPath = "v3/tagValues/{tagValuesId}",
          httpMethod = "PATCH",
          id = "cloudresourcemanager.tagValues.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Immutable. Resource name for TagValue in the format `tagValues/456`.",
              location = "path",
              pattern = "^tagValues/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Optional. Fields to be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            validateOnly = {
              description = "Optional. True to perform validations necessary for updating the resource, but not actually perform the action.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v3/{+name}",
          request = {
            ["$ref"] = "TagValue",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on a TagValue, replacing any existing policy. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. The caller must have `resourcemanager.tagValues.setIamPolicy` permission on the identified tagValue.",
          flatPath = "v3/tagValues/{tagValuesId}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagValues.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^tagValues/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:setIamPolicy",
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
          description = "Returns permissions that a caller has on the specified TagValue. The `resource` field should be the TagValue's resource name. For example: `tagValues/1234`. There are no permissions required for making this API call.",
          flatPath = "v3/tagValues/{tagValuesId}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudresourcemanager.tagValues.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^tagValues/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v3/{+resource}:testIamPermissions",
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
        tagHolds = {
          methods = {
            create = {
              description = "Creates a TagHold. Returns ALREADY_EXISTS if a TagHold with the same resource and origin exists under the same TagValue.",
              flatPath = "v3/tagValues/{tagValuesId}/tagHolds",
              httpMethod = "POST",
              id = "cloudresourcemanager.tagValues.tagHolds.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the TagHold's parent TagValue. Must be of the form: `tagValues/{tag-value-id}`.",
                  location = "path",
                  pattern = "^tagValues/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "Optional. Set to true to perform the validations necessary for creating the resource, but not actually perform the action.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v3/{+parent}/tagHolds",
              request = {
                ["$ref"] = "TagHold",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a TagHold.",
              flatPath = "v3/tagValues/{tagValuesId}/tagHolds/{tagHoldsId}",
              httpMethod = "DELETE",
              id = "cloudresourcemanager.tagValues.tagHolds.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the TagHold to delete. Must be of the form: `tagValues/{tag-value-id}/tagHolds/{tag-hold-id}`.",
                  location = "path",
                  pattern = "^tagValues/[^/]+/tagHolds/[^/]+$",
                  required = true,
                  type = "string",
                },
                validateOnly = {
                  description = "Optional. Set to true to perform the validations necessary for deleting the resource, but not actually perform the action.",
                  location = "query",
                  type = "boolean",
                },
              },
              path = "v3/{+name}",
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists TagHolds under a TagValue.",
              flatPath = "v3/tagValues/{tagValuesId}/tagHolds",
              httpMethod = "GET",
              id = "cloudresourcemanager.tagValues.tagHolds.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Criteria used to select a subset of TagHolds parented by the TagValue to return. This field follows the syntax defined by aip.dev/160; the `holder` and `origin` fields are supported for filtering. Currently only `AND` syntax is supported. Some example queries are: * `holder = //compute.googleapis.com/compute/projects/myproject/regions/us-east-1/instanceGroupManagers/instance-group` * `origin = 35678234` * `holder = //compute.googleapis.com/compute/projects/myproject/regions/us-east-1/instanceGroupManagers/instance-group AND origin = 35678234`",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. The maximum number of TagHolds to return in the response. The server allows a maximum of 300 TagHolds to return. If unspecified, the server will use 100 as the default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. A pagination token returned from a previous call to `ListTagHolds` that indicates where this listing should continue from.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name of the parent TagValue. Must be of the form: `tagValues/{tag-value-id}`.",
                  location = "path",
                  pattern = "^tagValues/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v3/{+parent}/tagHolds",
              response = {
                ["$ref"] = "ListTagHoldsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230115",
  rootUrl = "https://cloudresourcemanager.googleapis.com/",
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
    CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation = {
      description = "Metadata describing a long running folder operation",
      id = "CloudresourcemanagerGoogleCloudResourcemanagerV2alpha1FolderOperation",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization we are either creating the folder under or moving the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        operationType = {
          description = "The type of this operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "MOVE",
          },
          enumDescriptions = {
            "Operation type not specified.",
            "A create folder operation.",
            "A move folder operation.",
          },
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent. Only applicable when the operation_type is MOVE.",
          type = "string",
        },
      },
      type = "object",
    },
    CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation = {
      description = "Metadata describing a long running folder operation",
      id = "CloudresourcemanagerGoogleCloudResourcemanagerV2beta1FolderOperation",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization we are either creating the folder under or moving the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        operationType = {
          description = "The type of this operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "MOVE",
          },
          enumDescriptions = {
            "Operation type not specified.",
            "A create folder operation.",
            "A move folder operation.",
          },
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent. Only applicable when the operation_type is MOVE.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateFolderMetadata = {
      description = "Metadata pertaining to the Folder creation process.",
      id = "CreateFolderMetadata",
      properties = {
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        parent = {
          description = "The resource name of the folder or organization we are creating the folder under.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.",
      id = "CreateProjectMetadata",
      properties = {
        createTime = {
          description = "Creation time of the project creation workflow.",
          format = "google-datetime",
          type = "string",
        },
        gettable = {
          description = "True if the project can be retrieved using `GetProject`. No other operations on the project are guaranteed to work until the project creation is complete.",
          type = "boolean",
        },
        ready = {
          description = "True if the project creation process is complete.",
          type = "boolean",
        },
      },
      type = "object",
    },
    CreateTagBindingMetadata = {
      description = "Runtime operation information for creating a TagValue.",
      id = "CreateTagBindingMetadata",
      properties = {},
      type = "object",
    },
    CreateTagKeyMetadata = {
      description = "Runtime operation information for creating a TagKey.",
      id = "CreateTagKeyMetadata",
      properties = {},
      type = "object",
    },
    CreateTagValueMetadata = {
      description = "Runtime operation information for creating a TagValue.",
      id = "CreateTagValueMetadata",
      properties = {},
      type = "object",
    },
    DeleteFolderMetadata = {
      description = "A status object which is used as the `metadata` field for the `Operation` returned by `DeleteFolder`.",
      id = "DeleteFolderMetadata",
      properties = {},
      type = "object",
    },
    DeleteOrganizationMetadata = {
      description = "A status object which is used as the `metadata` field for the operation returned by DeleteOrganization.",
      id = "DeleteOrganizationMetadata",
      properties = {},
      type = "object",
    },
    DeleteProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by `DeleteProject`.",
      id = "DeleteProjectMetadata",
      properties = {},
      type = "object",
    },
    DeleteTagBindingMetadata = {
      description = "Runtime operation information for deleting a TagBinding.",
      id = "DeleteTagBindingMetadata",
      properties = {},
      type = "object",
    },
    DeleteTagKeyMetadata = {
      description = "Runtime operation information for deleting a TagKey.",
      id = "DeleteTagKeyMetadata",
      properties = {},
      type = "object",
    },
    DeleteTagValueMetadata = {
      description = "Runtime operation information for deleting a TagValue.",
      id = "DeleteTagValueMetadata",
      properties = {},
      type = "object",
    },
    EffectiveTag = {
      description = "An EffectiveTag represents a tag that applies to a resource during policy evaluation. Tags can be either directly bound to a resource or inherited from its ancestor. EffectiveTag contains the name and namespaced_name of the tag value and tag key, with additional fields of `inherited` to indicate the inheritance status of the effective tag.",
      id = "EffectiveTag",
      properties = {
        inherited = {
          description = "Indicates the inheritance status of a tag value attached to the given resource. If the tag value is inherited from one of the resource's ancestors, inherited will be true. If false, then the tag value is directly attached to the resource, inherited will be false.",
          type = "boolean",
        },
        namespacedTagKey = {
          description = "The namespaced_name of the TagKey. Now only supported in the format of `{organization_id}/{tag_key_short_name}`. Other formats will be supported when we add non-org parented tags.",
          type = "string",
        },
        namespacedTagValue = {
          description = "Namespaced name of the TagValue. Now only supported in the format `{organization_id}/{tag_key_short_name}/{tag_value_short_name}`. Other formats will be supported when we add non-org parented tags.",
          type = "string",
        },
        tagKey = {
          description = "The name of the TagKey, in the format `tagKeys/{id}`, such as `tagKeys/123`.",
          type = "string",
        },
        tagValue = {
          description = "Resource name for TagValue in the format `tagValues/456`.",
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
    Folder = {
      description = "A folder in an organization's resource hierarchy, used to organize that organization's resources.",
      id = "Folder",
      properties = {
        createTime = {
          description = "Output only. Timestamp when the folder was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. Timestamp when the folder was requested to be deleted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The folder's display name. A folder's display name must be unique amongst its siblings. For example, no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\\p{L}\\p{N}]([\\p{L}\\p{N}_- ]{0,28}[\\p{L}\\p{N}])?`.",
          type = "string",
        },
        etag = {
          description = "Output only. A checksum computed by the server based on the current value of the folder resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the folder. Its format is `folders/{folder_id}`, for example: \"folders/1234\".",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "Required. The folder's parent's resource name. Updates to the folder's parent must be performed using MoveFolder.",
          type = "string",
        },
        state = {
          description = "Output only. The lifecycle state of the folder. Updates to the state must be performed using DeleteFolder and UndeleteFolder.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "DELETE_REQUESTED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "The normal and active state.",
            "The folder has been marked for deletion by the user.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp when the folder was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    FolderOperation = {
      description = "Metadata describing a long running folder operation",
      id = "FolderOperation",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization we are either creating the folder under or moving the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        operationType = {
          description = "The type of this operation.",
          enum = {
            "OPERATION_TYPE_UNSPECIFIED",
            "CREATE",
            "MOVE",
          },
          enumDescriptions = {
            "Operation type not specified.",
            "A create folder operation.",
            "A move folder operation.",
          },
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent. Only applicable when the operation_type is MOVE.",
          type = "string",
        },
      },
      type = "object",
    },
    FolderOperationError = {
      description = "A classification of the Folder Operation error.",
      id = "FolderOperationError",
      properties = {
        errorMessageId = {
          description = "The type of operation error experienced.",
          enum = {
            "ERROR_TYPE_UNSPECIFIED",
            "ACTIVE_FOLDER_HEIGHT_VIOLATION",
            "MAX_CHILD_FOLDERS_VIOLATION",
            "FOLDER_NAME_UNIQUENESS_VIOLATION",
            "RESOURCE_DELETED_VIOLATION",
            "PARENT_DELETED_VIOLATION",
            "CYCLE_INTRODUCED_VIOLATION",
            "FOLDER_BEING_MOVED_VIOLATION",
            "FOLDER_TO_DELETE_NON_EMPTY_VIOLATION",
            "DELETED_FOLDER_HEIGHT_VIOLATION",
          },
          enumDescriptions = {
            "The error type was unrecognized or unspecified.",
            "The attempted action would violate the max folder depth constraint.",
            "The attempted action would violate the max child folders constraint.",
            "The attempted action would violate the locally-unique folder display_name constraint.",
            "The resource being moved has been deleted.",
            "The resource a folder was being added to has been deleted.",
            "The attempted action would introduce cycle in resource path.",
            "The attempted action would move a folder that is already being moved.",
            "The folder the caller is trying to delete contains active resources.",
            "The attempted action would violate the max deleted folder depth constraint.",
          },
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
    Lien = {
      description = "A Lien represents an encumbrance on the actions that can be performed on a resource.",
      id = "Lien",
      properties = {
        createTime = {
          description = "The creation time of this Lien.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "A system-generated unique identifier for this Lien. Example: `liens/1234abcd`",
          type = "string",
        },
        origin = {
          description = "A stable, user-visible/meaningful string identifying the origin of the Lien, intended to be inspected programmatically. Maximum length of 200 characters. Example: 'compute.googleapis.com'",
          type = "string",
        },
        parent = {
          description = "A reference to the resource this Lien is attached to. The server will validate the parent against those for which Liens are supported. Example: `projects/1234`",
          type = "string",
        },
        reason = {
          description = "Concise user-visible strings indicating why an action cannot be performed on a resource. Maximum length of 200 characters. Example: 'Holds production API key'",
          type = "string",
        },
        restrictions = {
          description = "The types of operations which should be blocked as a result of this Lien. Each value should correspond to an IAM permission. The server will validate the permissions against those for which Liens are supported. An empty list is meaningless and will be rejected. Example: ['resourcemanager.projects.delete']",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListEffectiveTagsResponse = {
      description = "The response of ListEffectiveTags.",
      id = "ListEffectiveTagsResponse",
      properties = {
        effectiveTags = {
          description = "A possibly paginated list of effective tags for the specified resource.",
          items = {
            ["$ref"] = "EffectiveTag",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the `page_token` parameter gives the next page of the results. When `next_page_token` is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.",
          type = "string",
        },
      },
      type = "object",
    },
    ListFoldersResponse = {
      description = "The ListFolders response message.",
      id = "ListFoldersResponse",
      properties = {
        folders = {
          description = "A possibly paginated list of folders that are direct descendants of the specified parent resource.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A pagination token returned from a previous call to `ListFolders` that indicates from where listing should continue.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLiensResponse = {
      description = "The response message for Liens.ListLiens.",
      id = "ListLiensResponse",
      properties = {
        liens = {
          description = "A list of Liens.",
          items = {
            ["$ref"] = "Lien",
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
    ListProjectsResponse = {
      description = "A page of the response received from the ListProjects method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page. NOTE: A response may contain fewer elements than the request `page_size` and still have a `next_page_token`.",
      id = "ListProjectsResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the `page_token` parameter gives the next page of the results. When `next_page_token` is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.",
          type = "string",
        },
        projects = {
          description = "The list of Projects under the parent. This list can be paginated.",
          items = {
            ["$ref"] = "Project",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTagBindingsResponse = {
      description = "The ListTagBindings response.",
      id = "ListTagBindingsResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the `page_token` parameter gives the next page of the results. When `next_page_token` is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.",
          type = "string",
        },
        tagBindings = {
          description = "A possibly paginated list of TagBindings for the specified resource.",
          items = {
            ["$ref"] = "TagBinding",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTagHoldsResponse = {
      description = "The ListTagHolds response.",
      id = "ListTagHoldsResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the `page_token` parameter gives the next page of the results. When `next_page_token` is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.",
          type = "string",
        },
        tagHolds = {
          description = "A possibly paginated list of TagHolds.",
          items = {
            ["$ref"] = "TagHold",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTagKeysResponse = {
      description = "The ListTagKeys response message.",
      id = "ListTagKeysResponse",
      properties = {
        nextPageToken = {
          description = "A pagination token returned from a previous call to `ListTagKeys` that indicates from where listing should continue.",
          type = "string",
        },
        tagKeys = {
          description = "List of TagKeys that live under the specified parent in the request.",
          items = {
            ["$ref"] = "TagKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListTagValuesResponse = {
      description = "The ListTagValues response.",
      id = "ListTagValuesResponse",
      properties = {
        nextPageToken = {
          description = "A pagination token returned from a previous call to `ListTagValues` that indicates from where listing should continue. This is currently not used, but the server may at any point start supplying a valid token.",
          type = "string",
        },
        tagValues = {
          description = "A possibly paginated list of TagValues that are direct descendants of the specified parent TagKey.",
          items = {
            ["$ref"] = "TagValue",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MoveFolderMetadata = {
      description = "Metadata pertaining to the folder move process.",
      id = "MoveFolderMetadata",
      properties = {
        destinationParent = {
          description = "The resource name of the folder or organization to move the folder to.",
          type = "string",
        },
        displayName = {
          description = "The display name of the folder.",
          type = "string",
        },
        sourceParent = {
          description = "The resource name of the folder's parent.",
          type = "string",
        },
      },
      type = "object",
    },
    MoveFolderRequest = {
      description = "The MoveFolder request message.",
      id = "MoveFolderRequest",
      properties = {
        destinationParent = {
          description = "Required. The resource name of the folder or organization which should be the folder's new parent. Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.",
          type = "string",
        },
      },
      type = "object",
    },
    MoveProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by MoveProject.",
      id = "MoveProjectMetadata",
      properties = {},
      type = "object",
    },
    MoveProjectRequest = {
      description = "The request sent to MoveProject method.",
      id = "MoveProjectRequest",
      properties = {
        destinationParent = {
          description = "Required. The new parent to move the Project under.",
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
    Organization = {
      description = "The root node in the resource hierarchy to which a particular entity's (a company, for example) resources belong.",
      id = "Organization",
      properties = {
        createTime = {
          description = "Output only. Timestamp when the Organization was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. Timestamp when the Organization was requested for deletion.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        directoryCustomerId = {
          description = "Immutable. The G Suite / Workspace customer id used in the Directory API.",
          type = "string",
        },
        displayName = {
          description = "Output only. A human-readable string that refers to the organization in the Google Cloud Console. This string is set by the server and cannot be changed. The string will be set to the primary domain (for example, \"google.com\") of the Google Workspace customer that owns the organization.",
          readOnly = true,
          type = "string",
        },
        etag = {
          description = "Output only. A checksum computed by the server based on the current value of the Organization resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the organization. This is the organization's relative path in the API. Its format is \"organizations/[organization_id]\". For example, \"organizations/1234\".",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The organization's current lifecycle state.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "DELETE_REQUESTED",
          },
          enumDescriptions = {
            "Unspecified state. This is only useful for distinguishing unset values.",
            "The normal and active state.",
            "The organization has been marked for deletion by the user.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. Timestamp when the Organization was last modified.",
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
    Project = {
      description = "A project is a high-level Google Cloud entity. It is a container for ACLs, APIs, App Engine Apps, VMs, and other Google Cloud Platform resources.",
      id = "Project",
      properties = {
        createTime = {
          description = "Output only. Creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        deleteTime = {
          description = "Output only. The time at which this resource was requested for deletion.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "Optional. A user-assigned display name of the project. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, single-quote, double-quote, space, and exclamation point. Example: `My Project`",
          type = "string",
        },
        etag = {
          description = "Output only. A checksum computed by the server based on the current value of the Project resource. This may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.",
          readOnly = true,
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. The labels associated with this project. Label keys must be between 1 and 63 characters long and must conform to the following regular expression: \\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?. Label values must be between 0 and 63 characters long and must conform to the regular expression (\\[a-z\\](\\[-a-z0-9\\]*\\[a-z0-9\\])?)?. No more than 64 labels can be associated with a given resource. Clients should store labels in a representation such as JSON that does not depend on specific characters being disallowed. Example: `\"myBusinessDimension\" : \"businessValue\"`",
          type = "object",
        },
        name = {
          description = "Output only. The unique resource name of the project. It is an int64 generated number prefixed by \"projects/\". Example: `projects/415104041262`",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "Optional. A reference to a parent Resource. eg., `organizations/123` or `folders/876`.",
          type = "string",
        },
        projectId = {
          description = "Immutable. The unique, user-assigned id of the project. It must be 6 to 30 lowercase ASCII letters, digits, or hyphens. It must start with a letter. Trailing hyphens are prohibited. Example: `tokyo-rain-123`",
          type = "string",
        },
        state = {
          description = "Output only. The project lifecycle state.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "DELETE_REQUESTED",
          },
          enumDescriptions = {
            "Unspecified state. This is only used/useful for distinguishing unset values.",
            "The normal and active state.",
            "The project has been marked for deletion by the user (by invoking DeleteProject) or by the system (Google Cloud Platform). This can generally be reversed by invoking UndeleteProject.",
          },
          readOnly = true,
          type = "string",
        },
        updateTime = {
          description = "Output only. The most recent time this resource was modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ProjectCreationStatus = {
      description = "A status object which is used as the `metadata` field for the Operation returned by CreateProject. It provides insight for when significant phases of Project creation have completed.",
      id = "ProjectCreationStatus",
      properties = {
        createTime = {
          description = "Creation time of the project creation workflow.",
          format = "google-datetime",
          type = "string",
        },
        gettable = {
          description = "True if the project can be retrieved using GetProject. No other operations on the project are guaranteed to work until the project creation is complete.",
          type = "boolean",
        },
        ready = {
          description = "True if the project creation process is complete.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SearchFoldersResponse = {
      description = "The response message for searching folders.",
      id = "SearchFoldersResponse",
      properties = {
        folders = {
          description = "A possibly paginated folder search results. the specified parent resource.",
          items = {
            ["$ref"] = "Folder",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A pagination token returned from a previous call to `SearchFolders` that indicates from where searching should continue.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchOrganizationsResponse = {
      description = "The response returned from the `SearchOrganizations` method.",
      id = "SearchOrganizationsResponse",
      properties = {
        nextPageToken = {
          description = "A pagination token to be used to retrieve the next page of results. If the result is too large to fit within the page size specified in the request, this field will be set with a token that can be used to fetch the next page of results. If this field is empty, it indicates that this response contains the last page of results.",
          type = "string",
        },
        organizations = {
          description = "The list of Organizations that matched the search query, possibly paginated.",
          items = {
            ["$ref"] = "Organization",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SearchProjectsResponse = {
      description = "A page of the response received from the SearchProjects method. A paginated response where more pages are available has `next_page_token` set. This token can be used in a subsequent request to retrieve the next request page.",
      id = "SearchProjectsResponse",
      properties = {
        nextPageToken = {
          description = "Pagination token. If the result set is too large to fit in a single response, this token is returned. It encodes the position of the current result cursor. Feeding this value into a new list request with the `page_token` parameter gives the next page of the results. When `next_page_token` is not filled in, there is no next page and the list returned is the last page in the result set. Pagination tokens have a limited lifetime.",
          type = "string",
        },
        projects = {
          description = "The list of Projects that matched the list filter query. This list can be paginated.",
          items = {
            ["$ref"] = "Project",
          },
          type = "array",
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
    TagBinding = {
      description = "A TagBinding represents a connection between a TagValue and a cloud resource Once a TagBinding is created, the TagValue is applied to all the descendants of the Google Cloud resource.",
      id = "TagBinding",
      properties = {
        name = {
          description = "Output only. The name of the TagBinding. This is a String of the form: `tagBindings/{full-resource-name}/{tag-value-name}` (e.g. `tagBindings/%2F%2Fcloudresourcemanager.googleapis.com%2Fprojects%2F123/tagValues/456`).",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "The full resource name of the resource the TagValue is bound to. E.g. `//cloudresourcemanager.googleapis.com/projects/123`",
          type = "string",
        },
        tagValue = {
          description = "The TagValue of the TagBinding. Must be of the form `tagValues/456`.",
          type = "string",
        },
      },
      type = "object",
    },
    TagHold = {
      description = "A TagHold represents the use of a TagValue that is not captured by TagBindings. If a TagValue has any TagHolds, deletion will be blocked. This resource is intended to be created in the same cloud location as the `holder`.",
      id = "TagHold",
      properties = {
        createTime = {
          description = "Output only. The time this TagHold was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        helpLink = {
          description = "Optional. A URL where an end user can learn more about removing this hold. E.g. `https://cloud.google.com/resource-manager/docs/tags/tags-creating-and-managing`",
          type = "string",
        },
        holder = {
          description = "Required. The name of the resource where the TagValue is being used. Must be less than 200 characters. E.g. `//compute.googleapis.com/compute/projects/myproject/regions/us-east-1/instanceGroupManagers/instance-group`",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of a TagHold. This is a String of the form: `tagValues/{tag-value-id}/tagHolds/{tag-hold-id}` (e.g. `tagValues/123/tagHolds/456`). This resource name is generated by the server.",
          readOnly = true,
          type = "string",
        },
        origin = {
          description = "Optional. An optional string representing the origin of this request. This field should include human-understandable information to distinguish origins from each other. Must be less than 200 characters. E.g. `migs-35678234`",
          type = "string",
        },
      },
      type = "object",
    },
    TagKey = {
      description = "A TagKey, used to group a set of TagValues.",
      id = "TagKey",
      properties = {
        createTime = {
          description = "Output only. Creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. User-assigned description of the TagKey. Must not exceed 256 characters. Read-write.",
          type = "string",
        },
        etag = {
          description = "Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagKeyRequest for details.",
          type = "string",
        },
        name = {
          description = "Immutable. The resource name for a TagKey. Must be in the format `tagKeys/{tag_key_id}`, where `tag_key_id` is the generated numeric id for the TagKey.",
          type = "string",
        },
        namespacedName = {
          description = "Output only. Immutable. Namespaced name of the TagKey.",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "Immutable. The resource name of the new TagKey's parent. Must be of the form `organizations/{org_id}`.",
          type = "string",
        },
        purpose = {
          description = "Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.",
          enum = {
            "PURPOSE_UNSPECIFIED",
            "GCE_FIREWALL",
          },
          enumDescriptions = {
            "Unspecified purpose.",
            "Purpose for Compute Engine firewalls. A corresponding purpose_data should be set for the network the tag is intended for. The key should be 'network' and the value should be in either of these two formats: -https://www.googleapis.com/compute/{compute_version}/projects/{project_id}/global/networks/{network_id} -{project_id}/{network_name} Examples: -https://www.googleapis.com/compute/staging_v1/projects/fail-closed-load-testing/global/networks/6992953698831725600 -fail-closed-load-testing/load-testing-network",
          },
          type = "string",
        },
        purposeData = {
          additionalProperties = {
            type = "string",
          },
          description = "Optional. Purpose data corresponds to the policy system that the tag is intended for. See documentation for `Purpose` for formatting of this field. Purpose data cannot be changed once set.",
          type = "object",
        },
        shortName = {
          description = "Required. Immutable. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace. The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Update time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TagValue = {
      description = "A TagValue is a child of a particular TagKey. This is used to group cloud resources for the purpose of controlling them using policies.",
      id = "TagValue",
      properties = {
        createTime = {
          description = "Output only. Creation time.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Optional. User-assigned description of the TagValue. Must not exceed 256 characters. Read-write.",
          type = "string",
        },
        etag = {
          description = "Optional. Entity tag which users can pass to prevent race conditions. This field is always set in server responses. See UpdateTagValueRequest for details.",
          type = "string",
        },
        name = {
          description = "Immutable. Resource name for TagValue in the format `tagValues/456`.",
          type = "string",
        },
        namespacedName = {
          description = "Output only. Namespaced name of the TagValue. Now only supported in the format `{organization_id}/{tag_key_short_name}/{short_name}`. Other formats will be supported when we add non-org parented tags.",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "Immutable. The resource name of the new TagValue's parent TagKey. Must be of the form `tagKeys/{tag_key_id}`.",
          type = "string",
        },
        shortName = {
          description = "Required. Immutable. User-assigned short name for TagValue. The short name should be unique for TagValues within the same parent TagKey. The short name must be 63 characters or less, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.",
          type = "string",
        },
        updateTime = {
          description = "Output only. Update time.",
          format = "google-datetime",
          readOnly = true,
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
    UndeleteFolderMetadata = {
      description = "A status object which is used as the `metadata` field for the `Operation` returned by `UndeleteFolder`.",
      id = "UndeleteFolderMetadata",
      properties = {},
      type = "object",
    },
    UndeleteFolderRequest = {
      description = "The UndeleteFolder request message.",
      id = "UndeleteFolderRequest",
      properties = {},
      type = "object",
    },
    UndeleteOrganizationMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by UndeleteOrganization.",
      id = "UndeleteOrganizationMetadata",
      properties = {},
      type = "object",
    },
    UndeleteProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by `UndeleteProject`.",
      id = "UndeleteProjectMetadata",
      properties = {},
      type = "object",
    },
    UndeleteProjectRequest = {
      description = "The request sent to the UndeleteProject method.",
      id = "UndeleteProjectRequest",
      properties = {},
      type = "object",
    },
    UpdateFolderMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by UpdateFolder.",
      id = "UpdateFolderMetadata",
      properties = {},
      type = "object",
    },
    UpdateProjectMetadata = {
      description = "A status object which is used as the `metadata` field for the Operation returned by UpdateProject.",
      id = "UpdateProjectMetadata",
      properties = {},
      type = "object",
    },
    UpdateTagKeyMetadata = {
      description = "Runtime operation information for updating a TagKey.",
      id = "UpdateTagKeyMetadata",
      properties = {},
      type = "object",
    },
    UpdateTagValueMetadata = {
      description = "Runtime operation information for updating a TagValue.",
      id = "UpdateTagValueMetadata",
      properties = {},
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Resource Manager API",
  version = "v3",
  version_module = true,
}