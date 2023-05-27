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
  id = "cloudresourcemanager:v2",
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
    folders = {
      methods = {
        create = {
          description = "Creates a Folder in the resource hierarchy. Returns an Operation which can be used to track the progress of the folder creation workflow. Upon success the Operation.response field will be populated with the created Folder. In order to succeed, the addition of this new Folder must not violate the Folder naming, height or fanout constraints. + The Folder's display_name must be distinct from all other Folders that share its parent. + The addition of the Folder must not cause the active Folder hierarchy to exceed a height of 10. Note, the full active + deleted Folder hierarchy is allowed to reach a height of 20; this provides additional headroom when moving folders that contain deleted folders. + The addition of the Folder must not cause the total number of Folders under its parent to exceed 300. If the operation fails due to a folder constraint violation, some errors may be returned by the CreateFolder request, with status code FAILED_PRECONDITION and an error description. Other folder constraint violations will be communicated in the Operation, with the specific PreconditionFailure returned via the details list in the Operation.error field. The caller must have `resourcemanager.folders.create` permission on the identified parent.",
          flatPath = "v2/folders",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.create",
          parameterOrder = {},
          parameters = {
            parent = {
              description = "Required. The resource name of the new Folder's parent. Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.",
              location = "query",
              type = "string",
            },
          },
          path = "v2/folders",
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
          description = "Requests deletion of a Folder. The Folder is moved into the DELETE_REQUESTED state immediately, and is deleted approximately 30 days later. This method may only be called on an empty Folder in the ACTIVE state, where a Folder is empty if it doesn't contain any Folders or Projects in the ACTIVE state. The caller must have `resourcemanager.folders.delete` permission on the identified folder.",
          flatPath = "v2/folders/{foldersId}",
          httpMethod = "DELETE",
          id = "cloudresourcemanager.folders.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. the resource name of the Folder to be deleted. Must be of the form `folders/{folder_id}`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "Folder",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Retrieves a Folder identified by the supplied resource name. Valid Folder resource names have the format `folders/{folder_id}` (for example, `folders/1234`). The caller must have `resourcemanager.folders.get` permission on the identified folder.",
          flatPath = "v2/folders/{foldersId}",
          httpMethod = "GET",
          id = "cloudresourcemanager.folders.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the Folder to retrieve. Must be of the form `folders/{folder_id}`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}",
          response = {
            ["$ref"] = "Folder",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a Folder. The returned policy may be empty if no such policy or resource exists. The `resource` field should be the Folder's resource name, e.g. \"folders/1234\". The caller must have `resourcemanager.folders.getIamPolicy` permission on the identified folder.",
          flatPath = "v2/folders/{foldersId}:getIamPolicy",
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
          path = "v2/{+resource}:getIamPolicy",
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
          description = "Lists the Folders that are direct descendants of supplied parent resource. List provides a strongly consistent view of the Folders underneath the specified parent resource. List returns Folders sorted based upon the (ascending) lexical ordering of their display_name. The caller must have `resourcemanager.folders.list` permission on the identified parent.",
          flatPath = "v2/folders",
          httpMethod = "GET",
          id = "cloudresourcemanager.folders.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Optional. The maximum number of Folders to return in the response. The server can return fewer folders than requested. If unspecified, server picks an appropriate default.",
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
              description = "Required. The resource name of the Organization or Folder whose Folders are being listed. Must be of the form `folders/{folder_id}` or `organizations/{org_id}`. Access to this method is controlled by checking the `resourcemanager.folders.list` permission on the `parent`.",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "Optional. Controls whether Folders in the DELETE_REQUESTED state should be returned. Defaults to false.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v2/folders",
          response = {
            ["$ref"] = "ListFoldersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        move = {
          description = "Moves a Folder under a new resource parent. Returns an Operation which can be used to track the progress of the folder move workflow. Upon success the Operation.response field will be populated with the moved Folder. Upon failure, a FolderOperationError categorizing the failure cause will be returned - if the failure occurs synchronously then the FolderOperationError will be returned via the Status.details field and if it occurs asynchronously then the FolderOperation will be returned via the Operation.error field. In addition, the Operation.metadata field will be populated with a FolderOperation message as an aid to stateless clients. Folder moves will be rejected if they violate either the naming, height or fanout constraints described in the CreateFolder documentation. The caller must have `resourcemanager.folders.move` permission on the folder's current and proposed new parent.",
          flatPath = "v2/folders/{foldersId}:move",
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
          path = "v2/{+name}:move",
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
          description = "Updates a Folder, changing its display_name. Changes to the folder display_name will be rejected if they violate either the display_name formatting rules or naming constraints described in the CreateFolder documentation. The Folder's display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be between 3 and 30 characters. This is captured by the regular expression: `\\p{L}\\p{N}{1,28}[\\p{L}\\p{N}]`. The caller must have `resourcemanager.folders.update` permission on the identified folder. If the update fails due to the unique name constraint then a PreconditionFailure explaining this violation will be returned in the Status.details field.",
          flatPath = "v2/folders/{foldersId}",
          httpMethod = "PATCH",
          id = "cloudresourcemanager.folders.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Output only. The resource name of the Folder. Its format is `folders/{folder_id}`, for example: \"folders/1234\".",
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
          path = "v2/{+name}",
          request = {
            ["$ref"] = "Folder",
          },
          response = {
            ["$ref"] = "Folder",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        search = {
          description = "Search for folders that match specific filter criteria. Search provides an eventually consistent view of the folders a user has access to which meet the specified filter criteria. This will only return folders on which the caller has the permission `resourcemanager.folders.get`.",
          flatPath = "v2/folders:search",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.search",
          parameterOrder = {},
          parameters = {},
          path = "v2/folders:search",
          request = {
            ["$ref"] = "SearchFoldersRequest",
          },
          response = {
            ["$ref"] = "SearchFoldersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy on a Folder, replacing any existing policy. The `resource` field should be the Folder's resource name, e.g. \"folders/1234\". The caller must have `resourcemanager.folders.setIamPolicy` permission on the identified folder.",
          flatPath = "v2/folders/{foldersId}:setIamPolicy",
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
          path = "v2/{+resource}:setIamPolicy",
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
          description = "Returns permissions that a caller has on the specified Folder. The `resource` field should be the Folder's resource name, e.g. \"folders/1234\". There are no permissions required for making this API call.",
          flatPath = "v2/folders/{foldersId}:testIamPermissions",
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
          path = "v2/{+resource}:testIamPermissions",
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
          description = "Cancels the deletion request for a Folder. This method may only be called on a Folder in the DELETE_REQUESTED state. In order to succeed, the Folder's parent must be in the ACTIVE state. In addition, reintroducing the folder into the tree must not violate folder naming, height and fanout constraints described in the CreateFolder documentation. The caller must have `resourcemanager.folders.undelete` permission on the identified folder.",
          flatPath = "v2/folders/{foldersId}:undelete",
          httpMethod = "POST",
          id = "cloudresourcemanager.folders.undelete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the Folder to undelete. Must be of the form `folders/{folder_id}`.",
              location = "path",
              pattern = "^folders/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v2/{+name}:undelete",
          request = {
            ["$ref"] = "UndeleteFolderRequest",
          },
          response = {
            ["$ref"] = "Folder",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
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
          path = "v1/{+name}",
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
      description = "A Folder in an Organization's resource hierarchy, used to organize that Organization's resources.",
      id = "Folder",
      properties = {
        createTime = {
          description = "Output only. Timestamp when the Folder was created. Assigned by the server.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        displayName = {
          description = "The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\\p{L}\\p{N}]([\\p{L}\\p{N}_- ]{0,28}[\\p{L}\\p{N}])?`.",
          type = "string",
        },
        lifecycleState = {
          description = "Output only. The lifecycle state of the folder. Updates to the lifecycle_state must be performed via DeleteFolder and UndeleteFolder.",
          enum = {
            "LIFECYCLE_STATE_UNSPECIFIED",
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
        name = {
          description = "Output only. The resource name of the Folder. Its format is `folders/{folder_id}`, for example: \"folders/1234\".",
          readOnly = true,
          type = "string",
        },
        parent = {
          description = "Required. The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.",
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
    ListFoldersResponse = {
      description = "The ListFolders response message.",
      id = "ListFoldersResponse",
      properties = {
        folders = {
          description = "A possibly paginated list of Folders that are direct descendants of the specified parent resource.",
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
          description = "Required. The resource name of the Folder or Organization to reparent the folder under. Must be of the form `folders/{folder_id}` or `organizations/{org_id}`.",
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
    SearchFoldersRequest = {
      description = "The request message for searching folders.",
      id = "SearchFoldersRequest",
      properties = {
        pageSize = {
          description = "Optional. The maximum number of folders to return in the response. The server can return fewer folders than requested. If unspecified, server picks an appropriate default.",
          format = "int32",
          type = "integer",
        },
        pageToken = {
          description = "Optional. A pagination token returned from a previous call to `SearchFolders` that indicates from where search should continue.",
          type = "string",
        },
        query = {
          description = "Search criteria used to select the Folders to return. If no search criteria is specified then all accessible folders will be returned. Query expressions can be used to restrict results based upon displayName, lifecycleState and parent, where the operators `=`, `NOT`, `AND` and `OR` can be used along with the suffix wildcard symbol `*`. The displayName field in a query expression should use escaped quotes for values that include whitespace to prevent unexpected behavior. Some example queries are: * Query `displayName=Test*` returns Folder resources whose display name starts with \"Test\". * Query `lifecycleState=ACTIVE` returns Folder resources with `lifecycleState` set to `ACTIVE`. * Query `parent=folders/123` returns Folder resources that have `folders/123` as a parent resource. * Query `parent=folders/123 AND lifecycleState=ACTIVE` returns active Folder resources that have `folders/123` as a parent resource. * Query `displayName=\\\\\"Test String\\\\\"` returns Folder resources with display names that include both \"Test\" and \"String\".",
          type = "string",
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
  version = "v2",
}
