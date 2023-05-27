return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-billing"] = {
          description = "View and manage your Google Cloud Platform billing accounts",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://billingbudgets.googleapis.com/",
  batchPath = "batch",
  canonicalName = "CloudBillingBudget",
  description = "The Cloud Billing Budget API stores Cloud Billing budgets, which define a budget plan and the rules to execute as spend is tracked against that plan.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/billing/docs/how-to/budget-api-overview",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "billingbudgets:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://billingbudgets.mtls.googleapis.com/",
  name = "billingbudgets",
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
    billingAccounts = {
      resources = {
        budgets = {
          methods = {
            create = {
              description = "Creates a new budget. See [Quotas and limits](https://cloud.google.com/billing/quotas) for more information on the limits of the number of budgets you can create.",
              flatPath = "v1/billingAccounts/{billingAccountsId}/budgets",
              httpMethod = "POST",
              id = "billingbudgets.billingAccounts.budgets.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the billing account to create the budget in. Values are of the form `billingAccounts/{billingAccountId}`.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/budgets",
              request = {
                ["$ref"] = "GoogleCloudBillingBudgetsV1Budget",
              },
              response = {
                ["$ref"] = "GoogleCloudBillingBudgetsV1Budget",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-billing",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            delete = {
              description = "Deletes a budget. Returns successfully if already deleted.",
              flatPath = "v1/billingAccounts/{billingAccountsId}/budgets/{budgetsId}",
              httpMethod = "DELETE",
              id = "billingbudgets.billingAccounts.budgets.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of the budget to delete. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/budgets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleProtobufEmpty",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-billing",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Returns a budget. WARNING: There are some fields exposed on the Google Cloud Console that aren't available on this API. When reading from the API, you will not see these fields in the return value, though they may have been set in the Cloud Console.",
              flatPath = "v1/billingAccounts/{billingAccountsId}/budgets/{budgetsId}",
              httpMethod = "GET",
              id = "billingbudgets.billingAccounts.budgets.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. Name of budget to get. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/budgets/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "GoogleCloudBillingBudgetsV1Budget",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-billing",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            list = {
              description = "Returns a list of budgets for a billing account. WARNING: There are some fields exposed on the Google Cloud Console that aren't available on this API. When reading from the API, you will not see these fields in the return value, though they may have been set in the Cloud Console.",
              flatPath = "v1/billingAccounts/{billingAccountsId}/budgets",
              httpMethod = "GET",
              id = "billingbudgets.billingAccounts.budgets.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                pageSize = {
                  description = "Optional. The maximum number of budgets to return per page. The default and maximum value are 100.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. The value returned by the last `ListBudgetsResponse` which indicates that this is a continuation of a prior `ListBudgets` call, and that the system should return the next page of data.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. Name of billing account to list budgets under. Values are of the form `billingAccounts/{billingAccountId}`.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}/budgets",
              response = {
                ["$ref"] = "GoogleCloudBillingBudgetsV1ListBudgetsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-billing",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            patch = {
              description = "Updates a budget and returns the updated budget. WARNING: There are some fields exposed on the Google Cloud Console that aren't available on this API. Budget fields that are not exposed in this API will not be changed by this method.",
              flatPath = "v1/billingAccounts/{billingAccountsId}/budgets/{budgetsId}",
              httpMethod = "PATCH",
              id = "billingbudgets.billingAccounts.budgets.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Output only. Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+/budgets/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Optional. Indicates which fields in the provided budget to update. Read-only fields (such as `name`) cannot be changed. If this is not provided, then only fields with non-default values from the request are updated. See https://developers.google.com/protocol-buffers/docs/proto3#default for more details about default values.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "GoogleCloudBillingBudgetsV1Budget",
              },
              response = {
                ["$ref"] = "GoogleCloudBillingBudgetsV1Budget",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-billing",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230109",
  rootUrl = "https://billingbudgets.googleapis.com/",
  schemas = {
    GoogleCloudBillingBudgetsV1Budget = {
      description = "A budget is a plan that describes what you expect to spend on Cloud projects, plus the rules to execute as spend is tracked against that plan, (for example, send an alert when 90% of the target spend is met). The budget time period is configurable, with options such as month (default), quarter, year, or custom time period.",
      id = "GoogleCloudBillingBudgetsV1Budget",
      properties = {
        amount = {
          ["$ref"] = "GoogleCloudBillingBudgetsV1BudgetAmount",
          description = "Required. Budgeted amount.",
        },
        budgetFilter = {
          ["$ref"] = "GoogleCloudBillingBudgetsV1Filter",
          description = "Optional. Filters that define which resources are used to compute the actual spend against the budget amount, such as projects, services, and the budget's time period, as well as other filters.",
        },
        displayName = {
          description = "User data for display name in UI. The name must be less than or equal to 60 characters.",
          type = "string",
        },
        etag = {
          description = "Optional. Etag to validate that the object is unchanged for a read-modify-write operation. An empty etag causes an update to overwrite other changes.",
          type = "string",
        },
        name = {
          description = "Output only. Resource name of the budget. The resource name implies the scope of a budget. Values are of the form `billingAccounts/{billingAccountId}/budgets/{budgetId}`.",
          readOnly = true,
          type = "string",
        },
        notificationsRule = {
          ["$ref"] = "GoogleCloudBillingBudgetsV1NotificationsRule",
          description = "Optional. Rules to apply to notifications sent based on budget spend and thresholds.",
        },
        thresholdRules = {
          description = "Optional. Rules that trigger alerts (notifications of thresholds being crossed) when spend exceeds the specified percentages of the budget. Optional for `pubsubTopic` notifications. Required if using email notifications.",
          items = {
            ["$ref"] = "GoogleCloudBillingBudgetsV1ThresholdRule",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudBillingBudgetsV1BudgetAmount = {
      description = "The budgeted amount for each usage period.",
      id = "GoogleCloudBillingBudgetsV1BudgetAmount",
      properties = {
        lastPeriodAmount = {
          ["$ref"] = "GoogleCloudBillingBudgetsV1LastPeriodAmount",
          description = "Use the last period's actual spend as the budget for the present period. LastPeriodAmount can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.",
        },
        specifiedAmount = {
          ["$ref"] = "GoogleTypeMoney",
          description = "A specified amount to use as the budget. `currency_code` is optional. If specified when creating a budget, it must match the currency of the billing account. If specified when updating a budget, it must match the currency_code of the existing budget. The `currency_code` is provided on output.",
        },
      },
      type = "object",
    },
    GoogleCloudBillingBudgetsV1CustomPeriod = {
      description = "All date times begin at 12 AM US and Canadian Pacific Time (UTC-8).",
      id = "GoogleCloudBillingBudgetsV1CustomPeriod",
      properties = {
        endDate = {
          ["$ref"] = "GoogleTypeDate",
          description = "Optional. The end date of the time period. Budgets with elapsed end date won't be processed. If unset, specifies to track all usage incurred since the start_date.",
        },
        startDate = {
          ["$ref"] = "GoogleTypeDate",
          description = "Required. The start date must be after January 1, 2017.",
        },
      },
      type = "object",
    },
    GoogleCloudBillingBudgetsV1Filter = {
      description = "A filter for a budget, limiting the scope of the cost to calculate.",
      id = "GoogleCloudBillingBudgetsV1Filter",
      properties = {
        calendarPeriod = {
          description = "Optional. Specifies to track usage for recurring calendar period. For example, assume that CalendarPeriod.QUARTER is set. The budget tracks usage from April 1 to June 30, when the current calendar month is April, May, June. After that, it tracks usage from July 1 to September 30 when the current calendar month is July, August, September, so on.",
          enum = {
            "CALENDAR_PERIOD_UNSPECIFIED",
            "MONTH",
            "QUARTER",
            "YEAR",
          },
          enumDescriptions = {
            "Calendar period is unset. This is the default if the budget is for a custom time period (CustomPeriod).",
            "A month. Month starts on the first day of each month, such as January 1, February 1, March 1, and so on.",
            "A quarter. Quarters start on dates January 1, April 1, July 1, and October 1 of each year.",
            "A year. Year starts on January 1.",
          },
          type = "string",
        },
        creditTypes = {
          description = "Optional. If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See [a list of acceptable credit type values](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type). If Filter.credit_types_treatment is **not** INCLUDE_SPECIFIED_CREDITS, this field must be empty.",
          items = {
            type = "string",
          },
          type = "array",
        },
        creditTypesTreatment = {
          description = "Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.",
          enum = {
            "CREDIT_TYPES_TREATMENT_UNSPECIFIED",
            "INCLUDE_ALL_CREDITS",
            "EXCLUDE_ALL_CREDITS",
            "INCLUDE_SPECIFIED_CREDITS",
          },
          enumDescriptions = {
            "",
            "All types of credit are subtracted from the gross cost to determine the spend for threshold calculations.",
            "All types of credit are added to the net cost to determine the spend for threshold calculations.",
            "[Credit types](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type) specified in the credit_types field are subtracted from the gross cost to determine the spend for threshold calculations.",
          },
          type = "string",
        },
        customPeriod = {
          ["$ref"] = "GoogleCloudBillingBudgetsV1CustomPeriod",
          description = "Optional. Specifies to track usage from any start date (required) to any end date (optional). This time period is static, it does not recur.",
        },
        labels = {
          additionalProperties = {
            items = {
              type = "any",
            },
            type = "array",
          },
          description = "Optional. A single label and value pair specifying that usage from only this set of labeled resources should be included in the budget. If omitted, the report includes all labeled and unlabeled usage. An object containing a single `\"key\": value` pair. Example: `{ \"name\": \"wrench\" }`. _Currently, multiple entries or multiple values per entry are not allowed._",
          type = "object",
        },
        projects = {
          description = "Optional. A set of projects of the form `projects/{project}`, specifying that usage from only this set of projects should be included in the budget. If omitted, the report includes all usage for the billing account, regardless of which project the usage occurred on.",
          items = {
            type = "string",
          },
          type = "array",
        },
        services = {
          description = "Optional. A set of services of the form `services/{service_id}`, specifying that usage from only this set of services should be included in the budget. If omitted, the report includes usage for all the services. The service names are available through the Catalog API: https://cloud.google.com/billing/v1/how-tos/catalog-api.",
          items = {
            type = "string",
          },
          type = "array",
        },
        subaccounts = {
          description = "Optional. A set of subaccounts of the form `billingAccounts/{account_id}`, specifying that usage from only this set of subaccounts should be included in the budget. If a subaccount is set to the name of the parent account, usage from the parent account is included. If the field is omitted, the report includes usage from the parent account and all subaccounts, if they exist.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudBillingBudgetsV1LastPeriodAmount = {
      description = "Describes a budget amount targeted to the last Filter.calendar_period spend. At this time, the amount is automatically 100% of the last calendar period's spend; that is, there are no other options yet. LastPeriodAmount cannot be set for a budget configured with a Filter.custom_period.",
      id = "GoogleCloudBillingBudgetsV1LastPeriodAmount",
      properties = {},
      type = "object",
    },
    GoogleCloudBillingBudgetsV1ListBudgetsResponse = {
      description = "Response for ListBudgets",
      id = "GoogleCloudBillingBudgetsV1ListBudgetsResponse",
      properties = {
        budgets = {
          description = "List of the budgets owned by the requested billing account.",
          items = {
            ["$ref"] = "GoogleCloudBillingBudgetsV1Budget",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If not empty, indicates that there may be more budgets that match the request; this value should be passed in a new `ListBudgetsRequest`.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBillingBudgetsV1NotificationsRule = {
      description = "NotificationsRule defines notifications that are sent based on budget spend and thresholds.",
      id = "GoogleCloudBillingBudgetsV1NotificationsRule",
      properties = {
        disableDefaultIamRecipients = {
          description = "Optional. When set to true, disables default notifications sent when a threshold is exceeded. Default notifications are sent to those with Billing Account Administrator and Billing Account User IAM roles for the target account.",
          type = "boolean",
        },
        monitoringNotificationChannels = {
          description = "Optional. Email targets to send notifications to when a threshold is exceeded. This is in addition to the `DefaultIamRecipients` who receive alert emails based on their billing account IAM role. The value is the full REST resource name of a Cloud Monitoring email notification channel with the form `projects/{project_id}/notificationChannels/{channel_id}`. A maximum of 5 email notifications are allowed. To customize budget alert email recipients with monitoring notification channels, you _must create the monitoring notification channels before you link them to a budget_. For guidance on setting up notification channels to use with budgets, see [Customize budget alert email recipients](https://cloud.google.com/billing/docs/how-to/budgets-notification-recipients). For Cloud Billing budget alerts, you _must use email notification channels_. The other types of notification channels are _not_ supported, such as Slack, SMS, or PagerDuty. If you want to [send budget notifications to Slack](https://cloud.google.com/billing/docs/how-to/notify#send_notifications_to_slack), use a pubsubTopic and configure [programmatic notifications](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications).",
          items = {
            type = "string",
          },
          type = "array",
        },
        pubsubTopic = {
          description = "Optional. The name of the Pub/Sub topic where budget-related messages are published, in the form `projects/{project_id}/topics/{topic_id}`. Updates are sent to the topic at regular intervals; the timing of the updates is not dependent on the [threshold rules](#thresholdrule) you've set. Note that if you want your [Pub/Sub JSON object](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format) to contain data for `alertThresholdExceeded`, you need at least one [alert threshold rule](#thresholdrule). When you set threshold rules, you must also enable at least one of the email notification options, either using the default IAM recipients or Cloud Monitoring email notification channels. To use Pub/Sub topics with budgets, you must do the following: 1. Create the Pub/Sub topic before connecting it to your budget. For guidance, see [Manage programmatic budget alert notifications](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications). 2. Grant the API caller the `pubsub.topics.setIamPolicy` permission on the Pub/Sub topic. If not set, the API call fails with PERMISSION_DENIED. For additional details on Pub/Sub roles and permissions, see [Permissions required for this task](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#permissions_required_for_this_task).",
          type = "string",
        },
        schemaVersion = {
          description = "Optional. Required when NotificationsRule.pubsub_topic is set. The schema version of the notification sent to NotificationsRule.pubsub_topic. Only \"1.0\" is accepted. It represents the JSON schema as defined in https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudBillingBudgetsV1ThresholdRule = {
      description = "ThresholdRule contains the definition of a threshold. Threshold rules define the triggering events used to generate a budget notification email. When a threshold is crossed (spend exceeds the specified percentages of the budget), budget alert emails are sent to the email recipients you specify in the [NotificationsRule](#notificationsrule). Threshold rules also affect the fields included in the [JSON data object](https://cloud.google.com/billing/docs/how-to/budgets-programmatic-notifications#notification_format) sent to a Pub/Sub topic. Threshold rules are _required_ if using email notifications. Threshold rules are _optional_ if only setting a [`pubsubTopic` NotificationsRule](#NotificationsRule), unless you want your JSON data object to include data about the thresholds you set. For more information, see [set budget threshold rules and actions](https://cloud.google.com/billing/docs/how-to/budgets#budget-actions).",
      id = "GoogleCloudBillingBudgetsV1ThresholdRule",
      properties = {
        spendBasis = {
          description = "Optional. The type of basis used to determine if spend has passed the threshold. Behavior defaults to CURRENT_SPEND if not set.",
          enum = {
            "BASIS_UNSPECIFIED",
            "CURRENT_SPEND",
            "FORECASTED_SPEND",
          },
          enumDescriptions = {
            "Unspecified threshold basis.",
            "Use current spend as the basis for comparison against the threshold.",
            "Use forecasted spend for the period as the basis for comparison against the threshold. FORECASTED_SPEND can only be set when the budget's time period is a Filter.calendar_period. It cannot be set in combination with Filter.custom_period.",
          },
          type = "string",
        },
        thresholdPercent = {
          description = "Required. Send an alert when this threshold is exceeded. This is a 1.0-based percentage, so 0.5 = 50%. Validation: non-negative number.",
          format = "double",
          type = "number",
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
    GoogleTypeDate = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "GoogleTypeDate",
      properties = {
        day = {
          description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
          format = "int32",
          type = "integer",
        },
        month = {
          description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
          format = "int32",
          type = "integer",
        },
        year = {
          description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    GoogleTypeMoney = {
      description = "Represents an amount of money with its currency type.",
      id = "GoogleTypeMoney",
      properties = {
        currencyCode = {
          description = "The three-letter currency code defined in ISO 4217.",
          type = "string",
        },
        nanos = {
          description = "Number of nano (10^-9) units of the amount. The value must be between -999,999,999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be positive or zero. If `units` is zero, `nanos` can be positive, zero, or negative. If `units` is negative, `nanos` must be negative or zero. For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.",
          format = "int32",
          type = "integer",
        },
        units = {
          description = "The whole units of the amount. For example if `currencyCode` is `\"USD\"`, then 1 unit is one US dollar.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Billing Budget API",
  version = "v1",
  version_module = true,
}
