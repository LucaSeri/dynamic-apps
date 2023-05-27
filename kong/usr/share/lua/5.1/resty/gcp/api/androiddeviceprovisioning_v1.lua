return {
  basePath = "",
  baseUrl = "https://androiddeviceprovisioning.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Android Provisioning Partner",
  description = "Automates Android zero-touch enrollment for device resellers, customers, and EMMs.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/zero-touch/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "androiddeviceprovisioning:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://androiddeviceprovisioning.mtls.googleapis.com/",
  name = "androiddeviceprovisioning",
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
    customers = {
      methods = {
        list = {
          description = "Lists the user's customer accounts.",
          flatPath = "v1/customers",
          httpMethod = "GET",
          id = "androiddeviceprovisioning.customers.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "The maximum number of customers to show in a page of results. A number between 1 and 100 (inclusive).",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token specifying which result page to return. This field has custom validations in ListCustomersRequestValidator",
              location = "query",
              type = "string",
            },
          },
          path = "v1/customers",
          response = {
            ["$ref"] = "CustomerListCustomersResponse",
          },
        },
      },
      resources = {
        configurations = {
          methods = {
            create = {
              description = "Creates a new configuration. Once created, a customer can apply the configuration to devices.",
              flatPath = "v1/customers/{customersId}/configurations",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.customers.configurations.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The customer that manages the configuration. An API resource name in the format `customers/[CUSTOMER_ID]`. This field has custom validation in CreateConfigurationRequestValidator",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/configurations",
              request = {
                ["$ref"] = "Configuration",
              },
              response = {
                ["$ref"] = "Configuration",
              },
            },
            delete = {
              description = "Deletes an unused configuration. The API call fails if the customer has devices with the configuration applied.",
              flatPath = "v1/customers/{customersId}/configurations/{configurationsId}",
              httpMethod = "DELETE",
              id = "androiddeviceprovisioning.customers.configurations.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The configuration to delete. An API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]`. If the configuration is applied to any devices, the API call fails.",
                  location = "path",
                  pattern = "^customers/[^/]+/configurations/[^/]+$",
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
              description = "Gets the details of a configuration.",
              flatPath = "v1/customers/{customersId}/configurations/{configurationsId}",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.customers.configurations.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The configuration to get. An API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+/configurations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Configuration",
              },
            },
            list = {
              description = "Lists a customer's configurations.",
              flatPath = "v1/customers/{customersId}/configurations",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.customers.configurations.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The customer that manages the listed configurations. An API resource name in the format `customers/[CUSTOMER_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/configurations",
              response = {
                ["$ref"] = "CustomerListConfigurationsResponse",
              },
            },
            patch = {
              description = "Updates a configuration's field values.",
              flatPath = "v1/customers/{customersId}/configurations/{configurationsId}",
              httpMethod = "PATCH",
              id = "androiddeviceprovisioning.customers.configurations.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. The API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]`. Assigned by the server.",
                  location = "path",
                  pattern = "^customers/[^/]+/configurations/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The field mask applied to the target `Configuration` before updating the fields. To learn more about using field masks, read [FieldMask](/protocol-buffers/docs/reference/google.protobuf#fieldmask) in the Protocol Buffers documentation.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Configuration",
              },
              response = {
                ["$ref"] = "Configuration",
              },
            },
          },
        },
        devices = {
          methods = {
            applyConfiguration = {
              description = "Applies a Configuration to the device to register the device for zero-touch enrollment. After applying a configuration to a device, the device automatically provisions itself on first boot, or next factory reset.",
              flatPath = "v1/customers/{customersId}/devices:applyConfiguration",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.customers.devices.applyConfiguration",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The customer managing the device. An API resource name in the format `customers/[CUSTOMER_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/devices:applyConfiguration",
              request = {
                ["$ref"] = "CustomerApplyConfigurationRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
            },
            get = {
              description = "Gets the details of a device.",
              flatPath = "v1/customers/{customersId}/devices/{devicesId}",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.customers.devices.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The device to get. An API resource name in the format `customers/[CUSTOMER_ID]/devices/[DEVICE_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Device",
              },
            },
            list = {
              description = "Lists a customer's devices.",
              flatPath = "v1/customers/{customersId}/devices",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.customers.devices.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive.",
                  format = "int64",
                  location = "query",
                  type = "string",
                },
                pageToken = {
                  description = "A token specifying which result page to return.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The customer managing the devices. An API resource name in the format `customers/[CUSTOMER_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/devices",
              response = {
                ["$ref"] = "CustomerListDevicesResponse",
              },
            },
            removeConfiguration = {
              description = "Removes a configuration from device.",
              flatPath = "v1/customers/{customersId}/devices:removeConfiguration",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.customers.devices.removeConfiguration",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The customer managing the device in the format `customers/[CUSTOMER_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/devices:removeConfiguration",
              request = {
                ["$ref"] = "CustomerRemoveConfigurationRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
            },
            unclaim = {
              description = "Unclaims a device from a customer and removes it from zero-touch enrollment. After removing a device, a customer must contact their reseller to register the device into zero-touch enrollment again.",
              flatPath = "v1/customers/{customersId}/devices:unclaim",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.customers.devices.unclaim",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The customer managing the device. An API resource name in the format `customers/[CUSTOMER_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/devices:unclaim",
              request = {
                ["$ref"] = "CustomerUnclaimDeviceRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
            },
          },
        },
        dpcs = {
          methods = {
            list = {
              description = "Lists the DPCs (device policy controllers) that support zero-touch enrollment.",
              flatPath = "v1/customers/{customersId}/dpcs",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.customers.dpcs.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The customer that can use the DPCs in configurations. An API resource name in the format `customers/[CUSTOMER_ID]`.",
                  location = "path",
                  pattern = "^customers/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/dpcs",
              response = {
                ["$ref"] = "CustomerListDpcsResponse",
              },
            },
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
          id = "androiddeviceprovisioning.operations.get",
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
        },
      },
    },
    partners = {
      resources = {
        customers = {
          methods = {
            create = {
              description = "Creates a customer for zero-touch enrollment. After the method returns successfully, admin and owner roles can manage devices and EMM configs by calling API methods or using their zero-touch enrollment portal. The customer receives an email that welcomes them to zero-touch enrollment and explains how to sign into the portal.",
              flatPath = "v1/partners/{partnersId}/customers",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.customers.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The parent resource ID in the format `partners/[PARTNER_ID]` that identifies the reseller.",
                  location = "path",
                  pattern = "^partners/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/customers",
              request = {
                ["$ref"] = "CreateCustomerRequest",
              },
              response = {
                ["$ref"] = "Company",
              },
            },
            list = {
              description = "Lists the customers that are enrolled to the reseller identified by the `partnerId` argument. This list includes customers that the reseller created and customers that enrolled themselves using the portal.",
              flatPath = "v1/partners/{partnersId}/customers",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.partners.customers.list",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to be returned. If not specified or 0, all the records are returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results returned by the server.",
                  location = "query",
                  type = "string",
                },
                partnerId = {
                  description = "Required. The ID of the reseller partner.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/customers",
              response = {
                ["$ref"] = "ListCustomersResponse",
              },
            },
          },
        },
        devices = {
          methods = {
            claim = {
              description = "Claims a device for a customer and adds it to zero-touch enrollment. If the device is already claimed by another customer, the call returns an error.",
              flatPath = "v1/partners/{partnersId}/devices:claim",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.claim",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                partnerId = {
                  description = "Required. The ID of the reseller partner.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/devices:claim",
              request = {
                ["$ref"] = "ClaimDeviceRequest",
              },
              response = {
                ["$ref"] = "ClaimDeviceResponse",
              },
            },
            claimAsync = {
              description = "Claims a batch of devices for a customer asynchronously. Adds the devices to zero-touch enrollment. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).",
              flatPath = "v1/partners/{partnersId}/devices:claimAsync",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.claimAsync",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                partnerId = {
                  description = "Required. The ID of the reseller partner.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/devices:claimAsync",
              request = {
                ["$ref"] = "ClaimDevicesRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
            },
            findByIdentifier = {
              description = "Finds devices by hardware identifiers, such as IMEI.",
              flatPath = "v1/partners/{partnersId}/devices:findByIdentifier",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.findByIdentifier",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                partnerId = {
                  description = "Required. The ID of the reseller partner.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/devices:findByIdentifier",
              request = {
                ["$ref"] = "FindDevicesByDeviceIdentifierRequest",
              },
              response = {
                ["$ref"] = "FindDevicesByDeviceIdentifierResponse",
              },
            },
            findByOwner = {
              description = "Finds devices claimed for customers. The results only contain devices registered to the reseller that's identified by the `partnerId` argument. The customer's devices purchased from other resellers don't appear in the results.",
              flatPath = "v1/partners/{partnersId}/devices:findByOwner",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.findByOwner",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                partnerId = {
                  description = "Required. The ID of the reseller partner.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/devices:findByOwner",
              request = {
                ["$ref"] = "FindDevicesByOwnerRequest",
              },
              response = {
                ["$ref"] = "FindDevicesByOwnerResponse",
              },
            },
            get = {
              description = "Gets a device.",
              flatPath = "v1/partners/{partnersId}/devices/{devicesId}",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.partners.devices.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The device API resource name in the format `partners/[PARTNER_ID]/devices/[DEVICE_ID]`.",
                  location = "path",
                  pattern = "^partners/[^/]+/devices/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Device",
              },
            },
            metadata = {
              description = "Updates reseller metadata associated with the device. Android devices only.",
              flatPath = "v1/partners/{partnersId}/devices/{devicesId}/metadata",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.metadata",
              parameterOrder = {
                "metadataOwnerId",
                "deviceId",
              },
              parameters = {
                deviceId = {
                  description = "Required. The ID of the device.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
                metadataOwnerId = {
                  description = "Required. The owner of the newly set metadata. Set this to the partner ID.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+metadataOwnerId}/devices/{+deviceId}/metadata",
              request = {
                ["$ref"] = "UpdateDeviceMetadataRequest",
              },
              response = {
                ["$ref"] = "DeviceMetadata",
              },
            },
            unclaim = {
              description = "Unclaims a device from a customer and removes it from zero-touch enrollment.",
              flatPath = "v1/partners/{partnersId}/devices:unclaim",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.unclaim",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                partnerId = {
                  description = "Required. The ID of the reseller partner.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/devices:unclaim",
              request = {
                ["$ref"] = "UnclaimDeviceRequest",
              },
              response = {
                ["$ref"] = "Empty",
              },
            },
            unclaimAsync = {
              description = "Unclaims a batch of devices for a customer asynchronously. Removes the devices from zero-touch enrollment. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).",
              flatPath = "v1/partners/{partnersId}/devices:unclaimAsync",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.unclaimAsync",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                partnerId = {
                  description = "Required. The reseller partner ID.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/devices:unclaimAsync",
              request = {
                ["$ref"] = "UnclaimDevicesRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
            },
            updateMetadataAsync = {
              description = "Updates the reseller metadata attached to a batch of devices. This method updates devices asynchronously and returns an `Operation` that can be used to track progress. Read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations). Android Devices only.",
              flatPath = "v1/partners/{partnersId}/devices:updateMetadataAsync",
              httpMethod = "POST",
              id = "androiddeviceprovisioning.partners.devices.updateMetadataAsync",
              parameterOrder = {
                "partnerId",
              },
              parameters = {
                partnerId = {
                  description = "Required. The reseller partner ID.",
                  format = "int64",
                  location = "path",
                  pattern = "^[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/partners/{+partnerId}/devices:updateMetadataAsync",
              request = {
                ["$ref"] = "UpdateDeviceMetadataInBatchRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
            },
          },
        },
        vendors = {
          methods = {
            list = {
              description = "Lists the vendors of the partner.",
              flatPath = "v1/partners/{partnersId}/vendors",
              httpMethod = "GET",
              id = "androiddeviceprovisioning.partners.vendors.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "The maximum number of results to be returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results returned by the server.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The resource name in the format `partners/[PARTNER_ID]`.",
                  location = "path",
                  pattern = "^partners/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/vendors",
              response = {
                ["$ref"] = "ListVendorsResponse",
              },
            },
          },
          resources = {
            customers = {
              methods = {
                list = {
                  description = "Lists the customers of the vendor.",
                  flatPath = "v1/partners/{partnersId}/vendors/{vendorsId}/customers",
                  httpMethod = "GET",
                  id = "androiddeviceprovisioning.partners.vendors.customers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of results to be returned.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A token identifying a page of results returned by the server.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The resource name in the format `partners/[PARTNER_ID]/vendors/[VENDOR_ID]`.",
                      location = "path",
                      pattern = "^partners/[^/]+/vendors/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customers",
                  response = {
                    ["$ref"] = "ListVendorCustomersResponse",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230115",
  rootUrl = "https://androiddeviceprovisioning.googleapis.com/",
  schemas = {
    ClaimDeviceRequest = {
      description = "Request message to claim a device on behalf of a customer.",
      id = "ClaimDeviceRequest",
      properties = {
        customerId = {
          description = "The ID of the customer for whom the device is being claimed.",
          format = "int64",
          type = "string",
        },
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "Required. Required. The device identifier of the device to claim.",
        },
        deviceMetadata = {
          ["$ref"] = "DeviceMetadata",
          description = "Optional. The metadata to attach to the device.",
        },
        googleWorkspaceCustomerId = {
          description = "The Google Workspace customer ID.",
          type = "string",
        },
        preProvisioningToken = {
          description = "Optional. Must and can only be set for Chrome OS devices.",
          type = "string",
        },
        sectionType = {
          description = "Required. The section type of the device's provisioning record.",
          enum = {
            "SECTION_TYPE_UNSPECIFIED",
            "SECTION_TYPE_SIM_LOCK",
            "SECTION_TYPE_ZERO_TOUCH",
          },
          enumDescriptions = {
            "Unspecified section type.",
            "SIM-lock section type.",
            "Zero-touch enrollment section type.",
          },
          type = "string",
        },
        simlockProfileId = {
          description = "Optional. Must and can only be set when DeviceProvisioningSectionType is SECTION_TYPE_SIM_LOCK. The unique identifier of the SimLock profile (go/simlock/profiles).",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ClaimDeviceResponse = {
      description = "Response message containing device id of the claim.",
      id = "ClaimDeviceResponse",
      properties = {
        deviceId = {
          description = "The device ID of the claimed device.",
          format = "int64",
          type = "string",
        },
        deviceName = {
          description = "The resource name of the device in the format `partners/[PARTNER_ID]/devices/[DEVICE_ID]`.",
          type = "string",
        },
      },
      type = "object",
    },
    ClaimDevicesRequest = {
      description = "Request to claim devices asynchronously in batch. Claiming a device adds the device to zero-touch enrollment and shows the device in the customer's view of the portal.",
      id = "ClaimDevicesRequest",
      properties = {
        claims = {
          description = "Required. A list of device claims.",
          items = {
            ["$ref"] = "PartnerClaim",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Company = {
      description = "A reseller, vendor, or customer in the zero-touch reseller and customer APIs.",
      id = "Company",
      properties = {
        adminEmails = {
          description = "Optional. Email address of customer's users in the admin role. Each email address must be associated with a Google Account.",
          items = {
            type = "string",
          },
          type = "array",
        },
        companyId = {
          description = "Output only. The ID of the company. Assigned by the server.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        companyName = {
          description = "Required. The name of the company. For example _XYZ Corp_. Displayed to the company's employees in the zero-touch enrollment portal.",
          type = "string",
        },
        googleWorkspaceAccount = {
          ["$ref"] = "GoogleWorkspaceAccount",
          description = "Output only. The Google Workspace account associated with this customer. Only used for customer Companies.",
          readOnly = true,
        },
        languageCode = {
          description = "Input only. The preferred locale of the customer represented as a BCP47 language code. This field is validated on input and requests containing unsupported language codes will be rejected. Supported language codes: Arabic (ar) Chinese (Hong Kong) (zh-HK) Chinese (Simplified) (zh-CN) Chinese (Traditional) (zh-TW) Czech (cs) Danish (da) Dutch (nl) English (UK) (en-GB) English (US) (en-US) Filipino (fil) Finnish (fi) French (fr) German (de) Hebrew (iw) Hindi (hi) Hungarian (hu) Indonesian (id) Italian (it) Japanese (ja) Korean (ko) Norwegian (Bokmal) (no) Polish (pl) Portuguese (Brazil) (pt-BR) Portuguese (Portugal) (pt-PT) Russian (ru) Spanish (es) Spanish (Latin America) (es-419) Swedish (sv) Thai (th) Turkish (tr) Ukrainian (uk) Vietnamese (vi)",
          type = "string",
        },
        name = {
          description = "Output only. The API resource name of the company. The resource name is one of the following formats: * `partners/[PARTNER_ID]/customers/[CUSTOMER_ID]` * `partners/[PARTNER_ID]/vendors/[VENDOR_ID]` * `partners/[PARTNER_ID]/vendors/[VENDOR_ID]/customers/[CUSTOMER_ID]` Assigned by the server.",
          readOnly = true,
          type = "string",
        },
        ownerEmails = {
          description = "Required. Input only. Email address of customer's users in the owner role. At least one `owner_email` is required. Owners share the same access as admins but can also add, delete, and edit your organization's portal users.",
          items = {
            type = "string",
          },
          type = "array",
        },
        skipWelcomeEmail = {
          description = "Input only. If set to true, welcome email will not be sent to the customer. It is recommended to skip the welcome email if devices will be claimed with additional DEVICE_PROTECTION service, as the customer will receive separate emails at device claim time. This field is ignored if this is not a Zero-touch customer.",
          type = "boolean",
        },
        termsStatus = {
          description = "Output only. Whether any user from the company has accepted the latest Terms of Service (ToS). See TermsStatus.",
          enum = {
            "TERMS_STATUS_UNSPECIFIED",
            "TERMS_STATUS_NOT_ACCEPTED",
            "TERMS_STATUS_ACCEPTED",
            "TERMS_STATUS_STALE",
          },
          enumDescriptions = {
            "Default value. This value should never be set if the enum is present.",
            "None of the company's users have accepted the ToS.",
            "One (or more) of the company's users has accepted the ToS.",
            "None of the company's users has accepted the current ToS but at least one user accepted a previous ToS.",
          },
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Configuration = {
      description = "A configuration collects the provisioning options for Android devices. Each configuration combines the following: * The EMM device policy controller (DPC) installed on the devices. * EMM policies enforced on the devices. * Metadata displayed on the device to help users during setup. Customers can add as many configurations as they need. However, zero-touch enrollment works best when a customer sets a default configuration that's applied to any new devices the organization purchases.",
      id = "Configuration",
      properties = {
        companyName = {
          description = "Required. The name of the organization. Zero-touch enrollment shows this organization name to device users during device provisioning.",
          type = "string",
        },
        configurationId = {
          description = "Output only. The ID of the configuration. Assigned by the server.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        configurationName = {
          description = "Required. A short name that describes the configuration's purpose. For example, _Sales team_ or _Temporary employees_. The zero-touch enrollment portal displays this name to IT admins.",
          type = "string",
        },
        contactEmail = {
          description = "Required. The email address that device users can contact to get help. Zero-touch enrollment shows this email address to device users before device provisioning. The value is validated on input.",
          type = "string",
        },
        contactPhone = {
          description = "Required. The telephone number that device users can call, using another device, to get help. Zero-touch enrollment shows this number to device users before device provisioning. Accepts numerals, spaces, the plus sign, hyphens, and parentheses.",
          type = "string",
        },
        customMessage = {
          description = "A message, containing one or two sentences, to help device users get help or give them more details about what’s happening to their device. Zero-touch enrollment shows this message before the device is provisioned.",
          type = "string",
        },
        dpcExtras = {
          description = "The JSON-formatted EMM provisioning extras that are passed to the DPC.",
          type = "string",
        },
        dpcResourcePath = {
          description = "Required. The resource name of the selected DPC (device policy controller) in the format `customers/[CUSTOMER_ID]/dpcs/*`. To list the supported DPCs, call `customers.dpcs.list`.",
          type = "string",
        },
        isDefault = {
          description = "Required. Whether this is the default configuration that zero-touch enrollment applies to any new devices the organization purchases in the future. Only one customer configuration can be the default. Setting this value to `true`, changes the previous default configuration's `isDefault` value to `false`.",
          type = "boolean",
        },
        name = {
          description = "Output only. The API resource name in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]`. Assigned by the server.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    CreateCustomerRequest = {
      description = "Request message to create a customer.",
      id = "CreateCustomerRequest",
      properties = {
        customer = {
          ["$ref"] = "Company",
          description = "Required. The company data to populate the new customer. Must contain a value for `companyName` and at least one `owner_email` that's associated with a Google Account. The values for `companyId` and `name` must be empty.",
        },
      },
      type = "object",
    },
    CustomerApplyConfigurationRequest = {
      description = "Request message for customer to assign a configuration to device.",
      id = "CustomerApplyConfigurationRequest",
      properties = {
        configuration = {
          description = "Required. The configuration applied to the device in the format `customers/[CUSTOMER_ID]/configurations/[CONFIGURATION_ID]`.",
          type = "string",
        },
        device = {
          ["$ref"] = "DeviceReference",
          description = "Required. The device the configuration is applied to. There are custom validations in ApplyConfigurationRequestValidator",
        },
      },
      type = "object",
    },
    CustomerListConfigurationsResponse = {
      description = "Response message of customer's listing configuration.",
      id = "CustomerListConfigurationsResponse",
      properties = {
        configurations = {
          description = "The configurations.",
          items = {
            ["$ref"] = "Configuration",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomerListCustomersResponse = {
      description = "Response message for listing my customers.",
      id = "CustomerListCustomersResponse",
      properties = {
        customers = {
          description = "The customer accounts the calling user is a member of.",
          items = {
            ["$ref"] = "Company",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token used to access the next page of results. Omitted if no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomerListDevicesResponse = {
      description = "Response message of customer's liting devices.",
      id = "CustomerListDevicesResponse",
      properties = {
        devices = {
          description = "The customer's devices.",
          items = {
            ["$ref"] = "Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token used to access the next page of results. Omitted if no further results are available.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomerListDpcsResponse = {
      description = "Response message of customer's listing DPCs.",
      id = "CustomerListDpcsResponse",
      properties = {
        dpcs = {
          description = "The list of DPCs available to the customer that support zero-touch enrollment.",
          items = {
            ["$ref"] = "Dpc",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CustomerRemoveConfigurationRequest = {
      description = "Request message for customer to remove the configuration from device.",
      id = "CustomerRemoveConfigurationRequest",
      properties = {
        device = {
          ["$ref"] = "DeviceReference",
          description = "Required. The device to remove the configuration from. There are custom validations in RemoveConfigurationRequestValidator",
        },
      },
      type = "object",
    },
    CustomerUnclaimDeviceRequest = {
      description = "Request message for customer to unclaim a device.",
      id = "CustomerUnclaimDeviceRequest",
      properties = {
        device = {
          ["$ref"] = "DeviceReference",
          description = "Required. The device to unclaim. There are custom validations in UnclaimDeviceRequestValidator.",
        },
      },
      type = "object",
    },
    Device = {
      description = "An Android or Chrome OS device registered for zero-touch enrollment.",
      id = "Device",
      properties = {
        claims = {
          description = "Output only. The provisioning claims for a device. Devices claimed for zero-touch enrollment have a claim with the type `SECTION_TYPE_ZERO_TOUCH`. Call `partners.devices.unclaim` or `partners.devices.unclaimAsync` to remove the device from zero-touch enrollment.",
          items = {
            ["$ref"] = "DeviceClaim",
          },
          readOnly = true,
          type = "array",
        },
        configuration = {
          description = "Not available to resellers.",
          type = "string",
        },
        deviceId = {
          description = "Output only. The ID of the device. Assigned by the server.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "The hardware IDs that identify a manufactured device. To learn more, read [Identifiers](https://developers.google.com/zero-touch/guides/identifiers).",
        },
        deviceMetadata = {
          ["$ref"] = "DeviceMetadata",
          description = "The metadata attached to the device. Structured as key-value pairs. To learn more, read [Device metadata](https://developers.google.com/zero-touch/guides/metadata).",
        },
        name = {
          description = "Output only. The API resource name in the format `partners/[PARTNER_ID]/devices/[DEVICE_ID]`. Assigned by the server.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    DeviceClaim = {
      description = "A record of a device claimed by a reseller for a customer. Devices claimed for zero-touch enrollment have a claim with the type `SECTION_TYPE_ZERO_TOUCH`. To learn more, read [Claim devices for customers](/zero-touch/guides/how-it-works#claim).",
      id = "DeviceClaim",
      properties = {
        additionalService = {
          description = "The Additional service registered for the device.",
          enum = {
            "ADDITIONAL_SERVICE_UNSPECIFIED",
            "DEVICE_PROTECTION",
          },
          enumDescriptions = {
            "No additional service.",
            "Device protection service, also known as Android Enterprise Essentials. To claim a device with the device protection service you must enroll with the partnership team.",
          },
          type = "string",
        },
        googleWorkspaceCustomerId = {
          description = "The ID of the Google Workspace account that owns the Chrome OS device.",
          type = "string",
        },
        ownerCompanyId = {
          description = "The ID of the Customer that purchased the device.",
          format = "int64",
          type = "string",
        },
        resellerId = {
          description = "The ID of the reseller that claimed the device.",
          format = "int64",
          type = "string",
        },
        sectionType = {
          description = "Output only. The type of claim made on the device.",
          enum = {
            "SECTION_TYPE_UNSPECIFIED",
            "SECTION_TYPE_SIM_LOCK",
            "SECTION_TYPE_ZERO_TOUCH",
          },
          enumDescriptions = {
            "Unspecified section type.",
            "SIM-lock section type.",
            "Zero-touch enrollment section type.",
          },
          readOnly = true,
          type = "string",
        },
        vacationModeExpireTime = {
          description = "The timestamp when the device will exit ‘vacation mode’. This value is present iff the device is in 'vacation mode'.",
          format = "google-datetime",
          type = "string",
        },
        vacationModeStartTime = {
          description = "The timestamp when the device was put into ‘vacation mode’. This value is present iff the device is in 'vacation mode'.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceIdentifier = {
      description = "Encapsulates hardware and product IDs to identify a manufactured device. To understand requirements on identifier sets, read [Identifiers](https://developers.google.com/zero-touch/guides/identifiers).",
      id = "DeviceIdentifier",
      properties = {
        chromeOsAttestedDeviceId = {
          description = "An identifier provided by OEMs, carried through the production and sales process. Only applicable to Chrome OS devices.",
          type = "string",
        },
        deviceType = {
          description = "The type of the device",
          enum = {
            "DEVICE_TYPE_UNSPECIFIED",
            "DEVICE_TYPE_ANDROID",
            "DEVICE_TYPE_CHROME_OS",
          },
          enumDescriptions = {
            "Device type is not specified.",
            "Android device",
            "Chrome OS device",
          },
          type = "string",
        },
        imei = {
          description = "The device’s IMEI number. Validated on input.",
          type = "string",
        },
        manufacturer = {
          description = "The device manufacturer’s name. Matches the device's built-in value returned from `android.os.Build.MANUFACTURER`. Allowed values are listed in [Android manufacturers](/zero-touch/resources/manufacturer-names#manufacturers-names).",
          type = "string",
        },
        meid = {
          description = "The device’s MEID number.",
          type = "string",
        },
        model = {
          description = "The device model's name. Allowed values are listed in [Android models](/zero-touch/resources/manufacturer-names#model-names) and [Chrome OS models](https://support.google.com/chrome/a/answer/10130175#identify_compatible).",
          type = "string",
        },
        serialNumber = {
          description = "The manufacturer's serial number for the device. This value might not be unique across different device models.",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceMetadata = {
      description = "Metadata entries that can be attached to a `Device`. To learn more, read [Device metadata](https://developers.google.com/zero-touch/guides/metadata).",
      id = "DeviceMetadata",
      properties = {
        entries = {
          additionalProperties = {
            type = "string",
          },
          description = "Metadata entries recorded as key-value pairs.",
          type = "object",
        },
      },
      type = "object",
    },
    DeviceReference = {
      description = "A `DeviceReference` is an API abstraction that lets you supply a _device_ argument to a method using one of the following identifier types: * A numeric API resource ID. * Real-world hardware IDs, such as IMEI number, belonging to the manufactured device. Methods that operate on devices take a `DeviceReference` as a parameter type because it's more flexible for the caller. To learn more about device identifiers, read [Identifiers](https://developers.google.com/zero-touch/guides/identifiers).",
      id = "DeviceReference",
      properties = {
        deviceId = {
          description = "The ID of the device.",
          format = "int64",
          type = "string",
        },
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "The hardware IDs of the device.",
        },
      },
      type = "object",
    },
    DevicesLongRunningOperationMetadata = {
      description = "Tracks the status of a long-running operation to asynchronously update a batch of reseller metadata attached to devices. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).",
      id = "DevicesLongRunningOperationMetadata",
      properties = {
        devicesCount = {
          description = "The number of metadata updates in the operation. This might be different from the number of updates in the request if the API can't parse some of the updates.",
          format = "int32",
          type = "integer",
        },
        processingStatus = {
          description = "The processing status of the operation.",
          enum = {
            "BATCH_PROCESS_STATUS_UNSPECIFIED",
            "BATCH_PROCESS_PENDING",
            "BATCH_PROCESS_IN_PROGRESS",
            "BATCH_PROCESS_PROCESSED",
          },
          enumDescriptions = {
            "Invalid code. Shouldn't be used.",
            "Pending.",
            "In progress.",
            "Processed. This doesn't mean all items were processed successfully, you should check the `response` field for the result of every item.",
          },
          type = "string",
        },
        progress = {
          description = "The processing progress of the operation. Measured as a number from 0 to 100. A value of 10O doesn't always mean the operation completed—check for the inclusion of a `done` field.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    DevicesLongRunningOperationResponse = {
      description = "Tracks the status of a long-running operation to claim, unclaim, or attach metadata to devices. To learn more, read [Long‑running batch operations](/zero-touch/guides/how-it-works#operations).",
      id = "DevicesLongRunningOperationResponse",
      properties = {
        perDeviceStatus = {
          description = "The processing status for each device in the operation. One `PerDeviceStatus` per device. The list order matches the items in the original request.",
          items = {
            ["$ref"] = "OperationPerDevice",
          },
          type = "array",
        },
        successCount = {
          description = "A summary of how many items in the operation the server processed successfully. Updated as the operation progresses.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Dpc = {
      description = "An EMM's DPC ([device policy controller](http://developer.android.com/work/dpc/build-dpc.html)). Zero-touch enrollment installs a DPC (listed in the `Configuration`) on a device to maintain the customer's mobile policies. All the DPCs listed by the API support zero-touch enrollment and are available in Google Play.",
      id = "Dpc",
      properties = {
        dpcName = {
          description = "Output only. The title of the DPC app in Google Play. For example, _Google Apps Device Policy_. Useful in an application's user interface.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The API resource name in the format `customers/[CUSTOMER_ID]/dpcs/[DPC_ID]`. Assigned by the server. To maintain a reference to a DPC across customer accounts, persist and match the last path component (`DPC_ID`).",
          readOnly = true,
          type = "string",
        },
        packageName = {
          description = "Output only. The DPC's Android application ID that looks like a Java package name. Zero-touch enrollment installs the DPC app onto a device using this identifier.",
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
    FindDevicesByDeviceIdentifierRequest = {
      description = "Request to find devices.",
      id = "FindDevicesByDeviceIdentifierRequest",
      properties = {
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "Required. Required. The device identifier to search for.",
        },
        limit = {
          description = "Required. The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive.",
          format = "int64",
          type = "string",
        },
        pageToken = {
          description = "A token specifying which result page to return.",
          type = "string",
        },
      },
      type = "object",
    },
    FindDevicesByDeviceIdentifierResponse = {
      description = "Response containing found devices.",
      id = "FindDevicesByDeviceIdentifierResponse",
      properties = {
        devices = {
          description = "Found devices.",
          items = {
            ["$ref"] = "Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token used to access the next page of results. Omitted if no further results are available.",
          type = "string",
        },
        totalSize = {
          description = "The total count of items in the list irrespective of pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    FindDevicesByOwnerRequest = {
      description = "Request to find devices by customers.",
      id = "FindDevicesByOwnerRequest",
      properties = {
        customerId = {
          description = "The list of customer IDs to search for.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        googleWorkspaceCustomerId = {
          description = "The list of IDs of Google Workspace accounts to search for.",
          items = {
            type = "string",
          },
          type = "array",
        },
        limit = {
          description = "Required. The maximum number of devices to show in a page of results. Must be between 1 and 100 inclusive.",
          format = "int64",
          type = "string",
        },
        pageToken = {
          description = "A token specifying which result page to return.",
          type = "string",
        },
        sectionType = {
          description = "Required. The section type of the device's provisioning record.",
          enum = {
            "SECTION_TYPE_UNSPECIFIED",
            "SECTION_TYPE_SIM_LOCK",
            "SECTION_TYPE_ZERO_TOUCH",
          },
          enumDescriptions = {
            "Unspecified section type.",
            "SIM-lock section type.",
            "Zero-touch enrollment section type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    FindDevicesByOwnerResponse = {
      description = "Response containing found devices.",
      id = "FindDevicesByOwnerResponse",
      properties = {
        devices = {
          description = "The customer's devices.",
          items = {
            ["$ref"] = "Device",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token used to access the next page of results. Omitted if no further results are available.",
          type = "string",
        },
        totalSize = {
          description = "The total count of items in the list irrespective of pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleWorkspaceAccount = {
      description = "A Google Workspace customer.",
      id = "GoogleWorkspaceAccount",
      properties = {
        customerId = {
          description = "Required. The customer ID.",
          type = "string",
        },
        preProvisioningTokens = {
          description = "Output only. The pre-provisioning tokens previously used to claim devices.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    ListCustomersResponse = {
      description = "Response message of all customers related to this partner.",
      id = "ListCustomersResponse",
      properties = {
        customers = {
          description = "List of customers related to this reseller partner.",
          items = {
            ["$ref"] = "Company",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Omitted if no further results are available.",
          type = "string",
        },
        totalSize = {
          description = "The total count of items in the list irrespective of pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListVendorCustomersResponse = {
      description = "Response message to list customers of the vendor.",
      id = "ListVendorCustomersResponse",
      properties = {
        customers = {
          description = "List of customers of the vendor.",
          items = {
            ["$ref"] = "Company",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. Omitted if no further results are available.",
          type = "string",
        },
        totalSize = {
          description = "The total count of items in the list irrespective of pagination.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListVendorsResponse = {
      description = "Response message to list vendors of the partner.",
      id = "ListVendorsResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. Omitted if no further results are available.",
          type = "string",
        },
        totalSize = {
          description = "The total count of items in the list irrespective of pagination.",
          format = "int32",
          type = "integer",
        },
        vendors = {
          description = "List of vendors of the reseller partner. Fields `name`, `companyId` and `companyName` are populated to the Company object.",
          items = {
            ["$ref"] = "Company",
          },
          type = "array",
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
          description = "This field will always be not set if the operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`. In this case, error information for each device is set in `response.perDeviceStatus.result.status`.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "This field will contain a `DevicesLongRunningOperationMetadata` object if the operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`.",
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
          description = "This field will contain a `DevicesLongRunningOperationResponse` object if the operation is created by `claimAsync`, `unclaimAsync`, or `updateMetadataAsync`.",
          type = "object",
        },
      },
      type = "object",
    },
    OperationPerDevice = {
      description = "A task for each device in the operation. Corresponds to each device change in the request.",
      id = "OperationPerDevice",
      properties = {
        claim = {
          ["$ref"] = "PartnerClaim",
          description = "A copy of the original device-claim request received by the server.",
        },
        result = {
          ["$ref"] = "PerDeviceStatusInBatch",
          description = "The processing result for each device.",
        },
        unclaim = {
          ["$ref"] = "PartnerUnclaim",
          description = "A copy of the original device-unclaim request received by the server.",
        },
        updateMetadata = {
          ["$ref"] = "UpdateMetadataArguments",
          description = "A copy of the original metadata-update request received by the server.",
        },
      },
      type = "object",
    },
    PartnerClaim = {
      description = "Identifies one claim request.",
      id = "PartnerClaim",
      properties = {
        customerId = {
          description = "The ID of the customer for whom the device is being claimed.",
          format = "int64",
          type = "string",
        },
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "Required. Required. Device identifier of the device.",
        },
        deviceMetadata = {
          ["$ref"] = "DeviceMetadata",
          description = "Required. The metadata to attach to the device at claim.",
        },
        googleWorkspaceCustomerId = {
          description = "The Google Workspace customer ID.",
          type = "string",
        },
        preProvisioningToken = {
          description = "Optional. Must and can only be set for Chrome OS devices.",
          type = "string",
        },
        sectionType = {
          description = "Required. The section type of the device's provisioning record.",
          enum = {
            "SECTION_TYPE_UNSPECIFIED",
            "SECTION_TYPE_SIM_LOCK",
            "SECTION_TYPE_ZERO_TOUCH",
          },
          enumDescriptions = {
            "Unspecified section type.",
            "SIM-lock section type.",
            "Zero-touch enrollment section type.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    PartnerUnclaim = {
      description = "Identifies one unclaim request.",
      id = "PartnerUnclaim",
      properties = {
        deviceId = {
          description = "Required. Device ID of the device.",
          format = "int64",
          type = "string",
        },
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "Required. Device identifier of the device.",
        },
        sectionType = {
          description = "Required. The section type of the device's provisioning record.",
          enum = {
            "SECTION_TYPE_UNSPECIFIED",
            "SECTION_TYPE_SIM_LOCK",
            "SECTION_TYPE_ZERO_TOUCH",
          },
          enumDescriptions = {
            "Unspecified section type.",
            "SIM-lock section type.",
            "Zero-touch enrollment section type.",
          },
          type = "string",
        },
        vacationModeDays = {
          description = "Optional. The duration of the vacation unlock starting from when the request is processed. (1 day is treated as 24 hours)",
          format = "int32",
          type = "integer",
        },
        vacationModeExpireTime = {
          description = "Optional. The expiration time of the vacation unlock.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    PerDeviceStatusInBatch = {
      description = "Captures the processing status for each device in the operation.",
      id = "PerDeviceStatusInBatch",
      properties = {
        deviceId = {
          description = "If processing succeeds, the device ID of the device.",
          format = "int64",
          type = "string",
        },
        errorIdentifier = {
          description = "If processing fails, the error type.",
          type = "string",
        },
        errorMessage = {
          description = "If processing fails, a developer message explaining what went wrong.",
          type = "string",
        },
        status = {
          description = "The result status of the device after processing.",
          enum = {
            "SINGLE_DEVICE_STATUS_UNSPECIFIED",
            "SINGLE_DEVICE_STATUS_UNKNOWN_ERROR",
            "SINGLE_DEVICE_STATUS_OTHER_ERROR",
            "SINGLE_DEVICE_STATUS_SUCCESS",
            "SINGLE_DEVICE_STATUS_PERMISSION_DENIED",
            "SINGLE_DEVICE_STATUS_INVALID_DEVICE_IDENTIFIER",
            "SINGLE_DEVICE_STATUS_INVALID_SECTION_TYPE",
            "SINGLE_DEVICE_STATUS_SECTION_NOT_YOURS",
            "SINGLE_DEVICE_STATUS_INVALID_TOKEN",
            "SINGLE_DEVICE_STATUS_REVOKED_TOKEN",
          },
          enumDescriptions = {
            "Invalid code. Shouldn't be used.",
            "Unknown error. We don't expect this error to occur here.",
            "Other error. We know/expect this error, but there's no defined error code for the error.",
            "Success.",
            "Permission denied.",
            "Invalid device identifier.",
            "Invalid section type.",
            "This section is claimed by another company.",
            "Invalid pre-provisioning token.",
            "Revoked pre-provisioning token.",
          },
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
    UnclaimDeviceRequest = {
      description = "Request message to unclaim a device.",
      id = "UnclaimDeviceRequest",
      properties = {
        deviceId = {
          description = "Required. The device ID returned by `ClaimDevice`.",
          format = "int64",
          type = "string",
        },
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "Required. The device identifier you used when you claimed this device.",
        },
        sectionType = {
          description = "Required. The section type of the device's provisioning record.",
          enum = {
            "SECTION_TYPE_UNSPECIFIED",
            "SECTION_TYPE_SIM_LOCK",
            "SECTION_TYPE_ZERO_TOUCH",
          },
          enumDescriptions = {
            "Unspecified section type.",
            "SIM-lock section type.",
            "Zero-touch enrollment section type.",
          },
          type = "string",
        },
        vacationModeDays = {
          description = "The duration of the vacation unlock starting from when the request is processed. (1 day is treated as 24 hours)",
          format = "int32",
          type = "integer",
        },
        vacationModeExpireTime = {
          description = "The expiration time of the vacation unlock.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    UnclaimDevicesRequest = {
      description = "Request to unclaim devices asynchronously in batch.",
      id = "UnclaimDevicesRequest",
      properties = {
        unclaims = {
          description = "Required. The list of devices to unclaim.",
          items = {
            ["$ref"] = "PartnerUnclaim",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateDeviceMetadataInBatchRequest = {
      description = "Request to update device metadata in batch.",
      id = "UpdateDeviceMetadataInBatchRequest",
      properties = {
        updates = {
          description = "Required. The list of metadata updates.",
          items = {
            ["$ref"] = "UpdateMetadataArguments",
          },
          type = "array",
        },
      },
      type = "object",
    },
    UpdateDeviceMetadataRequest = {
      description = "Request to set metadata for a device.",
      id = "UpdateDeviceMetadataRequest",
      properties = {
        deviceMetadata = {
          ["$ref"] = "DeviceMetadata",
          description = "Required. The metadata to attach to the device.",
        },
      },
      type = "object",
    },
    UpdateMetadataArguments = {
      description = "Identifies metadata updates to one device.",
      id = "UpdateMetadataArguments",
      properties = {
        deviceId = {
          description = "Required. Device ID of the device.",
          format = "int64",
          type = "string",
        },
        deviceIdentifier = {
          ["$ref"] = "DeviceIdentifier",
          description = "Required. Device identifier.",
        },
        deviceMetadata = {
          ["$ref"] = "DeviceMetadata",
          description = "Required. The metadata to update.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Android Device Provisioning Partner API",
  version = "v1",
  version_module = true,
}