return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-billing"] = {
          description = "View and manage your Google Cloud Platform billing accounts",
        },
        ["https://www.googleapis.com/auth/cloud-billing.readonly"] = {
          description = "View your Google Cloud Platform billing accounts",
        },
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://cloudbilling.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloudbilling",
  description = "Allows developers to manage billing for their Google Cloud Platform projects programmatically.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/billing/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "cloudbilling:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://cloudbilling.mtls.googleapis.com/",
  name = "cloudbilling",
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
      methods = {
        create = {
          description = "This method creates [billing subaccounts](https://cloud.google.com/billing/docs/concepts#subaccounts). Google Cloud resellers should use the Channel Services APIs, [accounts.customers.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers/create) and [accounts.customers.entitlements.create](https://cloud.google.com/channel/docs/reference/rest/v1/accounts.customers.entitlements/create). When creating a subaccount, the current authenticated user must have the `billing.accounts.update` IAM permission on the parent account, which is typically given to billing account [administrators](https://cloud.google.com/billing/docs/how-to/billing-access). This method will return an error if the parent account has not been provisioned as a reseller account.",
          flatPath = "v1/billingAccounts",
          httpMethod = "POST",
          id = "cloudbilling.billingAccounts.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/billingAccounts",
          request = {
            ["$ref"] = "BillingAccount",
          },
          response = {
            ["$ref"] = "BillingAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        get = {
          description = "Gets information about a billing account. The current authenticated user must be a [viewer of the billing account](https://cloud.google.com/billing/docs/how-to/billing-access).",
          flatPath = "v1/billingAccounts/{billingAccountsId}",
          httpMethod = "GET",
          id = "cloudbilling.billingAccounts.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the billing account to retrieve. For example, `billingAccounts/012345-567890-ABCDEF`.",
              location = "path",
              pattern = "^billingAccounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "BillingAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-billing.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        getIamPolicy = {
          description = "Gets the access control policy for a billing account. The caller must have the `billing.accounts.getIamPolicy` permission on the account, which is often given to billing account [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).",
          flatPath = "v1/billingAccounts/{billingAccountsId}:getIamPolicy",
          httpMethod = "GET",
          id = "cloudbilling.billingAccounts.getIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            ["options.requestedPolicyVersion"] = {
              description = "Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests specifying an invalid value will be rejected. Requests for policies with any conditional role bindings must specify version 3. Policies with no conditional role bindings may specify any valid value or leave the field unset. The policy in the response might use the policy version that you specified, or it might use a lower policy version. For example, if you specify version 3, but the policy has no conditional role bindings, the response uses version 1. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies).",
              format = "int32",
              location = "query",
              type = "integer",
            },
            resource = {
              description = "REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^billingAccounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:getIamPolicy",
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-billing.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists the billing accounts that the current authenticated user has permission to [view](https://cloud.google.com/billing/docs/how-to/billing-access).",
          flatPath = "v1/billingAccounts",
          httpMethod = "GET",
          id = "cloudbilling.billingAccounts.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Options for how to filter the returned billing accounts. Currently this only supports filtering for [subaccounts](https://cloud.google.com/billing/docs/concepts) under a single provided reseller billing account. (e.g. \"master_billing_account=billingAccounts/012345-678901-ABCDEF\"). Boolean algebra and other fields are not currently supported.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Requested page size. The maximum page size is 100; this is also the default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `ListBillingAccounts` call. If unspecified, the first page of results is returned.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/billingAccounts",
          response = {
            ["$ref"] = "ListBillingAccountsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-billing.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        patch = {
          description = "Updates a billing account's fields. Currently the only field that can be edited is `display_name`. The current authenticated user must have the `billing.accounts.update` IAM permission, which is typically given to the [administrator](https://cloud.google.com/billing/docs/how-to/billing-access) of the billing account.",
          flatPath = "v1/billingAccounts/{billingAccountsId}",
          httpMethod = "PATCH",
          id = "cloudbilling.billingAccounts.patch",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The name of the billing account resource to be updated.",
              location = "path",
              pattern = "^billingAccounts/[^/]+$",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "The update mask applied to the resource. Only \"display_name\" is currently supported.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/{+name}",
          request = {
            ["$ref"] = "BillingAccount",
          },
          response = {
            ["$ref"] = "BillingAccount",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        setIamPolicy = {
          description = "Sets the access control policy for a billing account. Replaces any existing policy. The caller must have the `billing.accounts.setIamPolicy` permission on the account, which is often given to billing account [administrators](https://cloud.google.com/billing/docs/how-to/billing-access).",
          flatPath = "v1/billingAccounts/{billingAccountsId}:setIamPolicy",
          httpMethod = "POST",
          id = "cloudbilling.billingAccounts.setIamPolicy",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^billingAccounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:setIamPolicy",
          request = {
            ["$ref"] = "SetIamPolicyRequest",
          },
          response = {
            ["$ref"] = "Policy",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        testIamPermissions = {
          description = "Tests the access control policy for a billing account. This method takes the resource and a set of permissions as input and returns the subset of the input permissions that the caller is allowed for that resource.",
          flatPath = "v1/billingAccounts/{billingAccountsId}:testIamPermissions",
          httpMethod = "POST",
          id = "cloudbilling.billingAccounts.testIamPermissions",
          parameterOrder = {
            "resource",
          },
          parameters = {
            resource = {
              description = "REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/apis/design/resource_names) for the appropriate value for this field.",
              location = "path",
              pattern = "^billingAccounts/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+resource}:testIamPermissions",
          request = {
            ["$ref"] = "TestIamPermissionsRequest",
          },
          response = {
            ["$ref"] = "TestIamPermissionsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-billing.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        projects = {
          methods = {
            list = {
              description = "Lists the projects associated with a billing account. The current authenticated user must have the `billing.resourceAssociations.list` IAM permission, which is often given to billing account [viewers](https://cloud.google.com/billing/docs/how-to/billing-access).",
              flatPath = "v1/billingAccounts/{billingAccountsId}/projects",
              httpMethod = "GET",
              id = "cloudbilling.billingAccounts.projects.list",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The resource name of the billing account associated with the projects that you want to list. For example, `billingAccounts/012345-567890-ABCDEF`.",
                  location = "path",
                  pattern = "^billingAccounts/[^/]+$",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. The maximum page size is 100; this is also the default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results to be returned. This should be a `next_page_token` value returned from a previous `ListProjectBillingInfo` call. If unspecified, the first page of results is returned.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}/projects",
              response = {
                ["$ref"] = "ListProjectBillingInfoResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-billing",
                "https://www.googleapis.com/auth/cloud-billing.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
    projects = {
      methods = {
        getBillingInfo = {
          description = "Gets the billing information for a project. The current authenticated user must have the `resourcemanager.projects.get` permission for the project, which can be granted by assigning the [Project Viewer](https://cloud.google.com/iam/docs/understanding-roles#predefined_roles) role.",
          flatPath = "v1/projects/{projectsId}/billingInfo",
          httpMethod = "GET",
          id = "cloudbilling.projects.getBillingInfo",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the project for which billing information is retrieved. For example, `projects/tokyo-rain-123`.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}/billingInfo",
          response = {
            ["$ref"] = "ProjectBillingInfo",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-billing.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        updateBillingInfo = {
          description = "Sets or updates the billing account associated with a project. You specify the new billing account by setting the `billing_account_name` in the `ProjectBillingInfo` resource to the resource name of a billing account. Associating a project with an open billing account enables billing on the project and allows charges for resource usage. If the project already had a billing account, this method changes the billing account used for resource usage charges. *Note:* Incurred charges that have not yet been reported in the transaction history of the Google Cloud Console might be billed to the new billing account, even if the charge occurred before the new billing account was assigned to the project. The current authenticated user must have ownership privileges for both the [project](https://cloud.google.com/docs/permissions-overview#h.bgs0oxofvnoo ) and the [billing account](https://cloud.google.com/billing/docs/how-to/billing-access). You can disable billing on the project by setting the `billing_account_name` field to empty. This action disassociates the current billing account from the project. Any billable activity of your in-use services will stop, and your application could stop functioning as expected. Any unbilled charges to date will be billed to the previously associated account. The current authenticated user must be either an owner of the project or an owner of the billing account for the project. Note that associating a project with a *closed* billing account will have much the same effect as disabling billing on the project: any paid resources used by the project will be shut down. Thus, unless you wish to disable billing, you should always call this method with the name of an *open* billing account.",
          flatPath = "v1/projects/{projectsId}/billingInfo",
          httpMethod = "PUT",
          id = "cloudbilling.projects.updateBillingInfo",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "Required. The resource name of the project associated with the billing information that you want to update. For example, `projects/tokyo-rain-123`.",
              location = "path",
              pattern = "^projects/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}/billingInfo",
          request = {
            ["$ref"] = "ProjectBillingInfo",
          },
          response = {
            ["$ref"] = "ProjectBillingInfo",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    services = {
      methods = {
        list = {
          description = "Lists all public cloud services.",
          flatPath = "v1/services",
          httpMethod = "GET",
          id = "cloudbilling.services.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Requested page size. Defaults to 5000.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `ListServices` call. If unspecified, the first page of results is returned.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/services",
          response = {
            ["$ref"] = "ListServicesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-billing",
            "https://www.googleapis.com/auth/cloud-billing.readonly",
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
      resources = {
        skus = {
          methods = {
            list = {
              description = "Lists all publicly available SKUs for a given cloud service.",
              flatPath = "v1/services/{servicesId}/skus",
              httpMethod = "GET",
              id = "cloudbilling.services.skus.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                currencyCode = {
                  description = "The ISO 4217 currency code for the pricing info in the response proto. Will use the conversion rate as of start_time. Optional. If not specified USD will be used.",
                  location = "query",
                  type = "string",
                },
                endTime = {
                  description = "Optional exclusive end time of the time range for which the pricing versions will be returned. Timestamps in the future are not allowed. The time range has to be within a single calendar month in America/Los_Angeles timezone. Time range as a whole is optional. If not specified, the latest pricing will be returned (up to 12 hours old at most).",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Requested page size. Defaults to 5000.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A token identifying a page of results to return. This should be a `next_page_token` value returned from a previous `ListSkus` call. If unspecified, the first page of results is returned.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the service. Example: \"services/DA34-426B-A397\"",
                  location = "path",
                  pattern = "^services/[^/]+$",
                  required = true,
                  type = "string",
                },
                startTime = {
                  description = "Optional inclusive start time of the time range for which the pricing versions will be returned. Timestamps in the future are not allowed. The time range has to be within a single calendar month in America/Los_Angeles timezone. Time range as a whole is optional. If not specified, the latest pricing will be returned (up to 12 hours old at most).",
                  format = "google-datetime",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+parent}/skus",
              response = {
                ["$ref"] = "ListSkusResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-billing",
                "https://www.googleapis.com/auth/cloud-billing.readonly",
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
        },
      },
    },
  },
  revision = "20221206",
  rootUrl = "https://cloudbilling.googleapis.com/",
  schemas = {
    AggregationInfo = {
      description = "Represents the aggregation level and interval for pricing of a single SKU.",
      id = "AggregationInfo",
      properties = {
        aggregationCount = {
          description = "The number of intervals to aggregate over. Example: If aggregation_level is \"DAILY\" and aggregation_count is 14, aggregation will be over 14 days.",
          format = "int32",
          type = "integer",
        },
        aggregationInterval = {
          enum = {
            "AGGREGATION_INTERVAL_UNSPECIFIED",
            "DAILY",
            "MONTHLY",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        aggregationLevel = {
          enum = {
            "AGGREGATION_LEVEL_UNSPECIFIED",
            "ACCOUNT",
            "PROJECT",
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
    BillingAccount = {
      description = "A billing account in the [Google Cloud Console](https://console.cloud.google.com/). You can assign a billing account to one or more projects.",
      id = "BillingAccount",
      properties = {
        displayName = {
          description = "The display name given to the billing account, such as `My Billing Account`. This name is displayed in the Google Cloud Console.",
          type = "string",
        },
        masterBillingAccount = {
          description = "If this account is a [subaccount](https://cloud.google.com/billing/docs/concepts), then this will be the resource name of the parent billing account that it is being resold through. Otherwise this will be empty.",
          type = "string",
        },
        name = {
          description = "Output only. The resource name of the billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF` would be the resource name for billing account `012345-567890-ABCDEF`.",
          readOnly = true,
          type = "string",
        },
        open = {
          description = "Output only. True if the billing account is open, and will therefore be charged for any usage on associated projects. False if the billing account is closed, and therefore projects associated with it will be unable to use paid services.",
          readOnly = true,
          type = "boolean",
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
    Category = {
      description = "Represents the category hierarchy of a SKU.",
      id = "Category",
      properties = {
        resourceFamily = {
          description = "The type of product the SKU refers to. Example: \"Compute\", \"Storage\", \"Network\", \"ApplicationServices\" etc.",
          type = "string",
        },
        resourceGroup = {
          description = "A group classification for related SKUs. Example: \"RAM\", \"GPU\", \"Prediction\", \"Ops\", \"GoogleEgress\" etc.",
          type = "string",
        },
        serviceDisplayName = {
          description = "The display name of the service this SKU belongs to.",
          type = "string",
        },
        usageType = {
          description = "Represents how the SKU is consumed. Example: \"OnDemand\", \"Preemptible\", \"Commit1Mo\", \"Commit1Yr\" etc.",
          type = "string",
        },
      },
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
    GeoTaxonomy = {
      description = "Encapsulates the geographic taxonomy data for a sku.",
      id = "GeoTaxonomy",
      properties = {
        regions = {
          description = "The list of regions associated with a sku. Empty for Global skus, which are associated with all Google Cloud regions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "The type of Geo Taxonomy: GLOBAL, REGIONAL, or MULTI_REGIONAL.",
          enum = {
            "TYPE_UNSPECIFIED",
            "GLOBAL",
            "REGIONAL",
            "MULTI_REGIONAL",
          },
          enumDescriptions = {
            "The type is not specified.",
            "The sku is global in nature, e.g. a license sku. Global skus are available in all regions, and so have an empty region list.",
            "The sku is available in a specific region, e.g. \"us-west2\".",
            "The sku is associated with multiple regions, e.g. \"us-west2\" and \"us-east1\".",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ListBillingAccountsResponse = {
      description = "Response message for `ListBillingAccounts`.",
      id = "ListBillingAccountsResponse",
      properties = {
        billingAccounts = {
          description = "A list of billing accounts.",
          items = {
            ["$ref"] = "BillingAccount",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token to retrieve the next page of results. To retrieve the next page, call `ListBillingAccounts` again with the `page_token` field set to this value. This field is empty if there are no more results to retrieve.",
          type = "string",
        },
      },
      type = "object",
    },
    ListProjectBillingInfoResponse = {
      description = "Request message for `ListProjectBillingInfoResponse`.",
      id = "ListProjectBillingInfoResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. To retrieve the next page, call `ListProjectBillingInfo` again with the `page_token` field set to this value. This field is empty if there are no more results to retrieve.",
          type = "string",
        },
        projectBillingInfo = {
          description = "A list of `ProjectBillingInfo` resources representing the projects associated with the billing account.",
          items = {
            ["$ref"] = "ProjectBillingInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListServicesResponse = {
      description = "Response message for `ListServices`.",
      id = "ListServicesResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. To retrieve the next page, call `ListServices` again with the `page_token` field set to this value. This field is empty if there are no more results to retrieve.",
          type = "string",
        },
        services = {
          description = "A list of services.",
          items = {
            ["$ref"] = "Service",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSkusResponse = {
      description = "Response message for `ListSkus`.",
      id = "ListSkusResponse",
      properties = {
        nextPageToken = {
          description = "A token to retrieve the next page of results. To retrieve the next page, call `ListSkus` again with the `page_token` field set to this value. This field is empty if there are no more results to retrieve.",
          type = "string",
        },
        skus = {
          description = "The list of public SKUs of the given service.",
          items = {
            ["$ref"] = "Sku",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Money = {
      description = "Represents an amount of money with its currency type.",
      id = "Money",
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
    PricingExpression = {
      description = "Expresses a mathematical pricing formula. For Example:- `usage_unit: GBy` `tiered_rates:` `[start_usage_amount: 20, unit_price: $10]` `[start_usage_amount: 100, unit_price: $5]` The above expresses a pricing formula where the first 20GB is free, the next 80GB is priced at $10 per GB followed by $5 per GB for additional usage.",
      id = "PricingExpression",
      properties = {
        baseUnit = {
          description = "The base unit for the SKU which is the unit used in usage exports. Example: \"By\"",
          type = "string",
        },
        baseUnitConversionFactor = {
          description = "Conversion factor for converting from price per usage_unit to price per base_unit, and start_usage_amount to start_usage_amount in base_unit. unit_price / base_unit_conversion_factor = price per base_unit. start_usage_amount * base_unit_conversion_factor = start_usage_amount in base_unit.",
          format = "double",
          type = "number",
        },
        baseUnitDescription = {
          description = "The base unit in human readable form. Example: \"byte\".",
          type = "string",
        },
        displayQuantity = {
          description = "The recommended quantity of units for displaying pricing info. When displaying pricing info it is recommended to display: (unit_price * display_quantity) per display_quantity usage_unit. This field does not affect the pricing formula and is for display purposes only. Example: If the unit_price is \"0.0001 USD\", the usage_unit is \"GB\" and the display_quantity is \"1000\" then the recommended way of displaying the pricing info is \"0.10 USD per 1000 GB\"",
          format = "double",
          type = "number",
        },
        tieredRates = {
          description = "The list of tiered rates for this pricing. The total cost is computed by applying each of the tiered rates on usage. This repeated list is sorted by ascending order of start_usage_amount.",
          items = {
            ["$ref"] = "TierRate",
          },
          type = "array",
        },
        usageUnit = {
          description = "The short hand for unit of usage this pricing is specified in. Example: usage_unit of \"GiBy\" means that usage is specified in \"Gibi Byte\".",
          type = "string",
        },
        usageUnitDescription = {
          description = "The unit of usage in human readable form. Example: \"gibi byte\".",
          type = "string",
        },
      },
      type = "object",
    },
    PricingInfo = {
      description = "Represents the pricing information for a SKU at a single point of time.",
      id = "PricingInfo",
      properties = {
        aggregationInfo = {
          ["$ref"] = "AggregationInfo",
          description = "Aggregation Info. This can be left unspecified if the pricing expression doesn't require aggregation.",
        },
        currencyConversionRate = {
          description = "Conversion rate used for currency conversion, from USD to the currency specified in the request. This includes any surcharge collected for billing in non USD currency. If a currency is not specified in the request this defaults to 1.0. Example: USD * currency_conversion_rate = JPY",
          format = "double",
          type = "number",
        },
        effectiveTime = {
          description = "The timestamp from which this pricing was effective within the requested time range. This is guaranteed to be greater than or equal to the start_time field in the request and less than the end_time field in the request. If a time range was not specified in the request this field will be equivalent to a time within the last 12 hours, indicating the latest pricing info.",
          format = "google-datetime",
          type = "string",
        },
        pricingExpression = {
          ["$ref"] = "PricingExpression",
          description = "Expresses the pricing formula. See `PricingExpression` for an example.",
        },
        summary = {
          description = "An optional human readable summary of the pricing information, has a maximum length of 256 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    ProjectBillingInfo = {
      description = "Encapsulation of billing information for a Google Cloud Console project. A project has at most one associated billing account at a time (but a billing account can be assigned to multiple projects).",
      id = "ProjectBillingInfo",
      properties = {
        billingAccountName = {
          description = "The resource name of the billing account associated with the project, if any. For example, `billingAccounts/012345-567890-ABCDEF`.",
          type = "string",
        },
        billingEnabled = {
          description = "True if the project is associated with an open billing account, to which usage on the project is charged. False if the project is associated with a closed billing account, or no billing account at all, and therefore cannot use paid services. This field is read-only.",
          type = "boolean",
        },
        name = {
          description = "The resource name for the `ProjectBillingInfo`; has the form `projects/{project_id}/billingInfo`. For example, the resource name for the billing information for project `tokyo-rain-123` would be `projects/tokyo-rain-123/billingInfo`. This field is read-only.",
          type = "string",
        },
        projectId = {
          description = "The ID of the project that this `ProjectBillingInfo` represents, such as `tokyo-rain-123`. This is a convenience field so that you don't need to parse the `name` field to obtain a project ID. This field is read-only.",
          type = "string",
        },
      },
      type = "object",
    },
    Service = {
      description = "Encapsulates a single service in Google Cloud Platform.",
      id = "Service",
      properties = {
        businessEntityName = {
          description = "The business under which the service is offered. Ex. \"businessEntities/GCP\", \"businessEntities/Maps\"",
          type = "string",
        },
        displayName = {
          description = "A human readable display name for this service.",
          type = "string",
        },
        name = {
          description = "The resource name for the service. Example: \"services/DA34-426B-A397\"",
          type = "string",
        },
        serviceId = {
          description = "The identifier for the service. Example: \"DA34-426B-A397\"",
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
    Sku = {
      description = "Encapsulates a single SKU in Google Cloud Platform",
      id = "Sku",
      properties = {
        category = {
          ["$ref"] = "Category",
          description = "The category hierarchy of this SKU, purely for organizational purpose.",
        },
        description = {
          description = "A human readable description of the SKU, has a maximum length of 256 characters.",
          type = "string",
        },
        geoTaxonomy = {
          ["$ref"] = "GeoTaxonomy",
          description = "The geographic taxonomy for this sku.",
        },
        name = {
          description = "The resource name for the SKU. Example: \"services/DA34-426B-A397/skus/AA95-CD31-42FE\"",
          type = "string",
        },
        pricingInfo = {
          description = "A timeline of pricing info for this SKU in chronological order.",
          items = {
            ["$ref"] = "PricingInfo",
          },
          type = "array",
        },
        serviceProviderName = {
          description = "Identifies the service provider. This is 'Google' for first party services in Google Cloud Platform.",
          type = "string",
        },
        serviceRegions = {
          description = "List of service regions this SKU is offered at. Example: \"asia-east1\" Service regions can be found at https://cloud.google.com/about/locations/",
          items = {
            type = "string",
          },
          type = "array",
        },
        skuId = {
          description = "The identifier for the SKU. Example: \"AA95-CD31-42FE\"",
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
    TierRate = {
      description = "The price rate indicating starting usage and its corresponding price.",
      id = "TierRate",
      properties = {
        startUsageAmount = {
          description = "Usage is priced at this rate only after this amount. Example: start_usage_amount of 10 indicates that the usage will be priced at the unit_price after the first 10 usage_units.",
          format = "double",
          type = "number",
        },
        unitPrice = {
          ["$ref"] = "Money",
          description = "The price per unit of usage. Example: unit_price of amount $10 indicates that each unit will cost $10.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Billing API",
  version = "v1",
}