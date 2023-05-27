return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/admin.chrome.printers"] = {
          description = "See, add, edit, and permanently delete the printers that your organization can use with Chrome",
        },
        ["https://www.googleapis.com/auth/admin.chrome.printers.readonly"] = {
          description = "See the printers that your organization can use with Chrome",
        },
        ["https://www.googleapis.com/auth/admin.directory.customer"] = {
          description = "View and manage customer related information",
        },
        ["https://www.googleapis.com/auth/admin.directory.customer.readonly"] = {
          description = "View customer related information",
        },
        ["https://www.googleapis.com/auth/admin.directory.device.chromeos"] = {
          description = "View and manage your Chrome OS devices' metadata",
        },
        ["https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly"] = {
          description = "View your Chrome OS devices' metadata",
        },
        ["https://www.googleapis.com/auth/admin.directory.device.mobile"] = {
          description = "View and manage your mobile devices' metadata",
        },
        ["https://www.googleapis.com/auth/admin.directory.device.mobile.action"] = {
          description = "Manage your mobile devices by performing administrative tasks",
        },
        ["https://www.googleapis.com/auth/admin.directory.device.mobile.readonly"] = {
          description = "View your mobile devices' metadata",
        },
        ["https://www.googleapis.com/auth/admin.directory.domain"] = {
          description = "View and manage the provisioning of domains for your customers",
        },
        ["https://www.googleapis.com/auth/admin.directory.domain.readonly"] = {
          description = "View domains related to your customers",
        },
        ["https://www.googleapis.com/auth/admin.directory.group"] = {
          description = "View and manage the provisioning of groups on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.group.member"] = {
          description = "View and manage group subscriptions on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.group.member.readonly"] = {
          description = "View group subscriptions on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.group.readonly"] = {
          description = "View groups on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.orgunit"] = {
          description = "View and manage organization units on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.orgunit.readonly"] = {
          description = "View organization units on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.resource.calendar"] = {
          description = "View and manage the provisioning of calendar resources on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly"] = {
          description = "View calendar resources on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.rolemanagement"] = {
          description = "Manage delegated admin roles for your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly"] = {
          description = "View delegated admin roles for your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.user"] = {
          description = "View and manage the provisioning of users on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.user.alias"] = {
          description = "View and manage user aliases on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.user.alias.readonly"] = {
          description = "View user aliases on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.user.readonly"] = {
          description = "See info about users on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.user.security"] = {
          description = "Manage data access permissions for users on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.userschema"] = {
          description = "View and manage the provisioning of user schemas on your domain",
        },
        ["https://www.googleapis.com/auth/admin.directory.userschema.readonly"] = {
          description = "View user schemas on your domain",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://admin.googleapis.com/",
  batchPath = "batch",
  canonicalName = "directory",
  description = "Admin SDK lets administrators of enterprise domains to view and manage resources like user, groups etc. It also provides audit and usage reports of domain.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/admin-sdk/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "admin:directory_v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://admin.mtls.googleapis.com/",
  name = "admin",
  ownerDomain = "google.com",
  ownerName = "Google",
  packagePath = "admin",
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
    asps = {
      methods = {
        delete = {
          description = "Deletes an ASP issued by a user.",
          flatPath = "admin/directory/v1/users/{userKey}/asps/{codeId}",
          httpMethod = "DELETE",
          id = "directory.asps.delete",
          parameterOrder = {
            "userKey",
            "codeId",
          },
          parameters = {
            codeId = {
              description = "The unique ID of the ASP to be deleted.",
              format = "int32",
              location = "path",
              required = true,
              type = "integer",
            },
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/asps/{codeId}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
        get = {
          description = "Gets information about an ASP issued by a user.",
          flatPath = "admin/directory/v1/users/{userKey}/asps/{codeId}",
          httpMethod = "GET",
          id = "directory.asps.get",
          parameterOrder = {
            "userKey",
            "codeId",
          },
          parameters = {
            codeId = {
              description = "The unique ID of the ASP.",
              format = "int32",
              location = "path",
              required = true,
              type = "integer",
            },
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/asps/{codeId}",
          response = {
            ["$ref"] = "Asp",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
        list = {
          description = "Lists the ASPs issued by a user.",
          flatPath = "admin/directory/v1/users/{userKey}/asps",
          httpMethod = "GET",
          id = "directory.asps.list",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/asps",
          response = {
            ["$ref"] = "Asps",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
      },
    },
    channels = {
      methods = {
        stop = {
          description = "Stops watching resources through this channel.",
          flatPath = "admin/directory_v1/channels/stop",
          httpMethod = "POST",
          id = "admin.channels.stop",
          parameterOrder = {},
          parameters = {},
          path = "admin/directory_v1/channels/stop",
          request = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
            "https://www.googleapis.com/auth/admin.directory.user.alias",
            "https://www.googleapis.com/auth/admin.directory.user.alias.readonly",
            "https://www.googleapis.com/auth/admin.directory.user.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    chromeosdevices = {
      methods = {
        action = {
          description = "Takes an action that affects a Chrome OS Device. This includes deprovisioning, disabling, and re-enabling devices. *Warning:* * Deprovisioning a device will stop device policy syncing and remove device-level printers. After a device is deprovisioned, it must be wiped before it can be re-enrolled. * Lost or stolen devices should use the disable action. * Re-enabling a disabled device will consume a device license. If you do not have sufficient licenses available when completing the re-enable action, you will receive an error. For more information about deprovisioning and disabling devices, visit the [help center](https://support.google.com/chrome/a/answer/3523633).",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos/{resourceId}/action",
          httpMethod = "POST",
          id = "directory.chromeosdevices.action",
          parameterOrder = {
            "customerId",
            "resourceId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            resourceId = {
              description = "The unique ID of the device. The `resourceId`s are returned in the response from the [chromeosdevices.list](/admin-sdk/directory/v1/reference/chromeosdevices/list) method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/chromeos/{resourceId}/action",
          request = {
            ["$ref"] = "ChromeOsDeviceAction",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.chromeos",
          },
        },
        get = {
          description = "Retrieves a Chrome OS device's properties.",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}",
          httpMethod = "GET",
          id = "directory.chromeosdevices.get",
          parameterOrder = {
            "customerId",
            "deviceId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            deviceId = {
              description = "The unique ID of the device. The `deviceId`s are returned in the response from the [chromeosdevices.list](/admin-sdk/directory/v1/reference/chromeosdevices/list) method.",
              location = "path",
              required = true,
              type = "string",
            },
            projection = {
              description = "Determines whether the response contains the full list of properties or only a subset.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)",
                "Includes all metadata fields",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}",
          response = {
            ["$ref"] = "ChromeOsDevice",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.chromeos",
            "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly",
          },
        },
        list = {
          description = "Retrieves a paginated list of Chrome OS devices within an account.",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos",
          httpMethod = "GET",
          id = "directory.chromeosdevices.list",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            includeChildOrgunits = {
              description = "Return devices from all child orgunits, as well as the specified org unit. If this is set to true, 'orgUnitPath' must be provided.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "100",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            orderBy = {
              description = "Device property to use for sorting results.",
              enum = {
                "annotatedLocation",
                "annotatedUser",
                "lastSync",
                "notes",
                "serialNumber",
                "status",
              },
              enumDescriptions = {
                "Chrome device location as annotated by the administrator.",
                "Chromebook user as annotated by administrator.",
                "The date and time the Chrome device was last synchronized with the policy settings in the Admin console.",
                "Chrome device notes as annotated by the administrator.",
                "The Chrome device serial number entered when the device was enabled.",
                "Chrome device status. For more information, see the <a [chromeosdevices](/admin-sdk/directory/v1/reference/chromeosdevices.html).",
              },
              location = "query",
              type = "string",
            },
            orgUnitPath = {
              description = "The full path of the organizational unit (minus the leading `/`) or its unique ID.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The `pageToken` query parameter is used to request the next page of query results. The follow-on request's `pageToken` query parameter is the `nextPageToken` from your previous response.",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)",
                "Includes all metadata fields",
              },
              location = "query",
              type = "string",
            },
            query = {
              description = "Search string in the format given at https://developers.google.com/admin-sdk/directory/v1/list-query-operators",
              location = "query",
              type = "string",
            },
            sortOrder = {
              description = "Whether to return results in ascending or descending order. Must be used with the `orderBy` parameter.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "Ascending order.",
                "Descending order.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/chromeos",
          response = {
            ["$ref"] = "ChromeOsDevices",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.chromeos",
            "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly",
          },
        },
        moveDevicesToOu = {
          description = "Moves or inserts multiple Chrome OS devices to an organizational unit. You can move up to 50 devices at once.",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos/moveDevicesToOu",
          httpMethod = "POST",
          id = "directory.chromeosdevices.moveDevicesToOu",
          parameterOrder = {
            "customerId",
            "orgUnitPath",
          },
          parameters = {
            customerId = {
              description = "Immutable. ID of the Google Workspace account",
              location = "path",
              required = true,
              type = "string",
            },
            orgUnitPath = {
              description = "Full path of the target organizational unit or its ID",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/chromeos/moveDevicesToOu",
          request = {
            ["$ref"] = "ChromeOsMoveDevicesToOu",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.chromeos",
          },
        },
        patch = {
          description = "Updates a device's updatable properties, such as `annotatedUser`, `annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`. This method supports [patch semantics](/admin-sdk/directory/v1/guides/performance#patch).",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}",
          httpMethod = "PATCH",
          id = "directory.chromeosdevices.patch",
          parameterOrder = {
            "customerId",
            "deviceId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            deviceId = {
              description = "The unique ID of the device. The `deviceId`s are returned in the response from the [chromeosdevices.list](/admin-sdk/v1/reference/chromeosdevices/list) method.",
              location = "path",
              required = true,
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)",
                "Includes all metadata fields",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}",
          request = {
            ["$ref"] = "ChromeOsDevice",
          },
          response = {
            ["$ref"] = "ChromeOsDevice",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.chromeos",
          },
        },
        update = {
          description = "Updates a device's updatable properties, such as `annotatedUser`, `annotatedLocation`, `notes`, `orgUnitPath`, or `annotatedAssetId`.",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}",
          httpMethod = "PUT",
          id = "directory.chromeosdevices.update",
          parameterOrder = {
            "customerId",
            "deviceId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            deviceId = {
              description = "The unique ID of the device. The `deviceId`s are returned in the response from the [chromeosdevices.list](/admin-sdk/v1/reference/chromeosdevices/list) method.",
              location = "path",
              required = true,
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Includes only the basic metadata fields (e.g., deviceId, serialNumber, status, and user)",
                "Includes all metadata fields",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}",
          request = {
            ["$ref"] = "ChromeOsDevice",
          },
          response = {
            ["$ref"] = "ChromeOsDevice",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.chromeos",
          },
        },
      },
    },
    customer = {
      resources = {
        devices = {
          resources = {
            chromeos = {
              methods = {
                issueCommand = {
                  description = "Issues a command for the device to execute.",
                  flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}:issueCommand",
                  httpMethod = "POST",
                  id = "admin.customer.devices.chromeos.issueCommand",
                  parameterOrder = {
                    "customerId",
                    "deviceId",
                  },
                  parameters = {
                    customerId = {
                      description = "Immutable. ID of the Google Workspace account.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    deviceId = {
                      description = "Immutable. ID of Chrome OS Device.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}:issueCommand",
                  request = {
                    ["$ref"] = "DirectoryChromeosdevicesIssueCommandRequest",
                  },
                  response = {
                    ["$ref"] = "DirectoryChromeosdevicesIssueCommandResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.directory.device.chromeos",
                  },
                },
              },
              resources = {
                commands = {
                  methods = {
                    get = {
                      description = "Gets command data a specific command issued to the device.",
                      flatPath = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}/commands/{commandId}",
                      httpMethod = "GET",
                      id = "admin.customer.devices.chromeos.commands.get",
                      parameterOrder = {
                        "customerId",
                        "deviceId",
                        "commandId",
                      },
                      parameters = {
                        commandId = {
                          description = "Immutable. ID of Chrome OS Device Command.",
                          format = "int64",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        customerId = {
                          description = "Immutable. ID of the Google Workspace account.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        deviceId = {
                          description = "Immutable. ID of Chrome OS Device.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "admin/directory/v1/customer/{customerId}/devices/chromeos/{deviceId}/commands/{commandId}",
                      response = {
                        ["$ref"] = "DirectoryChromeosdevicesCommand",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/admin.directory.device.chromeos",
                        "https://www.googleapis.com/auth/admin.directory.device.chromeos.readonly",
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
    customers = {
      methods = {
        get = {
          description = "Retrieves a customer.",
          flatPath = "admin/directory/v1/customers/{customerKey}",
          httpMethod = "GET",
          id = "directory.customers.get",
          parameterOrder = {
            "customerKey",
          },
          parameters = {
            customerKey = {
              description = "Id of the customer to be retrieved",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customers/{customerKey}",
          response = {
            ["$ref"] = "Customer",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.customer",
            "https://www.googleapis.com/auth/admin.directory.customer.readonly",
          },
        },
        patch = {
          description = "Patches a customer.",
          flatPath = "admin/directory/v1/customers/{customerKey}",
          httpMethod = "PATCH",
          id = "directory.customers.patch",
          parameterOrder = {
            "customerKey",
          },
          parameters = {
            customerKey = {
              description = "Id of the customer to be updated",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customers/{customerKey}",
          request = {
            ["$ref"] = "Customer",
          },
          response = {
            ["$ref"] = "Customer",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.customer",
          },
        },
        update = {
          description = "Updates a customer.",
          flatPath = "admin/directory/v1/customers/{customerKey}",
          httpMethod = "PUT",
          id = "directory.customers.update",
          parameterOrder = {
            "customerKey",
          },
          parameters = {
            customerKey = {
              description = "Id of the customer to be updated",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customers/{customerKey}",
          request = {
            ["$ref"] = "Customer",
          },
          response = {
            ["$ref"] = "Customer",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.customer",
          },
        },
      },
      resources = {
        chrome = {
          resources = {
            printServers = {
              methods = {
                batchCreatePrintServers = {
                  description = "Creates multiple print servers.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printServers:batchCreatePrintServers",
                  httpMethod = "POST",
                  id = "admin.customers.chrome.printServers.batchCreatePrintServers",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The [unique ID](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/{id}`",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printServers:batchCreatePrintServers",
                  request = {
                    ["$ref"] = "BatchCreatePrintServersRequest",
                  },
                  response = {
                    ["$ref"] = "BatchCreatePrintServersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                batchDeletePrintServers = {
                  description = "Deletes multiple print servers.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printServers:batchDeletePrintServers",
                  httpMethod = "POST",
                  id = "admin.customers.chrome.printServers.batchDeletePrintServers",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The [unique ID](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/{customer.id}`",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printServers:batchDeletePrintServers",
                  request = {
                    ["$ref"] = "BatchDeletePrintServersRequest",
                  },
                  response = {
                    ["$ref"] = "BatchDeletePrintServersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                create = {
                  description = "Creates a print server.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printServers",
                  httpMethod = "POST",
                  id = "admin.customers.chrome.printServers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The [unique ID](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/{id}`",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printServers",
                  request = {
                    ["$ref"] = "PrintServer",
                  },
                  response = {
                    ["$ref"] = "PrintServer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                delete = {
                  description = "Deletes a print server.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printServers/{printServersId}",
                  httpMethod = "DELETE",
                  id = "admin.customers.chrome.printServers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the print server to be deleted. Format: `customers/{customer.id}/chrome/printServers/{print_server.id}`",
                      location = "path",
                      pattern = "^customers/[^/]+/chrome/printServers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                get = {
                  description = "Returns a print server's configuration.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printServers/{printServersId}",
                  httpMethod = "GET",
                  id = "admin.customers.chrome.printServers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The [unique ID](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/{id}`",
                      location = "path",
                      pattern = "^customers/[^/]+/chrome/printServers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+name}",
                  response = {
                    ["$ref"] = "PrintServer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                    "https://www.googleapis.com/auth/admin.chrome.printers.readonly",
                  },
                },
                list = {
                  description = "Lists print server configurations.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printServers",
                  httpMethod = "GET",
                  id = "admin.customers.chrome.printServers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Search query in [Common Expression Language syntax](https://github.com/google/cel-spec). Supported filters are `display_name`, `description`, and `uri`. Example: `printServer.displayName=='marketing-queue'`.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "Sort order for results. Supported values are `display_name`, `description`, or `create_time`. Default order is ascending, but descending order can be returned by appending \"desc\" to the `order_by` field. For instance, `orderBy=='description desc'` returns the print servers sorted by description in descending order.",
                      location = "query",
                      type = "string",
                    },
                    orgUnitId = {
                      description = "If `org_unit_id` is present in the request, only print servers owned or inherited by the organizational unit (OU) are returned. If the `PrintServer` resource's `org_unit_id` matches the one in the request, the OU owns the server. If `org_unit_id` is not specified in the request, all print servers are returned or filtered against.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of objects to return (default `100`, max `100`). The service might return fewer than this value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A generated token to paginate results (the `next_page_token` from a previous call).",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The [unique ID](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/{id}`",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printServers",
                  response = {
                    ["$ref"] = "ListPrintServersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                    "https://www.googleapis.com/auth/admin.chrome.printers.readonly",
                  },
                },
                patch = {
                  description = "Updates a print server's configuration.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printServers/{printServersId}",
                  httpMethod = "PATCH",
                  id = "admin.customers.chrome.printServers.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Immutable. Resource name of the print server. Leave empty when creating. Format: `customers/{customer.id}/printServers/{print_server.id}`",
                      location = "path",
                      pattern = "^customers/[^/]+/chrome/printServers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to update. Some fields are read-only and cannot be updated. Values for unspecified fields are patched.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+name}",
                  request = {
                    ["$ref"] = "PrintServer",
                  },
                  response = {
                    ["$ref"] = "PrintServer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
              },
            },
            printers = {
              methods = {
                batchCreatePrinters = {
                  description = "Creates printers under given Organization Unit.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers:batchCreatePrinters",
                  httpMethod = "POST",
                  id = "admin.customers.chrome.printers.batchCreatePrinters",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the customer. Format: customers/{customer_id}",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printers:batchCreatePrinters",
                  request = {
                    ["$ref"] = "BatchCreatePrintersRequest",
                  },
                  response = {
                    ["$ref"] = "BatchCreatePrintersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                batchDeletePrinters = {
                  description = "Deletes printers in batch.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers:batchDeletePrinters",
                  httpMethod = "POST",
                  id = "admin.customers.chrome.printers.batchDeletePrinters",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the customer. Format: customers/{customer_id}",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printers:batchDeletePrinters",
                  request = {
                    ["$ref"] = "BatchDeletePrintersRequest",
                  },
                  response = {
                    ["$ref"] = "BatchDeletePrintersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                create = {
                  description = "Creates a printer under given Organization Unit.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers",
                  httpMethod = "POST",
                  id = "admin.customers.chrome.printers.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the customer. Format: customers/{customer_id}",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printers",
                  request = {
                    ["$ref"] = "Printer",
                  },
                  response = {
                    ["$ref"] = "Printer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                delete = {
                  description = "Deletes a `Printer`.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers/{printersId}",
                  httpMethod = "DELETE",
                  id = "admin.customers.chrome.printers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the printer to be updated. Format: customers/{customer_id}/chrome/printers/{printer_id}",
                      location = "path",
                      pattern = "^customers/[^/]+/chrome/printers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
                get = {
                  description = "Returns a `Printer` resource (printer's config).",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers/{printersId}",
                  httpMethod = "GET",
                  id = "admin.customers.chrome.printers.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the printer to retrieve. Format: customers/{customer_id}/chrome/printers/{printer_id}",
                      location = "path",
                      pattern = "^customers/[^/]+/chrome/printers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+name}",
                  response = {
                    ["$ref"] = "Printer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                    "https://www.googleapis.com/auth/admin.chrome.printers.readonly",
                  },
                },
                list = {
                  description = "List printers configs.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers",
                  httpMethod = "GET",
                  id = "admin.customers.chrome.printers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Search query. Search syntax is shared between this api and Admin Console printers pages.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "The order to sort results by. Must be one of display_name, description, make_and_model, or create_time. Default order is ascending, but descending order can be returned by appending \"desc\" to the order_by field. For instance, \"description desc\" will return the printers sorted by description in descending order.",
                      location = "query",
                      type = "string",
                    },
                    orgUnitId = {
                      description = "Organization Unit that we want to list the printers for. When org_unit is not present in the request then all printers of the customer are returned (or filtered). When org_unit is present in the request then only printers available to this OU will be returned (owned or inherited). You may see if printer is owned or inherited for this OU by looking at Printer.org_unit_id.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of objects to return. The service may return fewer than this value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the customer who owns this collection of printers. Format: customers/{customer_id}",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printers",
                  response = {
                    ["$ref"] = "ListPrintersResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                    "https://www.googleapis.com/auth/admin.chrome.printers.readonly",
                  },
                },
                listPrinterModels = {
                  description = "Lists the supported printer models.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers:listPrinterModels",
                  httpMethod = "GET",
                  id = "admin.customers.chrome.printers.listPrinterModels",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "Filer to list only models by a given manufacturer in format: \"manufacturer:Brother\". Search syntax is shared between this api and Admin Console printers pages.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of objects to return. The service may return fewer than this value.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous call.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the customer who owns this collection of printers. Format: customers/{customer_id}",
                      location = "path",
                      pattern = "^customers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+parent}/chrome/printers:listPrinterModels",
                  response = {
                    ["$ref"] = "ListPrinterModelsResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                    "https://www.googleapis.com/auth/admin.chrome.printers.readonly",
                  },
                },
                patch = {
                  description = "Updates a `Printer` resource.",
                  flatPath = "admin/directory/v1/customers/{customersId}/chrome/printers/{printersId}",
                  httpMethod = "PATCH",
                  id = "admin.customers.chrome.printers.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    clearMask = {
                      description = "The list of fields to be cleared. Note, some of the fields are read only and cannot be updated. Values for not specified fields will be patched.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The resource name of the Printer object, in the format customers/{customer-id}/printers/{printer-id} (During printer creation leave empty)",
                      location = "path",
                      pattern = "^customers/[^/]+/chrome/printers/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated. Note, some of the fields are read only and cannot be updated. Values for not specified fields will be patched.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "admin/directory/v1/{+name}",
                  request = {
                    ["$ref"] = "Printer",
                  },
                  response = {
                    ["$ref"] = "Printer",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/admin.chrome.printers",
                  },
                },
              },
            },
          },
        },
      },
    },
    domainAliases = {
      methods = {
        delete = {
          description = "Deletes a domain Alias of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}",
          httpMethod = "DELETE",
          id = "directory.domainAliases.delete",
          parameterOrder = {
            "customer",
            "domainAliasName",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            domainAliasName = {
              description = "Name of domain alias to be retrieved.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
          },
        },
        get = {
          description = "Retrieves a domain alias of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}",
          httpMethod = "GET",
          id = "directory.domainAliases.get",
          parameterOrder = {
            "customer",
            "domainAliasName",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            domainAliasName = {
              description = "Name of domain alias to be retrieved.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domainaliases/{domainAliasName}",
          response = {
            ["$ref"] = "DomainAlias",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
            "https://www.googleapis.com/auth/admin.directory.domain.readonly",
          },
        },
        insert = {
          description = "Inserts a domain alias of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domainaliases",
          httpMethod = "POST",
          id = "directory.domainAliases.insert",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domainaliases",
          request = {
            ["$ref"] = "DomainAlias",
          },
          response = {
            ["$ref"] = "DomainAlias",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
          },
        },
        list = {
          description = "Lists the domain aliases of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domainaliases",
          httpMethod = "GET",
          id = "directory.domainAliases.list",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            parentDomainName = {
              description = "Name of the parent domain for which domain aliases are to be fetched.",
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domainaliases",
          response = {
            ["$ref"] = "DomainAliases",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
            "https://www.googleapis.com/auth/admin.directory.domain.readonly",
          },
        },
      },
    },
    domains = {
      methods = {
        delete = {
          description = "Deletes a domain of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domains/{domainName}",
          httpMethod = "DELETE",
          id = "directory.domains.delete",
          parameterOrder = {
            "customer",
            "domainName",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            domainName = {
              description = "Name of domain to be deleted",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domains/{domainName}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
          },
        },
        get = {
          description = "Retrieves a domain of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domains/{domainName}",
          httpMethod = "GET",
          id = "directory.domains.get",
          parameterOrder = {
            "customer",
            "domainName",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            domainName = {
              description = "Name of domain to be retrieved",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domains/{domainName}",
          response = {
            ["$ref"] = "Domains",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
            "https://www.googleapis.com/auth/admin.directory.domain.readonly",
          },
        },
        insert = {
          description = "Inserts a domain of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domains",
          httpMethod = "POST",
          id = "directory.domains.insert",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domains",
          request = {
            ["$ref"] = "Domains",
          },
          response = {
            ["$ref"] = "Domains",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
          },
        },
        list = {
          description = "Lists the domains of the customer.",
          flatPath = "admin/directory/v1/customer/{customer}/domains",
          httpMethod = "GET",
          id = "directory.domains.list",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/domains",
          response = {
            ["$ref"] = "Domains2",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.domain",
            "https://www.googleapis.com/auth/admin.directory.domain.readonly",
          },
        },
      },
    },
    groups = {
      methods = {
        delete = {
          description = "Deletes a group.",
          flatPath = "admin/directory/v1/groups/{groupKey}",
          httpMethod = "DELETE",
          id = "directory.groups.delete",
          parameterOrder = {
            "groupKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
          },
        },
        get = {
          description = "Retrieves a group's properties.",
          flatPath = "admin/directory/v1/groups/{groupKey}",
          httpMethod = "GET",
          id = "directory.groups.get",
          parameterOrder = {
            "groupKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}",
          response = {
            ["$ref"] = "Group",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.readonly",
          },
        },
        insert = {
          description = "Creates a group.",
          flatPath = "admin/directory/v1/groups",
          httpMethod = "POST",
          id = "directory.groups.insert",
          parameterOrder = {},
          parameters = {},
          path = "admin/directory/v1/groups",
          request = {
            ["$ref"] = "Group",
          },
          response = {
            ["$ref"] = "Group",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
          },
        },
        list = {
          description = "Retrieves all groups of a domain or of a user given a userKey (paginated).",
          flatPath = "admin/directory/v1/groups",
          httpMethod = "GET",
          id = "directory.groups.list",
          parameterOrder = {},
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "query",
              type = "string",
            },
            domain = {
              description = "The domain name. Use this field to get groups from only one domain. To return all domains for a customer account, use the `customer` query parameter instead.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "200",
              description = "Maximum number of results to return. Max allowed value is 200.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            orderBy = {
              description = "Column to use for sorting results",
              enum = {
                "email",
              },
              enumDescriptions = {
                "Email of the group.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token to specify next page in the list",
              location = "query",
              type = "string",
            },
            query = {
              description = "Query string search. Should be of the form \"\". Complete documentation is at https: //developers.google.com/admin-sdk/directory/v1/guides/search-groups",
              location = "query",
              type = "string",
            },
            sortOrder = {
              description = "Whether to return results in ascending or descending order. Only of use when orderBy is also used",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "Ascending order.",
                "Descending order.",
              },
              location = "query",
              type = "string",
            },
            userKey = {
              description = "Email or immutable ID of the user if only those groups are to be listed, the given user is a member of. If it's an ID, it should match with the ID of the user object.",
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/groups",
          response = {
            ["$ref"] = "Groups",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.readonly",
          },
        },
        patch = {
          description = "Updates a group's properties. This method supports [patch semantics](/admin-sdk/directory/v1/guides/performance#patch).",
          flatPath = "admin/directory/v1/groups/{groupKey}",
          httpMethod = "PATCH",
          id = "directory.groups.patch",
          parameterOrder = {
            "groupKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}",
          request = {
            ["$ref"] = "Group",
          },
          response = {
            ["$ref"] = "Group",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
          },
        },
        update = {
          description = "Updates a group's properties.",
          flatPath = "admin/directory/v1/groups/{groupKey}",
          httpMethod = "PUT",
          id = "directory.groups.update",
          parameterOrder = {
            "groupKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}",
          request = {
            ["$ref"] = "Group",
          },
          response = {
            ["$ref"] = "Group",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
          },
        },
      },
      resources = {
        aliases = {
          methods = {
            delete = {
              description = "Removes an alias.",
              flatPath = "admin/directory/v1/groups/{groupKey}/aliases/{alias}",
              httpMethod = "DELETE",
              id = "directory.groups.aliases.delete",
              parameterOrder = {
                "groupKey",
                "alias",
              },
              parameters = {
                alias = {
                  description = "The alias to be removed",
                  location = "path",
                  required = true,
                  type = "string",
                },
                groupKey = {
                  description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/groups/{groupKey}/aliases/{alias}",
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.group",
              },
            },
            insert = {
              description = "Adds an alias for the group.",
              flatPath = "admin/directory/v1/groups/{groupKey}/aliases",
              httpMethod = "POST",
              id = "directory.groups.aliases.insert",
              parameterOrder = {
                "groupKey",
              },
              parameters = {
                groupKey = {
                  description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/groups/{groupKey}/aliases",
              request = {
                ["$ref"] = "Alias",
              },
              response = {
                ["$ref"] = "Alias",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.group",
              },
            },
            list = {
              description = "Lists all aliases for a group.",
              flatPath = "admin/directory/v1/groups/{groupKey}/aliases",
              httpMethod = "GET",
              id = "directory.groups.aliases.list",
              parameterOrder = {
                "groupKey",
              },
              parameters = {
                groupKey = {
                  description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/groups/{groupKey}/aliases",
              response = {
                ["$ref"] = "Aliases",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.group",
                "https://www.googleapis.com/auth/admin.directory.group.readonly",
              },
            },
          },
        },
      },
    },
    members = {
      methods = {
        delete = {
          description = "Removes a member from a group.",
          flatPath = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          httpMethod = "DELETE",
          id = "directory.members.delete",
          parameterOrder = {
            "groupKey",
            "memberKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
            memberKey = {
              description = "Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.member",
          },
        },
        get = {
          description = "Retrieves a group member's properties.",
          flatPath = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          httpMethod = "GET",
          id = "directory.members.get",
          parameterOrder = {
            "groupKey",
            "memberKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
            memberKey = {
              description = "Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          response = {
            ["$ref"] = "Member",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.member",
            "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
            "https://www.googleapis.com/auth/admin.directory.group.readonly",
          },
        },
        hasMember = {
          description = "Checks whether the given user is a member of the group. Membership can be direct or nested, but if nested, the `memberKey` and `groupKey` must be entities in the same domain or an `Invalid input` error is returned. To check for nested memberships that include entities outside of the group's domain, use the [`checkTransitiveMembership()`](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships/checkTransitiveMembership) method in the Cloud Identity Groups API.",
          flatPath = "admin/directory/v1/groups/{groupKey}/hasMember/{memberKey}",
          httpMethod = "GET",
          id = "directory.members.hasMember",
          parameterOrder = {
            "groupKey",
            "memberKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
            memberKey = {
              description = "Identifies the user member in the API request. The value can be the user's primary email address, alias, or unique ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}/hasMember/{memberKey}",
          response = {
            ["$ref"] = "MembersHasMember",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.member",
            "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
            "https://www.googleapis.com/auth/admin.directory.group.readonly",
          },
        },
        insert = {
          description = "Adds a user to the specified group.",
          flatPath = "admin/directory/v1/groups/{groupKey}/members",
          httpMethod = "POST",
          id = "directory.members.insert",
          parameterOrder = {
            "groupKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}/members",
          request = {
            ["$ref"] = "Member",
          },
          response = {
            ["$ref"] = "Member",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.member",
          },
        },
        list = {
          description = "Retrieves a paginated list of all members in a group. This method times out after 60 minutes. For more information, see [Troubleshoot error codes](https://developers.google.com/admin-sdk/directory/v1/guides/troubleshoot-error-codes).",
          flatPath = "admin/directory/v1/groups/{groupKey}/members",
          httpMethod = "GET",
          id = "directory.members.list",
          parameterOrder = {
            "groupKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDerivedMembership = {
              description = "Whether to list indirect memberships. Default: false.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "200",
              description = "Maximum number of results to return. Max allowed value is 200.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token to specify next page in the list.",
              location = "query",
              type = "string",
            },
            roles = {
              description = "The `roles` query parameter allows you to retrieve group members by role. Allowed values are `OWNER`, `MANAGER`, and `MEMBER`.",
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}/members",
          response = {
            ["$ref"] = "Members",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.member",
            "https://www.googleapis.com/auth/admin.directory.group.member.readonly",
            "https://www.googleapis.com/auth/admin.directory.group.readonly",
          },
        },
        patch = {
          description = "Updates the membership properties of a user in the specified group. This method supports [patch semantics](/admin-sdk/directory/v1/guides/performance#patch).",
          flatPath = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          httpMethod = "PATCH",
          id = "directory.members.patch",
          parameterOrder = {
            "groupKey",
            "memberKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
            memberKey = {
              description = "Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          request = {
            ["$ref"] = "Member",
          },
          response = {
            ["$ref"] = "Member",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.member",
          },
        },
        update = {
          description = "Updates the membership of a user in the specified group.",
          flatPath = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          httpMethod = "PUT",
          id = "directory.members.update",
          parameterOrder = {
            "groupKey",
            "memberKey",
          },
          parameters = {
            groupKey = {
              description = "Identifies the group in the API request. The value can be the group's email address, group alias, or the unique group ID.",
              location = "path",
              required = true,
              type = "string",
            },
            memberKey = {
              description = "Identifies the group member in the API request. A group member can be a user or another group. The value can be the member's (group or user) primary email address, alias, or unique ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/groups/{groupKey}/members/{memberKey}",
          request = {
            ["$ref"] = "Member",
          },
          response = {
            ["$ref"] = "Member",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.group",
            "https://www.googleapis.com/auth/admin.directory.group.member",
          },
        },
      },
    },
    mobiledevices = {
      methods = {
        action = {
          description = "Takes an action that affects a mobile device. For example, remotely wiping a device.",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}/action",
          httpMethod = "POST",
          id = "directory.mobiledevices.action",
          parameterOrder = {
            "customerId",
            "resourceId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            resourceId = {
              description = "The unique ID the API service uses to identify the mobile device.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}/action",
          request = {
            ["$ref"] = "MobileDeviceAction",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.mobile",
            "https://www.googleapis.com/auth/admin.directory.device.mobile.action",
          },
        },
        delete = {
          description = "Removes a mobile device.",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}",
          httpMethod = "DELETE",
          id = "directory.mobiledevices.delete",
          parameterOrder = {
            "customerId",
            "resourceId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            resourceId = {
              description = "The unique ID the API service uses to identify the mobile device.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.mobile",
          },
        },
        get = {
          description = "Retrieves a mobile device's properties.",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}",
          httpMethod = "GET",
          id = "directory.mobiledevices.get",
          parameterOrder = {
            "customerId",
            "resourceId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Includes only the basic metadata fields (e.g., deviceId, model, status, type, and status)",
                "Includes all metadata fields",
              },
              location = "query",
              type = "string",
            },
            resourceId = {
              description = "The unique ID the API service uses to identify the mobile device.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/mobile/{resourceId}",
          response = {
            ["$ref"] = "MobileDevice",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.mobile",
            "https://www.googleapis.com/auth/admin.directory.device.mobile.action",
            "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly",
          },
        },
        list = {
          description = "Retrieves a paginated list of all user-owned mobile devices for an account. To retrieve a list that includes company-owned devices, use the Cloud Identity [Devices API](https://cloud.google.com/identity/docs/concepts/overview-devices) instead. This method times out after 60 minutes. For more information, see [Troubleshoot error codes](https://developers.google.com/admin-sdk/directory/v1/guides/troubleshoot-error-codes).",
          flatPath = "admin/directory/v1/customer/{customerId}/devices/mobile",
          httpMethod = "GET",
          id = "directory.mobiledevices.list",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "100",
              description = "Maximum number of results to return. Max allowed value is 100.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            orderBy = {
              description = "Device property to use for sorting results.",
              enum = {
                "deviceId",
                "email",
                "lastSync",
                "model",
                "name",
                "os",
                "status",
                "type",
              },
              enumDescriptions = {
                "The serial number for a Google Sync mobile device. For Android devices, this is a software generated unique identifier.",
                "The device owner's email address.",
                "Last policy settings sync date time of the device.",
                "The mobile device's model.",
                "The device owner's user name.",
                "The device's operating system.",
                "The device status.",
                "Type of the device.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token to specify next page in the list",
              location = "query",
              type = "string",
            },
            projection = {
              description = "Restrict information returned to a set of selected fields.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Includes only the basic metadata fields (e.g., deviceId, model, status, type, and status)",
                "Includes all metadata fields",
              },
              location = "query",
              type = "string",
            },
            query = {
              description = "Search string in the format given at https://developers.google.com/admin-sdk/directory/v1/search-operators",
              location = "query",
              type = "string",
            },
            sortOrder = {
              description = "Whether to return results in ascending or descending order. Must be used with the `orderBy` parameter.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "Ascending order.",
                "Descending order.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/devices/mobile",
          response = {
            ["$ref"] = "MobileDevices",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.device.mobile",
            "https://www.googleapis.com/auth/admin.directory.device.mobile.action",
            "https://www.googleapis.com/auth/admin.directory.device.mobile.readonly",
          },
        },
      },
    },
    orgunits = {
      methods = {
        delete = {
          description = "Removes an organizational unit.",
          flatPath = "admin/directory/v1/customer/{customerId}/orgunits/{orgunitsId}",
          httpMethod = "DELETE",
          id = "directory.orgunits.delete",
          parameterOrder = {
            "customerId",
            "orgUnitPath",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            orgUnitPath = {
              description = "The full path of the organizational unit (minus the leading `/`) or its unique ID.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.orgunit",
          },
        },
        get = {
          description = "Retrieves an organizational unit.",
          flatPath = "admin/directory/v1/customer/{customerId}/orgunits/{orgunitsId}",
          httpMethod = "GET",
          id = "directory.orgunits.get",
          parameterOrder = {
            "customerId",
            "orgUnitPath",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            orgUnitPath = {
              description = "The full path of the organizational unit (minus the leading `/`) or its unique ID.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}",
          response = {
            ["$ref"] = "OrgUnit",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.orgunit",
            "https://www.googleapis.com/auth/admin.directory.orgunit.readonly",
          },
        },
        insert = {
          description = "Adds an organizational unit.",
          flatPath = "admin/directory/v1/customer/{customerId}/orgunits",
          httpMethod = "POST",
          id = "directory.orgunits.insert",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/orgunits",
          request = {
            ["$ref"] = "OrgUnit",
          },
          response = {
            ["$ref"] = "OrgUnit",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.orgunit",
          },
        },
        list = {
          description = "Retrieves a list of all organizational units for an account.",
          flatPath = "admin/directory/v1/customer/{customerId}/orgunits",
          httpMethod = "GET",
          id = "directory.orgunits.list",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            orgUnitPath = {
              default = "",
              description = "The full path to the organizational unit or its unique ID. Returns the children of the specified organizational unit.",
              location = "query",
              type = "string",
            },
            type = {
              description = "Whether to return all sub-organizations or just immediate children.",
              enum = {
                "all",
                "children",
              },
              enumDescriptions = {
                "All sub-organizational units.",
                "Immediate children only (default).",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/orgunits",
          response = {
            ["$ref"] = "OrgUnits",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.orgunit",
            "https://www.googleapis.com/auth/admin.directory.orgunit.readonly",
          },
        },
        patch = {
          description = "Updates an organizational unit. This method supports [patch semantics](/admin-sdk/directory/v1/guides/performance#patch)",
          flatPath = "admin/directory/v1/customer/{customerId}/orgunits/{orgunitsId}",
          httpMethod = "PATCH",
          id = "directory.orgunits.patch",
          parameterOrder = {
            "customerId",
            "orgUnitPath",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            orgUnitPath = {
              description = "The full path of the organizational unit (minus the leading `/`) or its unique ID.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}",
          request = {
            ["$ref"] = "OrgUnit",
          },
          response = {
            ["$ref"] = "OrgUnit",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.orgunit",
          },
        },
        update = {
          description = "Updates an organizational unit.",
          flatPath = "admin/directory/v1/customer/{customerId}/orgunits/{orgunitsId}",
          httpMethod = "PUT",
          id = "directory.orgunits.update",
          parameterOrder = {
            "customerId",
            "orgUnitPath",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users resource](/admin-sdk/directory/v1/reference/users).",
              location = "path",
              required = true,
              type = "string",
            },
            orgUnitPath = {
              description = "The full path of the organizational unit (minus the leading `/`) or its unique ID.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/orgunits/{+orgUnitPath}",
          request = {
            ["$ref"] = "OrgUnit",
          },
          response = {
            ["$ref"] = "OrgUnit",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.orgunit",
          },
        },
      },
    },
    privileges = {
      methods = {
        list = {
          description = "Retrieves a paginated list of all privileges for a customer.",
          flatPath = "admin/directory/v1/customer/{customer}/roles/ALL/privileges",
          httpMethod = "GET",
          id = "directory.privileges.list",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roles/ALL/privileges",
          response = {
            ["$ref"] = "Privileges",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
            "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly",
          },
        },
      },
    },
    resources = {
      resources = {
        buildings = {
          methods = {
            delete = {
              description = "Deletes a building.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              httpMethod = "DELETE",
              id = "directory.resources.buildings.delete",
              parameterOrder = {
                "customer",
                "buildingId",
              },
              parameters = {
                buildingId = {
                  description = "The id of the building to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            get = {
              description = "Retrieves a building.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              httpMethod = "GET",
              id = "directory.resources.buildings.get",
              parameterOrder = {
                "customer",
                "buildingId",
              },
              parameters = {
                buildingId = {
                  description = "The unique ID of the building to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              response = {
                ["$ref"] = "Building",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
                "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly",
              },
            },
            insert = {
              description = "Inserts a building.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/buildings",
              httpMethod = "POST",
              id = "directory.resources.buildings.insert",
              parameterOrder = {
                "customer",
              },
              parameters = {
                coordinatesSource = {
                  default = "SOURCE_UNSPECIFIED",
                  description = "Source from which Building.coordinates are derived.",
                  enum = {
                    "CLIENT_SPECIFIED",
                    "RESOLVED_FROM_ADDRESS",
                    "SOURCE_UNSPECIFIED",
                  },
                  enumDescriptions = {
                    "Building.coordinates are set to the coordinates included in the request.",
                    "Building.coordinates are automatically populated based on the postal address.",
                    "Defaults to `RESOLVED_FROM_ADDRESS` if postal address is provided. Otherwise, defaults to `CLIENT_SPECIFIED` if coordinates are provided.",
                  },
                  location = "query",
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/buildings",
              request = {
                ["$ref"] = "Building",
              },
              response = {
                ["$ref"] = "Building",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            list = {
              description = "Retrieves a list of buildings for an account.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/buildings",
              httpMethod = "GET",
              id = "directory.resources.buildings.list",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return.",
                  format = "int32",
                  location = "query",
                  maximum = "500",
                  minimum = "1",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to specify the next page in the list.",
                  location = "query",
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/buildings",
              response = {
                ["$ref"] = "Buildings",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
                "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly",
              },
            },
            patch = {
              description = "Patches a building.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              httpMethod = "PATCH",
              id = "directory.resources.buildings.patch",
              parameterOrder = {
                "customer",
                "buildingId",
              },
              parameters = {
                buildingId = {
                  description = "The id of the building to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                coordinatesSource = {
                  default = "SOURCE_UNSPECIFIED",
                  description = "Source from which Building.coordinates are derived.",
                  enum = {
                    "CLIENT_SPECIFIED",
                    "RESOLVED_FROM_ADDRESS",
                    "SOURCE_UNSPECIFIED",
                  },
                  enumDescriptions = {
                    "Building.coordinates are set to the coordinates included in the request.",
                    "Building.coordinates are automatically populated based on the postal address.",
                    "Defaults to `RESOLVED_FROM_ADDRESS` if postal address is provided. Otherwise, defaults to `CLIENT_SPECIFIED` if coordinates are provided.",
                  },
                  location = "query",
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              request = {
                ["$ref"] = "Building",
              },
              response = {
                ["$ref"] = "Building",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            update = {
              description = "Updates a building.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              httpMethod = "PUT",
              id = "directory.resources.buildings.update",
              parameterOrder = {
                "customer",
                "buildingId",
              },
              parameters = {
                buildingId = {
                  description = "The id of the building to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                coordinatesSource = {
                  default = "SOURCE_UNSPECIFIED",
                  description = "Source from which Building.coordinates are derived.",
                  enum = {
                    "CLIENT_SPECIFIED",
                    "RESOLVED_FROM_ADDRESS",
                    "SOURCE_UNSPECIFIED",
                  },
                  enumDescriptions = {
                    "Building.coordinates are set to the coordinates included in the request.",
                    "Building.coordinates are automatically populated based on the postal address.",
                    "Defaults to `RESOLVED_FROM_ADDRESS` if postal address is provided. Otherwise, defaults to `CLIENT_SPECIFIED` if coordinates are provided.",
                  },
                  location = "query",
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/buildings/{buildingId}",
              request = {
                ["$ref"] = "Building",
              },
              response = {
                ["$ref"] = "Building",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
          },
        },
        calendars = {
          methods = {
            delete = {
              description = "Deletes a calendar resource.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              httpMethod = "DELETE",
              id = "directory.resources.calendars.delete",
              parameterOrder = {
                "customer",
                "calendarResourceId",
              },
              parameters = {
                calendarResourceId = {
                  description = "The unique ID of the calendar resource to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            get = {
              description = "Retrieves a calendar resource.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              httpMethod = "GET",
              id = "directory.resources.calendars.get",
              parameterOrder = {
                "customer",
                "calendarResourceId",
              },
              parameters = {
                calendarResourceId = {
                  description = "The unique ID of the calendar resource to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              response = {
                ["$ref"] = "CalendarResource",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
                "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly",
              },
            },
            insert = {
              description = "Inserts a calendar resource.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/calendars",
              httpMethod = "POST",
              id = "directory.resources.calendars.insert",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/calendars",
              request = {
                ["$ref"] = "CalendarResource",
              },
              response = {
                ["$ref"] = "CalendarResource",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            list = {
              description = "Retrieves a list of calendar resources for an account.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/calendars",
              httpMethod = "GET",
              id = "directory.resources.calendars.list",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return.",
                  format = "int32",
                  location = "query",
                  maximum = "500",
                  minimum = "1",
                  type = "integer",
                },
                orderBy = {
                  description = "Field(s) to sort results by in either ascending or descending order. Supported fields include `resourceId`, `resourceName`, `capacity`, `buildingId`, and `floorName`. If no order is specified, defaults to ascending. Should be of the form \"field [asc|desc], field [asc|desc], ...\". For example `buildingId, capacity desc` would return results sorted first by `buildingId` in ascending order then by `capacity` in descending order.",
                  location = "query",
                  type = "string",
                },
                pageToken = {
                  description = "Token to specify the next page in the list.",
                  location = "query",
                  type = "string",
                },
                query = {
                  description = "String query used to filter results. Should be of the form \"field operator value\" where field can be any of supported fields and operators can be any of supported operations. Operators include '=' for exact match, '!=' for mismatch and ':' for prefix match or HAS match where applicable. For prefix match, the value should always be followed by a *. Logical operators NOT and AND are supported (in this order of precedence). Supported fields include `generatedResourceName`, `name`, `buildingId`, `floor_name`, `capacity`, `featureInstances.feature.name`, `resourceEmail`, `resourceCategory`. For example `buildingId=US-NYC-9TH AND featureInstances.feature.name:Phone`.",
                  location = "query",
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/calendars",
              response = {
                ["$ref"] = "CalendarResources",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
                "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly",
              },
            },
            patch = {
              description = "Patches a calendar resource.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              httpMethod = "PATCH",
              id = "directory.resources.calendars.patch",
              parameterOrder = {
                "customer",
                "calendarResourceId",
              },
              parameters = {
                calendarResourceId = {
                  description = "The unique ID of the calendar resource to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              request = {
                ["$ref"] = "CalendarResource",
              },
              response = {
                ["$ref"] = "CalendarResource",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            update = {
              description = "Updates a calendar resource. This method supports patch semantics, meaning you only need to include the fields you wish to update. Fields that are not present in the request will be preserved.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              httpMethod = "PUT",
              id = "directory.resources.calendars.update",
              parameterOrder = {
                "customer",
                "calendarResourceId",
              },
              parameters = {
                calendarResourceId = {
                  description = "The unique ID of the calendar resource to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/calendars/{calendarResourceId}",
              request = {
                ["$ref"] = "CalendarResource",
              },
              response = {
                ["$ref"] = "CalendarResource",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
          },
        },
        features = {
          methods = {
            delete = {
              description = "Deletes a feature.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              httpMethod = "DELETE",
              id = "directory.resources.features.delete",
              parameterOrder = {
                "customer",
                "featureKey",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                featureKey = {
                  description = "The unique ID of the feature to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            get = {
              description = "Retrieves a feature.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              httpMethod = "GET",
              id = "directory.resources.features.get",
              parameterOrder = {
                "customer",
                "featureKey",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                featureKey = {
                  description = "The unique ID of the feature to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              response = {
                ["$ref"] = "Feature",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
                "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly",
              },
            },
            insert = {
              description = "Inserts a feature.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/features",
              httpMethod = "POST",
              id = "directory.resources.features.insert",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/features",
              request = {
                ["$ref"] = "Feature",
              },
              response = {
                ["$ref"] = "Feature",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            list = {
              description = "Retrieves a list of features for an account.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/features",
              httpMethod = "GET",
              id = "directory.resources.features.list",
              parameterOrder = {
                "customer",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                maxResults = {
                  description = "Maximum number of results to return.",
                  format = "int32",
                  location = "query",
                  maximum = "500",
                  minimum = "1",
                  type = "integer",
                },
                pageToken = {
                  description = "Token to specify the next page in the list.",
                  location = "query",
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/features",
              response = {
                ["$ref"] = "Features",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
                "https://www.googleapis.com/auth/admin.directory.resource.calendar.readonly",
              },
            },
            patch = {
              description = "Patches a feature.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              httpMethod = "PATCH",
              id = "directory.resources.features.patch",
              parameterOrder = {
                "customer",
                "featureKey",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                featureKey = {
                  description = "The unique ID of the feature to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              request = {
                ["$ref"] = "Feature",
              },
              response = {
                ["$ref"] = "Feature",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            rename = {
              description = "Renames a feature.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/features/{oldName}/rename",
              httpMethod = "POST",
              id = "directory.resources.features.rename",
              parameterOrder = {
                "customer",
                "oldName",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                oldName = {
                  description = "The unique ID of the feature to rename.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/features/{oldName}/rename",
              request = {
                ["$ref"] = "FeatureRename",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
            update = {
              description = "Updates a feature.",
              flatPath = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              httpMethod = "PUT",
              id = "directory.resources.features.update",
              parameterOrder = {
                "customer",
                "featureKey",
              },
              parameters = {
                customer = {
                  description = "The unique ID for the customer's Google Workspace account. As an account administrator, you can also use the `my_customer` alias to represent your account's customer ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                featureKey = {
                  description = "The unique ID of the feature to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/customer/{customer}/resources/features/{featureKey}",
              request = {
                ["$ref"] = "Feature",
              },
              response = {
                ["$ref"] = "Feature",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.resource.calendar",
              },
            },
          },
        },
      },
    },
    roleAssignments = {
      methods = {
        delete = {
          description = "Deletes a role assignment.",
          flatPath = "admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}",
          httpMethod = "DELETE",
          id = "directory.roleAssignments.delete",
          parameterOrder = {
            "customer",
            "roleAssignmentId",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            roleAssignmentId = {
              description = "Immutable ID of the role assignment.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
          },
        },
        get = {
          description = "Retrieves a role assignment.",
          flatPath = "admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}",
          httpMethod = "GET",
          id = "directory.roleAssignments.get",
          parameterOrder = {
            "customer",
            "roleAssignmentId",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            roleAssignmentId = {
              description = "Immutable ID of the role assignment.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roleassignments/{roleAssignmentId}",
          response = {
            ["$ref"] = "RoleAssignment",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
            "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly",
          },
        },
        insert = {
          description = "Creates a role assignment.",
          flatPath = "admin/directory/v1/customer/{customer}/roleassignments",
          httpMethod = "POST",
          id = "directory.roleAssignments.insert",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roleassignments",
          request = {
            ["$ref"] = "RoleAssignment",
          },
          response = {
            ["$ref"] = "RoleAssignment",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
          },
        },
        list = {
          description = "Retrieves a paginated list of all roleAssignments.",
          flatPath = "admin/directory/v1/customer/{customer}/roleassignments",
          httpMethod = "GET",
          id = "directory.roleAssignments.list",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "200",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token to specify the next page in the list.",
              location = "query",
              type = "string",
            },
            roleId = {
              description = "Immutable ID of a role. If included in the request, returns only role assignments containing this role ID.",
              location = "query",
              type = "string",
            },
            userKey = {
              description = "The user's primary email address, alias email address, or unique user ID. If included in the request, returns role assignments only for this user.",
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roleassignments",
          response = {
            ["$ref"] = "RoleAssignments",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
            "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly",
          },
        },
      },
    },
    roles = {
      methods = {
        delete = {
          description = "Deletes a role.",
          flatPath = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          httpMethod = "DELETE",
          id = "directory.roles.delete",
          parameterOrder = {
            "customer",
            "roleId",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            roleId = {
              description = "Immutable ID of the role.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
          },
        },
        get = {
          description = "Retrieves a role.",
          flatPath = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          httpMethod = "GET",
          id = "directory.roles.get",
          parameterOrder = {
            "customer",
            "roleId",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            roleId = {
              description = "Immutable ID of the role.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          response = {
            ["$ref"] = "Role",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
            "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly",
          },
        },
        insert = {
          description = "Creates a role.",
          flatPath = "admin/directory/v1/customer/{customer}/roles",
          httpMethod = "POST",
          id = "directory.roles.insert",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roles",
          request = {
            ["$ref"] = "Role",
          },
          response = {
            ["$ref"] = "Role",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
          },
        },
        list = {
          description = "Retrieves a paginated list of all the roles in a domain.",
          flatPath = "admin/directory/v1/customer/{customer}/roles",
          httpMethod = "GET",
          id = "directory.roles.list",
          parameterOrder = {
            "customer",
          },
          parameters = {
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token to specify the next page in the list.",
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roles",
          response = {
            ["$ref"] = "Roles",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
            "https://www.googleapis.com/auth/admin.directory.rolemanagement.readonly",
          },
        },
        patch = {
          description = "Patches a role.",
          flatPath = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          httpMethod = "PATCH",
          id = "directory.roles.patch",
          parameterOrder = {
            "customer",
            "roleId",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            roleId = {
              description = "Immutable ID of the role.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          request = {
            ["$ref"] = "Role",
          },
          response = {
            ["$ref"] = "Role",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
          },
        },
        update = {
          description = "Updates a role.",
          flatPath = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          httpMethod = "PUT",
          id = "directory.roles.update",
          parameterOrder = {
            "customer",
            "roleId",
          },
          parameters = {
            customer = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            roleId = {
              description = "Immutable ID of the role.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customer}/roles/{roleId}",
          request = {
            ["$ref"] = "Role",
          },
          response = {
            ["$ref"] = "Role",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.rolemanagement",
          },
        },
      },
    },
    schemas = {
      methods = {
        delete = {
          description = "Deletes a schema.",
          flatPath = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          httpMethod = "DELETE",
          id = "directory.schemas.delete",
          parameterOrder = {
            "customerId",
            "schemaKey",
          },
          parameters = {
            customerId = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            schemaKey = {
              description = "Name or immutable ID of the schema.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.userschema",
          },
        },
        get = {
          description = "Retrieves a schema.",
          flatPath = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          httpMethod = "GET",
          id = "directory.schemas.get",
          parameterOrder = {
            "customerId",
            "schemaKey",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
            schemaKey = {
              description = "Name or immutable ID of the schema.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          response = {
            ["$ref"] = "Schema",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.userschema",
            "https://www.googleapis.com/auth/admin.directory.userschema.readonly",
          },
        },
        insert = {
          description = "Creates a schema.",
          flatPath = "admin/directory/v1/customer/{customerId}/schemas",
          httpMethod = "POST",
          id = "directory.schemas.insert",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/schemas",
          request = {
            ["$ref"] = "Schema",
          },
          response = {
            ["$ref"] = "Schema",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.userschema",
          },
        },
        list = {
          description = "Retrieves all schemas for a customer.",
          flatPath = "admin/directory/v1/customer/{customerId}/schemas",
          httpMethod = "GET",
          id = "directory.schemas.list",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/schemas",
          response = {
            ["$ref"] = "Schemas",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.userschema",
            "https://www.googleapis.com/auth/admin.directory.userschema.readonly",
          },
        },
        patch = {
          description = "Patches a schema.",
          flatPath = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          httpMethod = "PATCH",
          id = "directory.schemas.patch",
          parameterOrder = {
            "customerId",
            "schemaKey",
          },
          parameters = {
            customerId = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            schemaKey = {
              description = "Name or immutable ID of the schema.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          request = {
            ["$ref"] = "Schema",
          },
          response = {
            ["$ref"] = "Schema",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.userschema",
          },
        },
        update = {
          description = "Updates a schema.",
          flatPath = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          httpMethod = "PUT",
          id = "directory.schemas.update",
          parameterOrder = {
            "customerId",
            "schemaKey",
          },
          parameters = {
            customerId = {
              description = "Immutable ID of the Google Workspace account.",
              location = "path",
              required = true,
              type = "string",
            },
            schemaKey = {
              description = "Name or immutable ID of the schema.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/customer/{customerId}/schemas/{schemaKey}",
          request = {
            ["$ref"] = "Schema",
          },
          response = {
            ["$ref"] = "Schema",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.userschema",
          },
        },
      },
    },
    tokens = {
      methods = {
        delete = {
          description = "Deletes all access tokens issued by a user for an application.",
          flatPath = "admin/directory/v1/users/{userKey}/tokens/{clientId}",
          httpMethod = "DELETE",
          id = "directory.tokens.delete",
          parameterOrder = {
            "userKey",
            "clientId",
          },
          parameters = {
            clientId = {
              description = "The Client ID of the application the token is issued to.",
              location = "path",
              required = true,
              type = "string",
            },
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/tokens/{clientId}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
        get = {
          description = "Gets information about an access token issued by a user.",
          flatPath = "admin/directory/v1/users/{userKey}/tokens/{clientId}",
          httpMethod = "GET",
          id = "directory.tokens.get",
          parameterOrder = {
            "userKey",
            "clientId",
          },
          parameters = {
            clientId = {
              description = "The Client ID of the application the token is issued to.",
              location = "path",
              required = true,
              type = "string",
            },
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/tokens/{clientId}",
          response = {
            ["$ref"] = "Token",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
        list = {
          description = "Returns the set of tokens specified user has issued to 3rd party applications.",
          flatPath = "admin/directory/v1/users/{userKey}/tokens",
          httpMethod = "GET",
          id = "directory.tokens.list",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/tokens",
          response = {
            ["$ref"] = "Tokens",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
      },
    },
    twoStepVerification = {
      methods = {
        turnOff = {
          description = "Turns off 2-Step Verification for user.",
          flatPath = "admin/directory/v1/users/{userKey}/twoStepVerification/turnOff",
          httpMethod = "POST",
          id = "directory.twoStepVerification.turnOff",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/twoStepVerification/turnOff",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
      },
    },
    users = {
      methods = {
        delete = {
          description = "Deletes a user.",
          flatPath = "admin/directory/v1/users/{userKey}",
          httpMethod = "DELETE",
          id = "directory.users.delete",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
          },
        },
        get = {
          description = "Retrieves a user.",
          flatPath = "admin/directory/v1/users/{userKey}",
          httpMethod = "GET",
          id = "directory.users.get",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            customFieldMask = {
              description = "A comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when `projection=custom`.",
              location = "query",
              type = "string",
            },
            projection = {
              default = "basic",
              description = "What subset of fields to fetch for this user.",
              enum = {
                "basic",
                "custom",
                "full",
              },
              enumDescriptions = {
                "Do not include any custom fields for the user.",
                "Include custom fields from schemas requested in `customFieldMask`.",
                "Include all fields associated with this user.",
              },
              location = "query",
              type = "string",
            },
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
            viewType = {
              default = "admin_view",
              description = "Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see [Retrieve a user as a non-administrator](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin).",
              enum = {
                "admin_view",
                "domain_public",
              },
              enumDescriptions = {
                "Results include both administrator-only and domain-public fields for the user.",
                "Results only include fields for the user that are publicly visible to other users in the domain.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}",
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
            "https://www.googleapis.com/auth/admin.directory.user.readonly",
          },
        },
        insert = {
          description = "Creates a user.",
          flatPath = "admin/directory/v1/users",
          httpMethod = "POST",
          id = "directory.users.insert",
          parameterOrder = {},
          parameters = {},
          path = "admin/directory/v1/users",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
          },
        },
        list = {
          description = "Retrieves a paginated list of either deleted users or all users in a domain.",
          flatPath = "admin/directory/v1/users",
          httpMethod = "GET",
          id = "directory.users.list",
          parameterOrder = {},
          parameters = {
            customFieldMask = {
              description = "A comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when `projection=custom`.",
              location = "query",
              type = "string",
            },
            customer = {
              description = "The unique ID for the customer's Google Workspace account. In case of a multi-domain account, to fetch all groups for a customer, use this field instead of `domain`. You can also use the `my_customer` alias to represent your account's `customerId`. The `customerId` is also returned as part of the [Users](/admin-sdk/directory/v1/reference/users) resource. You must provide either the `customer` or the `domain` parameter.",
              location = "query",
              type = "string",
            },
            domain = {
              description = "The domain name. Use this field to get groups from only one domain. To return all domains for a customer account, use the `customer` query parameter instead. Either the `customer` or the `domain` parameter must be provided.",
              location = "query",
              type = "string",
            },
            event = {
              description = "Event on which subscription is intended (if subscribing)",
              enum = {
                "add",
                "delete",
                "makeAdmin",
                "undelete",
                "update",
              },
              enumDescriptions = {
                "User Created Event",
                "User Deleted Event",
                "User Admin Status Change Event",
                "User Undeleted Event",
                "User Updated Event",
              },
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "100",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "500",
              minimum = "1",
              type = "integer",
            },
            orderBy = {
              description = "Property to use for sorting results.",
              enum = {
                "email",
                "familyName",
                "givenName",
              },
              enumDescriptions = {
                "Primary email of the user.",
                "User's family name.",
                "User's given name.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token to specify next page in the list",
              location = "query",
              type = "string",
            },
            projection = {
              default = "basic",
              description = "What subset of fields to fetch for this user.",
              enum = {
                "basic",
                "custom",
                "full",
              },
              enumDescriptions = {
                "Do not include any custom fields for the user.",
                "Include custom fields from schemas requested in `customFieldMask`.",
                "Include all fields associated with this user.",
              },
              location = "query",
              type = "string",
            },
            query = {
              description = "Query string for searching user fields. For more information on constructing user queries, see [Search for Users](/admin-sdk/directory/v1/guides/search-users).",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "If set to `true`, retrieves the list of deleted users. (Default: `false`)",
              location = "query",
              type = "string",
            },
            sortOrder = {
              description = "Whether to return results in ascending or descending order, ignoring case.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "Ascending order.",
                "Descending order.",
              },
              location = "query",
              type = "string",
            },
            viewType = {
              default = "admin_view",
              description = "Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see [Retrieve a user as a non-administrator](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin).",
              enum = {
                "admin_view",
                "domain_public",
              },
              enumDescriptions = {
                "Results include both administrator-only and domain-public fields for the user.",
                "Results only include fields for the user that are publicly visible to other users in the domain.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/users",
          response = {
            ["$ref"] = "Users",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
            "https://www.googleapis.com/auth/admin.directory.user.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        makeAdmin = {
          description = "Makes a user a super administrator.",
          flatPath = "admin/directory/v1/users/{userKey}/makeAdmin",
          httpMethod = "POST",
          id = "directory.users.makeAdmin",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/makeAdmin",
          request = {
            ["$ref"] = "UserMakeAdmin",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
          },
        },
        patch = {
          description = "Updates a user using patch semantics. The update method should be used instead, since it also supports patch semantics and has better performance. This method is unable to clear fields that contain repeated objects (`addresses`, `phones`, etc). Use the update method instead.",
          flatPath = "admin/directory/v1/users/{userKey}",
          httpMethod = "PATCH",
          id = "directory.users.patch",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
          },
        },
        signOut = {
          description = "Signs a user out of all web and device sessions and reset their sign-in cookies. User will have to sign in by authenticating again.",
          flatPath = "admin/directory/v1/users/{userKey}/signOut",
          httpMethod = "POST",
          id = "directory.users.signOut",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the target user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/signOut",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
        undelete = {
          description = "Undeletes a deleted user.",
          flatPath = "admin/directory/v1/users/{userKey}/undelete",
          httpMethod = "POST",
          id = "directory.users.undelete",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "The immutable id of the user",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/undelete",
          request = {
            ["$ref"] = "UserUndelete",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
          },
        },
        update = {
          description = "Updates a user. This method supports patch semantics, meaning that you only need to include the fields you wish to update. Fields that are not present in the request will be preserved, and fields set to `null` will be cleared. For repeating fields that contain arrays, individual items in the array can't be patched piecemeal; they must be supplied in the request body with the desired values for all items. See the [user accounts guide](https://developers.google.com/admin-sdk/directory/v1/guides/manage-users#update_user) for more information.",
          flatPath = "admin/directory/v1/users/{userKey}",
          httpMethod = "PUT",
          id = "directory.users.update",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
          },
        },
        watch = {
          description = "Watches for changes in users list.",
          flatPath = "admin/directory/v1/users/watch",
          httpMethod = "POST",
          id = "directory.users.watch",
          parameterOrder = {},
          parameters = {
            customFieldMask = {
              description = "Comma-separated list of schema names. All fields from these schemas are fetched. This should only be set when projection=custom.",
              location = "query",
              type = "string",
            },
            customer = {
              description = "Immutable ID of the Google Workspace account. In case of multi-domain, to fetch all users for a customer, fill this field instead of domain.",
              location = "query",
              type = "string",
            },
            domain = {
              description = "Name of the domain. Fill this field to get users from only this domain. To return all users in a multi-domain fill customer field instead.\"",
              location = "query",
              type = "string",
            },
            event = {
              description = "Events to watch for.",
              enum = {
                "add",
                "delete",
                "makeAdmin",
                "undelete",
                "update",
              },
              enumDescriptions = {
                "User Created Event",
                "User Deleted Event",
                "User Admin Status Change Event",
                "User Undeleted Event",
                "User Updated Event",
              },
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "100",
              description = "Maximum number of results to return.",
              format = "int32",
              location = "query",
              maximum = "500",
              minimum = "1",
              type = "integer",
            },
            orderBy = {
              description = "Column to use for sorting results",
              enum = {
                "email",
                "familyName",
                "givenName",
              },
              enumDescriptions = {
                "Primary email of the user.",
                "User's family name.",
                "User's given name.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Token to specify next page in the list",
              location = "query",
              type = "string",
            },
            projection = {
              default = "basic",
              description = "What subset of fields to fetch for this user.",
              enum = {
                "basic",
                "custom",
                "full",
              },
              enumDescriptions = {
                "Do not include any custom fields for the user.",
                "Include custom fields from schemas mentioned in customFieldMask.",
                "Include all fields associated with this user.",
              },
              location = "query",
              type = "string",
            },
            query = {
              description = "Query string search. Should be of the form \"\". Complete documentation is at https: //developers.google.com/admin-sdk/directory/v1/guides/search-users",
              location = "query",
              type = "string",
            },
            showDeleted = {
              description = "If set to true, retrieves the list of deleted users. (Default: false)",
              location = "query",
              type = "string",
            },
            sortOrder = {
              description = "Whether to return results in ascending or descending order.",
              enum = {
                "ASCENDING",
                "DESCENDING",
              },
              enumDescriptions = {
                "Ascending order.",
                "Descending order.",
              },
              location = "query",
              type = "string",
            },
            viewType = {
              default = "admin_view",
              description = "Whether to fetch the administrator-only or domain-wide public view of the user. For more information, see [Retrieve a user as a non-administrator](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin).",
              enum = {
                "admin_view",
                "domain_public",
              },
              enumDescriptions = {
                "Results include both administrator-only and domain-public fields.",
                "Results only include fields for the user that are publicly visible to other users in the domain.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "admin/directory/v1/users/watch",
          request = {
            ["$ref"] = "Channel",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user",
            "https://www.googleapis.com/auth/admin.directory.user.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        aliases = {
          methods = {
            delete = {
              description = "Removes an alias.",
              flatPath = "admin/directory/v1/users/{userKey}/aliases/{alias}",
              httpMethod = "DELETE",
              id = "directory.users.aliases.delete",
              parameterOrder = {
                "userKey",
                "alias",
              },
              parameters = {
                alias = {
                  description = "The alias to be removed.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userKey = {
                  description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/aliases/{alias}",
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
                "https://www.googleapis.com/auth/admin.directory.user.alias",
              },
            },
            insert = {
              description = "Adds an alias.",
              flatPath = "admin/directory/v1/users/{userKey}/aliases",
              httpMethod = "POST",
              id = "directory.users.aliases.insert",
              parameterOrder = {
                "userKey",
              },
              parameters = {
                userKey = {
                  description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/aliases",
              request = {
                ["$ref"] = "Alias",
              },
              response = {
                ["$ref"] = "Alias",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
                "https://www.googleapis.com/auth/admin.directory.user.alias",
              },
            },
            list = {
              description = "Lists all aliases for a user.",
              flatPath = "admin/directory/v1/users/{userKey}/aliases",
              httpMethod = "GET",
              id = "directory.users.aliases.list",
              parameterOrder = {
                "userKey",
              },
              parameters = {
                event = {
                  description = "Events to watch for.",
                  enum = {
                    "add",
                    "delete",
                  },
                  enumDescriptions = {
                    "Alias Created Event",
                    "Alias Deleted Event",
                  },
                  location = "query",
                  type = "string",
                },
                userKey = {
                  description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/aliases",
              response = {
                ["$ref"] = "Aliases",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
                "https://www.googleapis.com/auth/admin.directory.user.alias",
                "https://www.googleapis.com/auth/admin.directory.user.alias.readonly",
                "https://www.googleapis.com/auth/admin.directory.user.readonly",
              },
            },
            watch = {
              description = "Watches for changes in users list.",
              flatPath = "admin/directory/v1/users/{userKey}/aliases/watch",
              httpMethod = "POST",
              id = "directory.users.aliases.watch",
              parameterOrder = {
                "userKey",
              },
              parameters = {
                event = {
                  description = "Events to watch for.",
                  enum = {
                    "add",
                    "delete",
                  },
                  enumDescriptions = {
                    "Alias Created Event",
                    "Alias Deleted Event",
                  },
                  location = "query",
                  type = "string",
                },
                userKey = {
                  description = "Email or immutable ID of the user",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/aliases/watch",
              request = {
                ["$ref"] = "Channel",
              },
              response = {
                ["$ref"] = "Channel",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
                "https://www.googleapis.com/auth/admin.directory.user.alias",
                "https://www.googleapis.com/auth/admin.directory.user.alias.readonly",
                "https://www.googleapis.com/auth/admin.directory.user.readonly",
              },
            },
          },
        },
        photos = {
          methods = {
            delete = {
              description = "Removes the user's photo.",
              flatPath = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              httpMethod = "DELETE",
              id = "directory.users.photos.delete",
              parameterOrder = {
                "userKey",
              },
              parameters = {
                userKey = {
                  description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
              },
            },
            get = {
              description = "Retrieves the user's photo.",
              flatPath = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              httpMethod = "GET",
              id = "directory.users.photos.get",
              parameterOrder = {
                "userKey",
              },
              parameters = {
                userKey = {
                  description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              response = {
                ["$ref"] = "UserPhoto",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
                "https://www.googleapis.com/auth/admin.directory.user.readonly",
              },
            },
            patch = {
              description = "Adds a photo for the user. This method supports [patch semantics](/admin-sdk/directory/v1/guides/performance#patch).",
              flatPath = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              httpMethod = "PATCH",
              id = "directory.users.photos.patch",
              parameterOrder = {
                "userKey",
              },
              parameters = {
                userKey = {
                  description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              request = {
                ["$ref"] = "UserPhoto",
              },
              response = {
                ["$ref"] = "UserPhoto",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
              },
            },
            update = {
              description = "Adds a photo for the user.",
              flatPath = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              httpMethod = "PUT",
              id = "directory.users.photos.update",
              parameterOrder = {
                "userKey",
              },
              parameters = {
                userKey = {
                  description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "admin/directory/v1/users/{userKey}/photos/thumbnail",
              request = {
                ["$ref"] = "UserPhoto",
              },
              response = {
                ["$ref"] = "UserPhoto",
              },
              scopes = {
                "https://www.googleapis.com/auth/admin.directory.user",
              },
            },
          },
        },
      },
    },
    verificationCodes = {
      methods = {
        generate = {
          description = "Generates new backup verification codes for the user.",
          flatPath = "admin/directory/v1/users/{userKey}/verificationCodes/generate",
          httpMethod = "POST",
          id = "directory.verificationCodes.generate",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Email or immutable ID of the user",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/verificationCodes/generate",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
        invalidate = {
          description = "Invalidates the current backup verification codes for the user.",
          flatPath = "admin/directory/v1/users/{userKey}/verificationCodes/invalidate",
          httpMethod = "POST",
          id = "directory.verificationCodes.invalidate",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Email or immutable ID of the user",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/verificationCodes/invalidate",
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
        list = {
          description = "Returns the current set of valid backup verification codes for the specified user.",
          flatPath = "admin/directory/v1/users/{userKey}/verificationCodes",
          httpMethod = "GET",
          id = "directory.verificationCodes.list",
          parameterOrder = {
            "userKey",
          },
          parameters = {
            userKey = {
              description = "Identifies the user in the API request. The value can be the user's primary email address, alias email address, or unique user ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/directory/v1/users/{userKey}/verificationCodes",
          response = {
            ["$ref"] = "VerificationCodes",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.directory.user.security",
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://admin.googleapis.com/",
  schemas = {
    Alias = {
      description = "JSON template for Alias object in Directory API.",
      id = "Alias",
      properties = {
        alias = {
          type = "string",
        },
        etag = {
          type = "string",
        },
        id = {
          type = "string",
        },
        kind = {
          default = "admin#directory#alias",
          type = "string",
        },
        primaryEmail = {
          type = "string",
        },
      },
      type = "object",
    },
    Aliases = {
      description = "JSON response template to list aliases in Directory API.",
      id = "Aliases",
      properties = {
        aliases = {
          items = {
            type = "any",
          },
          type = "array",
        },
        etag = {
          type = "string",
        },
        kind = {
          default = "admin#directory#aliases",
          type = "string",
        },
      },
      type = "object",
    },
    Asp = {
      description = "An application-specific password (ASP) is used with applications that do not accept a verification code when logging into the application on certain devices. The ASP access code is used instead of the login and password you commonly use when accessing an application through a browser. For more information about ASPs and how to create one, see the [help center](https://support.google.com/a/answer/2537800#asp).",
      id = "Asp",
      properties = {
        codeId = {
          description = "The unique ID of the ASP.",
          format = "int32",
          type = "integer",
        },
        creationTime = {
          description = "The time when the ASP was created. Expressed in [Unix time](https://en.wikipedia.org/wiki/Epoch_time) format.",
          format = "int64",
          type = "string",
        },
        etag = {
          description = "ETag of the ASP.",
          type = "string",
        },
        kind = {
          default = "admin#directory#asp",
          description = "The type of the API resource. This is always `admin#directory#asp`.",
          type = "string",
        },
        lastTimeUsed = {
          description = "The time when the ASP was last used. Expressed in [Unix time](https://en.wikipedia.org/wiki/Epoch_time) format.",
          format = "int64",
          type = "string",
        },
        name = {
          description = "The name of the application that the user, represented by their `userId`, entered when the ASP was created.",
          type = "string",
        },
        userKey = {
          description = "The unique ID of the user who issued the ASP.",
          type = "string",
        },
      },
      type = "object",
    },
    Asps = {
      id = "Asps",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "A list of ASP resources.",
          items = {
            ["$ref"] = "Asp",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#aspList",
          description = "The type of the API resource. This is always `admin#directory#aspList`.",
          type = "string",
        },
      },
      type = "object",
    },
    AuxiliaryMessage = {
      description = "Auxiliary message about issues with printers or settings. Example: {message_type:AUXILIARY_MESSAGE_WARNING, field_mask:make_and_model, message:\"Given printer is invalid or no longer supported.\"}",
      id = "AuxiliaryMessage",
      properties = {
        auxiliaryMessage = {
          description = "Human readable message in English. Example: \"Given printer is invalid or no longer supported.\"",
          type = "string",
        },
        fieldMask = {
          description = "Field that this message concerns.",
          format = "google-fieldmask",
          type = "string",
        },
        severity = {
          description = "Message severity",
          enum = {
            "SEVERITY_UNSPECIFIED",
            "SEVERITY_INFO",
            "SEVERITY_WARNING",
            "SEVERITY_ERROR",
          },
          enumDescriptions = {
            "Message type unspecified.",
            "Message of severity: info.",
            "Message of severity: warning.",
            "Message of severity: error.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    BatchCreatePrintServersRequest = {
      description = "Request to add multiple new print servers in a batch.",
      id = "BatchCreatePrintServersRequest",
      properties = {
        requests = {
          description = "Required. A list of `PrintServer` resources to be created (max `50` per batch).",
          items = {
            ["$ref"] = "CreatePrintServerRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreatePrintServersResponse = {
      id = "BatchCreatePrintServersResponse",
      properties = {
        failures = {
          description = "A list of create failures. `PrintServer` IDs are not populated, as print servers were not created.",
          items = {
            ["$ref"] = "PrintServerFailureInfo",
          },
          type = "array",
        },
        printServers = {
          description = "A list of successfully created print servers with their IDs populated.",
          items = {
            ["$ref"] = "PrintServer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreatePrintersRequest = {
      description = "Request for adding new printers in batch.",
      id = "BatchCreatePrintersRequest",
      properties = {
        requests = {
          description = "A list of Printers to be created. Max 50 at a time.",
          items = {
            ["$ref"] = "CreatePrinterRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchCreatePrintersResponse = {
      description = "Response for adding new printers in batch.",
      id = "BatchCreatePrintersResponse",
      properties = {
        failures = {
          description = "A list of create failures. Printer IDs are not populated, as printer were not created.",
          items = {
            ["$ref"] = "FailureInfo",
          },
          type = "array",
        },
        printers = {
          description = "A list of successfully created printers with their IDs populated.",
          items = {
            ["$ref"] = "Printer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeletePrintServersRequest = {
      description = "Request to delete multiple existing print servers in a batch.",
      id = "BatchDeletePrintServersRequest",
      properties = {
        printServerIds = {
          description = "A list of print server IDs that should be deleted (max `100` per batch).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeletePrintServersResponse = {
      id = "BatchDeletePrintServersResponse",
      properties = {
        failedPrintServers = {
          description = "A list of update failures.",
          items = {
            ["$ref"] = "PrintServerFailureInfo",
          },
          type = "array",
        },
        printServerIds = {
          description = "A list of print server IDs that were successfully deleted.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeletePrintersRequest = {
      description = "Request for deleting existing printers in batch.",
      id = "BatchDeletePrintersRequest",
      properties = {
        printerIds = {
          description = "A list of Printer.id that should be deleted. Max 100 at a time.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeletePrintersResponse = {
      description = "Response for deleting existing printers in batch.",
      id = "BatchDeletePrintersResponse",
      properties = {
        failedPrinters = {
          description = "A list of update failures.",
          items = {
            ["$ref"] = "FailureInfo",
          },
          type = "array",
        },
        printerIds = {
          description = "A list of Printer.id that were successfully deleted.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Building = {
      description = "Public API: Resources.buildings",
      id = "Building",
      properties = {
        address = {
          ["$ref"] = "BuildingAddress",
          description = "The postal address of the building. See [`PostalAddress`](/my-business/reference/rest/v4/PostalAddress) for details. Note that only a single address line and region code are required.",
        },
        buildingId = {
          description = "Unique identifier for the building. The maximum length is 100 characters.",
          type = "string",
        },
        buildingName = {
          description = "The building name as seen by users in Calendar. Must be unique for the customer. For example, \"NYC-CHEL\". The maximum length is 100 characters.",
          type = "string",
        },
        coordinates = {
          ["$ref"] = "BuildingCoordinates",
          description = "The geographic coordinates of the center of the building, expressed as latitude and longitude in decimal degrees.",
        },
        description = {
          description = "A brief description of the building. For example, \"Chelsea Market\".",
          type = "string",
        },
        etags = {
          description = "ETag of the resource.",
          type = "string",
        },
        floorNames = {
          description = "The display names for all floors in this building. The floors are expected to be sorted in ascending order, from lowest floor to highest floor. For example, [\"B2\", \"B1\", \"L\", \"1\", \"2\", \"2M\", \"3\", \"PH\"] Must contain at least one entry.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#resources#buildings#Building",
          description = "Kind of resource this is.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildingAddress = {
      description = "Public API: Resources.buildings",
      id = "BuildingAddress",
      properties = {
        addressLines = {
          description = "Unstructured address lines describing the lower levels of an address.",
          items = {
            type = "string",
          },
          type = "array",
        },
        administrativeArea = {
          description = "Optional. Highest administrative subdivision which is used for postal addresses of a country or region.",
          type = "string",
        },
        languageCode = {
          description = "Optional. BCP-47 language code of the contents of this address (if known).",
          type = "string",
        },
        locality = {
          description = "Optional. Generally refers to the city/town portion of the address. Examples: US city, IT comune, UK post town. In regions of the world where localities are not well defined or do not fit into this structure well, leave locality empty and use addressLines.",
          type = "string",
        },
        postalCode = {
          description = "Optional. Postal code of the address.",
          type = "string",
        },
        regionCode = {
          description = "Required. CLDR region code of the country/region of the address.",
          type = "string",
        },
        sublocality = {
          description = "Optional. Sublocality of the address.",
          type = "string",
        },
      },
      type = "object",
    },
    BuildingCoordinates = {
      description = "Public API: Resources.buildings",
      id = "BuildingCoordinates",
      properties = {
        latitude = {
          description = "Latitude in decimal degrees.",
          format = "double",
          type = "number",
        },
        longitude = {
          description = "Longitude in decimal degrees.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Buildings = {
      description = "Public API: Resources.buildings",
      id = "Buildings",
      properties = {
        buildings = {
          description = "The Buildings in this page of results.",
          items = {
            ["$ref"] = "Building",
          },
          type = "array",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#resources#buildings#buildingsList",
          description = "Kind of resource this is.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    CalendarResource = {
      description = "Public API: Resources.calendars",
      id = "CalendarResource",
      properties = {
        buildingId = {
          description = "Unique ID for the building a resource is located in.",
          type = "string",
        },
        capacity = {
          description = "Capacity of a resource, number of seats in a room.",
          format = "int32",
          type = "integer",
        },
        etags = {
          description = "ETag of the resource.",
          type = "string",
        },
        featureInstances = {
          description = "Instances of features for the calendar resource.",
          type = "any",
        },
        floorName = {
          description = "Name of the floor a resource is located on.",
          type = "string",
        },
        floorSection = {
          description = "Name of the section within a floor a resource is located in.",
          type = "string",
        },
        generatedResourceName = {
          description = "The read-only auto-generated name of the calendar resource which includes metadata about the resource such as building name, floor, capacity, etc. For example, \"NYC-2-Training Room 1A (16)\".",
          type = "string",
        },
        kind = {
          default = "admin#directory#resources#calendars#CalendarResource",
          description = "The type of the resource. For calendar resources, the value is `admin#directory#resources#calendars#CalendarResource`.",
          type = "string",
        },
        resourceCategory = {
          description = "The category of the calendar resource. Either CONFERENCE_ROOM or OTHER. Legacy data is set to CATEGORY_UNKNOWN.",
          type = "string",
        },
        resourceDescription = {
          description = "Description of the resource, visible only to admins.",
          type = "string",
        },
        resourceEmail = {
          description = "The read-only email for the calendar resource. Generated as part of creating a new calendar resource.",
          type = "string",
        },
        resourceId = {
          annotations = {
            required = {
              "directory.resources.calendars.insert",
            },
          },
          description = "The unique ID for the calendar resource.",
          type = "string",
        },
        resourceName = {
          annotations = {
            required = {
              "directory.resources.calendars.insert",
            },
          },
          description = "The name of the calendar resource. For example, \"Training Room 1A\".",
          type = "string",
        },
        resourceType = {
          description = "The type of the calendar resource, intended for non-room resources.",
          type = "string",
        },
        userVisibleDescription = {
          description = "Description of the resource, visible to users and admins.",
          type = "string",
        },
      },
      type = "object",
    },
    CalendarResources = {
      description = "Public API: Resources.calendars",
      id = "CalendarResources",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "The CalendarResources in this page of results.",
          items = {
            ["$ref"] = "CalendarResource",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#resources#calendars#calendarResourcesList",
          description = "Identifies this as a collection of CalendarResources. This is always `admin#directory#resources#calendars#calendarResourcesList`.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    Channel = {
      description = "An notification channel used to watch for resource changes.",
      id = "Channel",
      properties = {
        address = {
          description = "The address where notifications are delivered for this channel.",
          type = "string",
        },
        expiration = {
          description = "Date and time of notification channel expiration, expressed as a Unix timestamp, in milliseconds. Optional.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "A UUID or similar unique string that identifies this channel.",
          type = "string",
        },
        kind = {
          default = "api#channel",
          description = "Identifies this as a notification channel used to watch for changes to a resource, which is `api#channel`.",
          type = "string",
        },
        params = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional parameters controlling delivery channel behavior. Optional. For example, `params.ttl` specifies the time-to-live in seconds for the notification channel, where the default is 2 hours and the maximum TTL is 2 days.",
          type = "object",
        },
        payload = {
          description = "A Boolean value to indicate whether payload is wanted. Optional.",
          type = "boolean",
        },
        resourceId = {
          description = "An opaque ID that identifies the resource being watched on this channel. Stable across different API versions.",
          type = "string",
        },
        resourceUri = {
          description = "A version-specific identifier for the watched resource.",
          type = "string",
        },
        token = {
          description = "An arbitrary string delivered to the target address with each notification delivered over this channel. Optional.",
          type = "string",
        },
        type = {
          description = "The type of delivery mechanism used for this channel.",
          type = "string",
        },
      },
      type = "object",
    },
    ChromeOsDevice = {
      description = "Google Chrome devices run on the [Chrome OS](https://support.google.com/chromeos). For more information about common API tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-chrome-devices).",
      id = "ChromeOsDevice",
      properties = {
        activeTimeRanges = {
          description = "A list of active time ranges (Read-only).",
          items = {
            properties = {
              activeTime = {
                description = "Duration of usage in milliseconds.",
                format = "int32",
                type = "integer",
              },
              date = {
                description = "Date of usage",
                format = "date",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        annotatedAssetId = {
          description = "The asset identifier as noted by an administrator or specified during enrollment.",
          type = "string",
        },
        annotatedLocation = {
          description = "The address or location of the device as noted by the administrator. Maximum length is `200` characters. Empty values are allowed.",
          type = "string",
        },
        annotatedUser = {
          description = "The user of the device as noted by the administrator. Maximum length is 100 characters. Empty values are allowed.",
          type = "string",
        },
        autoUpdateExpiration = {
          description = "(Read-only) The timestamp after which the device will stop receiving Chrome updates or support",
          format = "int64",
          type = "string",
        },
        bootMode = {
          description = "The boot mode for the device. The possible values are: * `Verified`: The device is running a valid version of the Chrome OS. * `Dev`: The devices's developer hardware switch is enabled. When booted, the device has a command line shell. For an example of a developer switch, see the [Chromebook developer information](https://www.chromium.org/chromium-os/developer-information-for-chrome-os-devices/samsung-series-5-chromebook#TOC-Developer-switch).",
          type = "string",
        },
        cpuInfo = {
          description = "Information regarding CPU specs in the device.",
          items = {
            description = "CPU specs for a CPU.",
            properties = {
              architecture = {
                description = "The CPU architecture.",
                type = "string",
              },
              logicalCpus = {
                description = "Information for the Logical CPUs",
                items = {
                  description = "Status of a single logical CPU.",
                  properties = {
                    cStates = {
                      description = "C-States indicate the power consumption state of the CPU. For more information look at documentation published by the CPU maker.",
                      items = {
                        description = "Status of a single C-state. C-states are various modes the CPU can transition to in order to use more or less power.",
                        properties = {
                          displayName = {
                            description = "Name of the state.",
                            type = "string",
                          },
                          sessionDuration = {
                            description = "Time spent in the state since the last reboot.",
                            format = "google-duration",
                            type = "string",
                          },
                        },
                        type = "object",
                      },
                      type = "array",
                    },
                    currentScalingFrequencyKhz = {
                      description = "Current frequency the CPU is running at.",
                      format = "int32",
                      type = "integer",
                    },
                    idleDuration = {
                      description = "Idle time since last boot.",
                      format = "google-duration",
                      type = "string",
                    },
                    maxScalingFrequencyKhz = {
                      description = "Maximum frequency the CPU is allowed to run at, by policy.",
                      format = "int32",
                      type = "integer",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              maxClockSpeedKhz = {
                description = "The max CPU clock speed in kHz.",
                format = "int32",
                type = "integer",
              },
              model = {
                description = "The CPU model name.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        cpuStatusReports = {
          description = "Reports of CPU utilization and temperature (Read-only)",
          items = {
            properties = {
              cpuTemperatureInfo = {
                description = "A list of CPU temperature samples.",
                items = {
                  properties = {
                    label = {
                      description = "CPU label",
                      type = "string",
                    },
                    temperature = {
                      description = "Temperature in Celsius degrees.",
                      format = "int32",
                      type = "integer",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              cpuUtilizationPercentageInfo = {
                items = {
                  format = "int32",
                  type = "integer",
                },
                type = "array",
              },
              reportTime = {
                description = "Date and time the report was received.",
                format = "date-time",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        deprovisionReason = {
          description = "(Read-only) Deprovision reason.",
          enum = {
            "deprovisionReasonUnspecified",
            "deprovisionReasonSameModelReplacement",
            "deprovisionReasonUpgrade",
            "deprovisionReasonDomainMove",
            "deprovisionReasonServiceExpiration",
            "deprovisionReasonOther",
            "deprovisionReasonDifferentModelReplacement",
            "deprovisionReasonRetiringDevice",
            "deprovisionReasonUpgradeTransfer",
            "deprovisionReasonNotRequired",
            "deprovisionReasonRepairCenter",
          },
          enumDescriptions = {
            "The deprovision reason is unknown.",
            "Same model replacement.",
            "Device upgrade.",
            "Domain move.",
            "Service expiration.",
            "Other.",
            "Different model replacement.",
            "Retiring device.",
            "Transferring perpetual upgrade to a new device.",
            "No reason required, i.e. licenses returned to customer's license pool.",
            "Deprovisioned by a RMA (service center) caller.",
          },
          type = "string",
        },
        deviceFiles = {
          description = "A list of device files to download (Read-only)",
          items = {
            properties = {
              createTime = {
                description = "Date and time the file was created",
                format = "date-time",
                type = "string",
              },
              downloadUrl = {
                description = "File download URL",
                type = "string",
              },
              name = {
                description = "File name",
                type = "string",
              },
              type = {
                description = "File type",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        deviceId = {
          description = "The unique ID of the Chrome device.",
          type = "string",
        },
        diskVolumeReports = {
          description = "Reports of disk space and other info about mounted/connected volumes.",
          items = {
            properties = {
              volumeInfo = {
                description = "Disk volumes",
                items = {
                  properties = {
                    storageFree = {
                      description = "Free disk space [in bytes]",
                      format = "int64",
                      type = "string",
                    },
                    storageTotal = {
                      description = "Total disk space [in bytes]",
                      format = "int64",
                      type = "string",
                    },
                    volumeId = {
                      description = "Volume id",
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        dockMacAddress = {
          description = "(Read-only) Built-in MAC address for the docking station that the device connected to. Factory sets Media access control address (MAC address) assigned for use by a dock. It is reserved specifically for MAC pass through device policy. The format is twelve (12) hexadecimal digits without any delimiter (uppercase letters). This is only relevant for some devices.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        ethernetMacAddress = {
          description = "The device's MAC address on the ethernet network interface.",
          type = "string",
        },
        ethernetMacAddress0 = {
          description = "(Read-only) MAC address used by the Chromebook’s internal ethernet port, and for onboard network (ethernet) interface. The format is twelve (12) hexadecimal digits without any delimiter (uppercase letters). This is only relevant for some devices.",
          type = "string",
        },
        firmwareVersion = {
          description = "The Chrome device's firmware version.",
          type = "string",
        },
        firstEnrollmentTime = {
          description = "Date and time for the first time the device was enrolled.",
          type = "string",
        },
        kind = {
          default = "admin#directory#chromeosdevice",
          description = "The type of resource. For the Chromeosdevices resource, the value is `admin#directory#chromeosdevice`.",
          type = "string",
        },
        lastDeprovisionTimestamp = {
          description = "(Read-only) Date and time for the last deprovision of the device.",
          type = "string",
        },
        lastEnrollmentTime = {
          description = "Date and time the device was last enrolled (Read-only)",
          format = "date-time",
          type = "string",
        },
        lastKnownNetwork = {
          description = "Contains last known network (Read-only)",
          items = {
            description = "Information for an ip address.",
            properties = {
              ipAddress = {
                description = "The IP address.",
                type = "string",
              },
              wanIpAddress = {
                description = "The WAN IP address.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        lastSync = {
          description = "Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only)",
          format = "date-time",
          type = "string",
        },
        macAddress = {
          description = "The device's wireless MAC address. If the device does not have this information, it is not included in the response.",
          type = "string",
        },
        manufactureDate = {
          description = "(Read-only) The date the device was manufactured in yyyy-mm-dd format.",
          type = "string",
        },
        meid = {
          description = "The Mobile Equipment Identifier (MEID) or the International Mobile Equipment Identity (IMEI) for the 3G mobile card in a mobile device. A MEID/IMEI is typically used when adding a device to a wireless carrier's post-pay service plan. If the device does not have this information, this property is not included in the response. For more information on how to export a MEID/IMEI list, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-chrome-devices.html#export_meid).",
          type = "string",
        },
        model = {
          description = "The device's model information. If the device does not have this information, this property is not included in the response.",
          type = "string",
        },
        notes = {
          description = "Notes about this device added by the administrator. This property can be [searched](https://support.google.com/chrome/a/answer/1698333) with the [list](/admin-sdk/directory/v1/reference/chromeosdevices/list) method's `query` parameter. Maximum length is 500 characters. Empty values are allowed.",
          type = "string",
        },
        orderNumber = {
          description = "The device's order number. Only devices directly purchased from Google have an order number.",
          type = "string",
        },
        orgUnitId = {
          description = "The unique ID of the organizational unit. orgUnitPath is the human readable version of orgUnitId. While orgUnitPath may change by renaming an organizational unit within the path, orgUnitId is unchangeable for one organizational unit. This property can be [updated](/admin-sdk/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou) using the API. For more information about how to create an organizational structure for your device, see the [administration help center](https://support.google.com/a/answer/182433).",
          type = "string",
        },
        orgUnitPath = {
          description = "The full parent path with the organizational unit's name associated with the device. Path names are case insensitive. If the parent organizational unit is the top-level organization, it is represented as a forward slash, `/`. This property can be [updated](/admin-sdk/directory/v1/guides/manage-chrome-devices#move_chrome_devices_to_ou) using the API. For more information about how to create an organizational structure for your device, see the [administration help center](https://support.google.com/a/answer/182433).",
          type = "string",
        },
        osUpdateStatus = {
          ["$ref"] = "OsUpdateStatus",
          description = "The status of the OS updates for the device.",
        },
        osVersion = {
          description = "The Chrome device's operating system version.",
          type = "string",
        },
        platformVersion = {
          description = "The Chrome device's platform version.",
          type = "string",
        },
        recentUsers = {
          description = "A list of recent device users, in descending order, by last login time.",
          items = {
            description = "A list of recent device users, in descending order, by last login time.",
            properties = {
              email = {
                description = "The user's email address. This is only present if the user type is `USER_TYPE_MANAGED`.",
                type = "string",
              },
              type = {
                description = "The type of the user.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        screenshotFiles = {
          description = "A list of screenshot files to download. Type is always \"SCREENSHOT_FILE\". (Read-only)",
          items = {
            properties = {
              createTime = {
                description = "Date and time the file was created",
                format = "date-time",
                type = "string",
              },
              downloadUrl = {
                description = "File download URL",
                type = "string",
              },
              name = {
                description = "File name",
                type = "string",
              },
              type = {
                description = "File type",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        serialNumber = {
          description = "The Chrome device serial number entered when the device was enabled. This value is the same as the Admin console's *Serial Number* in the *Chrome OS Devices* tab.",
          type = "string",
        },
        status = {
          description = "The status of the device.",
          type = "string",
        },
        supportEndDate = {
          description = "Final date the device will be supported (Read-only)",
          format = "date-time",
          type = "string",
        },
        systemRamFreeReports = {
          description = "Reports of amounts of available RAM memory (Read-only)",
          items = {
            properties = {
              reportTime = {
                description = "Date and time the report was received.",
                format = "date-time",
                type = "string",
              },
              systemRamFreeInfo = {
                items = {
                  format = "int64",
                  type = "string",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        systemRamTotal = {
          description = "Total RAM on the device [in bytes] (Read-only)",
          format = "int64",
          type = "string",
        },
        tpmVersionInfo = {
          description = "Trusted Platform Module (TPM) (Read-only)",
          properties = {
            family = {
              description = "TPM family. We use the TPM 2.0 style encoding, e.g.: TPM 1.2: \"1.2\" -> 312e3200 TPM 2.0: \"2.0\" -> 322e3000",
              type = "string",
            },
            firmwareVersion = {
              description = "TPM firmware version.",
              type = "string",
            },
            manufacturer = {
              description = "TPM manufacturer code.",
              type = "string",
            },
            specLevel = {
              description = "TPM specification level. See Library Specification for TPM 2.0 and Main Specification for TPM 1.2.",
              type = "string",
            },
            tpmModel = {
              description = "TPM model number.",
              type = "string",
            },
            vendorSpecific = {
              description = "Vendor-specific information such as Vendor ID.",
              type = "string",
            },
          },
          type = "object",
        },
        willAutoRenew = {
          description = "Determines if the device will auto renew its support after the support end date. This is a read-only property.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ChromeOsDeviceAction = {
      description = "Data about an update to the status of a Chrome OS device.",
      id = "ChromeOsDeviceAction",
      properties = {
        action = {
          annotations = {
            required = {
              "directory.chromeosdevices.action",
            },
          },
          description = "Action to be taken on the Chrome OS device.",
          type = "string",
        },
        deprovisionReason = {
          description = "Only used when the action is `deprovision`. With the `deprovision` action, this field is required. *Note*: The deprovision reason is audited because it might have implications on licenses for perpetual subscription customers.",
          type = "string",
        },
      },
      type = "object",
    },
    ChromeOsDevices = {
      id = "ChromeOsDevices",
      properties = {
        chromeosdevices = {
          description = "A list of Chrome OS Device objects.",
          items = {
            ["$ref"] = "ChromeOsDevice",
          },
          type = "array",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#chromeosdevices",
          description = "Kind of resource this is.",
          type = "string",
        },
        nextPageToken = {
          description = "Token used to access the next page of this result. To access the next page, use this token's value in the `pageToken` query string of this request.",
          type = "string",
        },
      },
      type = "object",
    },
    ChromeOsMoveDevicesToOu = {
      id = "ChromeOsMoveDevicesToOu",
      properties = {
        deviceIds = {
          annotations = {
            required = {
              "directory.chromeosdevices.moveDevicesToOu",
            },
          },
          description = "Chrome OS devices to be moved to OU",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreatePrintServerRequest = {
      description = "Request for adding a new print server.",
      id = "CreatePrintServerRequest",
      properties = {
        parent = {
          description = "Required. The [unique ID](https://developers.google.com/admin-sdk/directory/reference/rest/v1/customers) of the customer's Google Workspace account. Format: `customers/{id}`",
          type = "string",
        },
        printServer = {
          ["$ref"] = "PrintServer",
          description = "Required. A print server to create. If you want to place the print server under a specific organizational unit (OU), then populate the `org_unit_id`. Otherwise the print server is created under the root OU. The `org_unit_id` can be retrieved using the [Directory API](https://developers.google.com/admin-sdk/directory/v1/guides/manage-org-units).",
        },
      },
      type = "object",
    },
    CreatePrinterRequest = {
      description = "Request for adding a new printer.",
      id = "CreatePrinterRequest",
      properties = {
        parent = {
          description = "Required. The name of the customer. Format: customers/{customer_id}",
          type = "string",
        },
        printer = {
          ["$ref"] = "Printer",
          description = "Required. A printer to create. If you want to place the printer under particular OU then populate printer.org_unit_id filed. Otherwise the printer will be placed under root OU.",
        },
      },
      type = "object",
    },
    Customer = {
      id = "Customer",
      properties = {
        alternateEmail = {
          description = "The customer's secondary contact email address. This email address cannot be on the same domain as the `customerDomain`",
          type = "string",
        },
        customerCreationTime = {
          description = "The customer's creation time (Readonly)",
          format = "date-time",
          type = "string",
        },
        customerDomain = {
          description = "The customer's primary domain name string. Do not include the `www` prefix when creating a new customer.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "The unique ID for the customer's Google Workspace account. (Readonly)",
          type = "string",
        },
        kind = {
          default = "admin#directory#customer",
          description = "Identifies the resource as a customer. Value: `admin#directory#customer`",
          type = "string",
        },
        language = {
          description = "The customer's ISO 639-2 language code. See the [Language Codes](/admin-sdk/directory/v1/languages) page for the list of supported codes. Valid language codes outside the supported set will be accepted by the API but may lead to unexpected behavior. The default value is `en`.",
          type = "string",
        },
        phoneNumber = {
          description = "The customer's contact phone number in [E.164](https://en.wikipedia.org/wiki/E.164) format.",
          type = "string",
        },
        postalAddress = {
          ["$ref"] = "CustomerPostalAddress",
          description = "The customer's postal address information.",
        },
      },
      type = "object",
    },
    CustomerPostalAddress = {
      id = "CustomerPostalAddress",
      properties = {
        addressLine1 = {
          description = "A customer's physical address. The address can be composed of one to three lines.",
          type = "string",
        },
        addressLine2 = {
          description = "Address line 2 of the address.",
          type = "string",
        },
        addressLine3 = {
          description = "Address line 3 of the address.",
          type = "string",
        },
        contactName = {
          description = "The customer contact's name.",
          type = "string",
        },
        countryCode = {
          description = "This is a required property. For `countryCode` information see the [ISO 3166 country code elements](https://www.iso.org/iso/country_codes.htm).",
          type = "string",
        },
        locality = {
          description = "Name of the locality. An example of a locality value is the city of `San Francisco`.",
          type = "string",
        },
        organizationName = {
          description = "The company or company division name.",
          type = "string",
        },
        postalCode = {
          description = "The postal code. A postalCode example is a postal zip code such as `10009`. This is in accordance with - http: //portablecontacts.net/draft-spec.html#address_element.",
          type = "string",
        },
        region = {
          description = "Name of the region. An example of a region value is `NY` for the state of New York.",
          type = "string",
        },
      },
      type = "object",
    },
    DirectoryChromeosdevicesCommand = {
      description = "Information regarding a command that was issued to a device.",
      id = "DirectoryChromeosdevicesCommand",
      properties = {
        commandExpireTime = {
          description = "The time at which the command will expire. If the device doesn't execute the command within this time the command will become expired.",
          format = "google-datetime",
          type = "string",
        },
        commandId = {
          description = "Unique ID of a device command.",
          format = "int64",
          type = "string",
        },
        commandResult = {
          ["$ref"] = "DirectoryChromeosdevicesCommandResult",
          description = "The result of the command execution.",
        },
        issueTime = {
          description = "The timestamp when the command was issued by the admin.",
          format = "google-datetime",
          type = "string",
        },
        payload = {
          description = "The payload that the command specified, if any.",
          type = "string",
        },
        state = {
          description = "Indicates the command state.",
          enum = {
            "STATE_UNSPECIFIED",
            "PENDING",
            "EXPIRED",
            "CANCELLED",
            "SENT_TO_CLIENT",
            "ACKED_BY_CLIENT",
            "EXECUTED_BY_CLIENT",
          },
          enumDescriptions = {
            "The command status was unspecified.",
            "An unexpired command not yet sent to the client.",
            "The command didn't get executed by the client within the expected time.",
            "The command is cancelled by admin while in PENDING.",
            "The command has been sent to the client.",
            "The client has responded that it received the command.",
            "The client has (un)successfully executed the command.",
          },
          type = "string",
        },
        type = {
          description = "The type of the command.",
          enum = {
            "COMMAND_TYPE_UNSPECIFIED",
            "REBOOT",
            "TAKE_A_SCREENSHOT",
            "SET_VOLUME",
            "WIPE_USERS",
            "REMOTE_POWERWASH",
            "DEVICE_START_CRD_SESSION",
          },
          enumDescriptions = {
            "The command type was unspecified.",
            "Reboot the device. Can only be issued to Kiosk and managed guest session devices.",
            "Take a screenshot of the device. Only available if the device is in Kiosk Mode.",
            "Set the volume of the device. Can only be issued to Kiosk and managed guest session devices.",
            "Wipe all the users off of the device. Executing this command in the device will remove all user profile data, but it will keep device policy and enrollment.",
            "Wipes the device by performing a power wash. Executing this command in the device will remove all data including user policies, device policies and enrollment policies. Warning: This will revert the device back to a factory state with no enrollment unless the device is subject to forced or auto enrollment. Use with caution, as this is an irreversible action!",
            "Starts a Chrome Remote Desktop session.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DirectoryChromeosdevicesCommandResult = {
      description = "The result of executing a command.",
      id = "DirectoryChromeosdevicesCommandResult",
      properties = {
        commandResultPayload = {
          description = "The payload for the command result. The following commands respond with a payload: - DEVICE_START_CRD_SESSION: Payload is a stringified JSON object in the form: { \"url\": url }. The URL provides a link to the CRD session.",
          type = "string",
        },
        errorMessage = {
          description = "The error message with a short explanation as to why the command failed. Only present if the command failed.",
          type = "string",
        },
        executeTime = {
          description = "The time at which the command was executed or failed to execute.",
          format = "google-datetime",
          type = "string",
        },
        result = {
          description = "The result of the command.",
          enum = {
            "COMMAND_RESULT_TYPE_UNSPECIFIED",
            "IGNORED",
            "FAILURE",
            "SUCCESS",
          },
          enumDescriptions = {
            "The command result was unspecified.",
            "The command was ignored as obsolete.",
            "The command could not be executed successfully.",
            "The command was successfully executed.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DirectoryChromeosdevicesIssueCommandRequest = {
      description = "A request for issuing a command.",
      id = "DirectoryChromeosdevicesIssueCommandRequest",
      properties = {
        commandType = {
          description = "The type of command.",
          enum = {
            "COMMAND_TYPE_UNSPECIFIED",
            "REBOOT",
            "TAKE_A_SCREENSHOT",
            "SET_VOLUME",
            "WIPE_USERS",
            "REMOTE_POWERWASH",
            "DEVICE_START_CRD_SESSION",
          },
          enumDescriptions = {
            "The command type was unspecified.",
            "Reboot the device. Can only be issued to Kiosk and managed guest session devices.",
            "Take a screenshot of the device. Only available if the device is in Kiosk Mode.",
            "Set the volume of the device. Can only be issued to Kiosk and managed guest session devices.",
            "Wipe all the users off of the device. Executing this command in the device will remove all user profile data, but it will keep device policy and enrollment.",
            "Wipes the device by performing a power wash. Executing this command in the device will remove all data including user policies, device policies and enrollment policies. Warning: This will revert the device back to a factory state with no enrollment unless the device is subject to forced or auto enrollment. Use with caution, as this is an irreversible action!",
            "Starts a Chrome Remote Desktop session.",
          },
          type = "string",
        },
        payload = {
          description = "The payload for the command, provide it only if command supports it. The following commands support adding payload: - SET_VOLUME: Payload is a stringified JSON object in the form: { \"volume\": 50 }. The volume has to be an integer in the range [0,100]. - DEVICE_START_CRD_SESSION: Payload is optionally a stringified JSON object in the form: { \"ackedUserPresence\": true }. ackedUserPresence is a boolean. If a device is being used, ackedUserPresence must be set to true to acknowledge that you want to start a CRD session anyways. It is false by default, so a CRD command will fail if used on an active device without this field.",
          type = "string",
        },
      },
      type = "object",
    },
    DirectoryChromeosdevicesIssueCommandResponse = {
      description = "A response for issuing a command.",
      id = "DirectoryChromeosdevicesIssueCommandResponse",
      properties = {
        commandId = {
          description = "The unique ID of the issued command, used to retrieve the command status.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DomainAlias = {
      id = "DomainAlias",
      properties = {
        creationTime = {
          description = "The creation time of the domain alias. (Read-only).",
          format = "int64",
          type = "string",
        },
        domainAliasName = {
          description = "The domain alias name.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#domainAlias",
          description = "Kind of resource this is.",
          type = "string",
        },
        parentDomainName = {
          annotations = {
            required = {
              "directory.domains.insert",
            },
          },
          description = "The parent domain name that the domain alias is associated with. This can either be a primary or secondary domain name within a customer.",
          type = "string",
        },
        verified = {
          description = "Indicates the verification state of a domain alias. (Read-only)",
          type = "boolean",
        },
      },
      type = "object",
    },
    DomainAliases = {
      id = "DomainAliases",
      properties = {
        domainAliases = {
          description = "A list of domain alias objects.",
          items = {
            ["$ref"] = "DomainAlias",
          },
          type = "array",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#domainAliases",
          description = "Kind of resource this is.",
          type = "string",
        },
      },
      type = "object",
    },
    Domains = {
      id = "Domains",
      properties = {
        creationTime = {
          description = "Creation time of the domain. Expressed in [Unix time](https://en.wikipedia.org/wiki/Epoch_time) format. (Read-only).",
          format = "int64",
          type = "string",
        },
        domainAliases = {
          description = "A list of domain alias objects. (Read-only)",
          items = {
            ["$ref"] = "DomainAlias",
          },
          type = "array",
        },
        domainName = {
          annotations = {
            required = {
              "directory.domains.insert",
            },
          },
          description = "The domain name of the customer.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        isPrimary = {
          description = "Indicates if the domain is a primary domain (Read-only).",
          type = "boolean",
        },
        kind = {
          default = "admin#directory#domain",
          description = "Kind of resource this is.",
          type = "string",
        },
        verified = {
          description = "Indicates the verification state of a domain. (Read-only).",
          type = "boolean",
        },
      },
      type = "object",
    },
    Domains2 = {
      id = "Domains2",
      properties = {
        domains = {
          description = "A list of domain objects.",
          items = {
            ["$ref"] = "Domains",
          },
          type = "array",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#domains",
          description = "Kind of resource this is.",
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
    FailureInfo = {
      description = "Info about failures",
      id = "FailureInfo",
      properties = {
        errorCode = {
          description = "Canonical code for why the update failed to apply.",
          enum = {
            "OK",
            "CANCELLED",
            "UNKNOWN",
            "INVALID_ARGUMENT",
            "DEADLINE_EXCEEDED",
            "NOT_FOUND",
            "ALREADY_EXISTS",
            "PERMISSION_DENIED",
            "UNAUTHENTICATED",
            "RESOURCE_EXHAUSTED",
            "FAILED_PRECONDITION",
            "ABORTED",
            "OUT_OF_RANGE",
            "UNIMPLEMENTED",
            "INTERNAL",
            "UNAVAILABLE",
            "DATA_LOSS",
          },
          enumDescriptions = {
            "Not an error; returned on success. HTTP Mapping: 200 OK",
            "The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request",
            "Unknown error. For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error",
            "The client specified an invalid argument. Note that this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request",
            "The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout",
            "Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used. HTTP Mapping: 404 Not Found",
            "The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict",
            "The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden",
            "The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized",
            "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests",
            "The operation was rejected because the system is not in a state required for the operation's execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a) Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use `ABORTED` if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, `FAILED_PRECONDITION` should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request",
            "The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 409 Conflict",
            "The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size. There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done. HTTP Mapping: 400 Bad Request",
            "The operation is not implemented or is not supported/enabled in this service. HTTP Mapping: 501 Not Implemented",
            "Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error",
            "The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503 Service Unavailable",
            "Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error",
          },
          type = "string",
        },
        errorMessage = {
          description = "Failure reason message.",
          type = "string",
        },
        printer = {
          ["$ref"] = "Printer",
          description = "Failed printer.",
        },
        printerId = {
          description = "Id of a failed printer.",
          type = "string",
        },
      },
      type = "object",
    },
    Feature = {
      description = "JSON template for Feature object in Directory API.",
      id = "Feature",
      properties = {
        etags = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#resources#features#Feature",
          description = "Kind of resource this is.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "directory.resources.features.insert",
            },
          },
          description = "The name of the feature.",
          type = "string",
        },
      },
      type = "object",
    },
    FeatureInstance = {
      description = "JSON template for a feature instance.",
      id = "FeatureInstance",
      properties = {
        feature = {
          ["$ref"] = "Feature",
          description = "The feature that this is an instance of. A calendar resource may have multiple instances of a feature.",
        },
      },
      type = "object",
    },
    FeatureRename = {
      id = "FeatureRename",
      properties = {
        newName = {
          annotations = {
            required = {
              "directory.resources.features.rename",
            },
          },
          description = "New name of the feature.",
          type = "string",
        },
      },
      type = "object",
    },
    Features = {
      description = "Public API: Resources.features",
      id = "Features",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        features = {
          description = "The Features in this page of results.",
          items = {
            ["$ref"] = "Feature",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#resources#features#featuresList",
          description = "Kind of resource this is.",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    Group = {
      description = "Google Groups provide your users the ability to send messages to groups of people using the group's email address. For more information about common tasks, see the [Developer's Guide](https://developers.google.com/admin-sdk/directory/v1/guides/manage-groups). For information about other types of groups, see the [Cloud Identity Groups API documentation](https://cloud.google.com/identity/docs/groups). Note: The user calling the API (or being impersonated by a service account) must have an assigned [role](https://developers.google.com/admin-sdk/directory/v1/guides/manage-roles) that includes Admin API Groups permissions, such as Super Admin or Groups Admin.",
      id = "Group",
      properties = {
        adminCreated = {
          description = "Read-only. Value is `true` if this group was created by an administrator rather than a user.",
          type = "boolean",
        },
        aliases = {
          description = "Read-only. The list of a group's alias email addresses. To add, update, or remove a group's aliases, use the `groups.aliases` methods. If edited in a group's POST or PUT request, the edit is ignored.",
          items = {
            type = "string",
          },
          type = "array",
        },
        description = {
          description = "An extended description to help users determine the purpose of a group. For example, you can include information about who should join the group, the types of messages to send to the group, links to FAQs about the group, or related groups. Maximum length is `4,096` characters.",
          type = "string",
        },
        directMembersCount = {
          description = "The number of users that are direct members of the group. If a group is a member (child) of this group (the parent), members of the child group are not counted in the `directMembersCount` property of the parent group.",
          format = "int64",
          type = "string",
        },
        email = {
          annotations = {
            required = {
              "directory.groups.insert",
            },
          },
          description = "The group's email address. If your account has multiple domains, select the appropriate domain for the email address. The `email` must be unique. This property is required when creating a group. Group email addresses are subject to the same character usage rules as usernames, see the [help center](https://support.google.com/a/answer/9193374) for details.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "Read-only. The unique ID of a group. A group `id` can be used as a group request URI's `groupKey`.",
          type = "string",
        },
        kind = {
          default = "admin#directory#group",
          description = "The type of the API resource. For Groups resources, the value is `admin#directory#group`.",
          type = "string",
        },
        name = {
          description = "The group's display name.",
          type = "string",
        },
        nonEditableAliases = {
          description = "Read-only. The list of the group's non-editable alias email addresses that are outside of the account's primary domain or subdomains. These are functioning email addresses used by the group. This is a read-only property returned in the API's response for a group. If edited in a group's POST or PUT request, the edit is ignored.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GroupAlias = {
      description = "The Directory API manages aliases, which are alternative email addresses.",
      id = "GroupAlias",
      properties = {
        alias = {
          description = "The alias email address.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "The unique ID of the group.",
          type = "string",
        },
        kind = {
          description = "The type of the API resource. For Alias resources, the value is `admin#directory#alias`.",
          type = "string",
        },
        primaryEmail = {
          description = "The primary email address of the group.",
          type = "string",
        },
      },
      type = "object",
    },
    Groups = {
      id = "Groups",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        groups = {
          description = "A list of group objects.",
          items = {
            ["$ref"] = "Group",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#groups",
          description = "Kind of resource this is.",
          type = "string",
        },
        nextPageToken = {
          description = "Token used to access next page of this result.",
          type = "string",
        },
      },
      type = "object",
    },
    ListPrintServersResponse = {
      id = "ListPrintServersResponse",
      properties = {
        nextPageToken = {
          description = "A token that can be sent as `page_token` in a request to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        printServers = {
          description = "List of print servers.",
          items = {
            ["$ref"] = "PrintServer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPrinterModelsResponse = {
      description = "Response for listing allowed printer models.",
      id = "ListPrinterModelsResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        printerModels = {
          description = "Printer models that are currently allowed to be configured for ChromeOs. Some printers may be added or removed over time.",
          items = {
            ["$ref"] = "PrinterModel",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPrintersResponse = {
      description = "Response for listing printers.",
      id = "ListPrintersResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        printers = {
          description = "List of printers. If `org_unit_id` was given in the request, then only printers visible for this OU will be returned. If `org_unit_id` was not given in the request, then all printers will be returned.",
          items = {
            ["$ref"] = "Printer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Member = {
      description = "A Google Groups member can be a user or another group. This member can be inside or outside of your account's domains. For more information about common group member tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-group-members).",
      id = "Member",
      properties = {
        delivery_settings = {
          description = "Defines mail delivery preferences of member. This is only supported by create/update/get.",
          type = "string",
        },
        email = {
          description = "The member's email address. A member can be a user or another group. This property is required when adding a member to a group. The `email` must be unique and cannot be an alias of another group. If the email address is changed, the API automatically reflects the email address changes.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "The unique ID of the group member. A member `id` can be used as a member request URI's `memberKey`.",
          type = "string",
        },
        kind = {
          default = "admin#directory#member",
          description = "The type of the API resource. For Members resources, the value is `admin#directory#member`.",
          type = "string",
        },
        role = {
          description = "The member's role in a group. The API returns an error for cycles in group memberships. For example, if `group1` is a member of `group2`, `group2` cannot be a member of `group1`. For more information about a member's role, see the [administration help center](https://support.google.com/a/answer/167094).",
          type = "string",
        },
        status = {
          description = "Status of member (Immutable)",
          type = "string",
        },
        type = {
          description = "The type of group member.",
          type = "string",
        },
      },
      type = "object",
    },
    Members = {
      id = "Members",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#members",
          description = "Kind of resource this is.",
          type = "string",
        },
        members = {
          description = "A list of member objects.",
          items = {
            ["$ref"] = "Member",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token used to access next page of this result.",
          type = "string",
        },
      },
      type = "object",
    },
    MembersHasMember = {
      description = "JSON template for Has Member response in Directory API.",
      id = "MembersHasMember",
      properties = {
        isMember = {
          description = "Output only. Identifies whether the given user is a member of the group. Membership can be direct or nested.",
          readOnly = true,
          type = "boolean",
        },
      },
      type = "object",
    },
    MobileDevice = {
      description = "Google Workspace Mobile Management includes Android, [Google Sync](https://support.google.com/a/answer/135937), and iOS devices. For more information about common group mobile device API tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile-devices.html).",
      id = "MobileDevice",
      properties = {
        adbStatus = {
          description = "Adb (USB debugging) enabled or disabled on device (Read-only)",
          type = "boolean",
        },
        applications = {
          description = "The list of applications installed on an Android mobile device. It is not applicable to Google Sync and iOS devices. The list includes any Android applications that access Google Workspace data. When updating an applications list, it is important to note that updates replace the existing list. If the Android device has two existing applications and the API updates the list with five applications, the is now the updated list of five applications.",
          items = {
            properties = {
              displayName = {
                description = "The application's display name. An example is `Browser`.",
                type = "string",
              },
              packageName = {
                description = "The application's package name. An example is `com.android.browser`.",
                type = "string",
              },
              permission = {
                description = "The list of permissions of this application. These can be either a standard Android permission or one defined by the application, and are found in an application's [Android manifest](https://developer.android.com/guide/topics/manifest/uses-permission-element.html). Examples of a Calendar application's permissions are `READ_CALENDAR`, or `MANAGE_ACCOUNTS`.",
                items = {
                  type = "string",
                },
                type = "array",
              },
              versionCode = {
                description = "The application's version code. An example is `13`.",
                format = "int32",
                type = "integer",
              },
              versionName = {
                description = "The application's version name. An example is `3.2-140714`.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        basebandVersion = {
          description = "The device's baseband version.",
          type = "string",
        },
        bootloaderVersion = {
          description = "Mobile Device Bootloader version (Read-only)",
          type = "string",
        },
        brand = {
          description = "Mobile Device Brand (Read-only)",
          type = "string",
        },
        buildNumber = {
          description = "The device's operating system build number.",
          type = "string",
        },
        defaultLanguage = {
          description = "The default locale used on the device.",
          type = "string",
        },
        developerOptionsStatus = {
          description = "Developer options enabled or disabled on device (Read-only)",
          type = "boolean",
        },
        deviceCompromisedStatus = {
          description = "The compromised device status.",
          type = "string",
        },
        deviceId = {
          description = "The serial number for a Google Sync mobile device. For Android and iOS devices, this is a software generated unique identifier.",
          type = "string",
        },
        devicePasswordStatus = {
          description = "DevicePasswordStatus (Read-only)",
          type = "string",
        },
        email = {
          description = "The list of the owner's email addresses. If your application needs the current list of user emails, use the [get](/admin-sdk/directory/v1/reference/mobiledevices/get.html) method. For additional information, see the [retrieve a user](/admin-sdk/directory/v1/guides/manage-users#get_user) method.",
          items = {
            type = "string",
          },
          type = "array",
        },
        encryptionStatus = {
          description = "Mobile Device Encryption Status (Read-only)",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        firstSync = {
          description = "Date and time the device was first synchronized with the policy settings in the G Suite administrator control panel (Read-only)",
          format = "date-time",
          type = "string",
        },
        hardware = {
          description = "Mobile Device Hardware (Read-only)",
          type = "string",
        },
        hardwareId = {
          description = "The IMEI/MEID unique identifier for Android hardware. It is not applicable to Google Sync devices. When adding an Android mobile device, this is an optional property. When updating one of these devices, this is a read-only property.",
          type = "string",
        },
        imei = {
          description = "The device's IMEI number.",
          type = "string",
        },
        kernelVersion = {
          description = "The device's kernel version.",
          type = "string",
        },
        kind = {
          default = "admin#directory#mobiledevice",
          description = "The type of the API resource. For Mobiledevices resources, the value is `admin#directory#mobiledevice`.",
          type = "string",
        },
        lastSync = {
          description = "Date and time the device was last synchronized with the policy settings in the G Suite administrator control panel (Read-only)",
          format = "date-time",
          type = "string",
        },
        managedAccountIsOnOwnerProfile = {
          description = "Boolean indicating if this account is on owner/primary profile or not.",
          type = "boolean",
        },
        manufacturer = {
          description = "Mobile Device manufacturer (Read-only)",
          type = "string",
        },
        meid = {
          description = "The device's MEID number.",
          type = "string",
        },
        model = {
          description = "The mobile device's model name, for example Nexus S. This property can be [updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile=devices#update_mobile_device).",
          type = "string",
        },
        name = {
          description = "The list of the owner's user names. If your application needs the current list of device owner names, use the [get](/admin-sdk/directory/v1/reference/mobiledevices/get.html) method. For more information about retrieving mobile device user information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-users#get_user).",
          items = {
            type = "string",
          },
          type = "array",
        },
        networkOperator = {
          description = "Mobile Device mobile or network operator (if available) (Read-only)",
          type = "string",
        },
        os = {
          description = "The mobile device's operating system, for example IOS 4.3 or Android 2.3.5. This property can be [updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device).",
          type = "string",
        },
        otherAccountsInfo = {
          description = "The list of accounts added on device (Read-only)",
          items = {
            type = "string",
          },
          type = "array",
        },
        privilege = {
          description = "DMAgentPermission (Read-only)",
          type = "string",
        },
        releaseVersion = {
          description = "Mobile Device release version version (Read-only)",
          type = "string",
        },
        resourceId = {
          description = "The unique ID the API service uses to identify the mobile device.",
          type = "string",
        },
        securityPatchLevel = {
          description = "Mobile Device Security patch level (Read-only)",
          format = "int64",
          type = "string",
        },
        serialNumber = {
          description = "The device's serial number.",
          type = "string",
        },
        status = {
          description = "The device's status.",
          type = "string",
        },
        supportsWorkProfile = {
          description = "Work profile supported on device (Read-only)",
          type = "boolean",
        },
        type = {
          description = "The type of mobile device.",
          type = "string",
        },
        unknownSourcesStatus = {
          description = "Unknown sources enabled or disabled on device (Read-only)",
          type = "boolean",
        },
        userAgent = {
          description = "Gives information about the device such as `os` version. This property can be [updated](/admin-sdk/directory/v1/reference/mobiledevices/update.html). For more information, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-mobile-devices#update_mobile_device).",
          type = "string",
        },
        wifiMacAddress = {
          description = "The device's MAC address on Wi-Fi networks.",
          type = "string",
        },
      },
      type = "object",
    },
    MobileDeviceAction = {
      id = "MobileDeviceAction",
      properties = {
        action = {
          annotations = {
            required = {
              "directory.mobiledevices.action",
            },
          },
          description = "The action to be performed on the device.",
          type = "string",
        },
      },
      type = "object",
    },
    MobileDevices = {
      id = "MobileDevices",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#mobiledevices",
          description = "Kind of resource this is.",
          type = "string",
        },
        mobiledevices = {
          description = "A list of Mobile Device objects.",
          items = {
            ["$ref"] = "MobileDevice",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token used to access next page of this result.",
          type = "string",
        },
      },
      type = "object",
    },
    OrgUnit = {
      description = "Managing your account's organizational units allows you to configure your users' access to services and custom settings. For more information about common organizational unit tasks, see the [Developer's Guide](/admin-sdk/directory/v1/guides/manage-org-units.html). The customer's organizational unit hierarchy is limited to 35 levels of depth.",
      id = "OrgUnit",
      properties = {
        blockInheritance = {
          description = "Determines if a sub-organizational unit can inherit the settings of the parent organization. The default value is `false`, meaning a sub-organizational unit inherits the settings of the nearest parent organizational unit. For more information on inheritance and users in an organization structure, see the [administration help center](https://support.google.com/a/answer/4352075).",
          type = "boolean",
        },
        description = {
          description = "Description of the organizational unit.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#orgUnit",
          description = "The type of the API resource. For Orgunits resources, the value is `admin#directory#orgUnit`.",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "directory.orgunits.insert",
            },
          },
          description = "The organizational unit's path name. For example, an organizational unit's name within the /corp/support/sales_support parent path is sales_support. Required.",
          type = "string",
        },
        orgUnitId = {
          description = "The unique ID of the organizational unit.",
          type = "string",
        },
        orgUnitPath = {
          description = "The full path to the organizational unit. The `orgUnitPath` is a derived property. When listed, it is derived from `parentOrgunitPath` and organizational unit's `name`. For example, for an organizational unit named 'apps' under parent organization '/engineering', the orgUnitPath is '/engineering/apps'. In order to edit an `orgUnitPath`, either update the name of the organization or the `parentOrgunitPath`. A user's organizational unit determines which Google Workspace services the user has access to. If the user is moved to a new organization, the user's access changes. For more information about organization structures, see the [administration help center](https://support.google.com/a/answer/4352075). For more information about moving a user to a different organization, see [Update a user](/admin-sdk/directory/v1/guides/manage-users.html#update_user).",
          type = "string",
        },
        parentOrgUnitId = {
          description = "The unique ID of the parent organizational unit. Required, unless `parentOrgUnitPath` is set.",
          type = "string",
        },
        parentOrgUnitPath = {
          description = "The organizational unit's parent path. For example, /corp/sales is the parent path for /corp/sales/sales_support organizational unit. Required, unless `parentOrgUnitId` is set.",
          type = "string",
        },
      },
      type = "object",
    },
    OrgUnits = {
      id = "OrgUnits",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#orgUnits",
          description = "The type of the API resource. For Org Unit resources, the type is `admin#directory#orgUnits`.",
          type = "string",
        },
        organizationUnits = {
          description = "A list of organizational unit objects.",
          items = {
            ["$ref"] = "OrgUnit",
          },
          type = "array",
        },
      },
      type = "object",
    },
    OsUpdateStatus = {
      description = "Contains information regarding the current OS update status.",
      id = "OsUpdateStatus",
      properties = {
        rebootTime = {
          description = "Date and time of the last reboot.",
          type = "string",
        },
        state = {
          description = "The update state of an OS update.",
          enum = {
            "updateStateUnspecified",
            "updateStateNotStarted",
            "updateStateDownloadInProgress",
            "updateStateNeedReboot",
          },
          enumDescriptions = {
            "The update state is unspecified.",
            "There is an update pending but it hasn't started.",
            "The pending update is being downloaded.",
            "The device is ready to install the update, but must reboot.",
          },
          type = "string",
        },
        targetKioskAppVersion = {
          description = "New required platform version from the pending updated kiosk app.",
          type = "string",
        },
        targetOsVersion = {
          description = "New platform version of the OS image being downloaded and applied. It is only set when update status is UPDATE_STATUS_DOWNLOAD_IN_PROGRESS or UPDATE_STATUS_NEED_REBOOT. Note this could be a dummy \"0.0.0.0\" for UPDATE_STATUS_NEED_REBOOT for some edge cases, e.g. update engine is restarted without a reboot.",
          type = "string",
        },
        updateCheckTime = {
          description = "Date and time of the last update check.",
          type = "string",
        },
        updateTime = {
          description = "Date and time of the last successful OS update.",
          type = "string",
        },
      },
      type = "object",
    },
    PrintServer = {
      description = "Configuration for a print server.",
      id = "PrintServer",
      properties = {
        createTime = {
          description = "Output only. Time when the print server was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Editable. Description of the print server (as shown in the Admin console).",
          type = "string",
        },
        displayName = {
          description = "Editable. Display name of the print server (as shown in the Admin console).",
          type = "string",
        },
        id = {
          description = "Immutable. ID of the print server. Leave empty when creating.",
          type = "string",
        },
        name = {
          description = "Immutable. Resource name of the print server. Leave empty when creating. Format: `customers/{customer.id}/printServers/{print_server.id}`",
          type = "string",
        },
        orgUnitId = {
          description = "ID of the organization unit (OU) that owns this print server. This value can only be set when the print server is initially created. If it's not populated, the print server is placed under the root OU. The `org_unit_id` can be retrieved using the [Directory API](/admin-sdk/directory/reference/rest/v1/orgunits).",
          type = "string",
        },
        uri = {
          description = "Editable. Print server URI.",
          type = "string",
        },
      },
      type = "object",
    },
    PrintServerFailureInfo = {
      description = "Info about failures",
      id = "PrintServerFailureInfo",
      properties = {
        errorCode = {
          description = "Canonical code for why the update failed to apply.",
          enum = {
            "OK",
            "CANCELLED",
            "UNKNOWN",
            "INVALID_ARGUMENT",
            "DEADLINE_EXCEEDED",
            "NOT_FOUND",
            "ALREADY_EXISTS",
            "PERMISSION_DENIED",
            "UNAUTHENTICATED",
            "RESOURCE_EXHAUSTED",
            "FAILED_PRECONDITION",
            "ABORTED",
            "OUT_OF_RANGE",
            "UNIMPLEMENTED",
            "INTERNAL",
            "UNAVAILABLE",
            "DATA_LOSS",
          },
          enumDescriptions = {
            "Not an error; returned on success. HTTP Mapping: 200 OK",
            "The operation was cancelled, typically by the caller. HTTP Mapping: 499 Client Closed Request",
            "Unknown error. For example, this error may be returned when a `Status` value received from another address space belongs to an error space that is not known in this address space. Also errors raised by APIs that do not return enough error information may be converted to this error. HTTP Mapping: 500 Internal Server Error",
            "The client specified an invalid argument. Note that this differs from `FAILED_PRECONDITION`. `INVALID_ARGUMENT` indicates arguments that are problematic regardless of the state of the system (e.g., a malformed file name). HTTP Mapping: 400 Bad Request",
            "The deadline expired before the operation could complete. For operations that change the state of the system, this error may be returned even if the operation has completed successfully. For example, a successful response from a server could have been delayed long enough for the deadline to expire. HTTP Mapping: 504 Gateway Timeout",
            "Some requested entity (e.g., file or directory) was not found. Note to server developers: if a request is denied for an entire class of users, such as gradual feature rollout or undocumented allowlist, `NOT_FOUND` may be used. If a request is denied for some users within a class of users, such as user-based access control, `PERMISSION_DENIED` must be used. HTTP Mapping: 404 Not Found",
            "The entity that a client attempted to create (e.g., file or directory) already exists. HTTP Mapping: 409 Conflict",
            "The caller does not have permission to execute the specified operation. `PERMISSION_DENIED` must not be used for rejections caused by exhausting some resource (use `RESOURCE_EXHAUSTED` instead for those errors). `PERMISSION_DENIED` must not be used if the caller can not be identified (use `UNAUTHENTICATED` instead for those errors). This error code does not imply the request is valid or the requested entity exists or satisfies other pre-conditions. HTTP Mapping: 403 Forbidden",
            "The request does not have valid authentication credentials for the operation. HTTP Mapping: 401 Unauthorized",
            "Some resource has been exhausted, perhaps a per-user quota, or perhaps the entire file system is out of space. HTTP Mapping: 429 Too Many Requests",
            "The operation was rejected because the system is not in a state required for the operation's execution. For example, the directory to be deleted is non-empty, an rmdir operation is applied to a non-directory, etc. Service implementors can use the following guidelines to decide between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`: (a) Use `UNAVAILABLE` if the client can retry just the failing call. (b) Use `ABORTED` if the client should retry at a higher level. For example, when a client-specified test-and-set fails, indicating the client should restart a read-modify-write sequence. (c) Use `FAILED_PRECONDITION` if the client should not retry until the system state has been explicitly fixed. For example, if an \"rmdir\" fails because the directory is non-empty, `FAILED_PRECONDITION` should be returned since the client should not retry unless the files are deleted from the directory. HTTP Mapping: 400 Bad Request",
            "The operation was aborted, typically due to a concurrency issue such as a sequencer check failure or transaction abort. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 409 Conflict",
            "The operation was attempted past the valid range. E.g., seeking or reading past end-of-file. Unlike `INVALID_ARGUMENT`, this error indicates a problem that may be fixed if the system state changes. For example, a 32-bit file system will generate `INVALID_ARGUMENT` if asked to read at an offset that is not in the range [0,2^32-1], but it will generate `OUT_OF_RANGE` if asked to read from an offset past the current file size. There is a fair bit of overlap between `FAILED_PRECONDITION` and `OUT_OF_RANGE`. We recommend using `OUT_OF_RANGE` (the more specific error) when it applies so that callers who are iterating through a space can easily look for an `OUT_OF_RANGE` error to detect when they are done. HTTP Mapping: 400 Bad Request",
            "The operation is not implemented or is not supported/enabled in this service. HTTP Mapping: 501 Not Implemented",
            "Internal errors. This means that some invariants expected by the underlying system have been broken. This error code is reserved for serious errors. HTTP Mapping: 500 Internal Server Error",
            "The service is currently unavailable. This is most likely a transient condition, which can be corrected by retrying with a backoff. Note that it is not always safe to retry non-idempotent operations. See the guidelines above for deciding between `FAILED_PRECONDITION`, `ABORTED`, and `UNAVAILABLE`. HTTP Mapping: 503 Service Unavailable",
            "Unrecoverable data loss or corruption. HTTP Mapping: 500 Internal Server Error",
          },
          type = "string",
        },
        errorMessage = {
          description = "Failure reason message.",
          type = "string",
        },
        printServer = {
          ["$ref"] = "PrintServer",
          description = "Failed print server.",
        },
        printServerId = {
          description = "ID of a failed print server.",
          type = "string",
        },
      },
      type = "object",
    },
    Printer = {
      description = "Printer configuration.",
      id = "Printer",
      properties = {
        auxiliaryMessages = {
          description = "Output only. Auxiliary messages about issues with the printer configuration if any.",
          items = {
            ["$ref"] = "AuxiliaryMessage",
          },
          readOnly = true,
          type = "array",
        },
        createTime = {
          description = "Output only. Time when printer was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        description = {
          description = "Editable. Description of printer.",
          type = "string",
        },
        displayName = {
          description = "Editable. Name of printer.",
          type = "string",
        },
        id = {
          description = "Id of the printer. (During printer creation leave empty)",
          type = "string",
        },
        makeAndModel = {
          description = "Editable. Make and model of printer. e.g. Lexmark MS610de Value must be in format as seen in ListPrinterModels response.",
          type = "string",
        },
        name = {
          description = "The resource name of the Printer object, in the format customers/{customer-id}/printers/{printer-id} (During printer creation leave empty)",
          type = "string",
        },
        orgUnitId = {
          description = "Organization Unit that owns this printer (Only can be set during Printer creation)",
          type = "string",
        },
        uri = {
          description = "Editable. Printer URI.",
          type = "string",
        },
        useDriverlessConfig = {
          description = "Editable. flag to use driverless configuration or not. If it's set to be true, make_and_model can be ignored",
          type = "boolean",
        },
      },
      type = "object",
    },
    PrinterModel = {
      description = "Printer manufacturer and model",
      id = "PrinterModel",
      properties = {
        displayName = {
          description = "Display name. eq. \"Brother MFC-8840D\"",
          type = "string",
        },
        makeAndModel = {
          description = "Make and model as represented in \"make_and_model\" field in Printer object. eq. \"brother mfc-8840d\"",
          type = "string",
        },
        manufacturer = {
          description = "Manufacturer. eq. \"Brother\"",
          type = "string",
        },
      },
      type = "object",
    },
    Privilege = {
      id = "Privilege",
      properties = {
        childPrivileges = {
          description = "A list of child privileges. Privileges for a service form a tree. Each privilege can have a list of child privileges; this list is empty for a leaf privilege.",
          items = {
            ["$ref"] = "Privilege",
          },
          type = "array",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        isOuScopable = {
          description = "If the privilege can be restricted to an organization unit.",
          type = "boolean",
        },
        kind = {
          default = "admin#directory#privilege",
          description = "The type of the API resource. This is always `admin#directory#privilege`.",
          type = "string",
        },
        privilegeName = {
          description = "The name of the privilege.",
          type = "string",
        },
        serviceId = {
          description = "The obfuscated ID of the service this privilege is for. This value is returned with [`Privileges.list()`](/admin-sdk/directory/v1/reference/privileges/list).",
          type = "string",
        },
        serviceName = {
          description = "The name of the service this privilege is for.",
          type = "string",
        },
      },
      type = "object",
    },
    Privileges = {
      id = "Privileges",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "A list of Privilege resources.",
          items = {
            ["$ref"] = "Privilege",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#privileges",
          description = "The type of the API resource. This is always `admin#directory#privileges`.",
          type = "string",
        },
      },
      type = "object",
    },
    Role = {
      id = "Role",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        isSuperAdminRole = {
          description = "Returns `true` if the role is a super admin role.",
          type = "boolean",
        },
        isSystemRole = {
          description = "Returns `true` if this is a pre-defined system role.",
          type = "boolean",
        },
        kind = {
          default = "admin#directory#role",
          description = "The type of the API resource. This is always `admin#directory#role`.",
          type = "string",
        },
        roleDescription = {
          description = "A short description of the role.",
          type = "string",
        },
        roleId = {
          description = "ID of the role.",
          format = "int64",
          type = "string",
        },
        roleName = {
          annotations = {
            required = {
              "directory.roles.insert",
            },
          },
          description = "Name of the role.",
          type = "string",
        },
        rolePrivileges = {
          annotations = {
            required = {
              "directory.roles.insert",
            },
          },
          description = "The set of privileges that are granted to this role.",
          items = {
            properties = {
              privilegeName = {
                description = "The name of the privilege.",
                type = "string",
              },
              serviceId = {
                description = "The obfuscated ID of the service this privilege is for. This value is returned with [`Privileges.list()`](/admin-sdk/directory/v1/reference/privileges/list).",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RoleAssignment = {
      description = "Defines an assignment of a role.",
      id = "RoleAssignment",
      properties = {
        assignedTo = {
          description = "The unique ID of the entity this role is assigned to—either the `user_id` of a user or the `uniqueId` of a service account, as defined in [Identity and Access Management (IAM)](https://cloud.google.com/iam/docs/reference/rest/v1/projects.serviceAccounts).",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#roleAssignment",
          description = "The type of the API resource. This is always `admin#directory#roleAssignment`.",
          type = "string",
        },
        orgUnitId = {
          description = "If the role is restricted to an organization unit, this contains the ID for the organization unit the exercise of this role is restricted to.",
          type = "string",
        },
        roleAssignmentId = {
          description = "ID of this roleAssignment.",
          format = "int64",
          type = "string",
        },
        roleId = {
          description = "The ID of the role that is assigned.",
          format = "int64",
          type = "string",
        },
        scopeType = {
          description = "The scope in which this role is assigned.",
          type = "string",
        },
      },
      type = "object",
    },
    RoleAssignments = {
      id = "RoleAssignments",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "A list of RoleAssignment resources.",
          items = {
            ["$ref"] = "RoleAssignment",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#roleAssignments",
          description = "The type of the API resource. This is always `admin#directory#roleAssignments`.",
          type = "string",
        },
        nextPageToken = {
          type = "string",
        },
      },
      type = "object",
    },
    Roles = {
      id = "Roles",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "A list of Role resources.",
          items = {
            ["$ref"] = "Role",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#roles",
          description = "The type of the API resource. This is always `admin#directory#roles`.",
          type = "string",
        },
        nextPageToken = {
          type = "string",
        },
      },
      type = "object",
    },
    Schema = {
      description = "The type of API resource. For Schema resources, this is always `admin#directory#schema`.",
      id = "Schema",
      properties = {
        displayName = {
          annotations = {
            required = {
              "directory.schemas.insert",
            },
          },
          description = "Display name for the schema.",
          type = "string",
        },
        etag = {
          description = "The ETag of the resource.",
          type = "string",
        },
        fields = {
          annotations = {
            required = {
              "directory.schemas.insert",
              "directory.schemas.update",
            },
          },
          description = "A list of fields in the schema.",
          items = {
            ["$ref"] = "SchemaFieldSpec",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#schema",
          description = "Kind of resource this is.",
          type = "string",
        },
        schemaId = {
          description = "The unique identifier of the schema (Read-only)",
          type = "string",
        },
        schemaName = {
          annotations = {
            required = {
              "directory.schemas.insert",
            },
          },
          description = "The schema's name. Each `schema_name` must be unique within a customer. Reusing a name results in a `409: Entity already exists` error.",
          type = "string",
        },
      },
      type = "object",
    },
    SchemaFieldSpec = {
      description = "You can use schemas to add custom fields to user profiles. You can use these fields to store information such as the projects your users work on, their physical locations, their hire dates, or whatever else fits your business needs. For more information, see [Custom User Fields](/admin-sdk/directory/v1/guides/manage-schemas).",
      id = "SchemaFieldSpec",
      properties = {
        displayName = {
          annotations = {
            required = {
              "directory.schemas.insert",
              "directory.schemas.update",
            },
          },
          description = "Display Name of the field.",
          type = "string",
        },
        etag = {
          description = "The ETag of the field.",
          type = "string",
        },
        fieldId = {
          description = "The unique identifier of the field (Read-only)",
          type = "string",
        },
        fieldName = {
          annotations = {
            required = {
              "directory.schemas.insert",
              "directory.schemas.update",
            },
          },
          description = "The name of the field.",
          type = "string",
        },
        fieldType = {
          annotations = {
            required = {
              "directory.schemas.insert",
              "directory.schemas.update",
            },
          },
          description = "The type of the field.",
          type = "string",
        },
        indexed = {
          default = "true",
          description = "Boolean specifying whether the field is indexed or not. Default: `true`.",
          type = "boolean",
        },
        kind = {
          default = "admin#directory#schema#fieldspec",
          description = "The kind of resource this is. For schema fields this is always `admin#directory#schema#fieldspec`.",
          type = "string",
        },
        multiValued = {
          description = "A boolean specifying whether this is a multi-valued field or not. Default: `false`.",
          type = "boolean",
        },
        numericIndexingSpec = {
          description = "Indexing spec for a numeric field. By default, only exact match queries will be supported for numeric fields. Setting the `numericIndexingSpec` allows range queries to be supported.",
          properties = {
            maxValue = {
              description = "Maximum value of this field. This is meant to be indicative rather than enforced. Values outside this range will still be indexed, but search may not be as performant.",
              format = "double",
              type = "number",
            },
            minValue = {
              description = "Minimum value of this field. This is meant to be indicative rather than enforced. Values outside this range will still be indexed, but search may not be as performant.",
              format = "double",
              type = "number",
            },
          },
          type = "object",
        },
        readAccessType = {
          default = "ALL_DOMAIN_USERS",
          description = "Specifies who can view values of this field. See [Retrieve users as a non-administrator](/admin-sdk/directory/v1/guides/manage-users#retrieve_users_non_admin) for more information. Note: It may take up to 24 hours for changes to this field to be reflected.",
          type = "string",
        },
      },
      type = "object",
    },
    Schemas = {
      description = "JSON response template for List Schema operation in Directory API.",
      id = "Schemas",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#schemas",
          description = "Kind of resource this is.",
          type = "string",
        },
        schemas = {
          description = "A list of UserSchema objects.",
          items = {
            ["$ref"] = "Schema",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Token = {
      description = "JSON template for token resource in Directory API.",
      id = "Token",
      properties = {
        anonymous = {
          description = "Whether the application is registered with Google. The value is `true` if the application has an anonymous Client ID.",
          type = "boolean",
        },
        clientId = {
          description = "The Client ID of the application the token is issued to.",
          type = "string",
        },
        displayText = {
          description = "The displayable name of the application the token is issued to.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#token",
          description = "The type of the API resource. This is always `admin#directory#token`.",
          type = "string",
        },
        nativeApp = {
          description = "Whether the token is issued to an installed application. The value is `true` if the application is installed to a desktop or mobile device.",
          type = "boolean",
        },
        scopes = {
          description = "A list of authorization scopes the application is granted.",
          items = {
            type = "string",
          },
          type = "array",
        },
        userKey = {
          description = "The unique ID of the user that issued the token.",
          type = "string",
        },
      },
      type = "object",
    },
    Tokens = {
      description = "JSON response template for List tokens operation in Directory API.",
      id = "Tokens",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "A list of Token resources.",
          items = {
            ["$ref"] = "Token",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#tokenList",
          description = "The type of the API resource. This is always `admin#directory#tokenList`.",
          type = "string",
        },
      },
      type = "object",
    },
    User = {
      description = "The Directory API allows you to create and manage your account's users, user aliases, and user Gmail chat profile photos. For more information about common tasks, see the [User Accounts Developer's Guide](/admin-sdk/directory/v1/guides/manage-users.html) and the [User Aliases Developer's Guide](/admin-sdk/directory/v1/guides/manage-user-aliases.html).",
      id = "User",
      properties = {
        addresses = {
          description = "The list of the user's addresses. The maximum allowed data size for this field is 10KB.",
          type = "any",
        },
        agreedToTerms = {
          description = "Output only. This property is `true` if the user has completed an initial login and accepted the Terms of Service agreement.",
          readOnly = true,
          type = "boolean",
        },
        aliases = {
          description = "Output only. The list of the user's alias email addresses.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        archived = {
          description = "Indicates if user is archived.",
          type = "boolean",
        },
        changePasswordAtNextLogin = {
          description = "Indicates if the user is forced to change their password at next login. This setting doesn't apply when [the user signs in via a third-party identity provider](https://support.google.com/a/answer/60224).",
          type = "boolean",
        },
        creationTime = {
          description = "User's G Suite account creation time. (Read-only)",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        customSchemas = {
          additionalProperties = {
            ["$ref"] = "UserCustomProperties",
          },
          description = "Custom fields of the user. The key is a `schema_name` and its values are `'field_name': 'field_value'`.",
          type = "object",
        },
        customerId = {
          description = "Output only. The customer ID to [retrieve all account users](/admin-sdk/directory/v1/guides/manage-users.html#get_all_users). You can use the alias `my_customer` to represent your account's `customerId`. As a reseller administrator, you can use the resold customer account's `customerId`. To get a `customerId`, use the account's primary domain in the `domain` parameter of a [users.list](/admin-sdk/directory/v1/reference/users/list) request.",
          readOnly = true,
          type = "string",
        },
        deletionTime = {
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        emails = {
          description = "The list of the user's email addresses. The maximum allowed data size for this field is 10KB.",
          type = "any",
        },
        etag = {
          description = "Output only. ETag of the resource.",
          readOnly = true,
          type = "string",
        },
        externalIds = {
          description = "The list of external IDs for the user, such as an employee or network ID. The maximum allowed data size for this field is 2KB.",
          type = "any",
        },
        gender = {
          description = "The user's gender. The maximum allowed data size for this field is 1KB.",
          type = "any",
        },
        hashFunction = {
          description = "Stores the hash format of the `password` property. The following `hashFunction` values are allowed: * `MD5` - Accepts simple hex-encoded values. * `SHA-1` - Accepts simple hex-encoded values. * `crypt` - Compliant with the [C crypt library](https://en.wikipedia.org/wiki/Crypt_%28C%29). Supports the DES, MD5 (hash prefix `$1$`), SHA-256 (hash prefix `$5$`), and SHA-512 (hash prefix `$6$`) hash algorithms. If rounds are specified as part of the prefix, they must be 10,000 or fewer.",
          type = "string",
        },
        id = {
          description = "The unique ID for the user. A user `id` can be used as a user request URI's `userKey`.",
          type = "string",
        },
        ims = {
          description = "The list of the user's Instant Messenger (IM) accounts. A user account can have multiple ims properties. But, only one of these ims properties can be the primary IM contact. The maximum allowed data size for this field is 2KB.",
          type = "any",
        },
        includeInGlobalAddressList = {
          description = "Indicates if the user's profile is visible in the Google Workspace global address list when the contact sharing feature is enabled for the domain. For more information about excluding user profiles, see the [administration help center](https://support.google.com/a/answer/1285988).",
          type = "boolean",
        },
        ipWhitelisted = {
          description = "If `true`, the user's IP address is subject to a deprecated IP address [`allowlist`](https://support.google.com/a/answer/60752) configuration.",
          type = "boolean",
        },
        isAdmin = {
          description = "Output only. Indicates a user with super admininistrator privileges. The `isAdmin` property can only be edited in the [Make a user an administrator](/admin-sdk/directory/v1/guides/manage-users.html#make_admin) operation ( [makeAdmin](/admin-sdk/directory/v1/reference/users/makeAdmin.html) method). If edited in the user [insert](/admin-sdk/directory/v1/reference/users/insert.html) or [update](/admin-sdk/directory/v1/reference/users/update.html) methods, the edit is ignored by the API service.",
          readOnly = true,
          type = "boolean",
        },
        isDelegatedAdmin = {
          description = "Output only. Indicates if the user is a delegated administrator. Delegated administrators are supported by the API but cannot create or undelete users, or make users administrators. These requests are ignored by the API service. Roles and privileges for administrators are assigned using the [Admin console](https://support.google.com/a/answer/33325).",
          readOnly = true,
          type = "boolean",
        },
        isEnforcedIn2Sv = {
          description = "Output only. Is 2-step verification enforced (Read-only)",
          readOnly = true,
          type = "boolean",
        },
        isEnrolledIn2Sv = {
          description = "Output only. Is enrolled in 2-step verification (Read-only)",
          readOnly = true,
          type = "boolean",
        },
        isMailboxSetup = {
          description = "Output only. Indicates if the user's Google mailbox is created. This property is only applicable if the user has been assigned a Gmail license.",
          readOnly = true,
          type = "boolean",
        },
        keywords = {
          description = "The list of the user's keywords. The maximum allowed data size for this field is 1KB.",
          type = "any",
        },
        kind = {
          default = "admin#directory#user",
          description = "Output only. The type of the API resource. For Users resources, the value is `admin#directory#user`.",
          readOnly = true,
          type = "string",
        },
        languages = {
          description = "The user's languages. The maximum allowed data size for this field is 1KB.",
          type = "any",
        },
        lastLoginTime = {
          description = "User's last login time. (Read-only)",
          format = "date-time",
          readOnly = true,
          type = "string",
        },
        locations = {
          description = "The user's locations. The maximum allowed data size for this field is 10KB.",
          type = "any",
        },
        name = {
          ["$ref"] = "UserName",
          annotations = {
            required = {
              "directory.users.insert",
            },
          },
          description = "Holds the given and family names of the user, and the read-only `fullName` value. The maximum number of characters in the `givenName` and in the `familyName` values is 60. In addition, name values support unicode/UTF-8 characters, and can contain spaces, letters (a-z), numbers (0-9), dashes (-), forward slashes (/), and periods (.). For more information about character usage rules, see the [administration help center](https://support.google.com/a/answer/9193374). Maximum allowed data size for this field is 1KB.",
        },
        nonEditableAliases = {
          description = "Output only. The list of the user's non-editable alias email addresses. These are typically outside the account's primary domain or sub-domain.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
        notes = {
          description = "Notes for the user.",
          type = "any",
        },
        orgUnitPath = {
          description = "The full path of the parent organization associated with the user. If the parent organization is the top-level, it is represented as a forward slash (`/`).",
          type = "string",
        },
        organizations = {
          description = "The list of organizations the user belongs to. The maximum allowed data size for this field is 10KB.",
          type = "any",
        },
        password = {
          annotations = {
            required = {
              "directory.users.insert",
            },
          },
          description = "User's password",
          type = "string",
        },
        phones = {
          description = "The list of the user's phone numbers. The maximum allowed data size for this field is 1KB.",
          type = "any",
        },
        posixAccounts = {
          description = "The list of [POSIX](https://www.opengroup.org/austin/papers/posix_faq.html) account information for the user.",
          type = "any",
        },
        primaryEmail = {
          annotations = {
            required = {
              "directory.users.insert",
            },
          },
          description = "The user's primary email address. This property is required in a request to create a user account. The `primaryEmail` must be unique and cannot be an alias of another user.",
          type = "string",
        },
        recoveryEmail = {
          description = "Recovery email of the user.",
          type = "string",
        },
        recoveryPhone = {
          description = "Recovery phone of the user. The phone number must be in the E.164 format, starting with the plus sign (+). Example: *+16506661212*.",
          type = "string",
        },
        relations = {
          description = "The list of the user's relationships to other users. The maximum allowed data size for this field is 2KB.",
          type = "any",
        },
        sshPublicKeys = {
          description = "A list of SSH public keys.",
          type = "any",
        },
        suspended = {
          description = "Indicates if user is suspended.",
          type = "boolean",
        },
        suspensionReason = {
          description = "Output only. Has the reason a user account is suspended either by the administrator or by Google at the time of suspension. The property is returned only if the `suspended` property is `true`.",
          readOnly = true,
          type = "string",
        },
        thumbnailPhotoEtag = {
          description = "Output only. ETag of the user's photo (Read-only)",
          readOnly = true,
          type = "string",
        },
        thumbnailPhotoUrl = {
          description = "Output only. Photo Url of the user (Read-only)",
          readOnly = true,
          type = "string",
        },
        websites = {
          description = "The user's websites. The maximum allowed data size for this field is 2KB.",
          type = "any",
        },
      },
      type = "object",
    },
    UserAbout = {
      description = "JSON template for About (notes) of a user in Directory API.",
      id = "UserAbout",
      properties = {
        contentType = {
          description = "About entry can have a type which indicates the content type. It can either be plain or html. By default, notes contents are assumed to contain plain text.",
          type = "string",
        },
        value = {
          description = "Actual value of notes.",
          type = "string",
        },
      },
      type = "object",
    },
    UserAddress = {
      description = "JSON template for address.",
      id = "UserAddress",
      properties = {
        country = {
          description = "Country.",
          type = "string",
        },
        countryCode = {
          description = "Country code.",
          type = "string",
        },
        customType = {
          description = "Custom type.",
          type = "string",
        },
        extendedAddress = {
          description = "Extended Address.",
          type = "string",
        },
        formatted = {
          description = "Formatted address.",
          type = "string",
        },
        locality = {
          description = "Locality.",
          type = "string",
        },
        poBox = {
          description = "Other parts of address.",
          type = "string",
        },
        postalCode = {
          description = "Postal code.",
          type = "string",
        },
        primary = {
          description = "If this is user's primary address. Only one entry could be marked as primary.",
          type = "boolean",
        },
        region = {
          description = "Region.",
          type = "string",
        },
        sourceIsStructured = {
          description = "User supplied address was structured. Structured addresses are NOT supported at this time. You might be able to write structured addresses but any values will eventually be clobbered.",
          type = "boolean",
        },
        streetAddress = {
          description = "Street.",
          type = "string",
        },
        type = {
          description = "Each entry can have a type which indicates standard values of that entry. For example address could be of home work etc. In addition to the standard type an entry can have a custom type and can take any value. Such type should have the CUSTOM value as type and also have a customType value.",
          type = "string",
        },
      },
      type = "object",
    },
    UserAlias = {
      description = "The Directory API manages aliases, which are alternative email addresses.",
      id = "UserAlias",
      properties = {
        alias = {
          description = "The alias email address.",
          type = "string",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        id = {
          description = "The unique ID for the user.",
          type = "string",
        },
        kind = {
          description = "The type of the API resource. For Alias resources, the value is `admin#directory#alias`.",
          type = "string",
        },
        primaryEmail = {
          description = "The user's primary email address.",
          type = "string",
        },
      },
      type = "object",
    },
    UserCustomProperties = {
      additionalProperties = {
        type = "any",
      },
      description = "JSON template for a set of custom properties (i.e. all fields in a particular schema)",
      id = "UserCustomProperties",
      type = "object",
    },
    UserEmail = {
      description = "JSON template for an email.",
      id = "UserEmail",
      properties = {
        address = {
          description = "Email id of the user.",
          type = "string",
        },
        customType = {
          description = "Custom Type.",
          type = "string",
        },
        primary = {
          description = "If this is user's primary email. Only one entry could be marked as primary.",
          type = "boolean",
        },
        type = {
          description = "Each entry can have a type which indicates standard types of that entry. For example email could be of home, work etc. In addition to the standard type, an entry can have a custom type and can take any value Such types should have the CUSTOM value as type and also have a customType value.",
          type = "string",
        },
      },
      type = "object",
    },
    UserExternalId = {
      description = "JSON template for an externalId entry.",
      id = "UserExternalId",
      properties = {
        customType = {
          description = "Custom type.",
          type = "string",
        },
        type = {
          description = "The type of the Id.",
          type = "string",
        },
        value = {
          description = "The value of the id.",
          type = "string",
        },
      },
      type = "object",
    },
    UserGender = {
      id = "UserGender",
      properties = {
        addressMeAs = {
          description = "AddressMeAs. A human-readable string containing the proper way to refer to the profile owner by humans for example he/him/his or they/them/their.",
          type = "string",
        },
        customGender = {
          description = "Custom gender.",
          type = "string",
        },
        type = {
          description = "Gender.",
          type = "string",
        },
      },
      type = "object",
    },
    UserIm = {
      description = "JSON template for instant messenger of an user.",
      id = "UserIm",
      properties = {
        customProtocol = {
          description = "Custom protocol.",
          type = "string",
        },
        customType = {
          description = "Custom type.",
          type = "string",
        },
        im = {
          description = "Instant messenger id.",
          type = "string",
        },
        primary = {
          description = "If this is user's primary im. Only one entry could be marked as primary.",
          type = "boolean",
        },
        protocol = {
          description = "Protocol used in the instant messenger. It should be one of the values from ImProtocolTypes map. Similar to type it can take a CUSTOM value and specify the custom name in customProtocol field.",
          type = "string",
        },
        type = {
          description = "Each entry can have a type which indicates standard types of that entry. For example instant messengers could be of home work etc. In addition to the standard type an entry can have a custom type and can take any value. Such types should have the CUSTOM value as type and also have a customType value.",
          type = "string",
        },
      },
      type = "object",
    },
    UserKeyword = {
      description = "JSON template for a keyword entry.",
      id = "UserKeyword",
      properties = {
        customType = {
          description = "Custom Type.",
          type = "string",
        },
        type = {
          description = "Each entry can have a type which indicates standard type of that entry. For example keyword could be of type occupation or outlook. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value.",
          type = "string",
        },
        value = {
          description = "Keyword.",
          type = "string",
        },
      },
      type = "object",
    },
    UserLanguage = {
      description = "JSON template for a language entry.",
      id = "UserLanguage",
      properties = {
        customLanguage = {
          description = "Other language. User can provide their own language name if there is no corresponding ISO 639 language code. If this is set, `languageCode` can't be set.",
          type = "string",
        },
        languageCode = {
          description = "ISO 639 string representation of a language. See [Language Codes](/admin-sdk/directory/v1/languages) for the list of supported codes. Valid language codes outside the supported set will be accepted by the API but may lead to unexpected behavior. Illegal values cause `SchemaException`. If this is set, `customLanguage` can't be set.",
          type = "string",
        },
        preference = {
          description = "Optional. If present, controls whether the specified `languageCode` is the user's preferred language. If `customLanguage` is set, this can't be set. Allowed values are `preferred` and `not_preferred`.",
          type = "string",
        },
      },
      type = "object",
    },
    UserLocation = {
      description = "JSON template for a location entry.",
      id = "UserLocation",
      properties = {
        area = {
          description = "Textual location. This is most useful for display purposes to concisely describe the location. For example 'Mountain View, CA', 'Near Seattle', 'US-NYC-9TH 9A209A.''",
          type = "string",
        },
        buildingId = {
          description = "Building Identifier.",
          type = "string",
        },
        customType = {
          description = "Custom Type.",
          type = "string",
        },
        deskCode = {
          description = "Most specific textual code of individual desk location.",
          type = "string",
        },
        floorName = {
          description = "Floor name/number.",
          type = "string",
        },
        floorSection = {
          description = "Floor section. More specific location within the floor. For example if a floor is divided into sections 'A', 'B' and 'C' this field would identify one of those values.",
          type = "string",
        },
        type = {
          description = "Each entry can have a type which indicates standard types of that entry. For example location could be of types default and desk. In addition to standard type an entry can have a custom type and can give it any name. Such types should have 'custom' as type and also have a customType value.",
          type = "string",
        },
      },
      type = "object",
    },
    UserMakeAdmin = {
      id = "UserMakeAdmin",
      properties = {
        status = {
          annotations = {
            required = {
              "directory.users.makeAdmin",
            },
          },
          description = "Indicates the administrator status of the user.",
          type = "boolean",
        },
      },
      type = "object",
    },
    UserName = {
      id = "UserName",
      properties = {
        displayName = {
          description = "The user's display name. Limit: 256 characters.",
          type = "string",
        },
        familyName = {
          annotations = {
            required = {
              "directory.users.insert",
            },
          },
          description = "The user's last name. Required when creating a user account.",
          type = "string",
        },
        fullName = {
          description = "The user's full name formed by concatenating the first and last name values.",
          type = "string",
        },
        givenName = {
          annotations = {
            required = {
              "directory.users.insert",
            },
          },
          description = "The user's first name. Required when creating a user account.",
          type = "string",
        },
      },
      type = "object",
    },
    UserOrganization = {
      description = "JSON template for an organization entry.",
      id = "UserOrganization",
      properties = {
        costCenter = {
          description = "The cost center of the users department.",
          type = "string",
        },
        customType = {
          description = "Custom type.",
          type = "string",
        },
        department = {
          description = "Department within the organization.",
          type = "string",
        },
        description = {
          description = "Description of the organization.",
          type = "string",
        },
        domain = {
          description = "The domain to which the organization belongs to.",
          type = "string",
        },
        fullTimeEquivalent = {
          description = "The full-time equivalent millipercent within the organization (100000 = 100%).",
          format = "int32",
          type = "integer",
        },
        location = {
          description = "Location of the organization. This need not be fully qualified address.",
          type = "string",
        },
        name = {
          description = "Name of the organization",
          type = "string",
        },
        primary = {
          description = "If it user's primary organization.",
          type = "boolean",
        },
        symbol = {
          description = "Symbol of the organization.",
          type = "string",
        },
        title = {
          description = "Title (designation) of the user in the organization.",
          type = "string",
        },
        type = {
          description = "Each entry can have a type which indicates standard types of that entry. For example organization could be of school work etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a CustomType value.",
          type = "string",
        },
      },
      type = "object",
    },
    UserPhone = {
      description = "JSON template for a phone entry.",
      id = "UserPhone",
      properties = {
        customType = {
          description = "Custom Type.",
          type = "string",
        },
        primary = {
          description = "If this is user's primary phone or not.",
          type = "boolean",
        },
        type = {
          description = "Each entry can have a type which indicates standard types of that entry. For example phone could be of home_fax work mobile etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value.",
          type = "string",
        },
        value = {
          description = "Phone number.",
          type = "string",
        },
      },
      type = "object",
    },
    UserPhoto = {
      id = "UserPhoto",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        height = {
          description = "Height of the photo in pixels.",
          format = "int32",
          type = "integer",
        },
        id = {
          description = "The ID the API uses to uniquely identify the user.",
          type = "string",
        },
        kind = {
          default = "admin#directory#user#photo",
          description = "The type of the API resource. For Photo resources, this is `admin#directory#user#photo`.",
          type = "string",
        },
        mimeType = {
          description = "The MIME type of the photo. Allowed values are `JPEG`, `PNG`, `GIF`, `BMP`, `TIFF`, and web-safe base64 encoding.",
          type = "string",
        },
        photoData = {
          annotations = {
            required = {
              "directory.users.photos.update",
            },
          },
          description = "The user photo's upload data in [web-safe Base64](https://en.wikipedia.org/wiki/Base64#URL_applications) format in bytes. This means: * The slash (/) character is replaced with the underscore (_) character. * The plus sign (+) character is replaced with the hyphen (-) character. * The equals sign (=) character is replaced with the asterisk (*). * For padding, the period (.) character is used instead of the RFC-4648 baseURL definition which uses the equals sign (=) for padding. This is done to simplify URL-parsing. * Whatever the size of the photo being uploaded, the API downsizes it to 96x96 pixels.",
          format = "byte",
          type = "string",
        },
        primaryEmail = {
          description = "The user's primary email address.",
          type = "string",
        },
        width = {
          description = "Width of the photo in pixels.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UserPosixAccount = {
      description = "JSON template for a POSIX account entry.",
      id = "UserPosixAccount",
      properties = {
        accountId = {
          description = "A POSIX account field identifier.",
          type = "string",
        },
        gecos = {
          description = "The GECOS (user information) for this account.",
          type = "string",
        },
        gid = {
          description = "The default group ID.",
          format = "uint64",
          type = "string",
        },
        homeDirectory = {
          description = "The path to the home directory for this account.",
          type = "string",
        },
        operatingSystemType = {
          description = "The operating system type for this account.",
          type = "string",
        },
        primary = {
          description = "If this is user's primary account within the SystemId.",
          type = "boolean",
        },
        shell = {
          description = "The path to the login shell for this account.",
          type = "string",
        },
        systemId = {
          description = "System identifier for which account Username or Uid apply to.",
          type = "string",
        },
        uid = {
          description = "The POSIX compliant user ID.",
          format = "uint64",
          type = "string",
        },
        username = {
          description = "The username of the account.",
          type = "string",
        },
      },
      type = "object",
    },
    UserRelation = {
      description = "JSON template for a relation entry.",
      id = "UserRelation",
      properties = {
        customType = {
          description = "Custom Type.",
          type = "string",
        },
        type = {
          description = "The relation of the user. Some of the possible values are mother father sister brother manager assistant partner.",
          type = "string",
        },
        value = {
          description = "The name of the relation.",
          type = "string",
        },
      },
      type = "object",
    },
    UserSshPublicKey = {
      description = "JSON template for a POSIX account entry.",
      id = "UserSshPublicKey",
      properties = {
        expirationTimeUsec = {
          description = "An expiration time in microseconds since epoch.",
          format = "int64",
          type = "string",
        },
        fingerprint = {
          description = "A SHA-256 fingerprint of the SSH public key. (Read-only)",
          readOnly = true,
          type = "string",
        },
        key = {
          description = "An SSH public key.",
          type = "string",
        },
      },
      type = "object",
    },
    UserUndelete = {
      id = "UserUndelete",
      properties = {
        orgUnitPath = {
          description = "OrgUnit of User",
          type = "string",
        },
      },
      type = "object",
    },
    UserWebsite = {
      description = "JSON template for a website entry.",
      id = "UserWebsite",
      properties = {
        customType = {
          description = "Custom Type.",
          type = "string",
        },
        primary = {
          description = "If this is user's primary website or not.",
          type = "boolean",
        },
        type = {
          description = "Each entry can have a type which indicates standard types of that entry. For example website could be of home work blog etc. In addition to the standard type an entry can have a custom type and can give it any name. Such types should have the CUSTOM value as type and also have a customType value.",
          type = "string",
        },
        value = {
          description = "Website.",
          type = "string",
        },
      },
      type = "object",
    },
    Users = {
      id = "Users",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#users",
          description = "Kind of resource this is.",
          type = "string",
        },
        nextPageToken = {
          description = "Token used to access next page of this result.",
          type = "string",
        },
        trigger_event = {
          description = "Event that triggered this response (only used in case of Push Response)",
          type = "string",
        },
        users = {
          description = "A list of user objects.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VerificationCode = {
      description = "The Directory API allows you to view, generate, and invalidate backup verification codes for a user.",
      id = "VerificationCode",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#directory#verificationCode",
          description = "The type of the resource. This is always `admin#directory#verificationCode`.",
          type = "string",
        },
        userId = {
          description = "The obfuscated unique ID of the user.",
          type = "string",
        },
        verificationCode = {
          description = "A current verification code for the user. Invalidated or used verification codes are not returned as part of the result.",
          type = "string",
        },
      },
      type = "object",
    },
    VerificationCodes = {
      description = "JSON response template for list verification codes operation in Directory API.",
      id = "VerificationCodes",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "A list of verification code resources.",
          items = {
            ["$ref"] = "VerificationCode",
          },
          type = "array",
        },
        kind = {
          default = "admin#directory#verificationCodesList",
          description = "The type of the resource. This is always `admin#directory#verificationCodesList`.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Admin SDK API",
  version = "directory_v1",
}
