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
  baseUrl = "https://accessapproval.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Access Approval",
  description = "An API for controlling access to data by Google personnel.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/cloud-provider-access-management/access-approval/docs",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "accessapproval:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://accessapproval.mtls.googleapis.com/",
  name = "accessapproval",
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
        deleteAccessApprovalSettings = {
          description = "Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the project, folder, or organization, but only if all ancestors also have Access Approval disabled. If Access Approval is enabled at a higher level of the hierarchy, then Access Approval will still be enabled at this level as the settings are inherited.",
          flatPath = "v1/folders/{foldersId}/accessApprovalSettings",
          httpMethod = "DELETE",
          id = "accessapproval.folders.deleteAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Name of the AccessApprovalSettings to delete.",
              location = "path",
              pattern = "^folders/[^/]+/accessApprovalSettings$",
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
        getAccessApprovalSettings = {
          description = "Gets the settings associated with a project, folder, or organization.",
          flatPath = "v1/folders/{foldersId}/accessApprovalSettings",
          httpMethod = "GET",
          id = "accessapproval.folders.getAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the AccessApprovalSettings to retrieve. Format: \"{projects|folders|organizations}/{id}/accessApprovalSettings\"",
              location = "path",
              pattern = "^folders/[^/]+/accessApprovalSettings$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "AccessApprovalSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getServiceAccount = {
          description = "Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.",
          flatPath = "v1/folders/{foldersId}/serviceAccount",
          httpMethod = "GET",
          id = "accessapproval.folders.getServiceAccount",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Name of the AccessApprovalServiceAccount to retrieve.",
              location = "path",
              pattern = "^folders/[^/]+/serviceAccount$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "AccessApprovalServiceAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateAccessApprovalSettings = {
          description = "Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.",
          flatPath = "v1/folders/{foldersId}/accessApprovalSettings",
          httpMethod = "PATCH",
          id = "accessapproval.folders.updateAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The resource name of the settings. Format is one of: * \"projects/{project}/accessApprovalSettings\" * \"folders/{folder}/accessApprovalSettings\" * \"organizations/{organization}/accessApprovalSettings\"",
              location = "path",
              pattern = "^folders/[^/]+/accessApprovalSettings$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The update mask applies to the settings. Only the top level fields of AccessApprovalSettings (notification_emails & enrolled_services) are supported. For each field, if it is included, the currently stored value will be entirely overwritten with the value of the field passed in this request. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask If this field is left unset, only the notification_emails field will be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "AccessApprovalSettings",
          },
          response = {
            ["$ref"] = "AccessApprovalSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        approvalRequests = {
          methods = {
            approve = {
              description = "Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.",
              flatPath = "v1/folders/{foldersId}/approvalRequests/{approvalRequestsId}:approve",
              httpMethod = "POST",
              id = "accessapproval.folders.approvalRequests.approve",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the approval request to approve.",
                  location = "path",
                  pattern = "^folders/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:approve",
              request = {
                ["$ref"] = "ApproveApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            dismiss = {
              description = "Dismisses a request. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It is equivalent in effect to ignoring the request altogether. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.",
              flatPath = "v1/folders/{foldersId}/approvalRequests/{approvalRequestsId}:dismiss",
              httpMethod = "POST",
              id = "accessapproval.folders.approvalRequests.dismiss",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the ApprovalRequest to dismiss.",
                  location = "path",
                  pattern = "^folders/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:dismiss",
              request = {
                ["$ref"] = "DismissApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets an approval request. Returns NOT_FOUND if the request does not exist.",
              flatPath = "v1/folders/{foldersId}/approvalRequests/{approvalRequestsId}",
              httpMethod = "GET",
              id = "accessapproval.folders.approvalRequests.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the approval request to retrieve. Format: \"{projects|folders|organizations}/{id}/approvalRequests/{approval_request}\"",
                  location = "path",
                  pattern = "^folders/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            invalidate = {
              description = "Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It only invalidates a single approval. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.",
              flatPath = "v1/folders/{foldersId}/approvalRequests/{approvalRequestsId}:invalidate",
              httpMethod = "POST",
              id = "accessapproval.folders.approvalRequests.invalidate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the ApprovalRequest to invalidate.",
                  location = "path",
                  pattern = "^folders/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:invalidate",
              request = {
                ["$ref"] = "InvalidateApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.",
              flatPath = "v1/folders/{foldersId}/approvalRequests",
              httpMethod = "GET",
              id = "accessapproval.folders.approvalRequests.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "A filter on the type of approval requests to retrieve. Must be one of the following values: * [not set]: Requests that are pending or have active approvals. * ALL: All requests. * PENDING: Only pending requests. * ACTIVE: Only active (i.e. currently approved) requests. * DISMISSED: Only requests that have been dismissed, or requests that are not approved and past expiration. * EXPIRED: Only requests that have been approved, and the approval has expired. * HISTORY: Active, dismissed and expired requests.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying the page of results to return.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent resource. This may be \"projects/{project}\", \"folders/{folder}\", or \"organizations/{organization}\".",
                  location = "path",
                  pattern = "^folders/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/approvalRequests",
              response = {
                ["$ref"] = "ListApprovalRequestsResponse",
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
        deleteAccessApprovalSettings = {
          description = "Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the project, folder, or organization, but only if all ancestors also have Access Approval disabled. If Access Approval is enabled at a higher level of the hierarchy, then Access Approval will still be enabled at this level as the settings are inherited.",
          flatPath = "v1/organizations/{organizationsId}/accessApprovalSettings",
          httpMethod = "DELETE",
          id = "accessapproval.organizations.deleteAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Name of the AccessApprovalSettings to delete.",
              location = "path",
              pattern = "^organizations/[^/]+/accessApprovalSettings$",
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
        getAccessApprovalSettings = {
          description = "Gets the settings associated with a project, folder, or organization.",
          flatPath = "v1/organizations/{organizationsId}/accessApprovalSettings",
          httpMethod = "GET",
          id = "accessapproval.organizations.getAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the AccessApprovalSettings to retrieve. Format: \"{projects|folders|organizations}/{id}/accessApprovalSettings\"",
              location = "path",
              pattern = "^organizations/[^/]+/accessApprovalSettings$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "AccessApprovalSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getServiceAccount = {
          description = "Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.",
          flatPath = "v1/organizations/{organizationsId}/serviceAccount",
          httpMethod = "GET",
          id = "accessapproval.organizations.getServiceAccount",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Name of the AccessApprovalServiceAccount to retrieve.",
              location = "path",
              pattern = "^organizations/[^/]+/serviceAccount$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "AccessApprovalServiceAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateAccessApprovalSettings = {
          description = "Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.",
          flatPath = "v1/organizations/{organizationsId}/accessApprovalSettings",
          httpMethod = "PATCH",
          id = "accessapproval.organizations.updateAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The resource name of the settings. Format is one of: * \"projects/{project}/accessApprovalSettings\" * \"folders/{folder}/accessApprovalSettings\" * \"organizations/{organization}/accessApprovalSettings\"",
              location = "path",
              pattern = "^organizations/[^/]+/accessApprovalSettings$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The update mask applies to the settings. Only the top level fields of AccessApprovalSettings (notification_emails & enrolled_services) are supported. For each field, if it is included, the currently stored value will be entirely overwritten with the value of the field passed in this request. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask If this field is left unset, only the notification_emails field will be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "AccessApprovalSettings",
          },
          response = {
            ["$ref"] = "AccessApprovalSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        approvalRequests = {
          methods = {
            approve = {
              description = "Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.",
              flatPath = "v1/organizations/{organizationsId}/approvalRequests/{approvalRequestsId}:approve",
              httpMethod = "POST",
              id = "accessapproval.organizations.approvalRequests.approve",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the approval request to approve.",
                  location = "path",
                  pattern = "^organizations/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:approve",
              request = {
                ["$ref"] = "ApproveApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            dismiss = {
              description = "Dismisses a request. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It is equivalent in effect to ignoring the request altogether. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.",
              flatPath = "v1/organizations/{organizationsId}/approvalRequests/{approvalRequestsId}:dismiss",
              httpMethod = "POST",
              id = "accessapproval.organizations.approvalRequests.dismiss",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the ApprovalRequest to dismiss.",
                  location = "path",
                  pattern = "^organizations/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:dismiss",
              request = {
                ["$ref"] = "DismissApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets an approval request. Returns NOT_FOUND if the request does not exist.",
              flatPath = "v1/organizations/{organizationsId}/approvalRequests/{approvalRequestsId}",
              httpMethod = "GET",
              id = "accessapproval.organizations.approvalRequests.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the approval request to retrieve. Format: \"{projects|folders|organizations}/{id}/approvalRequests/{approval_request}\"",
                  location = "path",
                  pattern = "^organizations/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            invalidate = {
              description = "Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It only invalidates a single approval. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.",
              flatPath = "v1/organizations/{organizationsId}/approvalRequests/{approvalRequestsId}:invalidate",
              httpMethod = "POST",
              id = "accessapproval.organizations.approvalRequests.invalidate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the ApprovalRequest to invalidate.",
                  location = "path",
                  pattern = "^organizations/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:invalidate",
              request = {
                ["$ref"] = "InvalidateApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.",
              flatPath = "v1/organizations/{organizationsId}/approvalRequests",
              httpMethod = "GET",
              id = "accessapproval.organizations.approvalRequests.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "A filter on the type of approval requests to retrieve. Must be one of the following values: * [not set]: Requests that are pending or have active approvals. * ALL: All requests. * PENDING: Only pending requests. * ACTIVE: Only active (i.e. currently approved) requests. * DISMISSED: Only requests that have been dismissed, or requests that are not approved and past expiration. * EXPIRED: Only requests that have been approved, and the approval has expired. * HISTORY: Active, dismissed and expired requests.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying the page of results to return.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent resource. This may be \"projects/{project}\", \"folders/{folder}\", or \"organizations/{organization}\".",
                  location = "path",
                  pattern = "^organizations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/approvalRequests",
              response = {
                ["$ref"] = "ListApprovalRequestsResponse",
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
      methods = {
        deleteAccessApprovalSettings = {
          description = "Deletes the settings associated with a project, folder, or organization. This will have the effect of disabling Access Approval for the project, folder, or organization, but only if all ancestors also have Access Approval disabled. If Access Approval is enabled at a higher level of the hierarchy, then Access Approval will still be enabled at this level as the settings are inherited.",
          flatPath = "v1/projects/{projectsId}/accessApprovalSettings",
          httpMethod = "DELETE",
          id = "accessapproval.projects.deleteAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Name of the AccessApprovalSettings to delete.",
              location = "path",
              pattern = "^projects/[^/]+/accessApprovalSettings$",
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
        getAccessApprovalSettings = {
          description = "Gets the settings associated with a project, folder, or organization.",
          flatPath = "v1/projects/{projectsId}/accessApprovalSettings",
          httpMethod = "GET",
          id = "accessapproval.projects.getAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the AccessApprovalSettings to retrieve. Format: \"{projects|folders|organizations}/{id}/accessApprovalSettings\"",
              location = "path",
              pattern = "^projects/[^/]+/accessApprovalSettings$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "AccessApprovalSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getServiceAccount = {
          description = "Retrieves the service account that is used by Access Approval to access KMS keys for signing approved approval requests.",
          flatPath = "v1/projects/{projectsId}/serviceAccount",
          httpMethod = "GET",
          id = "accessapproval.projects.getServiceAccount",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Name of the AccessApprovalServiceAccount to retrieve.",
              location = "path",
              pattern = "^projects/[^/]+/serviceAccount$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "AccessApprovalServiceAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateAccessApprovalSettings = {
          description = "Updates the settings associated with a project, folder, or organization. Settings to update are determined by the value of field_mask.",
          flatPath = "v1/projects/{projectsId}/accessApprovalSettings",
          httpMethod = "PATCH",
          id = "accessapproval.projects.updateAccessApprovalSettings",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The resource name of the settings. Format is one of: * \"projects/{project}/accessApprovalSettings\" * \"folders/{folder}/accessApprovalSettings\" * \"organizations/{organization}/accessApprovalSettings\"",
              location = "path",
              pattern = "^projects/[^/]+/accessApprovalSettings$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The update mask applies to the settings. Only the top level fields of AccessApprovalSettings (notification_emails & enrolled_services) are supported. For each field, if it is included, the currently stored value will be entirely overwritten with the value of the field passed in this request. For the `FieldMask` definition, see https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask If this field is left unset, only the notification_emails field will be updated.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "AccessApprovalSettings",
          },
          response = {
            ["$ref"] = "AccessApprovalSettings",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        approvalRequests = {
          methods = {
            approve = {
              description = "Approves a request and returns the updated ApprovalRequest. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.",
              flatPath = "v1/projects/{projectsId}/approvalRequests/{approvalRequestsId}:approve",
              httpMethod = "POST",
              id = "accessapproval.projects.approvalRequests.approve",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the approval request to approve.",
                  location = "path",
                  pattern = "^projects/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:approve",
              request = {
                ["$ref"] = "ApproveApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            dismiss = {
              description = "Dismisses a request. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It is equivalent in effect to ignoring the request altogether. Returns NOT_FOUND if the request does not exist. Returns FAILED_PRECONDITION if the request exists but is not in a pending state.",
              flatPath = "v1/projects/{projectsId}/approvalRequests/{approvalRequestsId}:dismiss",
              httpMethod = "POST",
              id = "accessapproval.projects.approvalRequests.dismiss",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the ApprovalRequest to dismiss.",
                  location = "path",
                  pattern = "^projects/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:dismiss",
              request = {
                ["$ref"] = "DismissApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Gets an approval request. Returns NOT_FOUND if the request does not exist.",
              flatPath = "v1/projects/{projectsId}/approvalRequests/{approvalRequestsId}",
              httpMethod = "GET",
              id = "accessapproval.projects.approvalRequests.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The name of the approval request to retrieve. Format: \"{projects|folders|organizations}/{id}/approvalRequests/{approval_request}\"",
                  location = "path",
                  pattern = "^projects/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            invalidate = {
              description = "Invalidates an existing ApprovalRequest. Returns the updated ApprovalRequest. NOTE: This does not deny access to the resource if another request has been made and approved. It only invalidates a single approval. Returns FAILED_PRECONDITION if the request exists but is not in an approved state.",
              flatPath = "v1/projects/{projectsId}/approvalRequests/{approvalRequestsId}:invalidate",
              httpMethod = "POST",
              id = "accessapproval.projects.approvalRequests.invalidate",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Name of the ApprovalRequest to invalidate.",
                  location = "path",
                  pattern = "^projects/[^/]+/approvalRequests/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:invalidate",
              request = {
                ["$ref"] = "InvalidateApprovalRequestMessage",
              },
              response = {
                ["$ref"] = "ApprovalRequest",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Lists approval requests associated with a project, folder, or organization. Approval requests can be filtered by state (pending, active, dismissed). The order is reverse chronological.",
              flatPath = "v1/projects/{projectsId}/approvalRequests",
              httpMethod = "GET",
              id = "accessapproval.projects.approvalRequests.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "A filter on the type of approval requests to retrieve. Must be one of the following values: * [not set]: Requests that are pending or have active approvals. * ALL: All requests. * PENDING: Only pending requests. * ACTIVE: Only active (i.e. currently approved) requests. * DISMISSED: Only requests that have been dismissed, or requests that are not approved and past expiration. * EXPIRED: Only requests that have been approved, and the approval has expired. * HISTORY: Active, dismissed and expired requests.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying the page of results to return.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The parent resource. This may be \"projects/{project}\", \"folders/{folder}\", or \"organizations/{organization}\".",
                  location = "path",
                  pattern = "^projects/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/approvalRequests",
              response = {
                ["$ref"] = "ListApprovalRequestsResponse",
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
  revision = "20230113",
  rootUrl = "https://accessapproval.googleapis.com/",
  schemas = {
    AccessApprovalServiceAccount = {
      description = "Access Approval service account related to a project/folder/organization.",
      id = "AccessApprovalServiceAccount",
      properties = {
        accountEmail = {
          description = "Email address of the service account.",
          type = "string",
        },
        name = {
          description = "The resource name of the Access Approval service account. Format is one of: * \"projects/{project}/serviceAccount\" * \"folders/{folder}/serviceAccount\" * \"organizations/{organization}/serviceAccount\"",
          type = "string",
        },
      },
      type = "object",
    },
    AccessApprovalSettings = {
      description = "Settings on a Project/Folder/Organization related to Access Approval.",
      id = "AccessApprovalSettings",
      properties = {
        activeKeyVersion = {
          description = "The asymmetric crypto key version to use for signing approval requests. Empty active_key_version indicates that a Google-managed key should be used for signing. This property will be ignored if set by an ancestor of this resource, and new non-empty values may not be set.",
          type = "string",
        },
        ancestorHasActiveKeyVersion = {
          description = "Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If the field is true, that indicates that an ancestor of this Project or Folder has set active_key_version (this field will always be unset for the organization since organizations do not have ancestors).",
          readOnly = true,
          type = "boolean",
        },
        enrolledAncestor = {
          description = "Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If the field is true, that indicates that at least one service is enrolled for Access Approval in one or more ancestors of the Project or Folder (this field will always be unset for the organization since organizations do not have ancestors).",
          readOnly = true,
          type = "boolean",
        },
        enrolledServices = {
          description = "A list of Google Cloud Services for which the given resource has Access Approval enrolled. Access requests for the resource given by name against any of these services contained here will be required to have explicit approval. If name refers to an organization, enrollment can be done for individual services. If name refers to a folder or project, enrollment can only be done on an all or nothing basis. If a cloud_product is repeated in this list, the first entry will be honored and all following entries will be discarded. A maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded.",
          items = {
            ["$ref"] = "EnrolledService",
          },
          type = "array",
        },
        invalidKeyVersion = {
          description = "Output only. This field is read only (not settable via UpdateAccessApprovalSettings method). If the field is true, that indicates that there is some configuration issue with the active_key_version configured at this level in the resource hierarchy (e.g. it doesn't exist or the Access Approval service account doesn't have the correct permissions on it, etc.) This key version is not necessarily the effective key version at this level, as key versions are inherited top-down.",
          readOnly = true,
          type = "boolean",
        },
        name = {
          description = "The resource name of the settings. Format is one of: * \"projects/{project}/accessApprovalSettings\" * \"folders/{folder}/accessApprovalSettings\" * \"organizations/{organization}/accessApprovalSettings\"",
          type = "string",
        },
        notificationEmails = {
          description = "A list of email addresses to which notifications relating to approval requests should be sent. Notifications relating to a resource will be sent to all emails in the settings of ancestor resources of that resource. A maximum of 50 email addresses are allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AccessLocations = {
      description = "Home office and physical location of the principal.",
      id = "AccessLocations",
      properties = {
        principalOfficeCountry = {
          description = "The \"home office\" location of the principal. A two-letter country code (ISO 3166-1 alpha-2), such as \"US\", \"DE\" or \"GB\" or a region code. In some limited situations Google systems may refer refer to a region code instead of a country code. Possible Region Codes: * ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM: South America * ANT: Antarctica * ANY: Any location",
          type = "string",
        },
        principalPhysicalLocationCountry = {
          description = "Physical location of the principal at the time of the access. A two-letter country code (ISO 3166-1 alpha-2), such as \"US\", \"DE\" or \"GB\" or a region code. In some limited situations Google systems may refer refer to a region code instead of a country code. Possible Region Codes: * ASI: Asia * EUR: Europe * OCE: Oceania * AFR: Africa * NAM: North America * SAM: South America * ANT: Antarctica * ANY: Any location",
          type = "string",
        },
      },
      type = "object",
    },
    AccessReason = {
      id = "AccessReason",
      properties = {
        detail = {
          description = "More detail about certain reason types. See comments for each type above.",
          type = "string",
        },
        type = {
          description = "Type of access justification.",
          enum = {
            "TYPE_UNSPECIFIED",
            "CUSTOMER_INITIATED_SUPPORT",
            "GOOGLE_INITIATED_SERVICE",
            "GOOGLE_INITIATED_REVIEW",
            "THIRD_PARTY_DATA_REQUEST",
            "GOOGLE_RESPONSE_TO_PRODUCTION_ALERT",
          },
          enumDescriptions = {
            "Default value for proto, shouldn't be used.",
            "Customer made a request or raised an issue that required the principal to access customer data. `detail` is of the form (\"#####\" is the issue ID): * \"Feedback Report: #####\" * \"Case Number: #####\" * \"Case ID: #####\" * \"E-PIN Reference: #####\" * \"Google-#####\" * \"T-#####\"",
            "The principal accessed customer data in order to diagnose or resolve a suspected issue in services. Often this access is used to confirm that customers are not affected by a suspected service issue or to remediate a reversible system issue.",
            "Google initiated service for security, fraud, abuse, or compliance purposes.",
            "The principal was compelled to access customer data in order to respond to a legal third party data request or process, including legal processes from customers themselves.",
            "The principal accessed customer data in order to diagnose or resolve a suspected issue in services or a known outage.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ApprovalRequest = {
      description = "A request for the customer to approve access to a resource.",
      id = "ApprovalRequest",
      properties = {
        approve = {
          ["$ref"] = "ApproveDecision",
          description = "Access was approved.",
        },
        dismiss = {
          ["$ref"] = "DismissDecision",
          description = "The request was dismissed.",
        },
        name = {
          description = "The resource name of the request. Format is \"{projects|folders|organizations}/{id}/approvalRequests/{approval_request}\".",
          type = "string",
        },
        requestTime = {
          description = "The time at which approval was requested.",
          format = "google-datetime",
          type = "string",
        },
        requestedExpiration = {
          description = "The requested expiration for the approval. If the request is approved, access will be granted from the time of approval until the expiration time.",
          format = "google-datetime",
          type = "string",
        },
        requestedLocations = {
          ["$ref"] = "AccessLocations",
          description = "The locations for which approval is being requested.",
        },
        requestedReason = {
          ["$ref"] = "AccessReason",
          description = "The justification for which approval is being requested.",
        },
        requestedResourceName = {
          description = "The resource for which approval is being requested. The format of the resource name is defined at https://cloud.google.com/apis/design/resource_names. The resource name here may either be a \"full\" resource name (e.g. \"//library.googleapis.com/shelves/shelf1/books/book2\") or a \"relative\" resource name (e.g. \"shelves/shelf1/books/book2\") as described in the resource name specification.",
          type = "string",
        },
        requestedResourceProperties = {
          ["$ref"] = "ResourceProperties",
          description = "Properties related to the resource represented by requested_resource_name.",
        },
      },
      type = "object",
    },
    ApproveApprovalRequestMessage = {
      description = "Request to approve an ApprovalRequest.",
      id = "ApproveApprovalRequestMessage",
      properties = {
        expireTime = {
          description = "The expiration time of this approval.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ApproveDecision = {
      description = "A decision that has been made to approve access to a resource.",
      id = "ApproveDecision",
      properties = {
        approveTime = {
          description = "The time at which approval was granted.",
          format = "google-datetime",
          type = "string",
        },
        autoApproved = {
          description = "True when the request has been auto-approved.",
          type = "boolean",
        },
        expireTime = {
          description = "The time at which the approval expires.",
          format = "google-datetime",
          type = "string",
        },
        invalidateTime = {
          description = "If set, denotes the timestamp at which the approval is invalidated.",
          format = "google-datetime",
          type = "string",
        },
        signatureInfo = {
          ["$ref"] = "SignatureInfo",
          description = "The signature for the ApprovalRequest and details on how it was signed.",
        },
      },
      type = "object",
    },
    DismissApprovalRequestMessage = {
      description = "Request to dismiss an approval request.",
      id = "DismissApprovalRequestMessage",
      properties = {},
      type = "object",
    },
    DismissDecision = {
      description = "A decision that has been made to dismiss an approval request.",
      id = "DismissDecision",
      properties = {
        dismissTime = {
          description = "The time at which the approval request was dismissed.",
          format = "google-datetime",
          type = "string",
        },
        implicit = {
          description = "This field will be true if the ApprovalRequest was implicitly dismissed due to inaction by the access approval approvers (the request is not acted on by the approvers before the exiration time).",
          type = "boolean",
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
    EnrolledService = {
      description = "Represents the enrollment of a cloud resource into a specific service.",
      id = "EnrolledService",
      properties = {
        cloudProduct = {
          description = "The product for which Access Approval will be enrolled. Allowed values are listed below (case-sensitive): * all * GA * App Engine . * Artifact Registry * BigQuery * Cloud Bigtable * Cloud Key Management Service * Compute Engine * Cloud Dataflow * Cloud Dataproc * Cloud DLP * Cloud EKM * Cloud HSM * Cloud Identity and Access Management * Cloud Logging * Cloud Pub/Sub * Cloud Spanner * Cloud SQL * Cloud Storage * Google Kubernetes Engine * Organization Policy Serivice * Persistent Disk * Resource Manager * Secret Manager * Speaker ID Note: These values are supported as input for legacy purposes, but will not be returned from the API. * all * ga-only * appengine.googleapis.com * artifactregistry.googleapis.com * bigquery.googleapis.com * bigtable.googleapis.com * container.googleapis.com * cloudkms.googleapis.com * cloudresourcemanager.googleapis.com * cloudsql.googleapis.com * compute.googleapis.com * dataflow.googleapis.com * dataproc.googleapis.com * dlp.googleapis.com * iam.googleapis.com * logging.googleapis.com * orgpolicy.googleapis.com * pubsub.googleapis.com * spanner.googleapis.com * secretmanager.googleapis.com * speakerid.googleapis.com * storage.googleapis.com Calls to UpdateAccessApprovalSettings using 'all' or any of the XXX.googleapis.com will be translated to the associated product name ('all', 'App Engine', etc.). Note: 'all' will enroll the resource in all products supported at both 'GA' and 'Preview' levels. More information about levels of support is available at https://cloud.google.com/access-approval/docs/supported-services",
          type = "string",
        },
        enrollmentLevel = {
          description = "The enrollment level of the service.",
          enum = {
            "ENROLLMENT_LEVEL_UNSPECIFIED",
            "BLOCK_ALL",
          },
          enumDescriptions = {
            "Default value for proto, shouldn't be used.",
            "Service is enrolled in Access Approval for all requests",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InvalidateApprovalRequestMessage = {
      description = "Request to invalidate an existing approval.",
      id = "InvalidateApprovalRequestMessage",
      properties = {},
      type = "object",
    },
    ListApprovalRequestsResponse = {
      description = "Response to listing of ApprovalRequest objects.",
      id = "ListApprovalRequestsResponse",
      properties = {
        approvalRequests = {
          description = "Approval request details.",
          items = {
            ["$ref"] = "ApprovalRequest",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more.",
          type = "string",
        },
      },
      type = "object",
    },
    ResourceProperties = {
      description = "The properties associated with the resource of the request.",
      id = "ResourceProperties",
      properties = {
        excludesDescendants = {
          description = "Whether an approval will exclude the descendants of the resource being requested.",
          type = "boolean",
        },
      },
      type = "object",
    },
    SignatureInfo = {
      description = "Information about the digital signature of the resource.",
      id = "SignatureInfo",
      properties = {
        customerKmsKeyVersion = {
          description = "The resource name of the customer CryptoKeyVersion used for signing.",
          type = "string",
        },
        googlePublicKeyPem = {
          description = "The public key for the Google default signing, encoded in PEM format. The signature was created using a private key which may be verified using this public key.",
          type = "string",
        },
        signature = {
          description = "The digital signature.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Access Approval API",
  version = "v1",
  version_module = true,
}
