return {
  basePath = "",
  baseUrl = "https://mybusinessaccountmanagement.googleapis.com/",
  batchPath = "batch",
  canonicalName = "My Business Account Management",
  description = "The My Business Account Management API provides an interface for managing access to a location on Google. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/my-business/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "mybusinessaccountmanagement:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://mybusinessaccountmanagement.mtls.googleapis.com/",
  name = "mybusinessaccountmanagement",
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
    accounts = {
      methods = {
        create = {
          description = "Creates an account with the specified name and type under the given parent. - Personal accounts and Organizations cannot be created. - User Groups cannot be created with a Personal account as primary owner. - Location Groups cannot be created with a primary owner of a Personal account if the Personal account is in an Organization. - Location Groups cannot own Location Groups.",
          flatPath = "v1/accounts",
          httpMethod = "POST",
          id = "mybusinessaccountmanagement.accounts.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/accounts",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
        },
        get = {
          description = "Gets the specified account. Returns `NOT_FOUND` if the account does not exist or if the caller does not have access rights to it.",
          flatPath = "v1/accounts/{accountsId}",
          httpMethod = "GET",
          id = "mybusinessaccountmanagement.accounts.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the account to fetch.",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Account",
          },
        },
        list = {
          description = "Lists all of the accounts for the authenticated user. This includes all accounts that the user owns, as well as any accounts for which the user has management rights.",
          flatPath = "v1/accounts",
          httpMethod = "GET",
          id = "mybusinessaccountmanagement.accounts.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Optional. A filter constraining the accounts to return. The response includes only entries that match the filter. If `filter` is empty, then no constraints are applied and all accounts (paginated) are retrieved for the requested account. For example, a request with the filter `type=USER_GROUP` will only return user groups. The `type` field is the only supported filter.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. How many accounts to fetch per page. The default and maximum is 20.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. If specified, the next page of accounts is retrieved. The `pageToken` is returned when a call to `accounts.list` returns more results than can fit into the requested page size.",
              location = "query",
              type = "string",
            },
            parentAccount = {
              description = "Optional. The resource name of the account for which the list of directly accessible accounts is to be retrieved. This only makes sense for Organizations and User Groups. If empty, will return `ListAccounts` for the authenticated user. `accounts/{account_id}`.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/accounts",
          response = {
            ["$ref"] = "ListAccountsResponse",
          },
        },
        patch = {
          description = "Updates the specified business account. Personal accounts cannot be updated using this method.",
          flatPath = "v1/accounts/{accountsId}",
          httpMethod = "PATCH",
          id = "mybusinessaccountmanagement.accounts.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Immutable. The resource name, in the format `accounts/{account_id}`.",
              location = "path",
              pattern = "^accounts/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. The specific fields that should be updated. The only editable field is `accountName`.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
            validateOnly = {
              description = "Optional. If true, the request is validated without actually updating the account.",
              location = "query",
              type = "boolean",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "Account",
          },
          response = {
            ["$ref"] = "Account",
          },
        },
      },
      resources = {
        admins = {
          methods = {
            create = {
              description = "Invites the specified user to become an administrator for the specified account. The invitee must accept the invitation in order to be granted access to the account. See AcceptInvitation to programmatically accept an invitation.",
              flatPath = "v1/accounts/{accountsId}/admins",
              httpMethod = "POST",
              id = "mybusinessaccountmanagement.accounts.admins.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the account this admin is created for. `accounts/{account_id}`.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/admins",
              request = {
                ["$ref"] = "Admin",
              },
              response = {
                ["$ref"] = "Admin",
              },
            },
            delete = {
              description = "Removes the specified admin from the specified account.",
              flatPath = "v1/accounts/{accountsId}/admins/{adminsId}",
              httpMethod = "DELETE",
              id = "mybusinessaccountmanagement.accounts.admins.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the admin to remove from the account. `accounts/{account_id}/admins/{admin_id}`.",
                  location = "path",
                  pattern = "^accounts/[^/]+/admins/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
            },
            list = {
              description = "Lists the admins for the specified account.",
              flatPath = "v1/accounts/{accountsId}/admins",
              httpMethod = "GET",
              id = "mybusinessaccountmanagement.accounts.admins.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the account from which to retrieve a list of admins. `accounts/{account_id}/admins`.",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/admins",
              response = {
                ["$ref"] = "ListAccountAdminsResponse",
              },
            },
            patch = {
              description = "Updates the Admin for the specified Account Admin.",
              flatPath = "v1/accounts/{accountsId}/admins/{adminsId}",
              httpMethod = "PATCH",
              id = "mybusinessaccountmanagement.accounts.admins.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The resource name. For account admins, this is in the form: `accounts/{account_id}/admins/{admin_id}` For location admins, this is in the form: `locations/{location_id}/admins/{admin_id}` This field will be ignored if set during admin creation.",
                  location = "path",
                  pattern = "^accounts/[^/]+/admins/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The specific fields that should be updated. The only editable field is role.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Admin",
              },
              response = {
                ["$ref"] = "Admin",
              },
            },
          },
        },
        invitations = {
          methods = {
            accept = {
              description = "Accepts the specified invitation.",
              flatPath = "v1/accounts/{accountsId}/invitations/{invitationsId}:accept",
              httpMethod = "POST",
              id = "mybusinessaccountmanagement.accounts.invitations.accept",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the invitation that is being accepted. `accounts/{account_id}/invitations/{invitation_id}`",
                  location = "path",
                  pattern = "^accounts/[^/]+/invitations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:accept",
              request = {
                ["$ref"] = "AcceptInvitationRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
            },
            decline = {
              description = "Declines the specified invitation.",
              flatPath = "v1/accounts/{accountsId}/invitations/{invitationsId}:decline",
              httpMethod = "POST",
              id = "mybusinessaccountmanagement.accounts.invitations.decline",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the account invitation that is being declined. `accounts/{account_id}/invitations/{invitation_id}`",
                  location = "path",
                  pattern = "^accounts/[^/]+/invitations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}:decline",
              request = {
                ["$ref"] = "DeclineInvitationRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
            },
            list = {
              description = "Lists pending invitations for the specified account.",
              flatPath = "v1/accounts/{accountsId}/invitations",
              httpMethod = "GET",
              id = "mybusinessaccountmanagement.accounts.invitations.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                filter = {
                  description = "Optional. Filtering the response is supported via the Invitation.target_type field.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the account from which the list of invitations is being retrieved. `accounts/{account_id}/invitations`",
                  location = "path",
                  pattern = "^accounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/invitations",
              response = {
                ["$ref"] = "ListInvitationsResponse",
              },
            },
          },
        },
      },
    },
    locations = {
      methods = {
        transfer = {
          description = "Moves a location from an account that the user owns to another account that the same user administers. The user must be an owner of the account the location is currently associated with and must also be at least a manager of the destination account.",
          flatPath = "v1/locations/{locationsId}:transfer",
          httpMethod = "POST",
          id = "mybusinessaccountmanagement.locations.transfer",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the location to transfer. `locations/{location_id}`.",
              location = "path",
              pattern = "^locations/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:transfer",
          request = {
            ["$ref"] = "TransferLocationRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
        },
      },
      resources = {
        admins = {
          methods = {
            create = {
              description = "Invites the specified user to become an administrator for the specified location. The invitee must accept the invitation in order to be granted access to the location. See AcceptInvitation to programmatically accept an invitation.",
              flatPath = "v1/locations/{locationsId}/admins",
              httpMethod = "POST",
              id = "mybusinessaccountmanagement.locations.admins.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The resource name of the location this admin is created for. `locations/{location_id}/admins`.",
                  location = "path",
                  pattern = "^locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/admins",
              request = {
                ["$ref"] = "Admin",
              },
              response = {
                ["$ref"] = "Admin",
              },
            },
            delete = {
              description = "Removes the specified admin as a manager of the specified location.",
              flatPath = "v1/locations/{locationsId}/admins/{adminsId}",
              httpMethod = "DELETE",
              id = "mybusinessaccountmanagement.locations.admins.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the admin to remove from the location.",
                  location = "path",
                  pattern = "^locations/[^/]+/admins/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
            },
            list = {
              description = "Lists all of the admins for the specified location.",
              flatPath = "v1/locations/{locationsId}/admins",
              httpMethod = "GET",
              id = "mybusinessaccountmanagement.locations.admins.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the location to list admins of. `locations/{location_id}/admins`.",
                  location = "path",
                  pattern = "^locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/admins",
              response = {
                ["$ref"] = "ListLocationAdminsResponse",
              },
            },
            patch = {
              description = "Updates the Admin for the specified location. Only the AdminRole of the Admin can be updated.",
              flatPath = "v1/locations/{locationsId}/admins/{adminsId}",
              httpMethod = "PATCH",
              id = "mybusinessaccountmanagement.locations.admins.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The resource name. For account admins, this is in the form: `accounts/{account_id}/admins/{admin_id}` For location admins, this is in the form: `locations/{location_id}/admins/{admin_id}` This field will be ignored if set during admin creation.",
                  location = "path",
                  pattern = "^locations/[^/]+/admins/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The specific fields that should be updated. The only editable field is role.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Admin",
              },
              response = {
                ["$ref"] = "Admin",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://mybusinessaccountmanagement.googleapis.com/",
  schemas = {
    AcceptInvitationRequest = {
      description = "Request message for AccessControl.AcceptInvitation.",
      id = "AcceptInvitationRequest",
      properties = {},
      type = "object",
    },
    Account = {
      description = "An account is a container for your location. If you are the only user who manages locations for your business, you can use your personal Google Account. To share management of locations with multiple users, [create a business account] (https://support.google.com/business/answer/6085339?ref_topic=6085325).",
      id = "Account",
      properties = {
        accountName = {
          description = "Required. The name of the account. For an account of type `PERSONAL`, this is the first and last name of the user account.",
          type = "string",
        },
        accountNumber = {
          description = "Output only. Account reference number if provisioned.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The resource name, in the format `accounts/{account_id}`.",
          type = "string",
        },
        organizationInfo = {
          ["$ref"] = "OrganizationInfo",
          description = "Output only. Additional info for an organization. This is populated only for an organization account.",
          readOnly = true,
        },
        permissionLevel = {
          description = "Output only. Specifies the permission level the user has for this account.",
          enum = {
            "PERMISSION_LEVEL_UNSPECIFIED",
            "OWNER_LEVEL",
            "MEMBER_LEVEL",
          },
          enumDescriptions = {
            "Not specified.",
            "The user has owner level permission.",
            "The user has member level permission.",
          },
          readOnly = true,
          type = "string",
        },
        primaryOwner = {
          description = "Required. Input only. The resource name of the account which will be the primary owner of the account being created. It should be of the form `accounts/{account_id}`.",
          type = "string",
        },
        role = {
          description = "Output only. Specifies the AccountRole of this account.",
          enum = {
            "ACCOUNT_ROLE_UNSPECIFIED",
            "PRIMARY_OWNER",
            "OWNER",
            "MANAGER",
            "SITE_MANAGER",
          },
          enumDescriptions = {
            "Not specified.",
            "The user is the primary owner this account.",
            "The user owner of the account.",
            "The user can manage this account.",
            "The user can manage a limited set of features for the account.",
          },
          readOnly = true,
          type = "string",
        },
        type = {
          description = "Required. Contains the type of account. Accounts of type PERSONAL and ORGANIZATION cannot be created using this API.",
          enum = {
            "ACCOUNT_TYPE_UNSPECIFIED",
            "PERSONAL",
            "LOCATION_GROUP",
            "USER_GROUP",
            "ORGANIZATION",
          },
          enumDescriptions = {
            "Not specified.",
            "An end-user account.",
            "A group of Locations. For more information, see the [help center article] (https://support.google.com/business/answer/6085326)",
            "A User Group for segregating organization staff in groups. For more information, see the [help center article](https://support.google.com/business/answer/7655731)",
            "An organization representing a company. For more information, see the [help center article](https://support.google.com/business/answer/7663063)",
          },
          type = "string",
        },
        verificationState = {
          description = "Output only. If verified, future locations that are created are automatically connected to Google Maps, and have Google+ pages created, without requiring moderation.",
          enum = {
            "VERIFICATION_STATE_UNSPECIFIED",
            "VERIFIED",
            "UNVERIFIED",
            "VERIFICATION_REQUESTED",
          },
          enumDescriptions = {
            "Not specified.",
            "Verified account.",
            "Account that is not verified, and verification has not been requested.",
            "Account that is not verified, but verification has been requested.",
          },
          readOnly = true,
          type = "string",
        },
        vettedState = {
          description = "Output only. Indicates whether the account is vetted by Google. A vetted account is able to verify locations via the VETTED_PARTNER method.",
          enum = {
            "VETTED_STATE_UNSPECIFIED",
            "NOT_VETTED",
            "VETTED",
            "INVALID",
          },
          enumDescriptions = {
            "Not Specified",
            "The account is not vetted by Google.",
            "The account is vetted by Google and in a valid state. An account is automatically vetted if it has direct access to a vetted group account.",
            "The account is vetted but in an invalid state. The account will behave like an unvetted account.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Admin = {
      description = "An administrator of an Account or a location.",
      id = "Admin",
      properties = {
        account = {
          description = "Immutable. The name of the Account resource that this Admin refers to. Used when calling locations.admins.create to invite a LocationGroup as an admin. If both this field and `admin` are set on `CREATE` requests, this field takes precedence and the email address in `admin` will be ignored. Format: `accounts/{account}`.",
          type = "string",
        },
        admin = {
          description = "Optional. The name of the admin. When making the initial invitation, this is the invitee's email address. On `GET` calls, the user's email address is returned if the invitation is still pending. Otherwise, it contains the user's first and last names. This field is only needed to be set during admin creation.",
          type = "string",
        },
        name = {
          description = "Immutable. The resource name. For account admins, this is in the form: `accounts/{account_id}/admins/{admin_id}` For location admins, this is in the form: `locations/{location_id}/admins/{admin_id}` This field will be ignored if set during admin creation.",
          type = "string",
        },
        pendingInvitation = {
          description = "Output only. Indicates whether this admin has a pending invitation for the specified resource.",
          readOnly = true,
          type = "boolean",
        },
        role = {
          description = "Required. Specifies the role that this admin uses with the specified Account or Location.",
          enum = {
            "ADMIN_ROLE_UNSPECIFIED",
            "PRIMARY_OWNER",
            "OWNER",
            "MANAGER",
            "SITE_MANAGER",
          },
          enumDescriptions = {
            "Not specified.",
            "The admin has owner-level access and is the primary owner. (Displays as 'Primary Owner' in UI).",
            "The admin has owner-level access. (Displays as 'Owner' in UI).",
            "The admin has managerial access.",
            "The admin can manage social (Google+) pages. (Displays as 'Site Manager' in UI). This API doesn't allow creating an account admin with a SITE_MANAGER role.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeclineInvitationRequest = {
      description = "Request message for AccessControl.DeclineInvitation.",
      id = "DeclineInvitationRequest",
      properties = {},
      type = "object",
    },
    Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "Empty",
      properties = {},
      type = "object",
    },
    Invitation = {
      description = "Represents a pending invitation.",
      id = "Invitation",
      properties = {
        name = {
          description = "Required. The resource name for the invitation. `accounts/{account_id}/invitations/{invitation_id}`.",
          type = "string",
        },
        role = {
          description = "Output only. The invited role on the account.",
          enum = {
            "ADMIN_ROLE_UNSPECIFIED",
            "PRIMARY_OWNER",
            "OWNER",
            "MANAGER",
            "SITE_MANAGER",
          },
          enumDescriptions = {
            "Not specified.",
            "The admin has owner-level access and is the primary owner. (Displays as 'Primary Owner' in UI).",
            "The admin has owner-level access. (Displays as 'Owner' in UI).",
            "The admin has managerial access.",
            "The admin can manage social (Google+) pages. (Displays as 'Site Manager' in UI). This API doesn't allow creating an account admin with a SITE_MANAGER role.",
          },
          readOnly = true,
          type = "string",
        },
        targetAccount = {
          ["$ref"] = "Account",
          description = "The sparsely populated account this invitation is for.",
        },
        targetLocation = {
          ["$ref"] = "TargetLocation",
          description = "The target location this invitation is for.",
        },
        targetType = {
          description = "Output only. Specifies which target types should appear in the response.",
          enum = {
            "TARGET_TYPE_UNSPECIFIED",
            "ACCOUNTS_ONLY",
            "LOCATIONS_ONLY",
          },
          enumDescriptions = {
            "Set when target type is unspecified.",
            "List invitations only for targets of type Account.",
            "List invitations only for targets of type Location.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    ListAccountAdminsResponse = {
      description = "Response message for AccessControl.ListAccountAdmins.",
      id = "ListAccountAdminsResponse",
      properties = {
        accountAdmins = {
          description = "A collection of Admin instances.",
          items = {
            ["$ref"] = "Admin",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListAccountsResponse = {
      description = "Response message for Accounts.ListAccounts.",
      id = "ListAccountsResponse",
      properties = {
        accounts = {
          description = "A collection of accounts to which the user has access. The personal account of the user doing the query will always be the first item of the result, unless it is filtered out.",
          items = {
            ["$ref"] = "Account",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the number of accounts exceeds the requested page size, this field is populated with a token to fetch the next page of accounts on a subsequent call to `accounts.list`. If there are no more accounts, this field is not present in the response.",
          type = "string",
        },
      },
      type = "object",
    },
    ListInvitationsResponse = {
      description = "Response message for AccessControl.ListInvitations.",
      id = "ListInvitationsResponse",
      properties = {
        invitations = {
          description = "A collection of invitations that are pending for the account. The number of invitations listed here cannot exceed 1000.",
          items = {
            ["$ref"] = "Invitation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListLocationAdminsResponse = {
      description = "Response message for AccessControl.ListLocationAdmins.",
      id = "ListLocationAdminsResponse",
      properties = {
        admins = {
          description = "A collection of Admins.",
          items = {
            ["$ref"] = "Admin",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OrganizationInfo = {
      description = "Additional information stored for an organization.",
      id = "OrganizationInfo",
      properties = {
        address = {
          ["$ref"] = "PostalAddress",
          description = "Output only. The postal address for the account.",
          readOnly = true,
        },
        phoneNumber = {
          description = "Output only. The contact number for the organization.",
          readOnly = true,
          type = "string",
        },
        registeredDomain = {
          description = "Output only. The registered domain for the account.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    PostalAddress = {
      description = "Represents a postal address, e.g. for postal delivery or payments addresses. Given a postal address, a postal service can deliver items to a premise, P.O. Box or similar. It is not intended to model geographical locations (roads, towns, mountains). In typical usage an address would be created via user input or from importing existing data, depending on the type of process. Advice on address input / editing: - Use an internationalization-ready address widget such as https://github.com/google/libaddressinput) - Users should not be presented with UI elements for input or editing of fields outside countries where that field is used. For more guidance on how to use this schema, please see: https://support.google.com/business/answer/6397478",
      id = "PostalAddress",
      properties = {
        addressLines = {
          description = "Unstructured address lines describing the lower levels of an address. Because values in address_lines do not have type information and may sometimes contain multiple values in a single field (e.g. \"Austin, TX\"), it is important that the line order is clear. The order of address lines should be \"envelope order\" for the country/region of the address. In places where this can vary (e.g. Japan), address_language is used to make it explicit (e.g. \"ja\" for large-to-small ordering and \"ja-Latn\" or \"en\" for small-to-large). This way, the most specific line of an address can be selected based on the language. The minimum permitted structural representation of an address consists of a region_code with all remaining information placed in the address_lines. It would be possible to format such an address very approximately without geocoding, but no semantic reasoning could be made about any of the address components until it was at least partially resolved. Creating an address only containing a region_code and address_lines, and then geocoding is the recommended way to handle completely unstructured addresses (as opposed to guessing which parts of the address should be localities or administrative areas).",
          items = {
            type = "string",
          },
          type = "array",
        },
        administrativeArea = {
          description = "Optional. Highest administrative subdivision which is used for postal addresses of a country or region. For example, this can be a state, a province, an oblast, or a prefecture. Specifically, for Spain this is the province and not the autonomous community (e.g. \"Barcelona\" and not \"Catalonia\"). Many countries don't use an administrative area in postal addresses. E.g. in Switzerland this should be left unpopulated.",
          type = "string",
        },
        languageCode = {
          description = "Optional. BCP-47 language code of the contents of this address (if known). This is often the UI language of the input form or is expected to match one of the languages used in the address' country/region, or their transliterated equivalents. This can affect formatting in certain countries, but is not critical to the correctness of the data and will never affect any validation or other non-formatting related operations. If this value is not known, it should be omitted (rather than specifying a possibly incorrect default). Examples: \"zh-Hant\", \"ja\", \"ja-Latn\", \"en\".",
          type = "string",
        },
        locality = {
          description = "Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use address_lines.",
          type = "string",
        },
        organization = {
          description = "Optional. The name of the organization at the address.",
          type = "string",
        },
        postalCode = {
          description = "Optional. Postal code of the address. Not all countries use or require postal codes to be present, but where they are used, they may trigger additional validation with other parts of the address (e.g. state/zip validation in the U.S.A.).",
          type = "string",
        },
        recipients = {
          description = "Optional. The recipient at the address. This field may, under certain circumstances, contain multiline information. For example, it might contain \"care of\" information.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regionCode = {
          description = "Required. CLDR region code of the country/region of the address. This is never inferred and it is up to the user to ensure the value is correct. See https://cldr.unicode.org/ and https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html for details. Example: \"CH\" for Switzerland.",
          type = "string",
        },
        revision = {
          description = "The schema revision of the `PostalAddress`. This must be set to 0, which is the latest revision. All new revisions **must** be backward compatible with old revisions.",
          format = "int32",
          type = "integer",
        },
        sortingCode = {
          description = "Optional. Additional, country-specific, sorting code. This is not used in most regions. Where it is used, the value is either a string like \"CEDEX\", optionally followed by a number (e.g. \"CEDEX 7\"), or just a number alone, representing the \"sector code\" (Jamaica), \"delivery area indicator\" (Malawi) or \"post office indicator\" (e.g. Côte d'Ivoire).",
          type = "string",
        },
        sublocality = {
          description = "Optional. Sublocality of the address. For example, this can be neighborhoods, boroughs, districts.",
          type = "string",
        },
      },
      type = "object",
    },
    TargetLocation = {
      description = "Represents a target location for a pending invitation.",
      id = "TargetLocation",
      properties = {
        address = {
          description = "The address of the location to which the user is invited.",
          type = "string",
        },
        locationName = {
          description = "The name of the location to which the user is invited.",
          type = "string",
        },
      },
      type = "object",
    },
    TransferLocationRequest = {
      description = "Request message for AccessControl.TransferLocation.",
      id = "TransferLocationRequest",
      properties = {
        destinationAccount = {
          description = "Required. Name of the account resource to transfer the location to (for example, \"accounts/{account}\").",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "My Business Account Management API",
  version = "v1",
  version_module = true,
}
