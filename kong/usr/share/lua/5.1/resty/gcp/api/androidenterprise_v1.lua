return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/androidenterprise"] = {
          description = "Manage corporate Android devices",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://androidenterprise.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Android Enterprise",
  description = "Manages the deployment of apps to Android Enterprise devices.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/android/work/play/emm-api",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "androidenterprise:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://androidenterprise.mtls.googleapis.com/",
  name = "androidenterprise",
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
    devices = {
      methods = {
        forceReportUpload = {
          description = "Uploads a report containing any changes in app states on the device since the last report was generated. You can call this method up to 3 times every 24 hours for a given device. If you exceed the quota, then the Google Play EMM API returns HTTP 429 Too Many Requests.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/forceReportUpload",
          httpMethod = "POST",
          id = "androidenterprise.devices.forceReportUpload",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
          },
          parameters = {
            deviceId = {
              description = "The ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/forceReportUpload",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves the details of a device.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}",
          httpMethod = "GET",
          id = "androidenterprise.devices.get",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
          },
          parameters = {
            deviceId = {
              description = "The ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}",
          response = {
            ["$ref"] = "Device",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        getState = {
          description = "Retrieves whether a device's access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state",
          httpMethod = "GET",
          id = "androidenterprise.devices.getState",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
          },
          parameters = {
            deviceId = {
              description = "The ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state",
          response = {
            ["$ref"] = "DeviceState",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Retrieves the IDs of all of a user's devices.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices",
          httpMethod = "GET",
          id = "androidenterprise.devices.list",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices",
          response = {
            ["$ref"] = "DevicesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        setState = {
          description = "Sets whether a device's access to Google services is enabled or disabled. The device state takes effect only if enforcing EMM policies on Android devices is enabled in the Google Admin Console. Otherwise, the device state is ignored and all devices are allowed access to Google services. This is only supported for Google-managed users.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state",
          httpMethod = "PUT",
          id = "androidenterprise.devices.setState",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
          },
          parameters = {
            deviceId = {
              description = "The ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/state",
          request = {
            ["$ref"] = "DeviceState",
          },
          response = {
            ["$ref"] = "DeviceState",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Updates the device policy. To ensure the policy is properly enforced, you need to prevent unmanaged accounts from accessing Google Play by setting the allowed_accounts in the managed configuration for the Google Play package. See restrict accounts in Google Play. When provisioning a new device, you should set the device policy using this method before adding the managed Google Play Account to the device, otherwise the policy will not be applied for a short period of time after adding the account to the device.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}",
          httpMethod = "PUT",
          id = "androidenterprise.devices.update",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
          },
          parameters = {
            deviceId = {
              description = "The ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Mask that identifies which fields to update. If not set, all modifiable fields will be modified. When set in a query parameter, this field should be specified as updateMask=<field1>,<field2>,...",
              location = "query",
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}",
          request = {
            ["$ref"] = "Device",
          },
          response = {
            ["$ref"] = "Device",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    enterprises = {
      methods = {
        acknowledgeNotificationSet = {
          description = "Acknowledges notifications that were received from Enterprises.PullNotificationSet to prevent subsequent calls from returning the same notifications.",
          flatPath = "androidenterprise/v1/enterprises/acknowledgeNotificationSet",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.acknowledgeNotificationSet",
          parameterOrder = {},
          parameters = {
            notificationSetId = {
              description = "The notification set ID as returned by Enterprises.PullNotificationSet. This must be provided.",
              location = "query",
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/acknowledgeNotificationSet",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        completeSignup = {
          description = "Completes the signup flow, by specifying the Completion token and Enterprise token. This request must not be called multiple times for a given Enterprise Token.",
          flatPath = "androidenterprise/v1/enterprises/completeSignup",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.completeSignup",
          parameterOrder = {},
          parameters = {
            completionToken = {
              description = "The Completion token initially returned by GenerateSignupUrl.",
              location = "query",
              type = "string",
            },
            enterpriseToken = {
              description = "The Enterprise token appended to the Callback URL.",
              location = "query",
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/completeSignup",
          response = {
            ["$ref"] = "Enterprise",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        createEnrollmentToken = {
          description = "Returns a token for device enrollment. The DPC can encode this token within the QR/NFC/zero-touch enrollment payload or fetch it before calling the on-device API to authenticate the user. The token can be generated for each device or reused across multiple devices.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/createEnrollmentToken",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.createEnrollmentToken",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            deviceType = {
              description = "Whether it’s a dedicated device or a knowledge worker device.",
              enum = {
                "unknown",
                "dedicatedDevice",
                "knowledgeWorker",
              },
              enumDescriptions = {
                "This value is unused",
                "This device is a dedicated device.",
                "This device is required to have an authenticated user.",
              },
              location = "query",
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/createEnrollmentToken",
          response = {
            ["$ref"] = "CreateEnrollmentTokenResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        createWebToken = {
          description = "Returns a unique token to access an embeddable UI. To generate a web UI, pass the generated token into the managed Google Play javascript API. Each token may only be used to start one UI session. See the javascript API documentation for further information.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/createWebToken",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.createWebToken",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/createWebToken",
          request = {
            ["$ref"] = "AdministratorWebTokenSpec",
          },
          response = {
            ["$ref"] = "AdministratorWebToken",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        enroll = {
          description = "Enrolls an enterprise with the calling EMM.",
          flatPath = "androidenterprise/v1/enterprises/enroll",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.enroll",
          parameterOrder = {
            "token",
          },
          parameters = {
            token = {
              description = "Required. The token provided by the enterprise to register the EMM.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/enroll",
          request = {
            ["$ref"] = "Enterprise",
          },
          response = {
            ["$ref"] = "Enterprise",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        generateSignupUrl = {
          description = "Generates a sign-up URL.",
          flatPath = "androidenterprise/v1/enterprises/signupUrl",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.generateSignupUrl",
          parameterOrder = {},
          parameters = {
            callbackUrl = {
              description = "The callback URL to which the Admin will be redirected after successfully creating an enterprise. Before redirecting there the system will add a single query parameter to this URL named \"enterpriseToken\" which will contain an opaque token to be used for the CompleteSignup request. Beware that this means that the URL will be parsed, the parameter added and then a new URL formatted, i.e. there may be some minor formatting changes and, more importantly, the URL must be well-formed so that it can be parsed.",
              location = "query",
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/signupUrl",
          response = {
            ["$ref"] = "SignupInfo",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves the name and domain of an enterprise.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}",
          httpMethod = "GET",
          id = "androidenterprise.enterprises.get",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}",
          response = {
            ["$ref"] = "Enterprise",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        getServiceAccount = {
          description = "Returns a service account and credentials. The service account can be bound to the enterprise by calling setAccount. The service account is unique to this enterprise and EMM, and will be deleted if the enterprise is unbound. The credentials contain private key data and are not stored server-side. This method can only be called after calling Enterprises.Enroll or Enterprises.CompleteSignup, and before Enterprises.SetAccount; at other times it will return an error. Subsequent calls after the first will generate a new, unique set of credentials, and invalidate the previously generated credentials. Once the service account is bound to the enterprise, it can be managed using the serviceAccountKeys resource.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccount",
          httpMethod = "GET",
          id = "androidenterprise.enterprises.getServiceAccount",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            keyType = {
              description = "The type of credential to return with the service account. Required.",
              enum = {
                "googleCredentials",
                "pkcs12",
              },
              enumDescriptions = {
                "Google Credentials File format.",
                "PKCS12 format. The password for the PKCS12 file is 'notasecret'. For more information, see https://tools.ietf.org/html/rfc7292. The data for keys of this type are base64 encoded according to RFC 4648 Section 4. See http://tools.ietf.org/html/rfc4648#section-4.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccount",
          response = {
            ["$ref"] = "ServiceAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        getStoreLayout = {
          description = "Returns the store layout for the enterprise. If the store layout has not been set, returns \"basic\" as the store layout type and no homepage.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout",
          httpMethod = "GET",
          id = "androidenterprise.enterprises.getStoreLayout",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout",
          response = {
            ["$ref"] = "StoreLayout",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Looks up an enterprise by domain name. This is only supported for enterprises created via the Google-initiated creation flow. Lookup of the id is not needed for enterprises created via the EMM-initiated flow since the EMM learns the enterprise ID in the callback specified in the Enterprises.generateSignupUrl call.",
          flatPath = "androidenterprise/v1/enterprises",
          httpMethod = "GET",
          id = "androidenterprise.enterprises.list",
          parameterOrder = {
            "domain",
          },
          parameters = {
            domain = {
              description = "Required. The exact primary domain name of the enterprise to look up.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises",
          response = {
            ["$ref"] = "EnterprisesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        pullNotificationSet = {
          description = "Pulls and returns a notification set for the enterprises associated with the service account authenticated for the request. The notification set may be empty if no notification are pending. A notification set returned needs to be acknowledged within 20 seconds by calling Enterprises.AcknowledgeNotificationSet, unless the notification set is empty. Notifications that are not acknowledged within the 20 seconds will eventually be included again in the response to another PullNotificationSet request, and those that are never acknowledged will ultimately be deleted according to the Google Cloud Platform Pub/Sub system policy. Multiple requests might be performed concurrently to retrieve notifications, in which case the pending notifications (if any) will be split among each caller, if any are pending. If no notifications are present, an empty notification list is returned. Subsequent requests may return more notifications once they become available.",
          flatPath = "androidenterprise/v1/enterprises/pullNotificationSet",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.pullNotificationSet",
          parameterOrder = {},
          parameters = {
            requestMode = {
              description = "The request mode for pulling notifications. Specifying waitForNotifications will cause the request to block and wait until one or more notifications are present, or return an empty notification list if no notifications are present after some time. Specifying returnImmediately will cause the request to immediately return the pending notifications, or an empty list if no notifications are present. If omitted, defaults to waitForNotifications.",
              enum = {
                "waitForNotifications",
                "returnImmediately",
              },
              enumDescriptions = {
                "Wait until one or more notifications are present.",
                "Returns immediately whether notifications are present or not.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/pullNotificationSet",
          response = {
            ["$ref"] = "NotificationSet",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        sendTestPushNotification = {
          description = "Sends a test notification to validate the EMM integration with the Google Cloud Pub/Sub service for this enterprise.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/sendTestPushNotification",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.sendTestPushNotification",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/sendTestPushNotification",
          response = {
            ["$ref"] = "EnterprisesSendTestPushNotificationResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        setAccount = {
          description = "Sets the account that will be used to authenticate to the API as the enterprise.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/account",
          httpMethod = "PUT",
          id = "androidenterprise.enterprises.setAccount",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/account",
          request = {
            ["$ref"] = "EnterpriseAccount",
          },
          response = {
            ["$ref"] = "EnterpriseAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        setStoreLayout = {
          description = "Sets the store layout for the enterprise. By default, storeLayoutType is set to \"basic\" and the basic store layout is enabled. The basic layout only contains apps approved by the admin, and that have been added to the available product set for a user (using the setAvailableProductSet call). Apps on the page are sorted in order of their product ID value. If you create a custom store layout (by setting storeLayoutType = \"custom\" and setting a homepage), the basic store layout is disabled.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout",
          httpMethod = "PUT",
          id = "androidenterprise.enterprises.setStoreLayout",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout",
          request = {
            ["$ref"] = "StoreLayout",
          },
          response = {
            ["$ref"] = "StoreLayout",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        unenroll = {
          description = "Unenrolls an enterprise from the calling EMM.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/unenroll",
          httpMethod = "POST",
          id = "androidenterprise.enterprises.unenroll",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/unenroll",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    entitlements = {
      methods = {
        delete = {
          description = "Removes an entitlement to an app for a user. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}",
          httpMethod = "DELETE",
          id = "androidenterprise.entitlements.delete",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "entitlementId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            entitlementId = {
              description = "The ID of the entitlement (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves details of an entitlement. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}",
          httpMethod = "GET",
          id = "androidenterprise.entitlements.get",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "entitlementId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            entitlementId = {
              description = "The ID of the entitlement (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}",
          response = {
            ["$ref"] = "Entitlement",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Lists all entitlements for the specified user. Only the ID is set. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements",
          httpMethod = "GET",
          id = "androidenterprise.entitlements.list",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements",
          response = {
            ["$ref"] = "EntitlementsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Adds or updates an entitlement to an app for a user. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}",
          httpMethod = "PUT",
          id = "androidenterprise.entitlements.update",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "entitlementId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            entitlementId = {
              description = "The ID of the entitlement (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            install = {
              description = "Set to true to also install the product on all the user's devices where possible. Failure to install on one or more devices will not prevent this operation from returning successfully, as long as the entitlement was successfully assigned to the user.",
              location = "query",
              type = "boolean",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/entitlements/{entitlementId}",
          request = {
            ["$ref"] = "Entitlement",
          },
          response = {
            ["$ref"] = "Entitlement",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    grouplicenses = {
      methods = {
        get = {
          description = "Retrieves details of an enterprise's group license for a product. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}",
          httpMethod = "GET",
          id = "androidenterprise.grouplicenses.get",
          parameterOrder = {
            "enterpriseId",
            "groupLicenseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            groupLicenseId = {
              description = "The ID of the product the group license is for, e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}",
          response = {
            ["$ref"] = "GroupLicense",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Retrieves IDs of all products for which the enterprise has a group license. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses",
          httpMethod = "GET",
          id = "androidenterprise.grouplicenses.list",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses",
          response = {
            ["$ref"] = "GroupLicensesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    grouplicenseusers = {
      methods = {
        list = {
          description = "Retrieves the IDs of the users who have been granted entitlements under the license. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}/users",
          httpMethod = "GET",
          id = "androidenterprise.grouplicenseusers.list",
          parameterOrder = {
            "enterpriseId",
            "groupLicenseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            groupLicenseId = {
              description = "The ID of the product the group license is for, e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/groupLicenses/{groupLicenseId}/users",
          response = {
            ["$ref"] = "GroupLicenseUsersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    installs = {
      methods = {
        delete = {
          description = "Requests to remove an app from a device. A call to get or list will still show the app as installed on the device until it is actually removed.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}",
          httpMethod = "DELETE",
          id = "androidenterprise.installs.delete",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
            "installId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            installId = {
              description = "The ID of the product represented by the install, e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves details of an installation of an app on a device.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}",
          httpMethod = "GET",
          id = "androidenterprise.installs.get",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
            "installId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            installId = {
              description = "The ID of the product represented by the install, e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}",
          response = {
            ["$ref"] = "Install",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Retrieves the details of all apps installed on the specified device.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs",
          httpMethod = "GET",
          id = "androidenterprise.installs.list",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs",
          response = {
            ["$ref"] = "InstallsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Requests to install the latest version of an app to a device. If the app is already installed, then it is updated to the latest version if necessary.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}",
          httpMethod = "PUT",
          id = "androidenterprise.installs.update",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
            "installId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            installId = {
              description = "The ID of the product represented by the install, e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/installs/{installId}",
          request = {
            ["$ref"] = "Install",
          },
          response = {
            ["$ref"] = "Install",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    managedconfigurationsfordevice = {
      methods = {
        delete = {
          description = "Removes a per-device managed configuration for an app for the specified device.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
          httpMethod = "DELETE",
          id = "androidenterprise.managedconfigurationsfordevice.delete",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
            "managedConfigurationForDeviceId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            managedConfigurationForDeviceId = {
              description = "The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves details of a per-device managed configuration.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
          httpMethod = "GET",
          id = "androidenterprise.managedconfigurationsfordevice.get",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
            "managedConfigurationForDeviceId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            managedConfigurationForDeviceId = {
              description = "The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
          response = {
            ["$ref"] = "ManagedConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Lists all the per-device managed configurations for the specified device. Only the ID is set.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice",
          httpMethod = "GET",
          id = "androidenterprise.managedconfigurationsfordevice.list",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice",
          response = {
            ["$ref"] = "ManagedConfigurationsForDeviceListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Adds or updates a per-device managed configuration for an app for the specified device.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
          httpMethod = "PUT",
          id = "androidenterprise.managedconfigurationsfordevice.update",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "deviceId",
            "managedConfigurationForDeviceId",
          },
          parameters = {
            deviceId = {
              description = "The Android ID of the device.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            managedConfigurationForDeviceId = {
              description = "The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/devices/{deviceId}/managedConfigurationsForDevice/{managedConfigurationForDeviceId}",
          request = {
            ["$ref"] = "ManagedConfiguration",
          },
          response = {
            ["$ref"] = "ManagedConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    managedconfigurationsforuser = {
      methods = {
        delete = {
          description = "Removes a per-user managed configuration for an app for the specified user.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
          httpMethod = "DELETE",
          id = "androidenterprise.managedconfigurationsforuser.delete",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "managedConfigurationForUserId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            managedConfigurationForUserId = {
              description = "The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves details of a per-user managed configuration for an app for the specified user.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
          httpMethod = "GET",
          id = "androidenterprise.managedconfigurationsforuser.get",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "managedConfigurationForUserId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            managedConfigurationForUserId = {
              description = "The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
          response = {
            ["$ref"] = "ManagedConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Lists all the per-user managed configurations for the specified user. Only the ID is set.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser",
          httpMethod = "GET",
          id = "androidenterprise.managedconfigurationsforuser.list",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser",
          response = {
            ["$ref"] = "ManagedConfigurationsForUserListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Adds or updates the managed configuration settings for an app for the specified user. If you support the Managed configurations iframe, you can apply managed configurations to a user by specifying an mcmId and its associated configuration variables (if any) in the request. Alternatively, all EMMs can apply managed configurations by passing a list of managed properties.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
          httpMethod = "PUT",
          id = "androidenterprise.managedconfigurationsforuser.update",
          parameterOrder = {
            "enterpriseId",
            "userId",
            "managedConfigurationForUserId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            managedConfigurationForUserId = {
              description = "The ID of the managed configuration (a product ID), e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/managedConfigurationsForUser/{managedConfigurationForUserId}",
          request = {
            ["$ref"] = "ManagedConfiguration",
          },
          response = {
            ["$ref"] = "ManagedConfiguration",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    managedconfigurationssettings = {
      methods = {
        list = {
          description = "Lists all the managed configurations settings for the specified app.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/managedConfigurationsSettings",
          httpMethod = "GET",
          id = "androidenterprise.managedconfigurationssettings.list",
          parameterOrder = {
            "enterpriseId",
            "productId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The ID of the product for which the managed configurations settings applies to.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/managedConfigurationsSettings",
          response = {
            ["$ref"] = "ManagedConfigurationsSettingsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    permissions = {
      methods = {
        get = {
          description = "Retrieves details of an Android app permission for display to an enterprise admin.",
          flatPath = "androidenterprise/v1/permissions/{permissionId}",
          httpMethod = "GET",
          id = "androidenterprise.permissions.get",
          parameterOrder = {
            "permissionId",
          },
          parameters = {
            language = {
              description = "The BCP47 tag for the user's preferred language (e.g. \"en-US\", \"de\")",
              location = "query",
              type = "string",
            },
            permissionId = {
              description = "The ID of the permission.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/permissions/{permissionId}",
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    products = {
      methods = {
        approve = {
          description = " Approves the specified product and the relevant app permissions, if any. The maximum number of products that you can approve per enterprise customer is 1,000. To learn how to use managed Google Play to design and create a store layout to display approved products to your users, see Store Layout Design. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations. ",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/approve",
          httpMethod = "POST",
          id = "androidenterprise.products.approve",
          parameterOrder = {
            "enterpriseId",
            "productId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/approve",
          request = {
            ["$ref"] = "ProductsApproveRequest",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        generateApprovalUrl = {
          description = "Generates a URL that can be rendered in an iframe to display the permissions (if any) of a product. An enterprise admin must view these permissions and accept them on behalf of their organization in order to approve that product. Admins should accept the displayed permissions by interacting with a separate UI element in the EMM console, which in turn should trigger the use of this URL as the approvalUrlInfo.approvalUrl property in a Products.approve call to approve the product. This URL can only be used to display permissions for up to 1 day. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations. ",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/generateApprovalUrl",
          httpMethod = "POST",
          id = "androidenterprise.products.generateApprovalUrl",
          parameterOrder = {
            "enterpriseId",
            "productId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            languageCode = {
              description = "The BCP 47 language code used for permission names and descriptions in the returned iframe, for instance \"en-US\".",
              location = "query",
              type = "string",
            },
            productId = {
              description = "The ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/generateApprovalUrl",
          response = {
            ["$ref"] = "ProductsGenerateApprovalUrlResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves details of a product for display to an enterprise admin.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}",
          httpMethod = "GET",
          id = "androidenterprise.products.get",
          parameterOrder = {
            "enterpriseId",
            "productId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The BCP47 tag for the user's preferred language (e.g. \"en-US\", \"de\").",
              location = "query",
              type = "string",
            },
            productId = {
              description = "The ID of the product, e.g. \"app:com.google.android.gm\".",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}",
          response = {
            ["$ref"] = "Product",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        getAppRestrictionsSchema = {
          description = "Retrieves the schema that defines the configurable properties for this product. All products have a schema, but this schema may be empty if no managed configurations have been defined. This schema can be used to populate a UI that allows an admin to configure the product. To apply a managed configuration based on the schema obtained using this API, see Managed Configurations through Play.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/appRestrictionsSchema",
          httpMethod = "GET",
          id = "androidenterprise.products.getAppRestrictionsSchema",
          parameterOrder = {
            "enterpriseId",
            "productId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The BCP47 tag for the user's preferred language (e.g. \"en-US\", \"de\").",
              location = "query",
              type = "string",
            },
            productId = {
              description = "The ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/appRestrictionsSchema",
          response = {
            ["$ref"] = "AppRestrictionsSchema",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        getPermissions = {
          description = "Retrieves the Android app permissions required by this app.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/permissions",
          httpMethod = "GET",
          id = "androidenterprise.products.getPermissions",
          parameterOrder = {
            "enterpriseId",
            "productId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/permissions",
          response = {
            ["$ref"] = "ProductPermissions",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Finds approved products that match a query, or all approved products if there is no query. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations. ",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products",
          httpMethod = "GET",
          id = "androidenterprise.products.list",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            approved = {
              description = "Specifies whether to search among all products (false) or among only products that have been approved (true). Only \"true\" is supported, and should be specified.",
              location = "query",
              type = "boolean",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            language = {
              description = "The BCP47 tag for the user's preferred language (e.g. \"en-US\", \"de\"). Results are returned in the language best matching the preferred language.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "Defines how many results the list operation should return. The default number depends on the resource collection.",
              format = "uint32",
              location = "query",
              type = "integer",
            },
            query = {
              description = "The search query as typed in the Google Play store search box. If omitted, all approved apps will be returned (using the pagination parameters), including apps that are not available in the store (e.g. unpublished apps).",
              location = "query",
              type = "string",
            },
            token = {
              description = "Defines the token of the page to return, usually taken from TokenPagination. This can only be used if token paging is enabled.",
              location = "query",
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products",
          response = {
            ["$ref"] = "ProductsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        unapprove = {
          description = "Unapproves the specified product (and the relevant app permissions, if any) **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/unapprove",
          httpMethod = "POST",
          id = "androidenterprise.products.unapprove",
          parameterOrder = {
            "enterpriseId",
            "productId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            productId = {
              description = "The ID of the product.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/products/{productId}/unapprove",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    serviceaccountkeys = {
      methods = {
        delete = {
          description = "Removes and invalidates the specified credentials for the service account associated with this enterprise. The calling service account must have been retrieved by calling Enterprises.GetServiceAccount and must have been set as the enterprise service account by calling Enterprises.SetAccount.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys/{keyId}",
          httpMethod = "DELETE",
          id = "androidenterprise.serviceaccountkeys.delete",
          parameterOrder = {
            "enterpriseId",
            "keyId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            keyId = {
              description = "The ID of the key.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys/{keyId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        insert = {
          description = "Generates new credentials for the service account associated with this enterprise. The calling service account must have been retrieved by calling Enterprises.GetServiceAccount and must have been set as the enterprise service account by calling Enterprises.SetAccount. Only the type of the key should be populated in the resource to be inserted.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys",
          httpMethod = "POST",
          id = "androidenterprise.serviceaccountkeys.insert",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys",
          request = {
            ["$ref"] = "ServiceAccountKey",
          },
          response = {
            ["$ref"] = "ServiceAccountKey",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Lists all active credentials for the service account associated with this enterprise. Only the ID and key type are returned. The calling service account must have been retrieved by calling Enterprises.GetServiceAccount and must have been set as the enterprise service account by calling Enterprises.SetAccount.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys",
          httpMethod = "GET",
          id = "androidenterprise.serviceaccountkeys.list",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/serviceAccountKeys",
          response = {
            ["$ref"] = "ServiceAccountKeysListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    storelayoutclusters = {
      methods = {
        delete = {
          description = "Deletes a cluster.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}",
          httpMethod = "DELETE",
          id = "androidenterprise.storelayoutclusters.delete",
          parameterOrder = {
            "enterpriseId",
            "pageId",
            "clusterId",
          },
          parameters = {
            clusterId = {
              description = "The ID of the cluster.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves details of a cluster.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}",
          httpMethod = "GET",
          id = "androidenterprise.storelayoutclusters.get",
          parameterOrder = {
            "enterpriseId",
            "pageId",
            "clusterId",
          },
          parameters = {
            clusterId = {
              description = "The ID of the cluster.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}",
          response = {
            ["$ref"] = "StoreCluster",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        insert = {
          description = "Inserts a new cluster in a page.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters",
          httpMethod = "POST",
          id = "androidenterprise.storelayoutclusters.insert",
          parameterOrder = {
            "enterpriseId",
            "pageId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters",
          request = {
            ["$ref"] = "StoreCluster",
          },
          response = {
            ["$ref"] = "StoreCluster",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Retrieves the details of all clusters on the specified page.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters",
          httpMethod = "GET",
          id = "androidenterprise.storelayoutclusters.list",
          parameterOrder = {
            "enterpriseId",
            "pageId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters",
          response = {
            ["$ref"] = "StoreLayoutClustersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Updates a cluster.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}",
          httpMethod = "PUT",
          id = "androidenterprise.storelayoutclusters.update",
          parameterOrder = {
            "enterpriseId",
            "pageId",
            "clusterId",
          },
          parameters = {
            clusterId = {
              description = "The ID of the cluster.",
              location = "path",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}/clusters/{clusterId}",
          request = {
            ["$ref"] = "StoreCluster",
          },
          response = {
            ["$ref"] = "StoreCluster",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    storelayoutpages = {
      methods = {
        delete = {
          description = "Deletes a store page.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}",
          httpMethod = "DELETE",
          id = "androidenterprise.storelayoutpages.delete",
          parameterOrder = {
            "enterpriseId",
            "pageId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves details of a store page.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}",
          httpMethod = "GET",
          id = "androidenterprise.storelayoutpages.get",
          parameterOrder = {
            "enterpriseId",
            "pageId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}",
          response = {
            ["$ref"] = "StorePage",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        insert = {
          description = "Inserts a new store page.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages",
          httpMethod = "POST",
          id = "androidenterprise.storelayoutpages.insert",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages",
          request = {
            ["$ref"] = "StorePage",
          },
          response = {
            ["$ref"] = "StorePage",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Retrieves the details of all pages in the store.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages",
          httpMethod = "GET",
          id = "androidenterprise.storelayoutpages.list",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages",
          response = {
            ["$ref"] = "StoreLayoutPagesListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Updates the content of a store page.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}",
          httpMethod = "PUT",
          id = "androidenterprise.storelayoutpages.update",
          parameterOrder = {
            "enterpriseId",
            "pageId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            pageId = {
              description = "The ID of the page.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/storeLayout/pages/{pageId}",
          request = {
            ["$ref"] = "StorePage",
          },
          response = {
            ["$ref"] = "StorePage",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    users = {
      methods = {
        delete = {
          description = "Deleted an EMM-managed user.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}",
          httpMethod = "DELETE",
          id = "androidenterprise.users.delete",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        generateAuthenticationToken = {
          description = "Generates an authentication token which the device policy client can use to provision the given EMM-managed user account on a device. The generated token is single-use and expires after a few minutes. You can provision a maximum of 10 devices per user. This call only works with EMM-managed accounts.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/authenticationToken",
          httpMethod = "POST",
          id = "androidenterprise.users.generateAuthenticationToken",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/authenticationToken",
          response = {
            ["$ref"] = "AuthenticationToken",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Retrieves a user's details.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}",
          httpMethod = "GET",
          id = "androidenterprise.users.get",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}",
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        getAvailableProductSet = {
          description = "Retrieves the set of products a user is entitled to access. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet",
          httpMethod = "GET",
          id = "androidenterprise.users.getAvailableProductSet",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet",
          response = {
            ["$ref"] = "ProductSet",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        insert = {
          description = "Creates a new EMM-managed user. The Users resource passed in the body of the request should include an accountIdentifier and an accountType. If a corresponding user already exists with the same account identifier, the user will be updated with the resource. In this case only the displayName field can be changed.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users",
          httpMethod = "POST",
          id = "androidenterprise.users.insert",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Looks up a user by primary email address. This is only supported for Google-managed users. Lookup of the id is not needed for EMM-managed users because the id is already returned in the result of the Users.insert call.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users",
          httpMethod = "GET",
          id = "androidenterprise.users.list",
          parameterOrder = {
            "enterpriseId",
            "email",
          },
          parameters = {
            email = {
              description = "Required. The exact primary email address of the user to look up.",
              location = "query",
              required = true,
              type = "string",
            },
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users",
          response = {
            ["$ref"] = "UsersListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        revokeDeviceAccess = {
          description = "Revokes access to all devices currently provisioned to the user. The user will no longer be able to use the managed Play store on any of their managed devices. This call only works with EMM-managed accounts.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/deviceAccess",
          httpMethod = "DELETE",
          id = "androidenterprise.users.revokeDeviceAccess",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/deviceAccess",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        setAvailableProductSet = {
          description = "Modifies the set of products that a user is entitled to access (referred to as *whitelisted* products). Only products that are approved or products that were previously approved (products with revoked approval) can be whitelisted. **Note:** This item has been deprecated. New integrations cannot use this method and can refer to our new recommendations.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet",
          httpMethod = "PUT",
          id = "androidenterprise.users.setAvailableProductSet",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}/availableProductSet",
          request = {
            ["$ref"] = "ProductSet",
          },
          response = {
            ["$ref"] = "ProductSet",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Updates the details of an EMM-managed user. Can be used with EMM-managed users only (not Google managed users). Pass the new details in the Users resource in the request body. Only the displayName field can be changed. Other fields must either be unset or have the currently active value.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}",
          httpMethod = "PUT",
          id = "androidenterprise.users.update",
          parameterOrder = {
            "enterpriseId",
            "userId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            userId = {
              description = "The ID of the user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/users/{userId}",
          request = {
            ["$ref"] = "User",
          },
          response = {
            ["$ref"] = "User",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
    webapps = {
      methods = {
        delete = {
          description = "Deletes an existing web app.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}",
          httpMethod = "DELETE",
          id = "androidenterprise.webapps.delete",
          parameterOrder = {
            "enterpriseId",
            "webAppId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            webAppId = {
              description = "The ID of the web app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}",
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        get = {
          description = "Gets an existing web app.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}",
          httpMethod = "GET",
          id = "androidenterprise.webapps.get",
          parameterOrder = {
            "enterpriseId",
            "webAppId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            webAppId = {
              description = "The ID of the web app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}",
          response = {
            ["$ref"] = "WebApp",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        insert = {
          description = "Creates a new web app for the enterprise.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/webApps",
          httpMethod = "POST",
          id = "androidenterprise.webapps.insert",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/webApps",
          request = {
            ["$ref"] = "WebApp",
          },
          response = {
            ["$ref"] = "WebApp",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        list = {
          description = "Retrieves the details of all web apps for a given enterprise.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/webApps",
          httpMethod = "GET",
          id = "androidenterprise.webapps.list",
          parameterOrder = {
            "enterpriseId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/webApps",
          response = {
            ["$ref"] = "WebAppsListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
        update = {
          description = "Updates an existing web app.",
          flatPath = "androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}",
          httpMethod = "PUT",
          id = "androidenterprise.webapps.update",
          parameterOrder = {
            "enterpriseId",
            "webAppId",
          },
          parameters = {
            enterpriseId = {
              description = "The ID of the enterprise.",
              location = "path",
              required = true,
              type = "string",
            },
            webAppId = {
              description = "The ID of the web app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "androidenterprise/v1/enterprises/{enterpriseId}/webApps/{webAppId}",
          request = {
            ["$ref"] = "WebApp",
          },
          response = {
            ["$ref"] = "WebApp",
          },
          scopes = {
            "https://www.googleapis.com/auth/androidenterprise",
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://androidenterprise.googleapis.com/",
  schemas = {
    Administrator = {
      description = "This represents an enterprise admin who can manage the enterprise in the managed Google Play store.",
      id = "Administrator",
      properties = {
        email = {
          description = "The admin's email address.",
          type = "string",
        },
      },
      type = "object",
    },
    AdministratorWebToken = {
      description = "A token authorizing an admin to access an iframe.",
      id = "AdministratorWebToken",
      properties = {
        token = {
          description = "An opaque token to be passed to the Play front-end to generate an iframe.",
          type = "string",
        },
      },
      type = "object",
    },
    AdministratorWebTokenSpec = {
      description = "Specification for a token used to generate iframes. The token specifies what data the admin is allowed to modify and the URI the iframe is allowed to communiate with.",
      id = "AdministratorWebTokenSpec",
      properties = {
        managedConfigurations = {
          ["$ref"] = "AdministratorWebTokenSpecManagedConfigurations",
          description = "Options for displaying the Managed Configuration page.",
        },
        parent = {
          description = "The URI of the parent frame hosting the iframe. To prevent XSS, the iframe may not be hosted at other URIs. This URI must be https. Use whitespaces to separate multiple parent URIs.",
          type = "string",
        },
        permission = {
          description = "Deprecated. Use PlaySearch.approveApps.",
          items = {
            enum = {
              "unknown",
              "approveApps",
              "manageMcm",
            },
            enumDescriptions = {
              "Unknown permission.",
              "Permission to approve and unapprove apps.",
              "Permission to manage app restrictions.",
            },
            type = "string",
          },
          type = "array",
        },
        playSearch = {
          ["$ref"] = "AdministratorWebTokenSpecPlaySearch",
          description = "Options for displaying the managed Play Search apps page.",
        },
        privateApps = {
          ["$ref"] = "AdministratorWebTokenSpecPrivateApps",
          description = "Options for displaying the Private Apps page.",
        },
        storeBuilder = {
          ["$ref"] = "AdministratorWebTokenSpecStoreBuilder",
          description = "Options for displaying the Organize apps page.",
        },
        webApps = {
          ["$ref"] = "AdministratorWebTokenSpecWebApps",
          description = "Options for displaying the Web Apps page.",
        },
        zeroTouch = {
          ["$ref"] = "AdministratorWebTokenSpecZeroTouch",
          description = "Options for displaying the Zero Touch page.",
        },
      },
      type = "object",
    },
    AdministratorWebTokenSpecManagedConfigurations = {
      id = "AdministratorWebTokenSpecManagedConfigurations",
      properties = {
        enabled = {
          description = "Whether the Managed Configuration page is displayed. Default is true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdministratorWebTokenSpecPlaySearch = {
      id = "AdministratorWebTokenSpecPlaySearch",
      properties = {
        approveApps = {
          description = "Allow access to the iframe in approve mode. Default is false.",
          type = "boolean",
        },
        enabled = {
          description = "Whether the managed Play Search apps page is displayed. Default is true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdministratorWebTokenSpecPrivateApps = {
      id = "AdministratorWebTokenSpecPrivateApps",
      properties = {
        enabled = {
          description = "Whether the Private Apps page is displayed. Default is true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdministratorWebTokenSpecStoreBuilder = {
      id = "AdministratorWebTokenSpecStoreBuilder",
      properties = {
        enabled = {
          description = "Whether the Organize apps page is displayed. Default is true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdministratorWebTokenSpecWebApps = {
      id = "AdministratorWebTokenSpecWebApps",
      properties = {
        enabled = {
          description = "Whether the Web Apps page is displayed. Default is true.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AdministratorWebTokenSpecZeroTouch = {
      id = "AdministratorWebTokenSpecZeroTouch",
      properties = {
        enabled = {
          description = "Whether zero-touch embedded UI is usable with this token. If enabled, the admin can link zero-touch customers to this enterprise.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AppRestrictionsSchema = {
      description = "Represents the list of app restrictions available to be pre-configured for the product.",
      id = "AppRestrictionsSchema",
      properties = {
        kind = {
          description = "Deprecated.",
          type = "string",
        },
        restrictions = {
          description = "The set of restrictions that make up this schema.",
          items = {
            ["$ref"] = "AppRestrictionsSchemaRestriction",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AppRestrictionsSchemaChangeEvent = {
      description = "An event generated when a new app version is uploaded to Google Play and its app restrictions schema changed. To fetch the app restrictions schema for an app, use Products.getAppRestrictionsSchema on the EMM API.",
      id = "AppRestrictionsSchemaChangeEvent",
      properties = {
        productId = {
          description = "The id of the product (e.g. \"app:com.google.android.gm\") for which the app restriction schema changed. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    AppRestrictionsSchemaRestriction = {
      description = "A restriction in the App Restriction Schema represents a piece of configuration that may be pre-applied.",
      id = "AppRestrictionsSchemaRestriction",
      properties = {
        defaultValue = {
          ["$ref"] = "AppRestrictionsSchemaRestrictionRestrictionValue",
          description = "The default value of the restriction. bundle and bundleArray restrictions never have a default value.",
        },
        description = {
          description = "A longer description of the restriction, giving more detail of what it affects.",
          type = "string",
        },
        entry = {
          description = "For choice or multiselect restrictions, the list of possible entries' human-readable names.",
          items = {
            type = "string",
          },
          type = "array",
        },
        entryValue = {
          description = "For choice or multiselect restrictions, the list of possible entries' machine-readable values. These values should be used in the configuration, either as a single string value for a choice restriction or in a stringArray for a multiselect restriction.",
          items = {
            type = "string",
          },
          type = "array",
        },
        key = {
          description = "The unique key that the product uses to identify the restriction, e.g. \"com.google.android.gm.fieldname\".",
          type = "string",
        },
        nestedRestriction = {
          description = "For bundle or bundleArray restrictions, the list of nested restrictions. A bundle restriction is always nested within a bundleArray restriction, and a bundleArray restriction is at most two levels deep.",
          items = {
            ["$ref"] = "AppRestrictionsSchemaRestriction",
          },
          type = "array",
        },
        restrictionType = {
          description = "The type of the restriction.",
          enum = {
            "bool",
            "string",
            "integer",
            "choice",
            "multiselect",
            "hidden",
            "bundle",
            "bundleArray",
          },
          enumDescriptions = {
            "A restriction of boolean type.",
            "A restriction of string type.",
            "A restriction of integer type.",
            "A choice of one item from a set.",
            "A choice of multiple items from a set.",
            "A hidden restriction of string type (the default value can be used to pass along information that cannot be modified, such as a version code).",
            "[M+ devices only] A bundle of restrictions",
            "[M+ devices only] An array of restriction bundles",
          },
          type = "string",
        },
        title = {
          description = "The name of the restriction.",
          type = "string",
        },
      },
      type = "object",
    },
    AppRestrictionsSchemaRestrictionRestrictionValue = {
      description = "A typed value for the restriction.",
      id = "AppRestrictionsSchemaRestrictionRestrictionValue",
      properties = {
        type = {
          description = "The type of the value being provided.",
          enum = {
            "bool",
            "string",
            "integer",
            "choice",
            "multiselect",
            "hidden",
            "bundle",
            "bundleArray",
          },
          enumDescriptions = {
            "A restriction of boolean type.",
            "A restriction of string type.",
            "A restriction of integer type.",
            "A choice of one item from a set.",
            "A choice of multiple items from a set.",
            "A hidden restriction of string type (the default value can be used to pass along information that cannot be modified, such as a version code).",
            "[M+ devices only] A bundle of restrictions",
            "[M+ devices only] An array of restriction bundles",
          },
          type = "string",
        },
        valueBool = {
          description = "The boolean value - this will only be present if type is bool.",
          type = "boolean",
        },
        valueInteger = {
          description = "The integer value - this will only be present if type is integer.",
          format = "int32",
          type = "integer",
        },
        valueMultiselect = {
          description = "The list of string values - this will only be present if type is multiselect.",
          items = {
            type = "string",
          },
          type = "array",
        },
        valueString = {
          description = "The string value - this will be present for types string, choice and hidden.",
          type = "string",
        },
      },
      type = "object",
    },
    AppState = {
      description = "List of states set by the app.",
      id = "AppState",
      properties = {
        keyedAppState = {
          description = "List of keyed app states. This field will always be present.",
          items = {
            ["$ref"] = "KeyedAppState",
          },
          type = "array",
        },
        packageName = {
          description = "The package name of the app. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    AppUpdateEvent = {
      description = "An event generated when a new version of an app is uploaded to Google Play. Notifications are sent for new public versions only: alpha, beta, or canary versions do not generate this event. To fetch up-to-date version history for an app, use Products.Get on the EMM API.",
      id = "AppUpdateEvent",
      properties = {
        productId = {
          description = "The id of the product (e.g. \"app:com.google.android.gm\") that was updated. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    AppVersion = {
      description = "This represents a single version of the app.",
      id = "AppVersion",
      properties = {
        isProduction = {
          description = "True if this version is a production APK.",
          type = "boolean",
        },
        track = {
          description = "Deprecated, use trackId instead.",
          enum = {
            "appTrackUnspecified",
            "production",
            "beta",
            "alpha",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        trackId = {
          description = "Track ids that the app version is published in. Replaces the track field (deprecated), but doesn't include the production track (see isProduction instead).",
          items = {
            type = "string",
          },
          type = "array",
        },
        versionCode = {
          description = "Unique increasing identifier for the app version.",
          format = "int32",
          type = "integer",
        },
        versionString = {
          description = "The string used in the Play store by the app developer to identify the version. The string is not necessarily unique or localized (for example, the string could be \"1.4\").",
          type = "string",
        },
      },
      type = "object",
    },
    ApprovalUrlInfo = {
      description = "Information on an approval URL.",
      id = "ApprovalUrlInfo",
      properties = {
        approvalUrl = {
          description = "A URL that displays a product's permissions and that can also be used to approve the product with the Products.approve call.",
          type = "string",
        },
      },
      type = "object",
    },
    AuthenticationToken = {
      description = "An AuthenticationToken is used by the EMM's device policy client on a device to provision the given EMM-managed user on that device.",
      id = "AuthenticationToken",
      properties = {
        token = {
          description = "The authentication token to be passed to the device policy client on the device where it can be used to provision the account for which this token was generated.",
          type = "string",
        },
      },
      type = "object",
    },
    AutoInstallConstraint = {
      description = "The auto-install constraint. Defines a set of restrictions for installation. At least one of the fields must be set.",
      id = "AutoInstallConstraint",
      properties = {
        chargingStateConstraint = {
          description = "Charging state constraint.",
          enum = {
            "chargingStateConstraintUnspecified",
            "chargingNotRequired",
            "chargingRequired",
          },
          enumDescriptions = {
            "",
            "Device doesn't have to be charging.",
            "Device has to be charging.",
          },
          type = "string",
        },
        deviceIdleStateConstraint = {
          description = "Device idle state constraint.",
          enum = {
            "deviceIdleStateConstraintUnspecified",
            "deviceIdleNotRequired",
            "deviceIdleRequired",
          },
          enumDescriptions = {
            "",
            "Device doesn't have to be idle, app can be installed while the user is interacting with the device.",
            "Device has to be idle.",
          },
          type = "string",
        },
        networkTypeConstraint = {
          description = "Network type constraint.",
          enum = {
            "networkTypeConstraintUnspecified",
            "anyNetwork",
            "unmeteredNetwork",
          },
          enumDescriptions = {
            "",
            "Any active networks (Wi-Fi, cellular, etc.).",
            "Any unmetered network (e.g. Wi-FI).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    AutoInstallPolicy = {
      id = "AutoInstallPolicy",
      properties = {
        autoInstallConstraint = {
          description = "The constraints for auto-installing the app. You can specify a maximum of one constraint.",
          items = {
            ["$ref"] = "AutoInstallConstraint",
          },
          type = "array",
        },
        autoInstallMode = {
          description = "The auto-install mode. If unset defaults to \"doNotAutoInstall\".",
          enum = {
            "autoInstallModeUnspecified",
            "doNotAutoInstall",
            "autoInstallOnce",
            "forceAutoInstall",
          },
          enumDescriptions = {
            "",
            "The product is not installed automatically, the user needs to install it from the Play Store.",
            "The product is automatically installed once, if the user uninstalls the product it will not be installed again.",
            "The product is automatically installed, if the user uninstalls the product it will be installed again. On managed devices the DPC should block uninstall.",
          },
          type = "string",
        },
        autoInstallPriority = {
          description = "The priority of the install, as an unsigned integer. A lower number means higher priority.",
          format = "int32",
          type = "integer",
        },
        minimumVersionCode = {
          description = "The minimum version of the app. If a lower version of the app is installed, then the app will be auto-updated according to the auto-install constraints, instead of waiting for the regular auto-update. You can set a minimum version code for at most 20 apps per device.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ConfigurationVariables = {
      description = "A configuration variables resource contains the managed configuration settings ID to be applied to a single user, as well as the variable set that is attributed to the user. The variable set will be used to replace placeholders in the managed configuration settings.",
      id = "ConfigurationVariables",
      properties = {
        mcmId = {
          description = "The ID of the managed configurations settings.",
          type = "string",
        },
        variableSet = {
          description = "The variable set that is attributed to the user.",
          items = {
            ["$ref"] = "VariableSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreateEnrollmentTokenResponse = {
      description = "Response message for create enrollment token.",
      id = "CreateEnrollmentTokenResponse",
      properties = {
        enrollmentToken = {
          description = "Enrollment token.",
          type = "string",
        },
      },
      type = "object",
    },
    Device = {
      description = "A Devices resource represents a mobile device managed by the EMM and belonging to a specific enterprise user.",
      id = "Device",
      properties = {
        androidId = {
          description = "The Google Play Services Android ID for the device encoded as a lowercase hex string. For example, \"123456789abcdef0\".",
          type = "string",
        },
        managementType = {
          description = "Identifies the extent to which the device is controlled by a managed Google Play EMM in various deployment configurations. Possible values include: - \"managedDevice\", a device that has the EMM's device policy controller (DPC) as the device owner. - \"managedProfile\", a device that has a profile managed by the DPC (DPC is profile owner) in addition to a separate, personal profile that is unavailable to the DPC. - \"containerApp\", no longer used (deprecated). - \"unmanagedProfile\", a device that has been allowed (by the domain's admin, using the Admin Console to enable the privilege) to use managed Google Play, but the profile is itself not owned by a DPC. ",
          enum = {
            "managedDevice",
            "managedProfile",
            "containerApp",
            "unmanagedProfile",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        policy = {
          ["$ref"] = "Policy",
          description = "The policy enforced on the device.",
        },
        report = {
          ["$ref"] = "DeviceReport",
          description = "The device report updated with the latest app states.",
        },
      },
      type = "object",
    },
    DeviceReport = {
      description = "Device report updated with the latest app states for managed apps on the device.",
      id = "DeviceReport",
      properties = {
        appState = {
          description = "List of app states set by managed apps on the device. App states are defined by the app's developers. This field will always be present.",
          items = {
            ["$ref"] = "AppState",
          },
          type = "array",
        },
        lastUpdatedTimestampMillis = {
          description = "The timestamp of the last report update in milliseconds since epoch. This field will always be present.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceReportUpdateEvent = {
      description = "An event generated when an updated device report is available.",
      id = "DeviceReportUpdateEvent",
      properties = {
        deviceId = {
          description = "The Android ID of the device. This field will always be present.",
          type = "string",
        },
        report = {
          ["$ref"] = "DeviceReport",
          description = "The device report updated with the latest app states. This field will always be present.",
        },
        userId = {
          description = "The ID of the user. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    DeviceState = {
      description = "The state of a user's device, as accessed by the getState and setState methods on device resources.",
      id = "DeviceState",
      properties = {
        accountState = {
          description = "The state of the Google account on the device. \"enabled\" indicates that the Google account on the device can be used to access Google services (including Google Play), while \"disabled\" means that it cannot. A new device is initially in the \"disabled\" state.",
          enum = {
            "enabled",
            "disabled",
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
    DevicesListResponse = {
      id = "DevicesListResponse",
      properties = {
        device = {
          description = "A managed device.",
          items = {
            ["$ref"] = "Device",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Enterprise = {
      description = "An Enterprises resource represents the binding between an EMM and a specific organization. That binding can be instantiated in one of two different ways using this API as follows: - For Google managed domain customers, the process involves using Enterprises.enroll and Enterprises.setAccount (in conjunction with artifacts obtained from the Admin console and the Google API Console) and submitted to the EMM through a more-or-less manual process. - For managed Google Play Accounts customers, the process involves using Enterprises.generateSignupUrl and Enterprises.completeSignup in conjunction with the managed Google Play sign-up UI (Google-provided mechanism) to create the binding without manual steps. As an EMM, you can support either or both approaches in your EMM console. See Create an Enterprise for details.",
      id = "Enterprise",
      properties = {
        administrator = {
          description = "Admins of the enterprise. This is only supported for enterprises created via the EMM-initiated flow.",
          items = {
            ["$ref"] = "Administrator",
          },
          type = "array",
        },
        googleAuthenticationSettings = {
          ["$ref"] = "GoogleAuthenticationSettings",
          description = "Output only. Settings for Google-provided user authentication.",
          readOnly = true,
        },
        id = {
          description = "The unique ID for the enterprise.",
          type = "string",
        },
        name = {
          description = "The name of the enterprise, for example, \"Example, Inc\".",
          type = "string",
        },
        primaryDomain = {
          description = "The enterprise's primary domain, such as \"example.com\".",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseAccount = {
      description = "A service account that can be used to authenticate as the enterprise to API calls that require such authentication.",
      id = "EnterpriseAccount",
      properties = {
        accountEmail = {
          description = "The email address of the service account.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterpriseAuthenticationAppLinkConfig = {
      description = "An authentication URL configuration for the authenticator app of an identity provider.",
      id = "EnterpriseAuthenticationAppLinkConfig",
      properties = {
        uri = {
          description = "An authentication url.",
          type = "string",
        },
      },
      type = "object",
    },
    EnterprisesListResponse = {
      id = "EnterprisesListResponse",
      properties = {
        enterprise = {
          description = "An enterprise.",
          items = {
            ["$ref"] = "Enterprise",
          },
          type = "array",
        },
      },
      type = "object",
    },
    EnterprisesSendTestPushNotificationResponse = {
      id = "EnterprisesSendTestPushNotificationResponse",
      properties = {
        messageId = {
          description = "The message ID of the test push notification that was sent.",
          type = "string",
        },
        topicName = {
          description = "The name of the Cloud Pub/Sub topic to which notifications for this enterprise's enrolled account will be sent.",
          type = "string",
        },
      },
      type = "object",
    },
    Entitlement = {
      description = "The presence of an Entitlements resource indicates that a user has the right to use a particular app. Entitlements are user specific, not device specific. This allows a user with an entitlement to an app to install the app on all their devices. It's also possible for a user to hold an entitlement to an app without installing the app on any device. The API can be used to create an entitlement. As an option, you can also use the API to trigger the installation of an app on all a user's managed devices at the same time the entitlement is created. If the app is free, creating the entitlement also creates a group license for that app. For paid apps, creating the entitlement consumes one license, and that license remains consumed until the entitlement is removed. If the enterprise hasn't purchased enough licenses, then no entitlement is created and the installation fails. An entitlement is also not created for an app if the app requires permissions that the enterprise hasn't accepted. If an entitlement is deleted, the app may be uninstalled from a user's device. As a best practice, uninstall the app by calling Installs.delete() before deleting the entitlement. Entitlements for apps that a user pays for on an unmanaged profile have \"userPurchase\" as the entitlement reason. These entitlements cannot be removed via the API.",
      id = "Entitlement",
      properties = {
        productId = {
          description = "The ID of the product that the entitlement is for. For example, \"app:com.google.android.gm\".",
          type = "string",
        },
        reason = {
          description = "The reason for the entitlement. For example, \"free\" for free apps. This property is temporary: it will be replaced by the acquisition kind field of group licenses.",
          enum = {
            "free",
            "groupLicense",
            "userPurchase",
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
    EntitlementsListResponse = {
      id = "EntitlementsListResponse",
      properties = {
        entitlement = {
          description = "An entitlement of a user to a product (e.g. an app). For example, a free app that they have installed, or a paid app that they have been allocated a license to.",
          items = {
            ["$ref"] = "Entitlement",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleAuthenticationSettings = {
      description = "Contains settings for Google-provided user authentication.",
      id = "GoogleAuthenticationSettings",
      properties = {
        dedicatedDevicesAllowed = {
          description = "Whether dedicated devices are allowed.",
          enum = {
            "dedicatedDevicesAllowedUnspecified",
            "disallowed",
            "allowed",
          },
          enumDescriptions = {
            "This value is unused.",
            "Dedicated devices are not allowed.",
            "Dedicated devices are allowed.",
          },
          type = "string",
        },
        googleAuthenticationRequired = {
          description = "Whether Google authentication is required.",
          enum = {
            "googleAuthenticationRequiredUnspecified",
            "notRequired",
            "required",
          },
          enumDescriptions = {
            "This value is unused.",
            "Google authentication is not required.",
            "User is required to be successfully authenticated by Google.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    GroupLicense = {
      description = "Group license objects allow you to keep track of licenses (called entitlements) for both free and paid apps. For a free app, a group license is created when an enterprise admin first approves the product in Google Play or when the first entitlement for the product is created for a user via the API. For a paid app, a group license object is only created when an enterprise admin purchases the product in Google Play for the first time. Use the API to query group licenses. A Grouplicenses resource includes the total number of licenses purchased (paid apps only) and the total number of licenses currently in use. In other words, the total number of Entitlements that exist for the product. Only one group license object is created per product and group license objects are never deleted. If a product is unapproved, its group license remains. This allows enterprise admins to keep track of any remaining entitlements for the product.",
      id = "GroupLicense",
      properties = {
        acquisitionKind = {
          description = "How this group license was acquired. \"bulkPurchase\" means that this Grouplicenses resource was created because the enterprise purchased licenses for this product; otherwise, the value is \"free\" (for free products).",
          enum = {
            "free",
            "bulkPurchase",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        approval = {
          description = "Whether the product to which this group license relates is currently approved by the enterprise. Products are approved when a group license is first created, but this approval may be revoked by an enterprise admin via Google Play. Unapproved products will not be visible to end users in collections, and new entitlements to them should not normally be created.",
          enum = {
            "approved",
            "unapproved",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        numProvisioned = {
          description = "The total number of provisioned licenses for this product. Returned by read operations, but ignored in write operations.",
          format = "int32",
          type = "integer",
        },
        numPurchased = {
          description = "The number of purchased licenses (possibly in multiple purchases). If this field is omitted, then there is no limit on the number of licenses that can be provisioned (for example, if the acquisition kind is \"free\").",
          format = "int32",
          type = "integer",
        },
        permissions = {
          description = "The permission approval status of the product. This field is only set if the product is approved. Possible states are: - \"currentApproved\", the current set of permissions is approved, but additional permissions will require the administrator to reapprove the product (If the product was approved without specifying the approved permissions setting, then this is the default behavior.), - \"needsReapproval\", the product has unapproved permissions. No additional product licenses can be assigned until the product is reapproved, - \"allCurrentAndFutureApproved\", the current permissions are approved and any future permission updates will be automatically approved without administrator review. ",
          enum = {
            "currentApproved",
            "needsReapproval",
            "allCurrentAndFutureApproved",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        productId = {
          description = "The ID of the product that the license is for. For example, \"app:com.google.android.gm\".",
          type = "string",
        },
      },
      type = "object",
    },
    GroupLicenseUsersListResponse = {
      id = "GroupLicenseUsersListResponse",
      properties = {
        user = {
          description = "A user of an enterprise.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GroupLicensesListResponse = {
      id = "GroupLicensesListResponse",
      properties = {
        groupLicense = {
          description = "A group license for a product approved for use in the enterprise.",
          items = {
            ["$ref"] = "GroupLicense",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Install = {
      description = "The existence of an Installs resource indicates that an app is installed on a particular device (or that an install is pending). The API can be used to create an install resource using the update method. This triggers the actual install of the app on the device. If the user does not already have an entitlement for the app, then an attempt is made to create one. If this fails (for example, because the app is not free and there is no available license), then the creation of the install fails. The API can also be used to update an installed app. If the update method is used on an existing install, then the app will be updated to the latest available version. Note that it is not possible to force the installation of a specific version of an app: the version code is read-only. If a user installs an app themselves (as permitted by the enterprise), then again an install resource and possibly an entitlement resource are automatically created. The API can also be used to delete an install resource, which triggers the removal of the app from the device. Note that deleting an install does not automatically remove the corresponding entitlement, even if there are no remaining installs. The install resource will also be deleted if the user uninstalls the app themselves.",
      id = "Install",
      properties = {
        installState = {
          description = "Install state. The state \"installPending\" means that an install request has recently been made and download to the device is in progress. The state \"installed\" means that the app has been installed. This field is read-only.",
          enum = {
            "installed",
            "installPending",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        productId = {
          description = "The ID of the product that the install is for. For example, \"app:com.google.android.gm\".",
          type = "string",
        },
        versionCode = {
          description = "The version of the installed product. Guaranteed to be set only if the install state is \"installed\".",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    InstallFailureEvent = {
      description = "An event generated when an app installation failed on a device",
      id = "InstallFailureEvent",
      properties = {
        deviceId = {
          description = "The Android ID of the device. This field will always be present.",
          type = "string",
        },
        failureDetails = {
          description = "Additional details on the failure if applicable.",
          type = "string",
        },
        failureReason = {
          description = "The reason for the installation failure. This field will always be present.",
          enum = {
            "unknown",
            "timeout",
          },
          enumDescriptions = {
            "Used whenever no better reason for failure can be provided.",
            "Used when the installation timed out. This can cover a number of situations, for example when the device did not have connectivity at any point during the retry period, or if the device is OOM.",
          },
          type = "string",
        },
        productId = {
          description = "The id of the product (e.g. \"app:com.google.android.gm\") for which the install failure event occured. This field will always be present.",
          type = "string",
        },
        userId = {
          description = "The ID of the user. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    InstallsListResponse = {
      id = "InstallsListResponse",
      properties = {
        install = {
          description = "An installation of an app for a user on a specific device. The existence of an install implies that the user must have an entitlement to the app.",
          items = {
            ["$ref"] = "Install",
          },
          type = "array",
        },
      },
      type = "object",
    },
    KeyedAppState = {
      description = "Represents a keyed app state containing a key, timestamp, severity level, optional description, and optional data.",
      id = "KeyedAppState",
      properties = {
        data = {
          description = "Additional field intended for machine-readable data. For example, a number or JSON object. To prevent XSS, we recommend removing any HTML from the data before displaying it.",
          type = "string",
        },
        key = {
          description = "Key indicating what the app is providing a state for. The content of the key is set by the app's developer. To prevent XSS, we recommend removing any HTML from the key before displaying it. This field will always be present.",
          type = "string",
        },
        message = {
          description = "Free-form, human-readable message describing the app state. For example, an error message. To prevent XSS, we recommend removing any HTML from the message before displaying it.",
          type = "string",
        },
        severity = {
          description = "Severity of the app state. This field will always be present.",
          enum = {
            "severityUnknown",
            "severityInfo",
            "severityError",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        stateTimestampMillis = {
          description = "Timestamp of when the app set the state in milliseconds since epoch. This field will always be present.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    LocalizedText = {
      description = "A localized string with its locale.",
      id = "LocalizedText",
      properties = {
        locale = {
          description = "The BCP47 tag for a locale. (e.g. \"en-US\", \"de\").",
          type = "string",
        },
        text = {
          description = "The text localized in the associated locale.",
          type = "string",
        },
      },
      type = "object",
    },
    MaintenanceWindow = {
      description = "Maintenance window for managed Google Play Accounts. This allows Play store to update the apps on the foreground in the designated window.",
      id = "MaintenanceWindow",
      properties = {
        durationMs = {
          description = "Duration of the maintenance window, in milliseconds. The duration must be between 30 minutes and 24 hours (inclusive).",
          format = "int64",
          type = "string",
        },
        startTimeAfterMidnightMs = {
          description = "Start time of the maintenance window, in milliseconds after midnight on the device. Windows can span midnight.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedConfiguration = {
      description = "A managed configuration resource contains the set of managed properties defined by the app developer in the app's managed configurations schema, as well as any configuration variables defined for the user.",
      id = "ManagedConfiguration",
      properties = {
        configurationVariables = {
          ["$ref"] = "ConfigurationVariables",
          description = "Contains the ID of the managed configuration profile and the set of configuration variables (if any) defined for the user.",
        },
        kind = {
          description = "Deprecated.",
          type = "string",
        },
        managedProperty = {
          description = "The set of managed properties for this configuration.",
          items = {
            ["$ref"] = "ManagedProperty",
          },
          type = "array",
        },
        productId = {
          description = "The ID of the product that the managed configuration is for, e.g. \"app:com.google.android.gm\".",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedConfigurationsForDeviceListResponse = {
      id = "ManagedConfigurationsForDeviceListResponse",
      properties = {
        managedConfigurationForDevice = {
          description = "A managed configuration for an app on a specific device.",
          items = {
            ["$ref"] = "ManagedConfiguration",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManagedConfigurationsForUserListResponse = {
      id = "ManagedConfigurationsForUserListResponse",
      properties = {
        managedConfigurationForUser = {
          description = "A managed configuration for an app for a specific user.",
          items = {
            ["$ref"] = "ManagedConfiguration",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManagedConfigurationsSettings = {
      description = "A managed configurations settings resource contains the set of managed properties that have been configured for an Android app to be applied to a set of users. The app's developer would have defined configurable properties in the managed configurations schema.",
      id = "ManagedConfigurationsSettings",
      properties = {
        lastUpdatedTimestampMillis = {
          description = "The last updated time of the managed configuration settings in milliseconds since 1970-01-01T00:00:00Z.",
          format = "int64",
          type = "string",
        },
        mcmId = {
          description = "The ID of the managed configurations settings.",
          type = "string",
        },
        name = {
          description = "The name of the managed configurations settings.",
          type = "string",
        },
      },
      type = "object",
    },
    ManagedConfigurationsSettingsListResponse = {
      id = "ManagedConfigurationsSettingsListResponse",
      properties = {
        managedConfigurationsSettings = {
          description = "A managed configurations settings for an app that may be assigned to a group of users in an enterprise.",
          items = {
            ["$ref"] = "ManagedConfigurationsSettings",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManagedProperty = {
      description = "A managed property of a managed configuration. The property must match one of the properties in the app restrictions schema of the product. Exactly one of the value fields must be populated, and it must match the property's type in the app restrictions schema.",
      id = "ManagedProperty",
      properties = {
        key = {
          description = "The unique key that identifies the property.",
          type = "string",
        },
        valueBool = {
          description = "The boolean value - this will only be present if type of the property is bool.",
          type = "boolean",
        },
        valueBundle = {
          ["$ref"] = "ManagedPropertyBundle",
          description = "The bundle of managed properties - this will only be present if type of the property is bundle.",
        },
        valueBundleArray = {
          description = "The list of bundles of properties - this will only be present if type of the property is bundle_array.",
          items = {
            ["$ref"] = "ManagedPropertyBundle",
          },
          type = "array",
        },
        valueInteger = {
          description = "The integer value - this will only be present if type of the property is integer.",
          format = "int32",
          type = "integer",
        },
        valueString = {
          description = "The string value - this will only be present if type of the property is string, choice or hidden.",
          type = "string",
        },
        valueStringArray = {
          description = "The list of string values - this will only be present if type of the property is multiselect.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManagedPropertyBundle = {
      description = "A bundle of managed properties.",
      id = "ManagedPropertyBundle",
      properties = {
        managedProperty = {
          description = "The list of managed properties.",
          items = {
            ["$ref"] = "ManagedProperty",
          },
          type = "array",
        },
      },
      type = "object",
    },
    NewDeviceEvent = {
      description = "An event generated when a new device is ready to be managed.",
      id = "NewDeviceEvent",
      properties = {
        deviceId = {
          description = "The Android ID of the device. This field will always be present.",
          type = "string",
        },
        dpcPackageName = {
          description = "Policy app on the device.",
          type = "string",
        },
        managementType = {
          description = "Identifies the extent to which the device is controlled by an Android EMM in various deployment configurations. Possible values include: - \"managedDevice\", a device where the DPC is set as device owner, - \"managedProfile\", a device where the DPC is set as profile owner. ",
          enum = {
            "managedDevice",
            "managedProfile",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        userId = {
          description = "The ID of the user. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    NewPermissionsEvent = {
      description = "An event generated when new permissions are added to an app.",
      id = "NewPermissionsEvent",
      properties = {
        approvedPermissions = {
          description = "The set of permissions that the enterprise admin has already approved for this application. Use Permissions.Get on the EMM API to retrieve details about these permissions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        productId = {
          description = "The id of the product (e.g. \"app:com.google.android.gm\") for which new permissions were added. This field will always be present.",
          type = "string",
        },
        requestedPermissions = {
          description = "The set of permissions that the app is currently requesting. Use Permissions.Get on the EMM API to retrieve details about these permissions.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Notification = {
      description = "A notification of one event relating to an enterprise.",
      id = "Notification",
      properties = {
        appRestrictionsSchemaChangeEvent = {
          ["$ref"] = "AppRestrictionsSchemaChangeEvent",
          description = "Notifications about new app restrictions schema changes.",
        },
        appUpdateEvent = {
          ["$ref"] = "AppUpdateEvent",
          description = "Notifications about app updates.",
        },
        deviceReportUpdateEvent = {
          ["$ref"] = "DeviceReportUpdateEvent",
          description = "Notifications about device report updates.",
        },
        enterpriseId = {
          description = "The ID of the enterprise for which the notification is sent. This will always be present.",
          type = "string",
        },
        installFailureEvent = {
          ["$ref"] = "InstallFailureEvent",
          description = "Notifications about an app installation failure.",
        },
        newDeviceEvent = {
          ["$ref"] = "NewDeviceEvent",
          description = "Notifications about new devices.",
        },
        newPermissionsEvent = {
          ["$ref"] = "NewPermissionsEvent",
          description = "Notifications about new app permissions.",
        },
        notificationType = {
          description = "Type of the notification.",
          enum = {
            "unknown",
            "testNotification",
            "productApproval",
            "installFailure",
            "appUpdate",
            "newPermissions",
            "appRestricionsSchemaChange",
            "productAvailabilityChange",
            "newDevice",
            "deviceReportUpdate",
          },
          enumDescriptions = {
            "",
            "A test push notification.",
            "Notification about change to a product's approval status.",
            "Notification about an app installation failure.",
            "Notification about app update.",
            "Notification about new app permissions.",
            "Notification about new app restrictions schema change.",
            "Notification about product availability change.",
            "Notification about a new device.",
            "Notification about an updated device report.",
          },
          type = "string",
        },
        productApprovalEvent = {
          ["$ref"] = "ProductApprovalEvent",
          description = "Notifications about changes to a product's approval status.",
        },
        productAvailabilityChangeEvent = {
          ["$ref"] = "ProductAvailabilityChangeEvent",
          description = "Notifications about product availability changes.",
        },
        timestampMillis = {
          description = "The time when the notification was published in milliseconds since 1970-01-01T00:00:00Z. This will always be present.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    NotificationSet = {
      description = "A resource returned by the PullNotificationSet API, which contains a collection of notifications for enterprises associated with the service account authenticated for the request.",
      id = "NotificationSet",
      properties = {
        notification = {
          description = "The notifications received, or empty if no notifications are present.",
          items = {
            ["$ref"] = "Notification",
          },
          type = "array",
        },
        notificationSetId = {
          description = "The notification set ID, required to mark the notification as received with the Enterprises.AcknowledgeNotification API. This will be omitted if no notifications are present.",
          type = "string",
        },
      },
      type = "object",
    },
    PageInfo = {
      description = "Information about the current page. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned.",
      id = "PageInfo",
      properties = {
        resultPerPage = {
          description = "Maximum number of results returned in one page. ! The number of results included in the API response.",
          format = "int32",
          type = "integer",
        },
        startIndex = {
          description = "Index of the first result returned in the current page.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "Total number of results available on the backend ! The total number of results in the result set.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Permission = {
      description = "A Permissions resource represents some extra capability, to be granted to an Android app, which requires explicit consent. An enterprise admin must consent to these permissions on behalf of their users before an entitlement for the app can be created. The permissions collection is read-only. The information provided for each permission (localized name and description) is intended to be used in the MDM user interface when obtaining consent from the enterprise.",
      id = "Permission",
      properties = {
        description = {
          description = "A longer description of the Permissions resource, giving more details of what it affects.",
          type = "string",
        },
        name = {
          description = "The name of the permission.",
          type = "string",
        },
        permissionId = {
          description = "An opaque string uniquely identifying the permission.",
          type = "string",
        },
      },
      type = "object",
    },
    Policy = {
      description = "The device policy for a given managed device.",
      id = "Policy",
      properties = {
        autoUpdatePolicy = {
          description = "Recommended alternative: autoUpdateMode which is set per app, provides greater flexibility around update frequency. When autoUpdateMode is set to AUTO_UPDATE_POSTPONED or AUTO_UPDATE_HIGH_PRIORITY, this field has no effect. \"choiceToTheUser\" allows the device's user to configure the app update policy. \"always\" enables auto updates. \"never\" disables auto updates. \"wifiOnly\" enables auto updates only when the device is connected to wifi.",
          enum = {
            "autoUpdatePolicyUnspecified",
            "choiceToTheUser",
            "never",
            "wifiOnly",
            "always",
          },
          enumDescriptions = {
            "The auto update policy is not set.",
            "The user can control auto-updates.",
            "Apps are never auto-updated.",
            "Apps are auto-updated over WiFi only.",
            "Apps are auto-updated at any time. Data charges may apply.",
          },
          type = "string",
        },
        deviceReportPolicy = {
          description = "Whether the device reports app states to the EMM. The default value is \"deviceReportDisabled\".",
          enum = {
            "deviceReportPolicyUnspecified",
            "deviceReportDisabled",
            "deviceReportEnabled",
          },
          enumDescriptions = {
            "The device report policy is not set.",
            "Device reports are disabled.",
            "Device reports are enabled.",
          },
          type = "string",
        },
        maintenanceWindow = {
          ["$ref"] = "MaintenanceWindow",
          description = "The maintenance window defining when apps running in the foreground should be updated.",
        },
        productAvailabilityPolicy = {
          description = "The availability granted to the device for the specified products. \"all\" gives the device access to all products, regardless of approval status. \"all\" does not enable automatic visibility of \"alpha\" or \"beta\" tracks. \"whitelist\" grants the device access the products specified in productPolicy[]. Only products that are approved or products that were previously approved (products with revoked approval) by the enterprise can be whitelisted. If no value is provided, the availability set at the user level is applied by default.",
          enum = {
            "productAvailabilityPolicyUnspecified",
            "whitelist",
            "all",
          },
          enumDescriptions = {
            "Unspecified, applies the user available product set by default.",
            "The approved products with product availability set to AVAILABLE in the product policy are available.",
            "All products are available except those explicitly marked as unavailable in the product availability policy.",
          },
          type = "string",
        },
        productPolicy = {
          description = "The list of product policies. The productAvailabilityPolicy needs to be set to WHITELIST or ALL for the product policies to be applied.",
          items = {
            ["$ref"] = "ProductPolicy",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Product = {
      description = "A Products resource represents an app in the Google Play store that is available to at least some users in the enterprise. (Some apps are restricted to a single enterprise, and no information about them is made available outside that enterprise.) The information provided for each product (localized name, icon, link to the full Google Play details page) is intended to allow a basic representation of the product within an EMM user interface.",
      id = "Product",
      properties = {
        appRestrictionsSchema = {
          ["$ref"] = "AppRestrictionsSchema",
          description = "The app restriction schema",
        },
        appTracks = {
          description = "The tracks visible to the enterprise.",
          items = {
            ["$ref"] = "TrackInfo",
          },
          type = "array",
        },
        appVersion = {
          description = "App versions currently available for this product.",
          items = {
            ["$ref"] = "AppVersion",
          },
          type = "array",
        },
        authorName = {
          description = "The name of the author of the product (for example, the app developer).",
          type = "string",
        },
        availableCountries = {
          description = "The countries which this app is available in.",
          items = {
            type = "string",
          },
          type = "array",
        },
        availableTracks = {
          description = "Deprecated, use appTracks instead.",
          items = {
            enum = {
              "appTrackUnspecified",
              "production",
              "beta",
              "alpha",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        category = {
          description = "The app category (e.g. RACING, SOCIAL, etc.)",
          type = "string",
        },
        contentRating = {
          description = "The content rating for this app.",
          enum = {
            "ratingUnknown",
            "all",
            "preTeen",
            "teen",
            "mature",
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
        description = {
          description = "The localized promotional description, if available.",
          type = "string",
        },
        detailsUrl = {
          description = "A link to the (consumer) Google Play details page for the product.",
          type = "string",
        },
        distributionChannel = {
          description = "How and to whom the package is made available. The value publicGoogleHosted means that the package is available through the Play store and not restricted to a specific enterprise. The value privateGoogleHosted means that the package is a private app (restricted to an enterprise) but hosted by Google. The value privateSelfHosted means that the package is a private app (restricted to an enterprise) and is privately hosted.",
          enum = {
            "publicGoogleHosted",
            "privateGoogleHosted",
            "privateSelfHosted",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        features = {
          description = "Noteworthy features (if any) of this product.",
          items = {
            enum = {
              "featureUnknown",
              "vpnApp",
            },
            enumDescriptions = {
              "",
              "The app is a VPN.",
            },
            type = "string",
          },
          type = "array",
        },
        iconUrl = {
          description = "A link to an image that can be used as an icon for the product. This image is suitable for use at up to 512px x 512px.",
          type = "string",
        },
        lastUpdatedTimestampMillis = {
          description = "The approximate time (within 7 days) the app was last published, expressed in milliseconds since epoch.",
          format = "int64",
          type = "string",
        },
        minAndroidSdkVersion = {
          description = "The minimum Android SDK necessary to run the app.",
          format = "int32",
          type = "integer",
        },
        permissions = {
          description = "A list of permissions required by the app.",
          items = {
            ["$ref"] = "ProductPermission",
          },
          type = "array",
        },
        productId = {
          description = "A string of the form *app:<package name>*. For example, app:com.google.android.gm represents the Gmail app.",
          type = "string",
        },
        productPricing = {
          description = "Whether this product is free, free with in-app purchases, or paid. If the pricing is unknown, this means the product is not generally available anymore (even though it might still be available to people who own it).",
          enum = {
            "unknown",
            "free",
            "freeWithInAppPurchase",
            "paid",
          },
          enumDescriptions = {
            "Unknown pricing, used to denote an approved product that is not generally available.",
            "The product is free.",
            "The product is free, but offers in-app purchases.",
            "The product is paid.",
          },
          type = "string",
        },
        recentChanges = {
          description = "A description of the recent changes made to the app.",
          type = "string",
        },
        requiresContainerApp = {
          description = "Deprecated.",
          type = "boolean",
        },
        screenshotUrls = {
          description = "A list of screenshot links representing the app.",
          items = {
            type = "string",
          },
          type = "array",
        },
        signingCertificate = {
          ["$ref"] = "ProductSigningCertificate",
          description = "The certificate used to sign this product.",
        },
        smallIconUrl = {
          description = "A link to a smaller image that can be used as an icon for the product. This image is suitable for use at up to 128px x 128px.",
          type = "string",
        },
        title = {
          description = "The name of the product.",
          type = "string",
        },
        workDetailsUrl = {
          description = "A link to the managed Google Play details page for the product, for use by an Enterprise admin.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductApprovalEvent = {
      description = "An event generated when a product's approval status is changed.",
      id = "ProductApprovalEvent",
      properties = {
        approved = {
          description = "Whether the product was approved or unapproved. This field will always be present.",
          enum = {
            "unknown",
            "approved",
            "unapproved",
          },
          enumDescriptions = {
            "Conveys no information.",
            "The product was approved.",
            "The product was unapproved.",
          },
          type = "string",
        },
        productId = {
          description = "The id of the product (e.g. \"app:com.google.android.gm\") for which the approval status has changed. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductAvailabilityChangeEvent = {
      description = "An event generated whenever a product's availability changes.",
      id = "ProductAvailabilityChangeEvent",
      properties = {
        availabilityStatus = {
          description = "The new state of the product. This field will always be present.",
          enum = {
            "unknown",
            "available",
            "removed",
            "unpublished",
          },
          enumDescriptions = {
            "Conveys no information.",
            "The previously unavailable product is again available on Google Play.",
            "The product was removed from Google Play.",
            "The product was unpublished by the developer.",
          },
          type = "string",
        },
        productId = {
          description = "The id of the product (e.g. \"app:com.google.android.gm\") for which the product availability changed. This field will always be present.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductPermission = {
      description = "A product permissions resource represents the set of permissions required by a specific app and whether or not they have been accepted by an enterprise admin. The API can be used to read the set of permissions, and also to update the set to indicate that permissions have been accepted.",
      id = "ProductPermission",
      properties = {
        permissionId = {
          description = "An opaque string uniquely identifying the permission.",
          type = "string",
        },
        state = {
          description = "Whether the permission has been accepted or not.",
          enum = {
            "required",
            "accepted",
          },
          enumDescriptions = {
            "The permission is required by the app but has not yet been accepted by the enterprise.",
            "The permission has been accepted by the enterprise.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ProductPermissions = {
      description = "Information about the permissions required by a specific app and whether they have been accepted by the enterprise.",
      id = "ProductPermissions",
      properties = {
        permission = {
          description = "The permissions required by the app.",
          items = {
            ["$ref"] = "ProductPermission",
          },
          type = "array",
        },
        productId = {
          description = "The ID of the app that the permissions relate to, e.g. \"app:com.google.android.gm\".",
          type = "string",
        },
      },
      type = "object",
    },
    ProductPolicy = {
      description = "The policy for a product.",
      id = "ProductPolicy",
      properties = {
        autoInstallPolicy = {
          ["$ref"] = "AutoInstallPolicy",
          description = "The auto-install policy for the product.",
        },
        autoUpdateMode = {
          description = "The auto-update mode for the product.",
          enum = {
            "autoUpdateModeUnspecified",
            "autoUpdateDefault",
            "autoUpdatePostponed",
            "autoUpdateHighPriority",
          },
          enumDescriptions = {
            "Unspecified. Defaults to AUTO_UPDATE_DEFAULT.",
            "The app is automatically updated with low priority to minimize the impact on the user. The app is updated when the following constraints are met: * The device is not actively used * The device is connected to an unmetered network * The device is charging The device is notified about a new update within 24 hours after it is published by the developer, after which the app is updated the next time the constraints above are met.",
            "The app is not automatically updated for a maximum of 90 days after the app becomes out of date. 90 days after the app becomes out of date, the latest available version is installed automatically with low priority (see AUTO_UPDATE_DEFAULT). After the app is updated it is not automatically updated again until 90 days after it becomes out of date again. The user can still manually update the app from the Play Store at any time.",
            "The app is updated as soon as possible. No constraints are applied. The device is notified immediately about a new app update after it is published by the developer.",
          },
          type = "string",
        },
        enterpriseAuthenticationAppLinkConfigs = {
          description = "An authentication URL configuration for the authenticator app of an identity provider. This helps to launch the identity provider's authenticator app during the authentication happening in a private app using Android WebView. Authenticator app should already be the [default handler](https://developer.android.com/training/app-links/verify-site-associations) for the authentication url on the device.",
          items = {
            ["$ref"] = "EnterpriseAuthenticationAppLinkConfig",
          },
          type = "array",
        },
        managedConfiguration = {
          ["$ref"] = "ManagedConfiguration",
          description = "The managed configuration for the product.",
        },
        productId = {
          description = "The ID of the product. For example, \"app:com.google.android.gm\".",
          type = "string",
        },
        trackIds = {
          description = "Grants the device visibility to the specified product release track(s), identified by trackIds. The list of release tracks of a product can be obtained by calling Products.Get.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tracks = {
          description = "Deprecated. Use trackIds instead.",
          items = {
            enum = {
              "appTrackUnspecified",
              "production",
              "beta",
              "alpha",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductSet = {
      description = "A set of products.",
      id = "ProductSet",
      properties = {
        productId = {
          description = "The list of product IDs making up the set of products.",
          items = {
            type = "string",
          },
          type = "array",
        },
        productSetBehavior = {
          description = "The interpretation of this product set. \"unknown\" should never be sent and is ignored if received. \"whitelist\" means that the user is entitled to access the product set. \"includeAll\" means that all products are accessible, including products that are approved, products with revoked approval, and products that have never been approved. \"allApproved\" means that the user is entitled to access all products that are approved for the enterprise. If the value is \"allApproved\" or \"includeAll\", the productId field is ignored. If no value is provided, it is interpreted as \"whitelist\" for backwards compatibility. Further \"allApproved\" or \"includeAll\" does not enable automatic visibility of \"alpha\" or \"beta\" tracks for Android app. Use ProductVisibility to enable \"alpha\" or \"beta\" tracks per user.",
          enum = {
            "unknown",
            "whitelist",
            "includeAll",
            "allApproved",
          },
          enumDescriptions = {
            "This value should never be sent and ignored if received.",
            "This product set constitutes a whitelist.",
            "This product set represents all products. For Android app it represents only \"production\" track. (The value of the productId field is therefore ignored).",
            "This product set represents all approved products. For Android app it represents only \"production\" track. (The value of the product_id field is therefore ignored).",
          },
          type = "string",
        },
        productVisibility = {
          description = "Additional list of product IDs making up the product set. Unlike the productID array, in this list It's possible to specify which tracks (alpha, beta, production) of a product are visible to the user. See ProductVisibility and its fields for more information. Specifying the same product ID both here and in the productId array is not allowed and it will result in an error.",
          items = {
            ["$ref"] = "ProductVisibility",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductSigningCertificate = {
      id = "ProductSigningCertificate",
      properties = {
        certificateHashSha1 = {
          description = "The base64 urlsafe encoded SHA1 hash of the certificate. (This field is deprecated in favor of SHA2-256. It should not be used and may be removed at any time.)",
          type = "string",
        },
        certificateHashSha256 = {
          description = "The base64 urlsafe encoded SHA2-256 hash of the certificate.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductVisibility = {
      description = "A product to be made visible to a user.",
      id = "ProductVisibility",
      properties = {
        productId = {
          description = "The product ID to make visible to the user. Required for each item in the productVisibility list.",
          type = "string",
        },
        trackIds = {
          description = "Grants the user visibility to the specified product track(s), identified by trackIds.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tracks = {
          description = "Deprecated. Use trackIds instead.",
          items = {
            enum = {
              "appTrackUnspecified",
              "production",
              "beta",
              "alpha",
            },
            enumDescriptions = {
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProductsApproveRequest = {
      id = "ProductsApproveRequest",
      properties = {
        approvalUrlInfo = {
          ["$ref"] = "ApprovalUrlInfo",
          description = "The approval URL that was shown to the user. Only the permissions shown to the user with that URL will be accepted, which may not be the product's entire set of permissions. For example, the URL may only display new permissions from an update after the product was approved, or not include new permissions if the product was updated since the URL was generated.",
        },
        approvedPermissions = {
          description = "Sets how new permission requests for the product are handled. \"allPermissions\" automatically approves all current and future permissions for the product. \"currentPermissionsOnly\" approves the current set of permissions for the product, but any future permissions added through updates will require manual reapproval. If not specified, only the current set of permissions will be approved.",
          enum = {
            "currentPermissionsOnly",
            "allPermissions",
          },
          enumDescriptions = {
            "Approve only the permissions the product requires at approval time. If an update requires additional permissions, the app will not be updated on devices associated with enterprise users until the additional permissions are approved.",
            "All current and future permissions the app requires are automatically approved.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ProductsGenerateApprovalUrlResponse = {
      id = "ProductsGenerateApprovalUrlResponse",
      properties = {
        url = {
          description = "A URL that can be rendered in an iframe to display the permissions (if any) of a product. This URL can be used to approve the product only once and only within 24 hours of being generated, using the Products.approve call. If the product is currently unapproved and has no permissions, this URL will point to an empty page. If the product is currently approved, a URL will only be generated if that product has added permissions since it was last approved, and the URL will only display those new permissions that have not yet been accepted.",
          type = "string",
        },
      },
      type = "object",
    },
    ProductsListResponse = {
      id = "ProductsListResponse",
      properties = {
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        product = {
          description = "Information about a product (e.g. an app) in the Google Play store, for display to an enterprise admin.",
          items = {
            ["$ref"] = "Product",
          },
          type = "array",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
          description = "Pagination information for token pagination.",
        },
      },
      type = "object",
    },
    ServiceAccount = {
      description = "A service account identity, including the name and credentials that can be used to authenticate as the service account.",
      id = "ServiceAccount",
      properties = {
        key = {
          ["$ref"] = "ServiceAccountKey",
          description = "Credentials that can be used to authenticate as this ServiceAccount.",
        },
        name = {
          description = "The account name of the service account, in the form of an email address. Assigned by the server.",
          type = "string",
        },
      },
      type = "object",
    },
    ServiceAccountKey = {
      description = "Credentials that can be used to authenticate as a service account.",
      id = "ServiceAccountKey",
      properties = {
        data = {
          description = "The body of the private key credentials file, in string format. This is only populated when the ServiceAccountKey is created, and is not stored by Google.",
          type = "string",
        },
        id = {
          description = "An opaque, unique identifier for this ServiceAccountKey. Assigned by the server.",
          type = "string",
        },
        publicData = {
          description = "Public key data for the credentials file. This is an X.509 cert. If you are using the googleCredentials key type, this is identical to the cert that can be retrieved by using the X.509 cert url inside of the credentials file.",
          type = "string",
        },
        type = {
          annotations = {
            required = {
              "androidenterprise.serviceaccountkeys.insert",
            },
          },
          description = "The file format of the generated key data.",
          enum = {
            "googleCredentials",
            "pkcs12",
          },
          enumDescriptions = {
            "Google Credentials File format.",
            "PKCS12 format. The password for the PKCS12 file is 'notasecret'. For more information, see https://tools.ietf.org/html/rfc7292. The data for keys of this type are base64 encoded according to RFC 4648 Section 4. See http://tools.ietf.org/html/rfc4648#section-4.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ServiceAccountKeysListResponse = {
      id = "ServiceAccountKeysListResponse",
      properties = {
        serviceAccountKey = {
          description = "The service account credentials.",
          items = {
            ["$ref"] = "ServiceAccountKey",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SignupInfo = {
      description = "A resource returned by the GenerateSignupUrl API, which contains the Signup URL and Completion Token.",
      id = "SignupInfo",
      properties = {
        completionToken = {
          description = "An opaque token that will be required, along with the Enterprise Token, for obtaining the enterprise resource from CompleteSignup.",
          type = "string",
        },
        kind = {
          description = "Deprecated.",
          type = "string",
        },
        url = {
          description = "A URL under which the Admin can sign up for an enterprise. The page pointed to cannot be rendered in an iframe.",
          type = "string",
        },
      },
      type = "object",
    },
    StoreCluster = {
      description = "Definition of a managed Google Play store cluster, a list of products displayed as part of a store page.",
      id = "StoreCluster",
      properties = {
        id = {
          description = "Unique ID of this cluster. Assigned by the server. Immutable once assigned.",
          type = "string",
        },
        name = {
          description = "Ordered list of localized strings giving the name of this page. The text displayed is the one that best matches the user locale, or the first entry if there is no good match. There needs to be at least one entry.",
          items = {
            ["$ref"] = "LocalizedText",
          },
          type = "array",
        },
        orderInPage = {
          description = "String (US-ASCII only) used to determine order of this cluster within the parent page's elements. Page elements are sorted in lexicographic order of this field. Duplicated values are allowed, but ordering between elements with duplicate order is undefined. The value of this field is never visible to a user, it is used solely for the purpose of defining an ordering. Maximum length is 256 characters.",
          type = "string",
        },
        productId = {
          description = "List of products in the order they are displayed in the cluster. There should not be duplicates within a cluster.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StoreLayout = {
      description = "General setting for the managed Google Play store layout, currently only specifying the page to display the first time the store is opened.",
      id = "StoreLayout",
      properties = {
        homepageId = {
          description = "The ID of the store page to be used as the homepage. The homepage is the first page shown in the managed Google Play Store. Not specifying a homepage is equivalent to setting the store layout type to \"basic\".",
          type = "string",
        },
        storeLayoutType = {
          description = "The store layout type. By default, this value is set to \"basic\" if the homepageId field is not set, and to \"custom\" otherwise. If set to \"basic\", the layout will consist of all approved apps that have been whitelisted for the user.",
          enum = {
            "unknown",
            "basic",
            "custom",
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
    StoreLayoutClustersListResponse = {
      id = "StoreLayoutClustersListResponse",
      properties = {
        cluster = {
          description = "A store cluster of an enterprise.",
          items = {
            ["$ref"] = "StoreCluster",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StoreLayoutPagesListResponse = {
      id = "StoreLayoutPagesListResponse",
      properties = {
        page = {
          description = "A store page of an enterprise.",
          items = {
            ["$ref"] = "StorePage",
          },
          type = "array",
        },
      },
      type = "object",
    },
    StorePage = {
      description = "Definition of a managed Google Play store page, made of a localized name and links to other pages. A page also contains clusters defined as a subcollection.",
      id = "StorePage",
      properties = {
        id = {
          description = "Unique ID of this page. Assigned by the server. Immutable once assigned.",
          type = "string",
        },
        link = {
          description = "Ordered list of pages a user should be able to reach from this page. The list can't include this page. It is recommended that the basic pages are created first, before adding the links between pages. The API doesn't verify that the pages exist or the pages are reachable.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "Ordered list of localized strings giving the name of this page. The text displayed is the one that best matches the user locale, or the first entry if there is no good match. There needs to be at least one entry.",
          items = {
            ["$ref"] = "LocalizedText",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TokenPagination = {
      description = "Pagination information returned by a List operation when token pagination is enabled. List operations that supports paging return only one \"page\" of results. This protocol buffer message describes the page that has been returned. When using token pagination, clients should use the next/previous token to get another page of the result. The presence or absence of next/previous token indicates whether a next/previous page is available and provides a mean of accessing this page. ListRequest.page_token should be set to either next_page_token or previous_page_token to access another page.",
      id = "TokenPagination",
      properties = {
        nextPageToken = {
          description = "Tokens to pass to the standard list field 'page_token'. Whenever available, tokens are preferred over manipulating start_index.",
          type = "string",
        },
        previousPageToken = {
          type = "string",
        },
      },
      type = "object",
    },
    TrackInfo = {
      description = "Id to name association of a track.",
      id = "TrackInfo",
      properties = {
        trackAlias = {
          description = "A modifiable name for a track. This is the visible name in the play developer console.",
          type = "string",
        },
        trackId = {
          description = "Unmodifiable, unique track identifier. This identifier is the releaseTrackId in the url of the play developer console page that displays the track information.",
          type = "string",
        },
      },
      type = "object",
    },
    User = {
      description = "A Users resource represents an account associated with an enterprise. The account may be specific to a device or to an individual user (who can then use the account across multiple devices). The account may provide access to managed Google Play only, or to other Google services, depending on the identity model: - The Google managed domain identity model requires synchronization to Google account sources (via primaryEmail). - The managed Google Play Accounts identity model provides a dynamic means for enterprises to create user or device accounts as needed. These accounts provide access to managed Google Play. ",
      id = "User",
      properties = {
        accountIdentifier = {
          annotations = {
            required = {
              "androidenterprise.users.insert",
            },
          },
          description = "A unique identifier you create for this user, such as \"user342\" or \"asset#44418\". Do not use personally identifiable information (PII) for this property. Must always be set for EMM-managed users. Not set for Google-managed users.",
          type = "string",
        },
        accountType = {
          annotations = {
            required = {
              "androidenterprise.users.insert",
            },
          },
          description = "The type of account that this user represents. A userAccount can be installed on multiple devices, but a deviceAccount is specific to a single device. An EMM-managed user (emmManaged) can be either type (userAccount, deviceAccount), but a Google-managed user (googleManaged) is always a userAccount.",
          enum = {
            "deviceAccount",
            "userAccount",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        displayName = {
          description = "The name that will appear in user interfaces. Setting this property is optional when creating EMM-managed users. If you do set this property, use something generic about the organization (such as \"Example, Inc.\") or your name (as EMM). Not used for Google-managed user accounts. @mutable androidenterprise.users.update",
          type = "string",
        },
        id = {
          description = "The unique ID for the user.",
          type = "string",
        },
        managementType = {
          description = "The entity that manages the user. With googleManaged users, the source of truth is Google so EMMs have to make sure a Google Account exists for the user. With emmManaged users, the EMM is in charge.",
          enum = {
            "googleManaged",
            "emmManaged",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        primaryEmail = {
          description = "The user's primary email address, for example, \"jsmith@example.com\". Will always be set for Google managed users and not set for EMM managed users.",
          type = "string",
        },
      },
      type = "object",
    },
    UsersListResponse = {
      id = "UsersListResponse",
      properties = {
        user = {
          description = "A user of an enterprise.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VariableSet = {
      description = "A variable set is a key-value pair of EMM-provided placeholders and its corresponding value, which is attributed to a user. For example, $FIRSTNAME could be a placeholder, and its value could be Alice. Placeholders should start with a '$' sign and should be alphanumeric only.",
      id = "VariableSet",
      properties = {
        placeholder = {
          description = "The placeholder string; defined by EMM.",
          type = "string",
        },
        userValue = {
          description = "The value of the placeholder, specific to the user.",
          type = "string",
        },
      },
      type = "object",
    },
    WebApp = {
      description = "A WebApps resource represents a web app created for an enterprise. Web apps are published to managed Google Play and can be distributed like other Android apps. On a user's device, a web app opens its specified URL.",
      id = "WebApp",
      properties = {
        displayMode = {
          description = "The display mode of the web app. Possible values include: - \"minimalUi\", the device's status bar, navigation bar, the app's URL, and a refresh button are visible when the app is open. For HTTP URLs, you can only select this option. - \"standalone\", the device's status bar and navigation bar are visible when the app is open. - \"fullScreen\", the app opens in full screen mode, hiding the device's status and navigation bars. All browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area. ",
          enum = {
            "displayModeUnspecified",
            "minimalUi",
            "standalone",
            "fullScreen",
          },
          enumDescriptions = {
            "",
            "Opens the web app with a minimal set of browser UI elements for controlling navigation and viewing the page URL.",
            "Opens the web app to look and feel like a standalone native application. The browser UI elements and page URL are not visible, however the system status bar and back button are visible.",
            "Opens the web app in full screen without any visible controls. The browser UI elements, page URL, system status bar and back button are not visible, and the web app takes up the entirety of the available display area.",
          },
          type = "string",
        },
        icons = {
          description = "A list of icons representing this website. If absent, a default icon (for create) or the current icon (for update) will be used.",
          items = {
            ["$ref"] = "WebAppIcon",
          },
          type = "array",
        },
        isPublished = {
          description = "A flag whether the app has been published to the Play store yet.",
          type = "boolean",
        },
        startUrl = {
          description = "The start URL, i.e. the URL that should load when the user opens the application.",
          type = "string",
        },
        title = {
          description = "The title of the web app as displayed to the user (e.g., amongst a list of other applications, or as a label for an icon).",
          type = "string",
        },
        versionCode = {
          description = "The current version of the app. Note that the version can automatically increase during the lifetime of the web app, while Google does internal housekeeping to keep the web app up-to-date.",
          format = "int64",
          type = "string",
        },
        webAppId = {
          description = "The ID of the application. A string of the form \"app:<package name>\" where the package name always starts with the prefix \"com.google.enterprise.webapp.\" followed by a random id.",
          type = "string",
        },
      },
      type = "object",
    },
    WebAppIcon = {
      description = "Icon for a web app.",
      id = "WebAppIcon",
      properties = {
        imageData = {
          description = "The actual bytes of the image in a base64url encoded string (c.f. RFC4648, section 5 \"Base 64 Encoding with URL and Filename Safe Alphabet\"). - The image type can be png or jpg. - The image should ideally be square. - The image should ideally have a size of 512x512. ",
          type = "string",
        },
      },
      type = "object",
    },
    WebAppsListResponse = {
      id = "WebAppsListResponse",
      properties = {
        webApp = {
          description = "The manifest describing a web app.",
          items = {
            ["$ref"] = "WebApp",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Play EMM API",
  version = "v1",
}