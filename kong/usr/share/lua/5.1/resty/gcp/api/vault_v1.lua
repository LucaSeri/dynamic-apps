return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/ediscovery"] = {
          description = "Manage your eDiscovery data",
        },
        ["https://www.googleapis.com/auth/ediscovery.readonly"] = {
          description = "View your eDiscovery data",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://vault.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Vault",
  description = "Retention and eDiscovery for Google Workspace. To work with Vault resources, the account must have the [required Vault privileges](https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege. For example, to download an export, an account needs the **Manage Exports** privilege and the matter shared with them. ",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/vault",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "vault:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://vault.mtls.googleapis.com/",
  name = "vault",
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
    matters = {
      methods = {
        addPermissions = {
          description = "Adds an account as a matter collaborator.",
          flatPath = "v1/matters/{matterId}:addPermissions",
          httpMethod = "POST",
          id = "vault.matters.addPermissions",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}:addPermissions",
          request = {
            ["$ref"] = "AddMatterPermissionsRequest",
          },
          response = {
            ["$ref"] = "MatterPermission",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        close = {
          description = "Closes the specified matter. Returns the matter with updated state.",
          flatPath = "v1/matters/{matterId}:close",
          httpMethod = "POST",
          id = "vault.matters.close",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}:close",
          request = {
            ["$ref"] = "CloseMatterRequest",
          },
          response = {
            ["$ref"] = "CloseMatterResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        count = {
          description = "Counts the accounts processed by the specified query.",
          flatPath = "v1/matters/{matterId}:count",
          httpMethod = "POST",
          id = "vault.matters.count",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}:count",
          request = {
            ["$ref"] = "CountArtifactsRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        create = {
          description = "Creates a matter with the given name and description. The initial state is open, and the owner is the method caller. Returns the created matter with default view.",
          flatPath = "v1/matters",
          httpMethod = "POST",
          id = "vault.matters.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/matters",
          request = {
            ["$ref"] = "Matter",
          },
          response = {
            ["$ref"] = "Matter",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        delete = {
          description = "Deletes the specified matter. Returns the matter with updated state.",
          flatPath = "v1/matters/{matterId}",
          httpMethod = "DELETE",
          id = "vault.matters.delete",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}",
          response = {
            ["$ref"] = "Matter",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        get = {
          description = "Gets the specified matter.",
          flatPath = "v1/matters/{matterId}",
          httpMethod = "GET",
          id = "vault.matters.get",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              description = "Specifies how much information about the matter to return in the response.",
              enum = {
                "VIEW_UNSPECIFIED",
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "The amount of detail is unspecified. Same as **BASIC**.",
                "Returns the matter ID, name, description, and state. Default choice.",
                "Returns the basic details and a list of matter owners and collaborators (see [MatterPermissions](https://developers.google.com/vault/reference/rest/v1/matters#matterpermission)).",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/matters/{matterId}",
          response = {
            ["$ref"] = "Matter",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
            "https://www.googleapis.com/auth/ediscovery.readonly",
          },
        },
        list = {
          description = "Lists matters the requestor has access to.",
          flatPath = "v1/matters",
          httpMethod = "GET",
          id = "vault.matters.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The number of matters to return in the response. Default and maximum are 100.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The pagination token as returned in the response.",
              location = "query",
              type = "string",
            },
            state = {
              description = "If set, lists only matters with the specified state. The default lists matters of all states.",
              enum = {
                "STATE_UNSPECIFIED",
                "OPEN",
                "CLOSED",
                "DELETED",
              },
              enumDescriptions = {
                "The matter has no specified state.",
                "The matter is open.",
                "The matter is closed.",
                "The matter is deleted.",
              },
              location = "query",
              type = "string",
            },
            view = {
              description = "Specifies how much information about the matter to return in response.",
              enum = {
                "VIEW_UNSPECIFIED",
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "The amount of detail is unspecified. Same as **BASIC**.",
                "Returns the matter ID, name, description, and state. Default choice.",
                "Returns the basic details and a list of matter owners and collaborators (see [MatterPermissions](https://developers.google.com/vault/reference/rest/v1/matters#matterpermission)).",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/matters",
          response = {
            ["$ref"] = "ListMattersResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
            "https://www.googleapis.com/auth/ediscovery.readonly",
          },
        },
        removePermissions = {
          description = "Removes an account as a matter collaborator.",
          flatPath = "v1/matters/{matterId}:removePermissions",
          httpMethod = "POST",
          id = "vault.matters.removePermissions",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}:removePermissions",
          request = {
            ["$ref"] = "RemoveMatterPermissionsRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        reopen = {
          description = "Reopens the specified matter. Returns the matter with updated state.",
          flatPath = "v1/matters/{matterId}:reopen",
          httpMethod = "POST",
          id = "vault.matters.reopen",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}:reopen",
          request = {
            ["$ref"] = "ReopenMatterRequest",
          },
          response = {
            ["$ref"] = "ReopenMatterResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        undelete = {
          description = "Undeletes the specified matter. Returns the matter with updated state.",
          flatPath = "v1/matters/{matterId}:undelete",
          httpMethod = "POST",
          id = "vault.matters.undelete",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}:undelete",
          request = {
            ["$ref"] = "UndeleteMatterRequest",
          },
          response = {
            ["$ref"] = "Matter",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
        update = {
          description = "Updates the specified matter. This updates only the name and description of the matter, identified by matter ID. Changes to any other fields are ignored. Returns the default view of the matter.",
          flatPath = "v1/matters/{matterId}",
          httpMethod = "PUT",
          id = "vault.matters.update",
          parameterOrder = {
            "matterId",
          },
          parameters = {
            matterId = {
              description = "The matter ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/matters/{matterId}",
          request = {
            ["$ref"] = "Matter",
          },
          response = {
            ["$ref"] = "Matter",
          },
          scopes = {
            "https://www.googleapis.com/auth/ediscovery",
          },
        },
      },
      resources = {
        exports = {
          methods = {
            create = {
              description = "Creates an export.",
              flatPath = "v1/matters/{matterId}/exports",
              httpMethod = "POST",
              id = "vault.matters.exports.create",
              parameterOrder = {
                "matterId",
              },
              parameters = {
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/exports",
              request = {
                ["$ref"] = "Export",
              },
              response = {
                ["$ref"] = "Export",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            delete = {
              description = "Deletes an export.",
              flatPath = "v1/matters/{matterId}/exports/{exportId}",
              httpMethod = "DELETE",
              id = "vault.matters.exports.delete",
              parameterOrder = {
                "matterId",
                "exportId",
              },
              parameters = {
                exportId = {
                  description = "The export ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/exports/{exportId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            get = {
              description = "Gets an export.",
              flatPath = "v1/matters/{matterId}/exports/{exportId}",
              httpMethod = "GET",
              id = "vault.matters.exports.get",
              parameterOrder = {
                "matterId",
                "exportId",
              },
              parameters = {
                exportId = {
                  description = "The export ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/exports/{exportId}",
              response = {
                ["$ref"] = "Export",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
                "https://www.googleapis.com/auth/ediscovery.readonly",
              },
            },
            list = {
              description = "Lists details about the exports in the specified matter.",
              flatPath = "v1/matters/{matterId}/exports",
              httpMethod = "GET",
              id = "vault.matters.exports.list",
              parameterOrder = {
                "matterId",
              },
              parameters = {
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The number of exports to return in the response.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The pagination token as returned in the response.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/exports",
              response = {
                ["$ref"] = "ListExportsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
                "https://www.googleapis.com/auth/ediscovery.readonly",
              },
            },
          },
        },
        holds = {
          methods = {
            addHeldAccounts = {
              description = "Adds accounts to a hold. Returns a list of accounts that have been successfully added. Accounts can be added only to an existing account-based hold.",
              flatPath = "v1/matters/{matterId}/holds/{holdId}:addHeldAccounts",
              httpMethod = "POST",
              id = "vault.matters.holds.addHeldAccounts",
              parameterOrder = {
                "matterId",
                "holdId",
              },
              parameters = {
                holdId = {
                  description = "The hold ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/holds/{holdId}:addHeldAccounts",
              request = {
                ["$ref"] = "AddHeldAccountsRequest",
              },
              response = {
                ["$ref"] = "AddHeldAccountsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            create = {
              description = "Creates a hold in the specified matter.",
              flatPath = "v1/matters/{matterId}/holds",
              httpMethod = "POST",
              id = "vault.matters.holds.create",
              parameterOrder = {
                "matterId",
              },
              parameters = {
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/holds",
              request = {
                ["$ref"] = "Hold",
              },
              response = {
                ["$ref"] = "Hold",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            delete = {
              description = "Removes the specified hold and releases the accounts or organizational unit covered by the hold. If the data is not preserved by another hold or retention rule, it might be purged.",
              flatPath = "v1/matters/{matterId}/holds/{holdId}",
              httpMethod = "DELETE",
              id = "vault.matters.holds.delete",
              parameterOrder = {
                "matterId",
                "holdId",
              },
              parameters = {
                holdId = {
                  description = "The hold ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/holds/{holdId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            get = {
              description = "Gets the specified hold.",
              flatPath = "v1/matters/{matterId}/holds/{holdId}",
              httpMethod = "GET",
              id = "vault.matters.holds.get",
              parameterOrder = {
                "matterId",
                "holdId",
              },
              parameters = {
                holdId = {
                  description = "The hold ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                view = {
                  description = "The amount of detail to return for a hold.",
                  enum = {
                    "HOLD_VIEW_UNSPECIFIED",
                    "BASIC_HOLD",
                    "FULL_HOLD",
                  },
                  enumDescriptions = {
                    "Not specified. Defaults to **FULL_HOLD**.",
                    "Returns the hold ID, name, update time, service, and query.",
                    "Returns all details of **BASIC_HOLD** and the entities the hold applies to, such as accounts or organizational unit.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/holds/{holdId}",
              response = {
                ["$ref"] = "Hold",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
                "https://www.googleapis.com/auth/ediscovery.readonly",
              },
            },
            list = {
              description = "Lists the holds in a matter.",
              flatPath = "v1/matters/{matterId}/holds",
              httpMethod = "GET",
              id = "vault.matters.holds.list",
              parameterOrder = {
                "matterId",
              },
              parameters = {
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The number of holds to return in the response, between 0 and 100 inclusive. Leaving this empty, or as 0, is the same as **page_size** = 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The pagination token as returned in the response. An empty token means start from the beginning.",
                  location = "query",
                  type = "string",
                },
                view = {
                  description = "The amount of detail to return for a hold.",
                  enum = {
                    "HOLD_VIEW_UNSPECIFIED",
                    "BASIC_HOLD",
                    "FULL_HOLD",
                  },
                  enumDescriptions = {
                    "Not specified. Defaults to **FULL_HOLD**.",
                    "Returns the hold ID, name, update time, service, and query.",
                    "Returns all details of **BASIC_HOLD** and the entities the hold applies to, such as accounts or organizational unit.",
                  },
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/holds",
              response = {
                ["$ref"] = "ListHoldsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
                "https://www.googleapis.com/auth/ediscovery.readonly",
              },
            },
            removeHeldAccounts = {
              description = "Removes the specified accounts from a hold. Returns a list of statuses in the same order as the request.",
              flatPath = "v1/matters/{matterId}/holds/{holdId}:removeHeldAccounts",
              httpMethod = "POST",
              id = "vault.matters.holds.removeHeldAccounts",
              parameterOrder = {
                "matterId",
                "holdId",
              },
              parameters = {
                holdId = {
                  description = "The hold ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/holds/{holdId}:removeHeldAccounts",
              request = {
                ["$ref"] = "RemoveHeldAccountsRequest",
              },
              response = {
                ["$ref"] = "RemoveHeldAccountsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            update = {
              description = "Updates the scope (organizational unit or accounts) and query parameters of a hold. You cannot add accounts to a hold that covers an organizational unit, nor can you add organizational units to a hold that covers individual accounts. If you try, the unsupported values are ignored.",
              flatPath = "v1/matters/{matterId}/holds/{holdId}",
              httpMethod = "PUT",
              id = "vault.matters.holds.update",
              parameterOrder = {
                "matterId",
                "holdId",
              },
              parameters = {
                holdId = {
                  description = "The ID of the hold.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                matterId = {
                  description = "The matter ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/holds/{holdId}",
              request = {
                ["$ref"] = "Hold",
              },
              response = {
                ["$ref"] = "Hold",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
          },
          resources = {
            accounts = {
              methods = {
                create = {
                  description = "Adds an account to a hold. Accounts can be added only to a hold that does not have an organizational unit set. If you try to add an account to an organizational unit-based hold, an error is returned.",
                  flatPath = "v1/matters/{matterId}/holds/{holdId}/accounts",
                  httpMethod = "POST",
                  id = "vault.matters.holds.accounts.create",
                  parameterOrder = {
                    "matterId",
                    "holdId",
                  },
                  parameters = {
                    holdId = {
                      description = "The hold ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    matterId = {
                      description = "The matter ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/matters/{matterId}/holds/{holdId}/accounts",
                  request = {
                    ["$ref"] = "HeldAccount",
                  },
                  response = {
                    ["$ref"] = "HeldAccount",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/ediscovery",
                  },
                },
                delete = {
                  description = "Removes an account from a hold.",
                  flatPath = "v1/matters/{matterId}/holds/{holdId}/accounts/{accountId}",
                  httpMethod = "DELETE",
                  id = "vault.matters.holds.accounts.delete",
                  parameterOrder = {
                    "matterId",
                    "holdId",
                    "accountId",
                  },
                  parameters = {
                    accountId = {
                      description = "The ID of the account to remove from the hold.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    holdId = {
                      description = "The hold ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    matterId = {
                      description = "The matter ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/matters/{matterId}/holds/{holdId}/accounts/{accountId}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/ediscovery",
                  },
                },
                list = {
                  description = "Lists the accounts covered by a hold. This can list only individually-specified accounts covered by the hold. If the hold covers an organizational unit, use the [Admin SDK](https://developers.google.com/admin-sdk/). to list the members of the organizational unit on hold.",
                  flatPath = "v1/matters/{matterId}/holds/{holdId}/accounts",
                  httpMethod = "GET",
                  id = "vault.matters.holds.accounts.list",
                  parameterOrder = {
                    "matterId",
                    "holdId",
                  },
                  parameters = {
                    holdId = {
                      description = "The hold ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    matterId = {
                      description = "The matter ID.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/matters/{matterId}/holds/{holdId}/accounts",
                  response = {
                    ["$ref"] = "ListHeldAccountsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/ediscovery",
                    "https://www.googleapis.com/auth/ediscovery.readonly",
                  },
                },
              },
            },
          },
        },
        savedQueries = {
          methods = {
            create = {
              description = "Creates a saved query.",
              flatPath = "v1/matters/{matterId}/savedQueries",
              httpMethod = "POST",
              id = "vault.matters.savedQueries.create",
              parameterOrder = {
                "matterId",
              },
              parameters = {
                matterId = {
                  description = "The ID of the matter to create the saved query in.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/savedQueries",
              request = {
                ["$ref"] = "SavedQuery",
              },
              response = {
                ["$ref"] = "SavedQuery",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            delete = {
              description = "Deletes the specified saved query.",
              flatPath = "v1/matters/{matterId}/savedQueries/{savedQueryId}",
              httpMethod = "DELETE",
              id = "vault.matters.savedQueries.delete",
              parameterOrder = {
                "matterId",
                "savedQueryId",
              },
              parameters = {
                matterId = {
                  description = "The ID of the matter to delete the saved query from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                savedQueryId = {
                  description = "ID of the saved query to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/savedQueries/{savedQueryId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
              },
            },
            get = {
              description = "Retrieves the specified saved query.",
              flatPath = "v1/matters/{matterId}/savedQueries/{savedQueryId}",
              httpMethod = "GET",
              id = "vault.matters.savedQueries.get",
              parameterOrder = {
                "matterId",
                "savedQueryId",
              },
              parameters = {
                matterId = {
                  description = "The ID of the matter to get the saved query from.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                savedQueryId = {
                  description = "ID of the saved query to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/savedQueries/{savedQueryId}",
              response = {
                ["$ref"] = "SavedQuery",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
                "https://www.googleapis.com/auth/ediscovery.readonly",
              },
            },
            list = {
              description = "Lists the saved queries in a matter.",
              flatPath = "v1/matters/{matterId}/savedQueries",
              httpMethod = "GET",
              id = "vault.matters.savedQueries.list",
              parameterOrder = {
                "matterId",
              },
              parameters = {
                matterId = {
                  description = "The ID of the matter to get the saved queries for.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of saved queries to return.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The pagination token as returned in the previous response. An empty token means start from the beginning.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/matters/{matterId}/savedQueries",
              response = {
                ["$ref"] = "ListSavedQueriesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/ediscovery",
                "https://www.googleapis.com/auth/ediscovery.readonly",
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
          id = "vault.operations.cancel",
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
        },
        delete = {
          description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "vault.operations.delete",
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
        },
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "vault.operations.get",
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
            "https://www.googleapis.com/auth/ediscovery",
            "https://www.googleapis.com/auth/ediscovery.readonly",
          },
        },
        list = {
          description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
          flatPath = "v1/operations",
          httpMethod = "GET",
          id = "vault.operations.list",
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
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://vault.googleapis.com/",
  schemas = {
    AccountCount = {
      description = "The results count for each account.",
      id = "AccountCount",
      properties = {
        account = {
          ["$ref"] = "UserInfo",
          description = "Account owner.",
        },
        count = {
          description = "The number of results (messages or files) found for this account.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    AccountCountError = {
      description = "An error that occurred when querying a specific account",
      id = "AccountCountError",
      properties = {
        account = {
          ["$ref"] = "UserInfo",
          description = "Account owner.",
        },
        errorType = {
          description = "Account query error.",
          enum = {
            "ERROR_TYPE_UNSPECIFIED",
            "WILDCARD_TOO_BROAD",
            "TOO_MANY_TERMS",
            "LOCATION_UNAVAILABLE",
            "UNKNOWN",
            "DEADLINE_EXCEEDED",
          },
          enumDescriptions = {
            "Default.",
            "Permanent - prefix terms expanded to too many query terms.",
            "Permanent - query contains too many terms.",
            "Transient - data in transit between storage replicas, temporarily unavailable.",
            "Unrecognized error.",
            "Deadline exceeded when querying the account.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AccountInfo = {
      description = "The accounts to search",
      id = "AccountInfo",
      properties = {
        emails = {
          description = "A set of accounts to search.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AddHeldAccountResult = {
      description = "The status of each account creation, and the **HeldAccount**, if successful.",
      id = "AddHeldAccountResult",
      properties = {
        account = {
          ["$ref"] = "HeldAccount",
          description = "Returned when the account was successfully created.",
        },
        status = {
          ["$ref"] = "Status",
          description = "Reports the request status. If it failed, returns an error message.",
        },
      },
      type = "object",
    },
    AddHeldAccountsRequest = {
      description = "Add a list of accounts to a hold.",
      id = "AddHeldAccountsRequest",
      properties = {
        accountIds = {
          description = "A comma-separated list of the account IDs of the accounts to add to the hold. Specify either **emails** or **account_ids**, but not both.",
          items = {
            type = "string",
          },
          type = "array",
        },
        emails = {
          description = "A comma-separated list of the emails of the accounts to add to the hold. Specify either **emails** or **account_ids**, but not both.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AddHeldAccountsResponse = {
      description = "Response for batch create held accounts.",
      id = "AddHeldAccountsResponse",
      properties = {
        responses = {
          description = "The list of responses, in the same order as the batch request.",
          items = {
            ["$ref"] = "AddHeldAccountResult",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AddMatterPermissionsRequest = {
      description = "Add an account with the permission specified. The role cannot be owner. If an account already has a role in the matter, the existing role is overwritten.",
      id = "AddMatterPermissionsRequest",
      properties = {
        ccMe = {
          description = "Only relevant if **sendEmails** is **true**. To CC the requestor in the email message, set to **true**. To not CC requestor, set to **false**.",
          type = "boolean",
        },
        matterPermission = {
          ["$ref"] = "MatterPermission",
          description = "The account and its role to add.",
        },
        sendEmails = {
          description = "To send a notification email to the added account, set to **true**. To not send a notification email, set to **false**.",
          type = "boolean",
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
    CloseMatterRequest = {
      description = "Close a matter by ID.",
      id = "CloseMatterRequest",
      properties = {},
      type = "object",
    },
    CloseMatterResponse = {
      description = "Response to a CloseMatterRequest.",
      id = "CloseMatterResponse",
      properties = {
        matter = {
          ["$ref"] = "Matter",
          description = "The updated matter, with state **CLOSED**.",
        },
      },
      type = "object",
    },
    CloudStorageFile = {
      description = "The export file in Cloud Storage",
      id = "CloudStorageFile",
      properties = {
        bucketName = {
          description = "The name of the Cloud Storage bucket for the export file. You can use this value in the [Cloud Storage JSON or XML APIs](https://cloud.google.com/storage/docs/apis), but not to list the bucket contents. Instead, you can [get individual export files](https://cloud.google.com/storage/docs/json_api/v1/objects/get) by object name.",
          type = "string",
        },
        md5Hash = {
          description = "The md5 hash of the file.",
          type = "string",
        },
        objectName = {
          description = "The name of the Cloud Storage object for the export file. You can use this value in the [Cloud Storage JSON or XML APIs](https://cloud.google.com/storage/docs/apis).",
          type = "string",
        },
        size = {
          description = "The export file size.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    CloudStorageSink = {
      description = "Export sink for Cloud Storage files.",
      id = "CloudStorageSink",
      properties = {
        files = {
          description = "Output only. The exported files in Cloud Storage.",
          items = {
            ["$ref"] = "CloudStorageFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CorpusQuery = {
      description = "Service-specific options for holds.",
      id = "CorpusQuery",
      properties = {
        driveQuery = {
          ["$ref"] = "HeldDriveQuery",
          description = "Service-specific options for Drive holds. If set, **CorpusType** must be **DRIVE**.",
        },
        groupsQuery = {
          ["$ref"] = "HeldGroupsQuery",
          description = "Service-specific options for Groups holds. If set, **CorpusType** must be **GROUPS**.",
        },
        hangoutsChatQuery = {
          ["$ref"] = "HeldHangoutsChatQuery",
          description = "Service-specific options for Chat holds. If set, **CorpusType** must be **HANGOUTS_CHAT**.",
        },
        mailQuery = {
          ["$ref"] = "HeldMailQuery",
          description = "Service-specific options for Gmail holds. If set, **CorpusType** must be **MAIL**.",
        },
        voiceQuery = {
          ["$ref"] = "HeldVoiceQuery",
          description = "Service-specific options for Voice holds. If set, **CorpusType** must be **VOICE**.",
        },
      },
      type = "object",
    },
    CountArtifactsMetadata = {
      description = "Long running operation metadata for CountArtifacts.",
      id = "CountArtifactsMetadata",
      properties = {
        endTime = {
          description = "End time of count operation. Available when operation is done.",
          format = "google-datetime",
          type = "string",
        },
        matterId = {
          description = "The matter ID of the associated matter.",
          type = "string",
        },
        query = {
          ["$ref"] = "Query",
          description = "The search query from the request.",
        },
        startTime = {
          description = "Creation time of count operation.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    CountArtifactsRequest = {
      description = "Count artifacts request.",
      id = "CountArtifactsRequest",
      properties = {
        query = {
          ["$ref"] = "Query",
          description = "The search query.",
        },
        view = {
          description = "Sets the granularity of the count results.",
          enum = {
            "COUNT_RESULT_VIEW_UNSPECIFIED",
            "TOTAL_COUNT",
            "ALL",
          },
          enumDescriptions = {
            "Default. Same as **TOTAL_COUNT**.",
            "Response includes counts of the total accounts, queried accounts, matching accounts, non-queryable accounts, and queried account errors.",
            "Response includes the same details as **TOTAL_COUNT**, plus additional account breakdown.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CountArtifactsResponse = {
      description = "Definition of the response for method CountArtifacts.",
      id = "CountArtifactsResponse",
      properties = {
        groupsCountResult = {
          ["$ref"] = "GroupsCountResult",
          description = "Count metrics for Groups.",
        },
        mailCountResult = {
          ["$ref"] = "MailCountResult",
          description = "Count metrics for Gmail and classic Hangouts.",
        },
        totalCount = {
          description = "Total count of messages.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DriveExportOptions = {
      description = "Options for Drive exports.",
      id = "DriveExportOptions",
      properties = {
        includeAccessInfo = {
          description = "To include access level information for users with [indirect access](https://support.google.com/vault/answer/6099459#metadata) to files, set to **true**.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DriveOptions = {
      description = "Additional options for Drive search",
      id = "DriveOptions",
      properties = {
        clientSideEncryptedOption = {
          description = "Set whether the results include only content encrypted with [Google Workspace Client-side encryption](https://support.google.com/a?p=cse_ov) content, only unencrypted content, or both. Defaults to both. Currently supported for Drive.",
          enum = {
            "CLIENT_SIDE_ENCRYPTED_OPTION_UNSPECIFIED",
            "CLIENT_SIDE_ENCRYPTED_OPTION_ANY",
            "CLIENT_SIDE_ENCRYPTED_OPTION_ENCRYPTED",
            "CLIENT_SIDE_ENCRYPTED_OPTION_UNENCRYPTED",
          },
          enumDescriptions = {
            "Encryption status unspecified. Results include both client-side encrypted and non-encrypted content.",
            "Include both client-side encrypted and unencrypted content in results.",
            "Include client-side encrypted content only.",
            "Include unencrypted content only.",
          },
          type = "string",
        },
        includeSharedDrives = {
          description = "Set to **true** to include shared drives.",
          type = "boolean",
        },
        includeTeamDrives = {
          description = "Set to true to include Team Drive.",
          type = "boolean",
        },
        versionDate = {
          description = "Search the current version of the Drive file, but export the contents of the last version saved before 12:00 AM UTC on the specified date. Enter the date in UTC.",
          format = "google-datetime",
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
    Export = {
      description = "An export. To work with Vault resources, the account must have the [required Vault privileges](https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.",
      id = "Export",
      properties = {
        cloudStorageSink = {
          ["$ref"] = "CloudStorageSink",
          description = "Output only. The sink for export files in Cloud Storage.",
        },
        createTime = {
          description = "Output only. The time when the export was created.",
          format = "google-datetime",
          type = "string",
        },
        exportOptions = {
          ["$ref"] = "ExportOptions",
          description = "Additional export options.",
        },
        id = {
          description = "Output only. The generated export ID.",
          type = "string",
        },
        matterId = {
          description = "Output only. The matter ID.",
          type = "string",
        },
        name = {
          description = "The export name. Don't use special characters (~!$'(),;@:/?) in the name, they can prevent you from downloading exports.",
          type = "string",
        },
        query = {
          ["$ref"] = "Query",
          description = "The query parameters used to create the export.",
        },
        requester = {
          ["$ref"] = "UserInfo",
          description = "Output only. The requester of the export.",
        },
        stats = {
          ["$ref"] = "ExportStats",
          description = "Output only. Details about the export progress and size.",
        },
        status = {
          description = "Output only. The status of the export.",
          enum = {
            "EXPORT_STATUS_UNSPECIFIED",
            "COMPLETED",
            "FAILED",
            "IN_PROGRESS",
          },
          enumDescriptions = {
            "The status is unspecified.",
            "The export completed.",
            "The export failed.",
            "The export is in progress.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ExportOptions = {
      description = "Additional options for exports",
      id = "ExportOptions",
      properties = {
        driveOptions = {
          ["$ref"] = "DriveExportOptions",
          description = "Options for Drive exports.",
        },
        groupsOptions = {
          ["$ref"] = "GroupsExportOptions",
          description = "Options for Groups exports.",
        },
        hangoutsChatOptions = {
          ["$ref"] = "HangoutsChatExportOptions",
          description = "Options for Chat exports.",
        },
        mailOptions = {
          ["$ref"] = "MailExportOptions",
          description = "Options for Gmail exports.",
        },
        region = {
          description = "The requested data region for the export.",
          enum = {
            "EXPORT_REGION_UNSPECIFIED",
            "ANY",
            "US",
            "EUROPE",
          },
          enumDescriptions = {
            "The region is unspecified. Defaults to ANY.",
            "Any region.",
            "United States region.",
            "Europe region.",
          },
          type = "string",
        },
        voiceOptions = {
          ["$ref"] = "VoiceExportOptions",
          description = "Options for Voice exports.",
        },
      },
      type = "object",
    },
    ExportStats = {
      description = "Progress information for an export.",
      id = "ExportStats",
      properties = {
        exportedArtifactCount = {
          description = "The number of messages or files already processed for export.",
          format = "int64",
          type = "string",
        },
        sizeInBytes = {
          description = "The size of export in bytes.",
          format = "int64",
          type = "string",
        },
        totalArtifactCount = {
          description = "The number of messages or files to be exported.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GroupsCountResult = {
      description = "Groups specific count metrics.",
      id = "GroupsCountResult",
      properties = {
        accountCountErrors = {
          description = "Error occurred when querying these accounts.",
          items = {
            ["$ref"] = "AccountCountError",
          },
          type = "array",
        },
        accountCounts = {
          description = "Subtotal count per matching account that have more than zero messages.",
          items = {
            ["$ref"] = "AccountCount",
          },
          type = "array",
        },
        matchingAccountsCount = {
          description = "Total number of accounts that can be queried and have more than zero messages.",
          format = "int64",
          type = "string",
        },
        nonQueryableAccounts = {
          description = "When **DataScope** is **HELD_DATA**, these accounts in the request are not queried because they are not on hold. For other data scope, this field is not set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        queriedAccountsCount = {
          description = "Total number of accounts involved in this count operation.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    GroupsExportOptions = {
      description = "Options for Groups exports.",
      id = "GroupsExportOptions",
      properties = {
        exportFormat = {
          description = "The file format for exported messages.",
          enum = {
            "EXPORT_FORMAT_UNSPECIFIED",
            "MBOX",
            "PST",
          },
          enumDescriptions = {
            "No export format specified.",
            "Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.",
            "Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    HangoutsChatExportOptions = {
      description = "Options for Chat exports.",
      id = "HangoutsChatExportOptions",
      properties = {
        exportFormat = {
          description = "The file format for exported messages.",
          enum = {
            "EXPORT_FORMAT_UNSPECIFIED",
            "MBOX",
            "PST",
          },
          enumDescriptions = {
            "No export format specified.",
            "Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.",
            "Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    HangoutsChatInfo = {
      description = "The Chat spaces to search",
      id = "HangoutsChatInfo",
      properties = {
        roomId = {
          description = "A list of Chat spaces IDs, as provided by the [Chat API](https://developers.google.com/hangouts/chat).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HangoutsChatOptions = {
      description = "Additional options for Google Chat search",
      id = "HangoutsChatOptions",
      properties = {
        includeRooms = {
          description = "For searches by account or organizational unit, set to **true** to include rooms.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HeldAccount = {
      description = "An account covered by a hold. This structure is immutable. It can be an individual account or a Google Group, depending on the service. To work with Vault resources, the account must have the [required Vault privileges] (https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.",
      id = "HeldAccount",
      properties = {
        accountId = {
          description = "The account ID, as provided by the [Admin SDK](https://developers.google.com/admin-sdk/).",
          type = "string",
        },
        email = {
          description = "The primary email address of the account. If used as an input, this takes precedence over **accountId**.",
          type = "string",
        },
        firstName = {
          description = "Output only. The first name of the account holder.",
          type = "string",
        },
        holdTime = {
          description = "Output only. When the account was put on hold.",
          format = "google-datetime",
          type = "string",
        },
        lastName = {
          description = "Output only. The last name of the account holder.",
          type = "string",
        },
      },
      type = "object",
    },
    HeldDriveQuery = {
      description = "Options for Drive holds.",
      id = "HeldDriveQuery",
      properties = {
        includeSharedDriveFiles = {
          description = "To include files in shared drives in the hold, set to **true**.",
          type = "boolean",
        },
        includeTeamDriveFiles = {
          description = "To include files in Team Drives in the hold, set to **true**.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HeldGroupsQuery = {
      description = "Query options for group holds.",
      id = "HeldGroupsQuery",
      properties = {
        endTime = {
          description = "The end time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The start time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.",
          format = "google-datetime",
          type = "string",
        },
        terms = {
          description = "The [search operators](https://support.google.com/vault/answer/2474474) used to refine the messages covered by the hold.",
          type = "string",
        },
      },
      type = "object",
    },
    HeldHangoutsChatQuery = {
      description = "Options for Chat holds.",
      id = "HeldHangoutsChatQuery",
      properties = {
        includeRooms = {
          description = "To include messages in Chat spaces the user was a member of, set to **true**.",
          type = "boolean",
        },
      },
      type = "object",
    },
    HeldMailQuery = {
      description = "Query options for Gmail holds.",
      id = "HeldMailQuery",
      properties = {
        endTime = {
          description = "The end time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.",
          format = "google-datetime",
          type = "string",
        },
        startTime = {
          description = "The start time for the query. Specify in GMT. The value is rounded to 12 AM on the specified date.",
          format = "google-datetime",
          type = "string",
        },
        terms = {
          description = "The [search operators](https://support.google.com/vault/answer/2474474) used to refine the messages covered by the hold.",
          type = "string",
        },
      },
      type = "object",
    },
    HeldOrgUnit = {
      description = "The organizational unit covered by a hold. This structure is immutable.",
      id = "HeldOrgUnit",
      properties = {
        holdTime = {
          description = "When the organizational unit was put on hold. This property is immutable.",
          format = "google-datetime",
          type = "string",
        },
        orgUnitId = {
          description = "The organizational unit's immutable ID as provided by the [Admin SDK](https://developers.google.com/admin-sdk/).",
          type = "string",
        },
      },
      type = "object",
    },
    HeldVoiceQuery = {
      description = "Options for Voice holds.",
      id = "HeldVoiceQuery",
      properties = {
        coveredData = {
          description = "A list of data types covered by the hold. Should be non-empty. Order does not matter and duplicates are ignored.",
          items = {
            enum = {
              "COVERED_DATA_UNSPECIFIED",
              "TEXT_MESSAGES",
              "VOICEMAILS",
              "CALL_LOGS",
            },
            enumDescriptions = {
              "Covered data unspecified.",
              "Voice text messages.",
              "Voicemails and their transcripts.",
              "Call logs.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Hold = {
      description = "A hold. A hold prevents the specified Google Workspace service from purging data for specific accounts or all members of an organizational unit. To work with Vault resources, the account must have the [required Vault privileges] (https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.",
      id = "Hold",
      properties = {
        accounts = {
          description = "If set, the hold applies to the specified accounts and **orgUnit** must be empty.",
          items = {
            ["$ref"] = "HeldAccount",
          },
          type = "array",
        },
        corpus = {
          description = "The service to be searched.",
          enum = {
            "CORPUS_TYPE_UNSPECIFIED",
            "DRIVE",
            "MAIL",
            "GROUPS",
            "HANGOUTS_CHAT",
            "VOICE",
          },
          enumDescriptions = {
            "No service specified.",
            "Drive, including Meet and Sites.",
            "For search, Gmail and classic Hangouts. For holds, Gmail only.",
            "Groups.",
            "For export, Google Chat only. For holds, Google Chat and classic Hangouts.",
            "Google Voice.",
          },
          type = "string",
        },
        holdId = {
          description = "The unique immutable ID of the hold. Assigned during creation.",
          type = "string",
        },
        name = {
          description = "The name of the hold.",
          type = "string",
        },
        orgUnit = {
          ["$ref"] = "HeldOrgUnit",
          description = "If set, the hold applies to all members of the organizational unit and **accounts** must be empty. This property is mutable. For Groups holds, set **accounts**.",
        },
        query = {
          ["$ref"] = "CorpusQuery",
          description = "Service-specific options. If set, **CorpusQuery** must match **CorpusType**.",
        },
        updateTime = {
          description = "The last time this hold was modified.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    ListExportsResponse = {
      description = "The exports for a matter.",
      id = "ListExportsResponse",
      properties = {
        exports = {
          description = "The list of exports.",
          items = {
            ["$ref"] = "Export",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token to retrieve the next page of results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListHeldAccountsResponse = {
      description = "Returns a list of the accounts covered by a hold.",
      id = "ListHeldAccountsResponse",
      properties = {
        accounts = {
          description = "The held accounts on a hold.",
          items = {
            ["$ref"] = "HeldAccount",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListHoldsResponse = {
      description = "The holds for a matter.",
      id = "ListHoldsResponse",
      properties = {
        holds = {
          description = "The list of holds.",
          items = {
            ["$ref"] = "Hold",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token to retrieve the next page of results in the list. If this is empty, then there are no more holds to list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListMattersResponse = {
      description = "Provides the list of matters.",
      id = "ListMattersResponse",
      properties = {
        matters = {
          description = "List of matters.",
          items = {
            ["$ref"] = "Matter",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Page token to retrieve the next page of results in the list.",
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
    ListSavedQueriesResponse = {
      description = "Definition of the response for method ListSaveQuery.",
      id = "ListSavedQueriesResponse",
      properties = {
        nextPageToken = {
          description = "Page token to retrieve the next page of results in the list. If this is empty, then there are no more saved queries to list.",
          type = "string",
        },
        savedQueries = {
          description = "List of saved queries.",
          items = {
            ["$ref"] = "SavedQuery",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MailCountResult = {
      description = "Gmail and classic Hangouts-specific count metrics.",
      id = "MailCountResult",
      properties = {
        accountCountErrors = {
          description = "Errors occurred when querying these accounts.",
          items = {
            ["$ref"] = "AccountCountError",
          },
          type = "array",
        },
        accountCounts = {
          description = "Subtotal count per matching account that have more than zero messages.",
          items = {
            ["$ref"] = "AccountCount",
          },
          type = "array",
        },
        matchingAccountsCount = {
          description = "Total number of accounts that can be queried and have more than zero messages.",
          format = "int64",
          type = "string",
        },
        nonQueryableAccounts = {
          description = "When **DataScope** is **HELD_DATA** and when account emails are passed in explicitly, the list of accounts in the request that are not queried because they are not on hold in the matter. For other data scopes, this field is not set.",
          items = {
            type = "string",
          },
          type = "array",
        },
        queriedAccountsCount = {
          description = "Total number of accounts involved in this count operation.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    MailExportOptions = {
      description = "Options for Gmail exports.",
      id = "MailExportOptions",
      properties = {
        exportFormat = {
          description = "The file format for exported messages.",
          enum = {
            "EXPORT_FORMAT_UNSPECIFIED",
            "MBOX",
            "PST",
          },
          enumDescriptions = {
            "No export format specified.",
            "Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.",
            "Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.",
          },
          type = "string",
        },
        showConfidentialModeContent = {
          description = "To export confidential mode content, set to **true**.",
          type = "boolean",
        },
        useNewExport = {
          description = "To use the new export system, set to **true**.",
          type = "boolean",
        },
      },
      type = "object",
    },
    MailOptions = {
      description = "Additional options for Gmail search",
      id = "MailOptions",
      properties = {
        excludeDrafts = {
          description = "Set to **true** to exclude drafts.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Matter = {
      description = "Represents a matter. To work with Vault resources, the account must have the [required Vault privileges] (https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.",
      id = "Matter",
      properties = {
        description = {
          description = "An optional description for the matter.",
          type = "string",
        },
        matterId = {
          description = "The matter ID, which is generated by the server. Leave blank when creating a matter.",
          type = "string",
        },
        matterPermissions = {
          description = "Lists the users and their permission for the matter. Currently there is no programmer defined limit on the number of permissions a matter can have.",
          items = {
            ["$ref"] = "MatterPermission",
          },
          type = "array",
        },
        name = {
          description = "The name of the matter.",
          type = "string",
        },
        state = {
          description = "The state of the matter.",
          enum = {
            "STATE_UNSPECIFIED",
            "OPEN",
            "CLOSED",
            "DELETED",
          },
          enumDescriptions = {
            "The matter has no specified state.",
            "The matter is open.",
            "The matter is closed.",
            "The matter is deleted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MatterPermission = {
      description = "Users can be matter owners or collaborators. Each matter has only one owner. All others users who can access the matter are collaborators. When an account is purged, its corresponding MatterPermission resources cease to exist.",
      id = "MatterPermission",
      properties = {
        accountId = {
          description = "The account ID, as provided by the [Admin SDK](https://developers.google.com/admin-sdk/).",
          type = "string",
        },
        role = {
          description = "The user's role for the matter.",
          enum = {
            "ROLE_UNSPECIFIED",
            "COLLABORATOR",
            "OWNER",
          },
          enumDescriptions = {
            "No role assigned.",
            "A collaborator on the matter.",
            "The owner of the matter.",
          },
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
    OrgUnitInfo = {
      description = "The organizational unit to search",
      id = "OrgUnitInfo",
      properties = {
        orgUnitId = {
          description = "The name of the organizational unit to search, as provided by the [Admin SDK Directory API](https://developers.google.com/admin-sdk/directory/).",
          type = "string",
        },
      },
      type = "object",
    },
    Query = {
      description = "The query definition used for search and export.",
      id = "Query",
      properties = {
        accountInfo = {
          ["$ref"] = "AccountInfo",
          description = "Required when **SearchMethod** is **ACCOUNT**.",
        },
        corpus = {
          description = "The Google Workspace service to search.",
          enum = {
            "CORPUS_TYPE_UNSPECIFIED",
            "DRIVE",
            "MAIL",
            "GROUPS",
            "HANGOUTS_CHAT",
            "VOICE",
          },
          enumDescriptions = {
            "No service specified.",
            "Drive, including Meet and Sites.",
            "For search, Gmail and classic Hangouts. For holds, Gmail only.",
            "Groups.",
            "For export, Google Chat only. For holds, Google Chat and classic Hangouts.",
            "Google Voice.",
          },
          type = "string",
        },
        dataScope = {
          description = "The data source to search.",
          enum = {
            "DATA_SCOPE_UNSPECIFIED",
            "ALL_DATA",
            "HELD_DATA",
            "UNPROCESSED_DATA",
          },
          enumDescriptions = {
            "No data source specified.",
            "All available data.",
            "Only data on hold.",
            "Only data not yet processed by Vault. (Gmail and Groups only)",
          },
          type = "string",
        },
        driveOptions = {
          ["$ref"] = "DriveOptions",
          description = "Set Drive search-specific options.",
        },
        endTime = {
          description = "The end time for the search query. Specify in GMT. The value is rounded to 12 AM on the specified date.",
          format = "google-datetime",
          type = "string",
        },
        hangoutsChatInfo = {
          ["$ref"] = "HangoutsChatInfo",
          description = "Required when **SearchMethod** is **ROOM**. (read-only)",
        },
        hangoutsChatOptions = {
          ["$ref"] = "HangoutsChatOptions",
          description = "Set Chat search-specific options. (read-only)",
        },
        mailOptions = {
          ["$ref"] = "MailOptions",
          description = "Set Gmail search-specific options.",
        },
        method = {
          description = "The entity to search. This field replaces **searchMethod** to support shared drives. When **searchMethod** is **TEAM_DRIVE**, the response of this field is **SHARED_DRIVE**.",
          enum = {
            "SEARCH_METHOD_UNSPECIFIED",
            "ACCOUNT",
            "ORG_UNIT",
            "TEAM_DRIVE",
            "ENTIRE_ORG",
            "ROOM",
            "SITES_URL",
            "SHARED_DRIVE",
          },
          enumDescriptions = {
            "A search method must be specified or else it is rejected.",
            "Search the data of the accounts specified in [AccountInfo](https://developers.google.com/vault/reference/rest/v1/Query#accountinfo).",
            "Search the data of all accounts in the organizational unit specified in [OrgUnitInfo](https://developers.google.com/vault/reference/rest/v1/Query#orgunitinfo).",
            "Search the data in the Team Drive specified in **team_drive_info**.",
            "Search the data of all accounts in the organization. Supported only for Gmail. When specified, you don't need to specify **AccountInfo** or **OrgUnitInfo**.",
            "Search messages in the Chat spaces specified in [HangoutsChatInfo](https://developers.google.com/vault/reference/rest/v1/Query#hangoutschatinfo).",
            "Search for sites by the published site URLs specified in [SitesUrlInfo](https://developers.google.com/vault/reference/rest/v1/Query#sitesurlinfo).",
            "Search the files in the shared drives specified in [SharedDriveInfo](https://developers.google.com/vault/reference/rest/v1/Query#shareddriveinfo).",
          },
          type = "string",
        },
        orgUnitInfo = {
          ["$ref"] = "OrgUnitInfo",
          description = "Required when **SearchMethod** is **ORG_UNIT**.",
        },
        searchMethod = {
          description = "The search method to use.",
          enum = {
            "SEARCH_METHOD_UNSPECIFIED",
            "ACCOUNT",
            "ORG_UNIT",
            "TEAM_DRIVE",
            "ENTIRE_ORG",
            "ROOM",
            "SITES_URL",
            "SHARED_DRIVE",
          },
          enumDescriptions = {
            "A search method must be specified or else it is rejected.",
            "Search the data of the accounts specified in [AccountInfo](https://developers.google.com/vault/reference/rest/v1/Query#accountinfo).",
            "Search the data of all accounts in the organizational unit specified in [OrgUnitInfo](https://developers.google.com/vault/reference/rest/v1/Query#orgunitinfo).",
            "Search the data in the Team Drive specified in **team_drive_info**.",
            "Search the data of all accounts in the organization. Supported only for Gmail. When specified, you don't need to specify **AccountInfo** or **OrgUnitInfo**.",
            "Search messages in the Chat spaces specified in [HangoutsChatInfo](https://developers.google.com/vault/reference/rest/v1/Query#hangoutschatinfo).",
            "Search for sites by the published site URLs specified in [SitesUrlInfo](https://developers.google.com/vault/reference/rest/v1/Query#sitesurlinfo).",
            "Search the files in the shared drives specified in [SharedDriveInfo](https://developers.google.com/vault/reference/rest/v1/Query#shareddriveinfo).",
          },
          type = "string",
        },
        sharedDriveInfo = {
          ["$ref"] = "SharedDriveInfo",
          description = "Required when **SearchMethod** is **SHARED_DRIVE**.",
        },
        sitesUrlInfo = {
          ["$ref"] = "SitesUrlInfo",
          description = "Required when **SearchMethod** is **SITES_URL**.",
        },
        startTime = {
          description = "The start time for the search query. Specify in GMT. The value is rounded to 12 AM on the specified date.",
          format = "google-datetime",
          type = "string",
        },
        teamDriveInfo = {
          ["$ref"] = "TeamDriveInfo",
          description = "Required when **SearchMethod** is **TEAM_DRIVE**.",
        },
        terms = {
          description = "Service-specific [search operators](https://support.google.com/vault/answer/2474474) to filter search results.",
          type = "string",
        },
        timeZone = {
          description = "The time zone name. It should be an IANA TZ name, such as \"America/Los_Angeles\". For a list of time zone names, see [Time Zone](https://en.wikipedia.org/wiki/List_of_tz_database_time_zones). For more information about how Vault uses time zones, see [the Vault help center](https://support.google.com/vault/answer/6092995#time).",
          type = "string",
        },
        voiceOptions = {
          ["$ref"] = "VoiceOptions",
          description = "Set Voice search-specific options.",
        },
      },
      type = "object",
    },
    RemoveHeldAccountsRequest = {
      description = "Remove a list of accounts from a hold.",
      id = "RemoveHeldAccountsRequest",
      properties = {
        accountIds = {
          description = "The account IDs of the accounts to remove from the hold.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RemoveHeldAccountsResponse = {
      description = "Response for batch delete held accounts.",
      id = "RemoveHeldAccountsResponse",
      properties = {
        statuses = {
          description = "A list of statuses for the deleted accounts. Results have the same order as the request.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RemoveMatterPermissionsRequest = {
      description = "Remove an account as a matter collaborator.",
      id = "RemoveMatterPermissionsRequest",
      properties = {
        accountId = {
          description = "The account ID.",
          type = "string",
        },
      },
      type = "object",
    },
    ReopenMatterRequest = {
      description = "Reopen a matter by ID.",
      id = "ReopenMatterRequest",
      properties = {},
      type = "object",
    },
    ReopenMatterResponse = {
      description = "Response to a ReopenMatterRequest.",
      id = "ReopenMatterResponse",
      properties = {
        matter = {
          ["$ref"] = "Matter",
          description = "The updated matter, with state **OPEN**.",
        },
      },
      type = "object",
    },
    SavedQuery = {
      description = "The definition of a saved query. To work with Vault resources, the account must have the [required Vault privileges](https://support.google.com/vault/answer/2799699) and access to the matter. To access a matter, the account must have created the matter, have the matter shared with them, or have the **View All Matters** privilege.",
      id = "SavedQuery",
      properties = {
        createTime = {
          description = "Output only. The server-generated timestamp when the saved query was created.",
          format = "google-datetime",
          type = "string",
        },
        displayName = {
          description = "The name of the saved query.",
          type = "string",
        },
        matterId = {
          description = "Output only. The matter ID of the matter the saved query is saved in. The server does not use this field during create and always uses matter ID in the URL.",
          type = "string",
        },
        query = {
          ["$ref"] = "Query",
          description = "The search parameters of the saved query.",
        },
        savedQueryId = {
          description = "A unique identifier for the saved query.",
          type = "string",
        },
      },
      type = "object",
    },
    SharedDriveInfo = {
      description = "The shared drives to search",
      id = "SharedDriveInfo",
      properties = {
        sharedDriveIds = {
          description = "A list of shared drive IDs, as provided by the [Drive API](https://developers.google.com/drive).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SitesUrlInfo = {
      description = "The published site URLs of new Google Sites to search",
      id = "SitesUrlInfo",
      properties = {
        urls = {
          description = "A list of published site URLs.",
          items = {
            type = "string",
          },
          type = "array",
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
    TeamDriveInfo = {
      description = "Team Drives to search",
      id = "TeamDriveInfo",
      properties = {
        teamDriveIds = {
          description = "List of Team Drive IDs, as provided by the [Drive API](https://developers.google.com/drive).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UndeleteMatterRequest = {
      description = "Undelete a matter by ID.",
      id = "UndeleteMatterRequest",
      properties = {},
      type = "object",
    },
    UserInfo = {
      description = "User's information.",
      id = "UserInfo",
      properties = {
        displayName = {
          description = "The displayed name of the user.",
          type = "string",
        },
        email = {
          description = "The email address of the user.",
          type = "string",
        },
      },
      type = "object",
    },
    VoiceExportOptions = {
      description = "The options for Voice exports.",
      id = "VoiceExportOptions",
      properties = {
        exportFormat = {
          description = "The file format for exported text messages.",
          enum = {
            "EXPORT_FORMAT_UNSPECIFIED",
            "MBOX",
            "PST",
          },
          enumDescriptions = {
            "No export format specified.",
            "Export as MBOX. Only available for Gmail, Groups, Hangouts and Voice.",
            "Export as PST. Only available for Gmail, Groups, Hangouts, Voice and Calendar.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VoiceOptions = {
      description = "Additional options for Voice search",
      id = "VoiceOptions",
      properties = {
        coveredData = {
          description = "Datatypes to search",
          items = {
            enum = {
              "COVERED_DATA_UNSPECIFIED",
              "TEXT_MESSAGES",
              "VOICEMAILS",
              "CALL_LOGS",
            },
            enumDescriptions = {
              "Covered data unspecified.",
              "Voice text messages.",
              "Voicemails and their transcripts.",
              "Call logs.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Vault API",
  version = "v1",
  version_module = true,
}