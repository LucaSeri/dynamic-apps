return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/apps.order"] = {
          description = "Manage users on your domain",
        },
        ["https://www.googleapis.com/auth/apps.order.readonly"] = {
          description = "Manage users on your domain",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://reseller.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Reseller",
  description = "Perform common functions that are available on the Channel Services console at scale, like placing orders and viewing customer information",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/google-apps/reseller/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "reseller:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://reseller.mtls.googleapis.com/",
  name = "reseller",
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
        get = {
          description = "Gets a customer account. Use this operation to see a customer account already in your reseller management, or to see the minimal account information for an existing customer that you do not manage. For more information about the API response for existing customers, see [retrieving a customer account](/admin-sdk/reseller/v1/how-tos/manage_customers#get_customer).",
          flatPath = "apps/reseller/v1/customers/{customerId}",
          httpMethod = "GET",
          id = "reseller.customers.get",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}",
          response = {
            ["$ref"] = "Customer",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
            "https://www.googleapis.com/auth/apps.order.readonly",
          },
        },
        insert = {
          description = "Orders a new customer's account. Before ordering a new customer account, establish whether the customer account already exists using the [`customers.get`](/admin-sdk/reseller/v1/reference/customers/get) If the customer account exists as a direct Google account or as a resold customer account from another reseller, use the `customerAuthToken\\` as described in [order a resold account for an existing customer](/admin-sdk/reseller/v1/how-tos/manage_customers#create_existing_customer). For more information about ordering a new customer account, see [order a new customer account](/admin-sdk/reseller/v1/how-tos/manage_customers#create_customer). After creating a new customer account, you must provision a user as an administrator. The customer's administrator is required to sign in to the Admin console and sign the G Suite via Reseller agreement to activate the account. Resellers are prohibited from signing the G Suite via Reseller agreement on the customer's behalf. For more information, see [order a new customer account](/admin-sdk/reseller/v1/how-tos/manage_customers#tos).",
          flatPath = "apps/reseller/v1/customers",
          httpMethod = "POST",
          id = "reseller.customers.insert",
          parameterOrder = {},
          parameters = {
            customerAuthToken = {
              description = "The `customerAuthToken` query string is required when creating a resold account that transfers a direct customer's subscription or transfers another reseller customer's subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.",
              location = "query",
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers",
          request = {
            ["$ref"] = "Customer",
          },
          response = {
            ["$ref"] = "Customer",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        patch = {
          description = "Updates a customer account's settings. This method supports patch semantics. You cannot update `customerType` via the Reseller API, but a `\"team\"` customer can verify their domain and become `customerType = \"domain\"`. For more information, see [Verify your domain to unlock Essentials features](https://support.google.com/a/answer/9122284).",
          flatPath = "apps/reseller/v1/customers/{customerId}",
          httpMethod = "PATCH",
          id = "reseller.customers.patch",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}",
          request = {
            ["$ref"] = "Customer",
          },
          response = {
            ["$ref"] = "Customer",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        update = {
          description = "Updates a customer account's settings. You cannot update `customerType` via the Reseller API, but a `\"team\"` customer can verify their domain and become `customerType = \"domain\"`. For more information, see [update a customer's settings](/admin-sdk/reseller/v1/how-tos/manage_customers#update_customer).",
          flatPath = "apps/reseller/v1/customers/{customerId}",
          httpMethod = "PUT",
          id = "reseller.customers.update",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}",
          request = {
            ["$ref"] = "Customer",
          },
          response = {
            ["$ref"] = "Customer",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
      },
    },
    resellernotify = {
      methods = {
        getwatchdetails = {
          description = "Returns all the details of the watch corresponding to the reseller.",
          flatPath = "apps/reseller/v1/resellernotify/getwatchdetails",
          httpMethod = "GET",
          id = "reseller.resellernotify.getwatchdetails",
          parameterOrder = {},
          parameters = {},
          path = "apps/reseller/v1/resellernotify/getwatchdetails",
          response = {
            ["$ref"] = "ResellernotifyGetwatchdetailsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
            "https://www.googleapis.com/auth/apps.order.readonly",
          },
        },
        register = {
          description = "Registers a Reseller for receiving notifications.",
          flatPath = "apps/reseller/v1/resellernotify/register",
          httpMethod = "POST",
          id = "reseller.resellernotify.register",
          parameterOrder = {},
          parameters = {
            serviceAccountEmailAddress = {
              description = "The service account which will own the created Cloud-PubSub topic.",
              location = "query",
              type = "string",
            },
          },
          path = "apps/reseller/v1/resellernotify/register",
          response = {
            ["$ref"] = "ResellernotifyResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        unregister = {
          description = "Unregisters a Reseller for receiving notifications.",
          flatPath = "apps/reseller/v1/resellernotify/unregister",
          httpMethod = "POST",
          id = "reseller.resellernotify.unregister",
          parameterOrder = {},
          parameters = {
            serviceAccountEmailAddress = {
              description = "The service account which owns the Cloud-PubSub topic.",
              location = "query",
              type = "string",
            },
          },
          path = "apps/reseller/v1/resellernotify/unregister",
          response = {
            ["$ref"] = "ResellernotifyResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
      },
    },
    subscriptions = {
      methods = {
        activate = {
          description = "Activates a subscription previously suspended by the reseller. If you did not suspend the customer subscription and it is suspended for any other reason, such as for abuse or a pending ToS acceptance, this call will not reactivate the customer subscription.",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/activate",
          httpMethod = "POST",
          id = "reseller.subscriptions.activate",
          parameterOrder = {
            "customerId",
            "subscriptionId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/activate",
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        changePlan = {
          description = "Updates a subscription plan. Use this method to update a plan for a 30-day trial or a flexible plan subscription to an annual commitment plan with monthly or yearly payments. How a plan is updated differs depending on the plan and the products. For more information, see the description in [manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_subscription_plan).",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changePlan",
          httpMethod = "POST",
          id = "reseller.subscriptions.changePlan",
          parameterOrder = {
            "customerId",
            "subscriptionId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changePlan",
          request = {
            ["$ref"] = "ChangePlanRequest",
          },
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        changeRenewalSettings = {
          description = "Updates a user license's renewal settings. This is applicable for accounts with annual commitment plans only. For more information, see the description in [manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_renewal).",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings",
          httpMethod = "POST",
          id = "reseller.subscriptions.changeRenewalSettings",
          parameterOrder = {
            "customerId",
            "subscriptionId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeRenewalSettings",
          request = {
            ["$ref"] = "RenewalSettings",
          },
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        changeSeats = {
          description = "Updates a subscription's user license settings. For more information about updating an annual commitment plan or a flexible plan subscription’s licenses, see [Manage Subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#update_subscription_seat).",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeSeats",
          httpMethod = "POST",
          id = "reseller.subscriptions.changeSeats",
          parameterOrder = {
            "customerId",
            "subscriptionId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/changeSeats",
          request = {
            ["$ref"] = "Seats",
          },
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        delete = {
          description = "Cancels, suspends, or transfers a subscription to direct.",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}",
          httpMethod = "DELETE",
          id = "reseller.subscriptions.delete",
          parameterOrder = {
            "customerId",
            "subscriptionId",
            "deletionType",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            deletionType = {
              description = "The `deletionType` query string enables the cancellation, downgrade, or suspension of a subscription.",
              enum = {
                "deletion_type_undefined",
                "cancel",
                "transfer_to_direct",
              },
              enumDescriptions = {
                "",
                "Cancels the subscription immediately. This does not apply to a G Suite subscription.",
                "Transfers a subscription directly to Google. The customer is immediately transferred to a direct billing relationship with Google and is given a short amount of time with no service interruption. The customer can then choose to set up billing directly with Google by using a credit card, or they can transfer to another reseller.",
              },
              location = "query",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}",
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        get = {
          description = "Gets a specific subscription. The `subscriptionId` can be found using the [Retrieve all reseller subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#get_all_subscriptions) method. For more information about retrieving a specific subscription, see the information descrived in [manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#get_subscription).",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}",
          httpMethod = "GET",
          id = "reseller.subscriptions.get",
          parameterOrder = {
            "customerId",
            "subscriptionId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}",
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
            "https://www.googleapis.com/auth/apps.order.readonly",
          },
        },
        insert = {
          description = "Creates or transfer a subscription. Create a subscription for a customer's account that you ordered using the [Order a new customer account](/admin-sdk/reseller/v1/reference/customers/insert.html) method. For more information about creating a subscription for different payment plans, see [manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#create_subscription).\\ If you did not order the customer's account using the customer insert method, use the customer's `customerAuthToken` when creating a subscription for that customer. If transferring a G Suite subscription with an associated Google Drive or Google Vault subscription, use the [batch operation](/admin-sdk/reseller/v1/how-tos/batch.html) to transfer all of these subscriptions. For more information, see how to [transfer subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#transfer_a_subscription).",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions",
          httpMethod = "POST",
          id = "reseller.subscriptions.insert",
          parameterOrder = {
            "customerId",
          },
          parameters = {
            customerAuthToken = {
              description = "The `customerAuthToken` query string is required when creating a resold account that transfers a direct customer's subscription or transfers another reseller customer's subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.",
              location = "query",
              type = "string",
            },
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions",
          request = {
            ["$ref"] = "Subscription",
          },
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        list = {
          description = "Lists of subscriptions managed by the reseller. The list can be all subscriptions, all of a customer's subscriptions, or all of a customer's transferable subscriptions. Optionally, this method can filter the response by a `customerNamePrefix`. For more information, see [manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions).",
          flatPath = "apps/reseller/v1/subscriptions",
          httpMethod = "GET",
          id = "reseller.subscriptions.list",
          parameterOrder = {},
          parameters = {
            customerAuthToken = {
              description = "The `customerAuthToken` query string is required when creating a resold account that transfers a direct customer's subscription or transfers another reseller customer's subscription to your reseller management. This is a hexadecimal authentication token needed to complete the subscription transfer. For more information, see the administrator help center.",
              location = "query",
              type = "string",
            },
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "query",
              type = "string",
            },
            customerNamePrefix = {
              description = "When retrieving all of your subscriptions and filtering for specific customers, you can enter a prefix for a customer name. Using an example customer group that includes `exam.com`, `example20.com` and `example.com`: - `exa` -- Returns all customer names that start with 'exa' which could include `exam.com`, `example20.com`, and `example.com`. A name prefix is similar to using a regular expression's asterisk, exa*. - `example` -- Returns `example20.com` and `example.com`. ",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "When retrieving a large list, the `maxResults` is the maximum number of results per page. The `nextPageToken` value takes you to the next page. The default is 20.",
              format = "uint32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token to specify next page in the list",
              location = "query",
              type = "string",
            },
          },
          path = "apps/reseller/v1/subscriptions",
          response = {
            ["$ref"] = "Subscriptions",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
            "https://www.googleapis.com/auth/apps.order.readonly",
          },
        },
        startPaidService = {
          description = "Immediately move a 30-day free trial subscription to a paid service subscription. This method is only applicable if a payment plan has already been set up for the 30-day trial subscription. For more information, see [manage subscriptions](/admin-sdk/reseller/v1/how-tos/manage_subscriptions#paid_service).",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/startPaidService",
          httpMethod = "POST",
          id = "reseller.subscriptions.startPaidService",
          parameterOrder = {
            "customerId",
            "subscriptionId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/startPaidService",
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
        suspend = {
          description = "Suspends an active subscription. You can use this method to suspend a paid subscription that is currently in the `ACTIVE` state. * For `FLEXIBLE` subscriptions, billing is paused. * For `ANNUAL_MONTHLY_PAY` or `ANNUAL_YEARLY_PAY` subscriptions: * Suspending the subscription does not change the renewal date that was originally committed to. * A suspended subscription does not renew. If you activate the subscription after the original renewal date, a new annual subscription will be created, starting on the day of activation. We strongly encourage you to suspend subscriptions only for short periods of time as suspensions over 60 days may result in the subscription being cancelled.",
          flatPath = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/suspend",
          httpMethod = "POST",
          id = "reseller.subscriptions.suspend",
          parameterOrder = {
            "customerId",
            "subscriptionId",
          },
          parameters = {
            customerId = {
              description = "This can be either the customer's primary domain name or the customer's unique identifier. If the domain name for a customer changes, the old domain name cannot be used to access the customer, but the customer's unique identifier (as returned by the API) can always be used. We recommend storing the unique identifier in your systems where applicable.",
              location = "path",
              required = true,
              type = "string",
            },
            subscriptionId = {
              description = "This is a required property. The `subscriptionId` is the subscription identifier and is unique for each customer. Since a `subscriptionId` changes when a subscription is updated, we recommend to not use this ID as a key for persistent data. And the `subscriptionId` can be found using the retrieve all reseller subscriptions method.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/reseller/v1/customers/{customerId}/subscriptions/{subscriptionId}/suspend",
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/apps.order",
          },
        },
      },
    },
  },
  revision = "20230112",
  rootUrl = "https://reseller.googleapis.com/",
  schemas = {
    Address = {
      description = "JSON template for address of a customer.",
      id = "Address",
      properties = {
        addressLine1 = {
          description = "A customer's physical address. An address can be composed of one to three lines. The `addressline2` and `addressLine3` are optional.",
          type = "string",
        },
        addressLine2 = {
          description = "Line 2 of the address.",
          type = "string",
        },
        addressLine3 = {
          description = "Line 3 of the address.",
          type = "string",
        },
        contactName = {
          description = "The customer contact's name. This is required.",
          type = "string",
        },
        countryCode = {
          description = "For `countryCode` information, see the ISO 3166 country code elements. Verify that country is approved for resale of Google products. This property is required when creating a new customer.",
          type = "string",
        },
        kind = {
          default = "customers#address",
          description = "Identifies the resource as a customer address. Value: `customers#address`",
          type = "string",
        },
        locality = {
          description = "An example of a `locality` value is the city of `San Francisco`.",
          type = "string",
        },
        organizationName = {
          description = "The company or company division name. This is required.",
          type = "string",
        },
        postalCode = {
          description = "A `postalCode` example is a postal zip code such as `94043`. This property is required when creating a new customer.",
          type = "string",
        },
        region = {
          description = "An example of a `region` value is `CA` for the state of California.",
          type = "string",
        },
      },
      type = "object",
    },
    ChangePlanRequest = {
      description = "JSON template for the ChangePlan rpc request.",
      id = "ChangePlanRequest",
      properties = {
        dealCode = {
          description = "Google-issued code (100 char max) for discounted pricing on subscription plans. Deal code must be included in `changePlan` request in order to receive discounted rate. This property is optional. If a deal code has already been added to a subscription, this property may be left empty and the existing discounted rate will still apply (if not empty, only provide the deal code that is already present on the subscription). If a deal code has never been added to a subscription and this property is left blank, regular pricing will apply.",
          type = "string",
        },
        kind = {
          default = "subscriptions#changePlanRequest",
          description = "Identifies the resource as a subscription change plan request. Value: `subscriptions#changePlanRequest`",
          type = "string",
        },
        planName = {
          description = "The `planName` property is required. This is the name of the subscription's payment plan. For more information about the Google payment plans, see API concepts. Possible values are: - `ANNUAL_MONTHLY_PAY` - The annual commitment plan with monthly payments *Caution: *`ANNUAL_MONTHLY_PAY` is returned as `ANNUAL` in all API responses. - `ANNUAL_YEARLY_PAY` - The annual commitment plan with yearly payments - `FLEXIBLE` - The flexible plan - `TRIAL` - The 30-day free trial plan ",
          type = "string",
        },
        purchaseOrderId = {
          description = "This is an optional property. This purchase order (PO) information is for resellers to use for their company tracking usage. If a `purchaseOrderId` value is given it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters.",
          type = "string",
        },
        seats = {
          ["$ref"] = "Seats",
          description = "This is a required property. The seats property is the number of user seat licenses.",
        },
      },
      type = "object",
    },
    Customer = {
      description = "When a Google customer's account is registered with a reseller, the customer's subscriptions for Google services are managed by this reseller. A customer is described by a primary domain name and a physical address.",
      id = "Customer",
      properties = {
        alternateEmail = {
          description = "Like the \"Customer email\" in the reseller tools, this email is the secondary contact used if something happens to the customer's service such as service outage or a security issue. This property is required when creating a new \"domain\" customer and should not use the same domain as `customerDomain`. The `alternateEmail` field is not necessary to create a \"team\" customer.",
          type = "string",
        },
        customerDomain = {
          description = "The customer's primary domain name string. `customerDomain` is required when creating a new customer. Do not include the `www` prefix in the domain when adding a customer.",
          type = "string",
        },
        customerDomainVerified = {
          description = "Whether the customer's primary domain has been verified.",
          type = "boolean",
        },
        customerId = {
          description = "This property will always be returned in a response as the unique identifier generated by Google. In a request, this property can be either the primary domain or the unique identifier generated by Google.",
          type = "string",
        },
        customerType = {
          description = "Identifies the type of the customer. Acceptable values include: * `domain`: Implies a domain-verified customer (default). * `team`: Implies an email-verified customer. For more information, see [managed teams](https://support.google.com/a/users/answer/9939479).",
          enum = {
            "customerTypeUnspecified",
            "domain",
            "team",
          },
          enumDescriptions = {
            "Customer type not known",
            "Domained or domain-owning customers",
            "Domainless or email-verified customers",
          },
          type = "string",
        },
        kind = {
          default = "reseller#customer",
          description = "Identifies the resource as a customer. Value: `reseller#customer`",
          type = "string",
        },
        phoneNumber = {
          description = "Customer contact phone number. Must start with \"+\" followed by the country code. The rest of the number can be contiguous numbers or respect the phone local format conventions, but it must be a real phone number and not, for example, \"123\". This field is silently ignored if invalid.",
          type = "string",
        },
        postalAddress = {
          ["$ref"] = "Address",
          description = "A customer's address information. Each field has a limit of 255 charcters.",
        },
        primaryAdmin = {
          ["$ref"] = "PrimaryAdmin",
          description = "The first admin details of the customer, present in case of TEAM customer.",
        },
        resourceUiUrl = {
          description = "URL to customer's Admin console dashboard. The read-only URL is generated by the API service. This is used if your client application requires the customer to complete a task in the Admin console.",
          type = "string",
        },
      },
      type = "object",
    },
    PrimaryAdmin = {
      description = "JSON template for primary admin in case of TEAM customers",
      id = "PrimaryAdmin",
      properties = {
        primaryEmail = {
          description = "The business email of the primary administrator of the customer. The email verification link is sent to this email address at the time of customer creation. Primary administrators have access to the customer's Admin Console, including the ability to invite and evict users and manage the administrative needs of the customer.",
          type = "string",
        },
      },
      type = "object",
    },
    RenewalSettings = {
      description = "JSON template for a subscription renewal settings.",
      id = "RenewalSettings",
      properties = {
        kind = {
          default = "subscriptions#renewalSettings",
          description = "Identifies the resource as a subscription renewal setting. Value: `subscriptions#renewalSettings`",
          type = "string",
        },
        renewalType = {
          description = "Renewal settings for the annual commitment plan. For more detailed information, see renewal options in the administrator help center. When renewing a subscription, the `renewalType` is a required property.",
          type = "string",
        },
      },
      type = "object",
    },
    ResellernotifyGetwatchdetailsResponse = {
      description = "JSON template for resellernotify getwatchdetails response.",
      id = "ResellernotifyGetwatchdetailsResponse",
      properties = {
        serviceAccountEmailAddresses = {
          description = "List of registered service accounts.",
          items = {
            type = "string",
          },
          type = "array",
        },
        topicName = {
          description = "Topic name of the PubSub",
          type = "string",
        },
      },
      type = "object",
    },
    ResellernotifyResource = {
      description = "JSON template for resellernotify response.",
      id = "ResellernotifyResource",
      properties = {
        topicName = {
          description = "Topic name of the PubSub",
          type = "string",
        },
      },
      type = "object",
    },
    Seats = {
      description = "JSON template for subscription seats.",
      id = "Seats",
      properties = {
        kind = {
          default = "subscriptions#seats",
          description = "Identifies the resource as a subscription seat setting. Value: `subscriptions#seats`",
          type = "string",
        },
        licensedNumberOfSeats = {
          description = "Read-only field containing the current number of users that are assigned a license for the product defined in `skuId`. This field's value is equivalent to the numerical count of users returned by the Enterprise License Manager API method: [`listForProductAndSku`](/admin-sdk/licensing/v1/reference/licenseAssignments/listForProductAndSku).",
          format = "int32",
          type = "integer",
        },
        maximumNumberOfSeats = {
          description = "This is a required property and is exclusive to subscriptions with `FLEXIBLE` or `TRIAL` plans. This property sets the maximum number of licensed users allowed on a subscription. This quantity can be increased up to the maximum limit defined in the reseller's contract. The minimum quantity is the current number of users in the customer account. *Note: *G Suite subscriptions automatically assign a license to every user.",
          format = "int32",
          type = "integer",
        },
        numberOfSeats = {
          description = "This is a required property and is exclusive to subscriptions with `ANNUAL_MONTHLY_PAY` and `ANNUAL_YEARLY_PAY` plans. This property sets the maximum number of licenses assignable to users on a subscription. The reseller can add more licenses, but once set, the `numberOfSeats` cannot be reduced until renewal. The reseller is invoiced based on the `numberOfSeats` value regardless of how many of these user licenses are assigned. *Note: *Google Workspace subscriptions automatically assign a license to every user.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Subscription = {
      description = "JSON template for a subscription.",
      id = "Subscription",
      properties = {
        billingMethod = {
          description = "Read-only field that returns the current billing method for a subscription.",
          type = "string",
        },
        creationTime = {
          description = "The `creationTime` property is the date when subscription was created. It is in milliseconds using the Epoch format. See an example Epoch converter.",
          format = "int64",
          type = "string",
        },
        customerDomain = {
          description = "Primary domain name of the customer",
          type = "string",
        },
        customerId = {
          description = "This property will always be returned in a response as the unique identifier generated by Google. In a request, this property can be either the primary domain or the unique identifier generated by Google.",
          type = "string",
        },
        dealCode = {
          description = "Google-issued code (100 char max) for discounted pricing on subscription plans. Deal code must be included in `insert` requests in order to receive discounted rate. This property is optional, regular pricing applies if left empty.",
          type = "string",
        },
        kind = {
          default = "reseller#subscription",
          description = "Identifies the resource as a Subscription. Value: `reseller#subscription`",
          type = "string",
        },
        plan = {
          description = "The `plan` property is required. In this version of the API, the G Suite plans are the flexible plan, annual commitment plan, and the 30-day free trial plan. For more information about the API\"s payment plans, see the API concepts.",
          properties = {
            commitmentInterval = {
              description = "In this version of the API, annual commitment plan's interval is one year. *Note: *When `billingMethod` value is `OFFLINE`, the subscription property object `plan.commitmentInterval` is omitted in all API responses. ",
              properties = {
                endTime = {
                  description = "An annual commitment plan's interval's `endTime` in milliseconds using the UNIX Epoch format. See an example Epoch converter.",
                  format = "int64",
                  type = "string",
                },
                startTime = {
                  description = "An annual commitment plan's interval's `startTime` in milliseconds using UNIX Epoch format. See an example Epoch converter.",
                  format = "int64",
                  type = "string",
                },
              },
              type = "object",
            },
            isCommitmentPlan = {
              description = "The `isCommitmentPlan` property's boolean value identifies the plan as an annual commitment plan: - `true` — The subscription's plan is an annual commitment plan. - `false` — The plan is not an annual commitment plan. ",
              type = "boolean",
            },
            planName = {
              description = "The `planName` property is required. This is the name of the subscription's plan. For more information about the Google payment plans, see the API concepts. Possible values are: - `ANNUAL_MONTHLY_PAY` — The annual commitment plan with monthly payments. *Caution: *`ANNUAL_MONTHLY_PAY` is returned as `ANNUAL` in all API responses. - `ANNUAL_YEARLY_PAY` — The annual commitment plan with yearly payments - `FLEXIBLE` — The flexible plan - `TRIAL` — The 30-day free trial plan. A subscription in trial will be suspended after the 30th free day if no payment plan is assigned. Calling `changePlan` will assign a payment plan to a trial but will not activate the plan. A trial will automatically begin its assigned payment plan after its 30th free day or immediately after calling `startPaidService`. - `FREE` — The free plan is exclusive to the Cloud Identity SKU and does not incur any billing. ",
              type = "string",
            },
          },
          type = "object",
        },
        purchaseOrderId = {
          description = "This is an optional property. This purchase order (PO) information is for resellers to use for their company tracking usage. If a `purchaseOrderId` value is given it appears in the API responses and shows up in the invoice. The property accepts up to 80 plain text characters.",
          type = "string",
        },
        renewalSettings = {
          ["$ref"] = "RenewalSettings",
          description = "Renewal settings for the annual commitment plan. For more detailed information, see renewal options in the administrator help center.",
        },
        resourceUiUrl = {
          description = "URL to customer's Subscriptions page in the Admin console. The read-only URL is generated by the API service. This is used if your client application requires the customer to complete a task using the Subscriptions page in the Admin console.",
          type = "string",
        },
        seats = {
          ["$ref"] = "Seats",
          description = "This is a required property. The number and limit of user seat licenses in the plan.",
        },
        skuId = {
          description = "A required property. The `skuId` is a unique system identifier for a product's SKU assigned to a customer in the subscription. For products and SKUs available in this version of the API, see Product and SKU IDs.",
          type = "string",
        },
        skuName = {
          description = "Read-only external display name for a product's SKU assigned to a customer in the subscription. SKU names are subject to change at Google's discretion. For products and SKUs available in this version of the API, see Product and SKU IDs.",
          type = "string",
        },
        status = {
          description = "This is an optional property.",
          type = "string",
        },
        subscriptionId = {
          description = "The `subscriptionId` is the subscription identifier and is unique for each customer. This is a required property. Since a `subscriptionId` changes when a subscription is updated, we recommend not using this ID as a key for persistent data. Use the `subscriptionId` as described in retrieve all reseller subscriptions.",
          type = "string",
        },
        suspensionReasons = {
          description = "Read-only field containing an enumerable of all the current suspension reasons for a subscription. It is possible for a subscription to have many concurrent, overlapping suspension reasons. A subscription's `STATUS` is `SUSPENDED` until all pending suspensions are removed. Possible options include: - `PENDING_TOS_ACCEPTANCE` - The customer has not logged in and accepted the G Suite Resold Terms of Services. - `RENEWAL_WITH_TYPE_CANCEL` - The customer's commitment ended and their service was cancelled at the end of their term. - `RESELLER_INITIATED` - A manual suspension invoked by a Reseller. - `TRIAL_ENDED` - The customer's trial expired without a plan selected. - `OTHER` - The customer is suspended for an internal Google reason (e.g. abuse or otherwise). ",
          items = {
            type = "string",
          },
          type = "array",
        },
        transferInfo = {
          description = "Read-only transfer related information for the subscription. For more information, see retrieve transferable subscriptions for a customer.",
          properties = {
            currentLegacySkuId = {
              description = "The `skuId` of the current resold subscription. This is populated only when the customer has a subscription with a legacy SKU and the subscription resource is populated with the `skuId` of the SKU recommended for the transfer.",
              type = "string",
            },
            minimumTransferableSeats = {
              description = "When inserting a subscription, this is the minimum number of seats listed in the transfer order for this product. For example, if the customer has 20 users, the reseller cannot place a transfer order of 15 seats. The minimum is 20 seats.",
              format = "int32",
              type = "integer",
            },
            transferabilityExpirationTime = {
              description = "The time when transfer token or intent to transfer will expire. The time is in milliseconds using UNIX Epoch format.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        trialSettings = {
          description = "The G Suite annual commitment and flexible payment plans can be in a 30-day free trial. For more information, see the API concepts.",
          properties = {
            isInTrial = {
              description = "Determines if a subscription's plan is in a 30-day free trial or not: - `true` — The plan is in trial. - `false` — The plan is not in trial. ",
              type = "boolean",
            },
            trialEndTime = {
              description = "Date when the trial ends. The value is in milliseconds using the UNIX Epoch format. See an example Epoch converter.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    Subscriptions = {
      description = "A subscription manages the relationship of a Google customer's payment plan with a product's SKU, user licenses, 30-day free trial status, and renewal options. A primary role of a reseller is to manage the Google customer's subscriptions.",
      id = "Subscriptions",
      properties = {
        kind = {
          default = "reseller#subscriptions",
          description = "Identifies the resource as a collection of subscriptions. Value: reseller#subscriptions",
          type = "string",
        },
        nextPageToken = {
          description = "The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.",
          type = "string",
        },
        subscriptions = {
          description = "The subscriptions in this page of results.",
          items = {
            ["$ref"] = "Subscription",
          },
          type = "array",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Workspace Reseller API",
  version = "v1",
}