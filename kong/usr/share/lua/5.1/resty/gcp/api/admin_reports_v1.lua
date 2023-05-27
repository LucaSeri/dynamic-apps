return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/admin.reports.audit.readonly"] = {
          description = "View audit reports for your G Suite domain",
        },
        ["https://www.googleapis.com/auth/admin.reports.usage.readonly"] = {
          description = "View usage reports for your G Suite domain",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://admin.googleapis.com/",
  batchPath = "batch",
  canonicalName = "reports",
  description = "Admin SDK lets administrators of enterprise domains to view and manage resources like user, groups etc. It also provides audit and usage reports of domain.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/admin-sdk/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "admin:reports_v1",
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
    activities = {
      methods = {
        list = {
          description = "Retrieves a list of activities for a specific customer's account and application such as the Admin console application or the Google Drive application. For more information, see the guides for administrator and Google Drive activity reports. For more information about the activity report's parameters, see the activity parameters reference guides. ",
          flatPath = "admin/reports/v1/activity/users/{userKey}/applications/{applicationName}",
          httpMethod = "GET",
          id = "reports.activities.list",
          parameterOrder = {
            "userKey",
            "applicationName",
          },
          parameters = {
            actorIpAddress = {
              description = "The Internet Protocol (IP) Address of host where the event was performed. This is an additional way to filter a report's summary using the IP address of the user whose activity is being reported. This IP address may or may not reflect the user's physical location. For example, the IP address can be the user's proxy server's address or a virtual private network (VPN) address. This parameter supports both IPv4 and IPv6 address versions.",
              location = "query",
              type = "string",
            },
            applicationName = {
              description = "Application name for which the events are to be retrieved.",
              enum = {
                "access_transparency",
                "admin",
                "calendar",
                "chat",
                "drive",
                "gcp",
                "gplus",
                "groups",
                "groups_enterprise",
                "jamboard",
                "login",
                "meet",
                "mobile",
                "rules",
                "saml",
                "token",
                "user_accounts",
                "context_aware_access",
                "chrome",
                "data_studio",
                "keep",
              },
              enumDescriptions = {
                "The Google Workspace Access Transparency activity reports return information about different types of Access Transparency activity events.",
                "The Admin console application's activity reports return account information about different types of administrator activity events.",
                "The Google Calendar application's activity reports return information about various Calendar activity events.",
                "The Chat activity reports return information about various Chat activity events.",
                "The Google Drive application's activity reports return information about various Google Drive activity events. The Drive activity report is only available for Google Workspace Business and Enterprise customers.",
                "The Google Cloud Platform application's activity reports return information about various GCP activity events.",
                "The Google+ application's activity reports return information about various Google+ activity events.",
                "The Google Groups application's activity reports return information about various Groups activity events.",
                "The Enterprise Groups activity reports return information about various Enterprise group activity events.",
                "The Jamboard activity reports return information about various Jamboard activity events.",
                "The Login application's activity reports return account information about different types of Login activity events.",
                "The Meet Audit activity report returns information about different types of Meet Audit activity events.",
                "The Device Audit activity report returns information about different types of Device Audit activity events.",
                "The Rules activity report returns information about different types of Rules activity events.",
                "The SAML activity report returns information about different types of SAML activity events.",
                "The Token application's activity reports return account information about different types of Token activity events.",
                "The User Accounts application's activity reports return account information about different types of User Accounts activity events.",
                "The Context-aware access activity reports return information about users' access denied events due to Context-aware access rules.",
                "The Chrome activity reports return information about Chrome browser and Chrome OS events.",
                "The Data Studio activity reports return information about various types of Data Studio activity events.",
                "The Keep application's activity reports return information about various Google Keep activity events. The Keep activity report is only available for Google Workspace Business and Enterprise customers.",
              },
              location = "path",
              pattern = "(access_transparency)|(admin)|(calendar)|(chat)|(chrome)|(context_aware_access)|(data_studio)|(drive)|(gcp)|(gplus)|(groups)|(groups_enterprise)|(jamboard)|(keep)|(login)|(meet)|(mobile)|(rules)|(saml)|(token)|(user_accounts)",
              required = true,
              type = "string",
            },
            customerId = {
              description = "The unique ID of the customer to retrieve data for.",
              location = "query",
              pattern = "C.+|my_customer",
              type = "string",
            },
            endTime = {
              description = "Sets the end of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The default value is the approximate time of the API request. An API report has three basic time concepts: - *Date of the API's request for a report*: When the API created and retrieved the report. - *Report's start time*: The beginning of the timespan shown in the report. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error. - *Report's end time*: The end of the timespan shown in the report. For example, the timespan of events summarized in a report can start in April and end in May. The report itself can be requested in August. If the `endTime` is not specified, the report returns all activities from the `startTime` until the current time or the most recent 180 days if the `startTime` is more than 180 days in the past.",
              location = "query",
              pattern = "(\\d\\d\\d\\d)-(\\d\\d)-(\\d\\d)T(\\d\\d):(\\d\\d):(\\d\\d)(?:\\.(\\d+))?(?:(Z)|([-+])(\\d\\d):(\\d\\d))",
              type = "string",
            },
            eventName = {
              description = "The name of the event being queried by the API. Each `eventName` is related to a specific Google Workspace service or feature which the API organizes into types of events. An example is the Google Calendar events in the Admin console application's reports. The Calendar Settings `type` structure has all of the Calendar `eventName` activities reported by the API. When an administrator changes a Calendar setting, the API reports this activity in the Calendar Settings `type` and `eventName` parameters. For more information about `eventName` query strings and parameters, see the list of event names for various applications above in `applicationName`.",
              location = "query",
              type = "string",
            },
            filters = {
              description = "The `filters` query string is a comma-separated list composed of event parameters manipulated by relational operators. Event parameters are in the form `{parameter1 name}{relational operator}{parameter1 value},{parameter2 name}{relational operator}{parameter2 value},...` These event parameters are associated with a specific `eventName`. An empty report is returned if the request's parameter doesn't belong to the `eventName`. For more information about the available `eventName` fields for each application and their associated parameters, go to the [ApplicationName](#applicationname) table, then click through to the Activity Events page in the Appendix for the application you want. In the following Drive activity examples, the returned list consists of all `edit` events where the `doc_id` parameter value matches the conditions defined by the relational operator. In the first example, the request returns all edited documents with a `doc_id` value equal to `12345`. In the second example, the report returns any edited documents where the `doc_id` value is not equal to `98765`. The `<>` operator is URL-encoded in the request's query string (`%3C%3E`): ``` GET...&eventName=edit&filters=doc_id==12345 GET...&eventName=edit&filters=doc_id%3C%3E98765 ``` A `filters` query supports these relational operators: * `==`—'equal to'. * `<>`—'not equal to'. Must be URL-encoded (%3C%3E). * `<`—'less than'. Must be URL-encoded (%3C). * `<=`—'less than or equal to'. Must be URL-encoded (%3C=). * `>`—'greater than'. Must be URL-encoded (%3E). * `>=`—'greater than or equal to'. Must be URL-encoded (%3E=). **Note:** The API doesn't accept multiple values of the same parameter. If a parameter is supplied more than once in the API request, the API only accepts the last value of that parameter. In addition, if an invalid parameter is supplied in the API request, the API ignores that parameter and returns the response corresponding to the remaining valid parameters. If no parameters are requested, all parameters are returned.",
              location = "query",
              pattern = "(.+[<,<=,==,>=,>,<>].+,)*(.+[<,<=,==,>=,>,<>].+)",
              type = "string",
            },
            groupIdFilter = {
              description = "Comma separated group ids (obfuscated) on which user activities are filtered, i.e. the response will contain activities for only those users that are a part of at least one of the group ids mentioned here. Format: \"id:abc123,id:xyz456\"",
              location = "query",
              pattern = "(id:[a-z0-9]+(,id:[a-z0-9]+)*)",
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1` and the report has two activities, the report has two pages. The response's `nextPageToken` property has the token to the second page. The `maxResults` query string is optional in the request. The default value is 1000.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            orgUnitID = {
              default = "",
              description = "ID of the organizational unit to report on. Activity records will be shown only for users who belong to the specified organizational unit. Data before Dec 17, 2018 doesn't appear in the filtered results.",
              location = "query",
              pattern = "(id:[a-z0-9]+)",
              type = "string",
            },
            pageToken = {
              description = "The token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your follow-on request getting the next page of the report, enter the `nextPageToken` value in the `pageToken` query string.",
              location = "query",
              type = "string",
            },
            startTime = {
              description = "Sets the beginning of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The report returns all activities from `startTime` until `endTime`. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error.",
              location = "query",
              pattern = "(\\d\\d\\d\\d)-(\\d\\d)-(\\d\\d)T(\\d\\d):(\\d\\d):(\\d\\d)(?:\\.(\\d+))?(?:(Z)|([-+])(\\d\\d):(\\d\\d))",
              type = "string",
            },
            userKey = {
              description = "Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, or `userKey` for a user's unique Google Workspace profile ID or their primary email address. Must not be a deleted user. For a deleted user, call `users.list` in Directory API with `showDeleted=true`, then use the returned `ID` as the `userKey`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/reports/v1/activity/users/{userKey}/applications/{applicationName}",
          response = {
            ["$ref"] = "Activities",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.reports.audit.readonly",
          },
        },
        watch = {
          description = "Start receiving notifications for account activities. For more information, see Receiving Push Notifications.",
          flatPath = "admin/reports/v1/activity/users/{userKey}/applications/{applicationName}/watch",
          httpMethod = "POST",
          id = "reports.activities.watch",
          parameterOrder = {
            "userKey",
            "applicationName",
          },
          parameters = {
            actorIpAddress = {
              description = "The Internet Protocol (IP) Address of host where the event was performed. This is an additional way to filter a report's summary using the IP address of the user whose activity is being reported. This IP address may or may not reflect the user's physical location. For example, the IP address can be the user's proxy server's address or a virtual private network (VPN) address. This parameter supports both IPv4 and IPv6 address versions.",
              location = "query",
              type = "string",
            },
            applicationName = {
              description = "Application name for which the events are to be retrieved.",
              enum = {
                "access_transparency",
                "admin",
                "calendar",
                "chat",
                "drive",
                "gcp",
                "gplus",
                "groups",
                "groups_enterprise",
                "jamboard",
                "login",
                "meet",
                "mobile",
                "rules",
                "saml",
                "token",
                "user_accounts",
                "context_aware_access",
                "chrome",
                "data_studio",
                "keep",
              },
              enumDescriptions = {
                "The Google Workspace Access Transparency activity reports return information about different types of Access Transparency activity events.",
                "The Admin console application's activity reports return account information about different types of administrator activity events.",
                "The Google Calendar application's activity reports return information about various Calendar activity events.",
                "The Chat activity reports return information about various Chat activity events.",
                "The Google Drive application's activity reports return information about various Google Drive activity events. The Drive activity report is only available for Google Workspace Business and Google Workspace Enterprise customers.",
                "The Google Cloud Platform application's activity reports return information about various GCP activity events.",
                "The Google+ application's activity reports return information about various Google+ activity events.",
                "The Google Groups application's activity reports return information about various Groups activity events.",
                "The Enterprise Groups activity reports return information about various Enterprise group activity events.",
                "The Jamboard activity reports return information about various Jamboard activity events.",
                "The Login application's activity reports return account information about different types of Login activity events.",
                "The Meet Audit activity report returns information about different types of Meet Audit activity events.",
                "The Device Audit activity report returns information about different types of Device Audit activity events.",
                "The Rules activity report returns information about different types of Rules activity events.",
                "The SAML activity report returns information about different types of SAML activity events.",
                "The Token application's activity reports return account information about different types of Token activity events.",
                "The User Accounts application's activity reports return account information about different types of User Accounts activity events.",
                "The Context-aware access activity reports return information about users' access denied events due to Context-aware access rules.",
                "The Chrome activity reports return information about Chrome browser and Chrome OS events.",
                "The Data Studio activity reports return information about various types of Data Studio activity events.",
                "The Keep application's activity reports return information about various Google Keep activity events. The Keep activity report is only available for Google Workspace Business and Enterprise customers.",
              },
              location = "path",
              pattern = "(access_transparency)|(admin)|(calendar)|(chat)|(chrome)|(context_aware_access)|(data_studio)|(drive)|(gcp)|(gplus)|(groups)|(groups_enterprise)|(jamboard)|(keep)|(login)|(meet)|(mobile)|(rules)|(saml)|(token)|(user_accounts)",
              required = true,
              type = "string",
            },
            customerId = {
              description = "The unique ID of the customer to retrieve data for.",
              location = "query",
              pattern = "C.+|my_customer",
              type = "string",
            },
            endTime = {
              description = "Sets the end of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The default value is the approximate time of the API request. An API report has three basic time concepts: - *Date of the API's request for a report*: When the API created and retrieved the report. - *Report's start time*: The beginning of the timespan shown in the report. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error. - *Report's end time*: The end of the timespan shown in the report. For example, the timespan of events summarized in a report can start in April and end in May. The report itself can be requested in August. If the `endTime` is not specified, the report returns all activities from the `startTime` until the current time or the most recent 180 days if the `startTime` is more than 180 days in the past.",
              location = "query",
              pattern = "(\\d\\d\\d\\d)-(\\d\\d)-(\\d\\d)T(\\d\\d):(\\d\\d):(\\d\\d)(?:\\.(\\d+))?(?:(Z)|([-+])(\\d\\d):(\\d\\d))",
              type = "string",
            },
            eventName = {
              description = "The name of the event being queried by the API. Each `eventName` is related to a specific Google Workspace service or feature which the API organizes into types of events. An example is the Google Calendar events in the Admin console application's reports. The Calendar Settings `type` structure has all of the Calendar `eventName` activities reported by the API. When an administrator changes a Calendar setting, the API reports this activity in the Calendar Settings `type` and `eventName` parameters. For more information about `eventName` query strings and parameters, see the list of event names for various applications above in `applicationName`.",
              location = "query",
              type = "string",
            },
            filters = {
              description = "The `filters` query string is a comma-separated list composed of event parameters manipulated by relational operators. Event parameters are in the form `{parameter1 name}{relational operator}{parameter1 value},{parameter2 name}{relational operator}{parameter2 value},...` These event parameters are associated with a specific `eventName`. An empty report is returned if the request's parameter doesn't belong to the `eventName`. For more information about the available `eventName` fields for each application and their associated parameters, go to the [ApplicationName](#applicationname) table, then click through to the Activity Events page in the Appendix for the application you want. In the following Drive activity examples, the returned list consists of all `edit` events where the `doc_id` parameter value matches the conditions defined by the relational operator. In the first example, the request returns all edited documents with a `doc_id` value equal to `12345`. In the second example, the report returns any edited documents where the `doc_id` value is not equal to `98765`. The `<>` operator is URL-encoded in the request's query string (`%3C%3E`): ``` GET...&eventName=edit&filters=doc_id==12345 GET...&eventName=edit&filters=doc_id%3C%3E98765 ``` A `filters` query supports these relational operators: * `==`—'equal to'. * `<>`—'not equal to'. Must be URL-encoded (%3C%3E). * `<`—'less than'. Must be URL-encoded (%3C). * `<=`—'less than or equal to'. Must be URL-encoded (%3C=). * `>`—'greater than'. Must be URL-encoded (%3E). * `>=`—'greater than or equal to'. Must be URL-encoded (%3E=). **Note:** The API doesn't accept multiple values of the same parameter. If a parameter is supplied more than once in the API request, the API only accepts the last value of that parameter. In addition, if an invalid parameter is supplied in the API request, the API ignores that parameter and returns the response corresponding to the remaining valid parameters. If no parameters are requested, all parameters are returned.",
              location = "query",
              pattern = "(.+[<,<=,==,>=,>,<>].+,)*(.+[<,<=,==,>=,>,<>].+)",
              type = "string",
            },
            groupIdFilter = {
              description = "Comma separated group ids (obfuscated) on which user activities are filtered, i.e. the response will contain activities for only those users that are a part of at least one of the group ids mentioned here. Format: \"id:abc123,id:xyz456\"",
              location = "query",
              pattern = "(id:[a-z0-9]+(,id:[a-z0-9]+)*)",
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1` and the report has two activities, the report has two pages. The response's `nextPageToken` property has the token to the second page. The `maxResults` query string is optional in the request. The default value is 1000.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            orgUnitID = {
              default = "",
              description = "ID of the organizational unit to report on. Activity records will be shown only for users who belong to the specified organizational unit. Data before Dec 17, 2018 doesn't appear in the filtered results.",
              location = "query",
              pattern = "(id:[a-z0-9]+)",
              type = "string",
            },
            pageToken = {
              description = "The token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your follow-on request getting the next page of the report, enter the `nextPageToken` value in the `pageToken` query string.",
              location = "query",
              type = "string",
            },
            startTime = {
              description = "Sets the beginning of the range of time shown in the report. The date is in the RFC 3339 format, for example 2010-10-28T10:26:35.000Z. The report returns all activities from `startTime` until `endTime`. The `startTime` must be before the `endTime` (if specified) and the current time when the request is made, or the API returns an error.",
              location = "query",
              pattern = "(\\d\\d\\d\\d)-(\\d\\d)-(\\d\\d)T(\\d\\d):(\\d\\d):(\\d\\d)(?:\\.(\\d+))?(?:(Z)|([-+])(\\d\\d):(\\d\\d))",
              type = "string",
            },
            userKey = {
              description = "Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, or `userKey` for a user's unique Google Workspace profile ID or their primary email address. Must not be a deleted user. For a deleted user, call `users.list` in Directory API with `showDeleted=true`, then use the returned `ID` as the `userKey`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/reports/v1/activity/users/{userKey}/applications/{applicationName}/watch",
          request = {
            ["$ref"] = "Channel",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.reports.audit.readonly",
          },
        },
      },
    },
    channels = {
      methods = {
        stop = {
          description = "Stop watching resources through this channel.",
          flatPath = "admin/reports_v1/channels/stop",
          httpMethod = "POST",
          id = "admin.channels.stop",
          parameterOrder = {},
          parameters = {},
          path = "admin/reports_v1/channels/stop",
          request = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.reports.audit.readonly",
          },
        },
      },
    },
    customerUsageReports = {
      methods = {
        get = {
          description = "Retrieves a report which is a collection of properties and statistics for a specific customer's account. For more information, see the Customers Usage Report guide. For more information about the customer report's parameters, see the Customers Usage parameters reference guides. ",
          flatPath = "admin/reports/v1/usage/dates/{date}",
          httpMethod = "GET",
          id = "reports.customerUsageReports.get",
          parameterOrder = {
            "date",
          },
          parameters = {
            customerId = {
              description = "The unique ID of the customer to retrieve data for.",
              location = "query",
              pattern = "C.+|my_customer",
              type = "string",
            },
            date = {
              description = "Represents the date the usage occurred, based on PST time zone. The timestamp is in the [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601), `yyyy-mm-dd`.",
              location = "path",
              pattern = "(\\d){4}-(\\d){2}-(\\d){2}",
              required = true,
              type = "string",
            },
            pageToken = {
              description = "Token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. For your follow-on requests getting all of the report's pages, enter the `nextPageToken` value in the `pageToken` query string.",
              location = "query",
              type = "string",
            },
            parameters = {
              description = "The `parameters` query string is a comma-separated list of event parameters that refine a report's results. The parameter is associated with a specific application. The application values for the Customers usage report include `accounts`, `app_maker`, `apps_scripts`, `calendar`, `classroom`, `cros`, `docs`, `gmail`, `gplus`, `device_management`, `meet`, and `sites`. A `parameters` query string is in the CSV form of `app_name1:param_name1, app_name2:param_name2`. *Note:* The API doesn't accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. An example of an invalid request parameter is one that does not belong to the application. If no parameters are requested, all parameters are returned. ",
              location = "query",
              pattern = "(((accounts)|(app_maker)|(apps_scripts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)|(meet)):[^,]+,)*(((accounts)|(app_maker)|(apps_scripts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)|(meet)):[^,]+)",
              type = "string",
            },
          },
          path = "admin/reports/v1/usage/dates/{date}",
          response = {
            ["$ref"] = "UsageReports",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.reports.usage.readonly",
          },
        },
      },
    },
    entityUsageReports = {
      methods = {
        get = {
          description = "Retrieves a report which is a collection of properties and statistics for entities used by users within the account. For more information, see the Entities Usage Report guide. For more information about the entities report's parameters, see the Entities Usage parameters reference guides.",
          flatPath = "admin/reports/v1/usage/{entityType}/{entityKey}/dates/{date}",
          httpMethod = "GET",
          id = "reports.entityUsageReports.get",
          parameterOrder = {
            "entityType",
            "entityKey",
            "date",
          },
          parameters = {
            customerId = {
              description = "The unique ID of the customer to retrieve data for.",
              location = "query",
              pattern = "C.+|my_customer",
              type = "string",
            },
            date = {
              description = "Represents the date the usage occurred. The timestamp is in the ISO 8601 format, yyyy-mm-dd. We recommend you use your account's time zone for this.",
              location = "path",
              pattern = "(\\d){4}-(\\d){2}-(\\d){2}",
              required = true,
              type = "string",
            },
            entityKey = {
              description = "Represents the key of the object to filter the data with. It is a string which can take the value `all` to get activity events for all users, or any other value for an app-specific entity. For details on how to obtain the `entityKey` for a particular `entityType`, see the Entities Usage parameters reference guides.",
              location = "path",
              required = true,
              type = "string",
            },
            entityType = {
              description = "Represents the type of entity for the report.",
              enum = {
                "gplus_communities",
              },
              enumDescriptions = {
                "Returns a report on Google+ communities.",
              },
              location = "path",
              pattern = "(gplus_communities)",
              required = true,
              type = "string",
            },
            filters = {
              description = "The `filters` query string is a comma-separated list of an application's event parameters where the parameter's value is manipulated by a relational operator. The `filters` query string includes the name of the application whose usage is returned in the report. The application values for the Entities usage report include `accounts`, `docs`, and `gmail`. Filters are in the form `[application name]:parameter name[parameter value],...`. In this example, the `<>` 'not equal to' operator is URL-encoded in the request's query string (%3C%3E): GET https://www.googleapis.com/admin/reports/v1/usage/gplus_communities/all/dates/2017-12-01 ?parameters=gplus:community_name,gplus:num_total_members &filters=gplus:num_total_members%3C%3E0 The relational operators include: - `==` - 'equal to'. - `<>` - 'not equal to'. It is URL-encoded (%3C%3E). - `<` - 'less than'. It is URL-encoded (%3C). - `<=` - 'less than or equal to'. It is URL-encoded (%3C=). - `>` - 'greater than'. It is URL-encoded (%3E). - `>=` - 'greater than or equal to'. It is URL-encoded (%3E=). Filters can only be applied to numeric parameters.",
              location = "query",
              pattern = "(((gplus)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+,)*(((gplus)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+)",
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1` and the report has two activities, the report has two pages. The response's `nextPageToken` property has the token to the second page.",
              format = "uint32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your follow-on request getting the next page of the report, enter the `nextPageToken` value in the `pageToken` query string.",
              location = "query",
              type = "string",
            },
            parameters = {
              description = "The `parameters` query string is a comma-separated list of event parameters that refine a report's results. The parameter is associated with a specific application. The application values for the Entities usage report are only `gplus`. A `parameter` query string is in the CSV form of `[app_name1:param_name1], [app_name2:param_name2]...`. *Note:* The API doesn't accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. An example of an invalid request parameter is one that does not belong to the application. If no parameters are requested, all parameters are returned. ",
              location = "query",
              pattern = "(((gplus)):[^,]+,)*(((gplus)):[^,]+)",
              type = "string",
            },
          },
          path = "admin/reports/v1/usage/{entityType}/{entityKey}/dates/{date}",
          response = {
            ["$ref"] = "UsageReports",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.reports.usage.readonly",
          },
        },
      },
    },
    userUsageReport = {
      methods = {
        get = {
          description = "Retrieves a report which is a collection of properties and statistics for a set of users with the account. For more information, see the User Usage Report guide. For more information about the user report's parameters, see the Users Usage parameters reference guides.",
          flatPath = "admin/reports/v1/usage/users/{userKey}/dates/{date}",
          httpMethod = "GET",
          id = "reports.userUsageReport.get",
          parameterOrder = {
            "userKey",
            "date",
          },
          parameters = {
            customerId = {
              description = "The unique ID of the customer to retrieve data for.",
              location = "query",
              pattern = "C.+|my_customer",
              type = "string",
            },
            date = {
              description = "Represents the date the usage occurred, based on GMT-7:00 (Pacific Standard Time). The timestamp is in the [ISO 8601 format](https://en.wikipedia.org/wiki/ISO_8601), `yyyy-mm-dd`.",
              location = "path",
              pattern = "(\\d){4}-(\\d){2}-(\\d){2}",
              required = true,
              type = "string",
            },
            filters = {
              description = "The `filters` query string is a comma-separated list of an application's event parameters where the parameter's value is manipulated by a relational operator. The `filters` query string includes the name of the application whose usage is returned in the report. The application values for the Users Usage Report include `accounts`, `docs`, and `gmail`. Filters are in the form `[application name]:parameter name[parameter value],...`. In this example, the `<>` 'not equal to' operator is URL-encoded in the request's query string (%3C%3E): GET https://www.googleapis.com/admin/reports/v1/usage/users/all/dates/2013-03-03 ?parameters=accounts:last_login_time &filters=accounts:last_login_time%3C%3E2010-10-28T10:26:35.000Z The relational operators include: - `==` - 'equal to'. - `<>` - 'not equal to'. It is URL-encoded (%3C%3E). - `<` - 'less than'. It is URL-encoded (%3C). - `<=` - 'less than or equal to'. It is URL-encoded (%3C=). - `>` - 'greater than'. It is URL-encoded (%3E). - `>=` - 'greater than or equal to'. It is URL-encoded (%3E=). ",
              location = "query",
              pattern = "(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+,)*(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[a-z0-9_]+[<,<=,==,>=,>,!=][^,]+)",
              type = "string",
            },
            groupIdFilter = {
              description = "Comma separated group ids (obfuscated) on which user activities are filtered, i.e. the response will contain activities for only those users that are a part of at least one of the group ids mentioned here. Format: \"id:abc123,id:xyz456\"",
              location = "query",
              pattern = "(id:[a-z0-9]+(,id:[a-z0-9]+)*)",
              type = "string",
            },
            maxResults = {
              default = "1000",
              description = "Determines how many activity records are shown on each response page. For example, if the request sets `maxResults=1` and the report has two activities, the report has two pages. The response's `nextPageToken` property has the token to the second page. The `maxResults` query string is optional.",
              format = "uint32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            orgUnitID = {
              default = "",
              description = "ID of the organizational unit to report on. User activity will be shown only for users who belong to the specified organizational unit. Data before Dec 17, 2018 doesn't appear in the filtered results.",
              location = "query",
              pattern = "(id:[a-z0-9]+)",
              type = "string",
            },
            pageToken = {
              description = "Token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. In your follow-on request getting the next page of the report, enter the `nextPageToken` value in the `pageToken` query string.",
              location = "query",
              type = "string",
            },
            parameters = {
              description = "The `parameters` query string is a comma-separated list of event parameters that refine a report's results. The parameter is associated with a specific application. The application values for the Customers Usage report include `accounts`, `app_maker`, `apps_scripts`, `calendar`, `classroom`, `cros`, `docs`, `gmail`, `gplus`, `device_management`, `meet`, and `sites`. A `parameters` query string is in the CSV form of `app_name1:param_name1, app_name2:param_name2`. *Note:* The API doesn't accept multiple values of a parameter. If a particular parameter is supplied more than once in the API request, the API only accepts the last value of that request parameter. In addition, if an invalid request parameter is supplied in the API request, the API ignores that request parameter and returns the response corresponding to the remaining valid request parameters. An example of an invalid request parameter is one that does not belong to the application. If no parameters are requested, all parameters are returned. ",
              location = "query",
              pattern = "(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[^,]+,)*(((accounts)|(classroom)|(cros)|(gmail)|(calendar)|(docs)|(gplus)|(sites)|(device_management)|(drive)):[^,]+)",
              type = "string",
            },
            userKey = {
              description = "Represents the profile ID or the user email for which the data should be filtered. Can be `all` for all information, or `userKey` for a user's unique Google Workspace profile ID or their primary email address. Must not be a deleted user. For a deleted user, call `users.list` in Directory API with `showDeleted=true`, then use the returned `ID` as the `userKey`.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "admin/reports/v1/usage/users/{userKey}/dates/{date}",
          response = {
            ["$ref"] = "UsageReports",
          },
          scopes = {
            "https://www.googleapis.com/auth/admin.reports.usage.readonly",
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://admin.googleapis.com/",
  schemas = {
    Activities = {
      description = "JSON template for a collection of activities.",
      id = "Activities",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        items = {
          description = "Each activity record in the response.",
          items = {
            ["$ref"] = "Activity",
          },
          type = "array",
        },
        kind = {
          default = "admin#reports#activities",
          description = "The type of API resource. For an activity report, the value is `reports#activities`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token for retrieving the follow-on next page of the report. The `nextPageToken` value is used in the request's `pageToken` query string.",
          type = "string",
        },
      },
      type = "object",
    },
    Activity = {
      description = "JSON template for the activity resource.",
      id = "Activity",
      properties = {
        actor = {
          description = "User doing the action.",
          properties = {
            callerType = {
              description = "The type of actor.",
              type = "string",
            },
            email = {
              description = "The primary email address of the actor. May be absent if there is no email address associated with the actor.",
              type = "string",
            },
            key = {
              description = "Only present when `callerType` is `KEY`. Can be the `consumer_key` of the requestor for OAuth 2LO API requests or an identifier for robot accounts.",
              type = "string",
            },
            profileId = {
              description = "The unique Google Workspace profile ID of the actor. This value might be absent if the actor is not a Google Workspace user, or may be the number 105250506097979753968 which acts as a placeholder ID.",
              type = "string",
            },
          },
          type = "object",
        },
        etag = {
          description = "ETag of the entry.",
          type = "string",
        },
        events = {
          description = "Activity events in the report.",
          items = {
            properties = {
              name = {
                description = "Name of the event. This is the specific name of the activity reported by the API. And each `eventName` is related to a specific Google Workspace service or feature which the API organizes into types of events. For `eventName` request parameters in general: - If no `eventName` is given, the report returns all possible instances of an `eventName`. - When you request an `eventName`, the API's response returns all activities which contain that `eventName`. It is possible that the returned activities will have other `eventName` properties in addition to the one requested. For more information about `eventName` properties, see the list of event names for various applications above in `applicationName`.",
                type = "string",
              },
              parameters = {
                description = "Parameter value pairs for various applications. For more information about `eventName` parameters, see the list of event names for various applications above in `applicationName`.",
                items = {
                  properties = {
                    boolValue = {
                      description = "Boolean value of the parameter.",
                      type = "boolean",
                    },
                    intValue = {
                      description = "Integer value of the parameter.",
                      format = "int64",
                      type = "string",
                    },
                    messageValue = {
                      description = "Nested parameter value pairs associated with this parameter. Complex value type for a parameter are returned as a list of parameter values. For example, the address parameter may have a value as `[{parameter: [{name: city, value: abc}]}]`",
                      properties = {
                        parameter = {
                          description = "Parameter values",
                          items = {
                            ["$ref"] = "NestedParameter",
                          },
                          type = "array",
                        },
                      },
                      type = "object",
                    },
                    multiIntValue = {
                      description = "Integer values of the parameter.",
                      items = {
                        format = "int64",
                        type = "string",
                      },
                      type = "array",
                    },
                    multiMessageValue = {
                      description = "List of `messageValue` objects.",
                      items = {
                        properties = {
                          parameter = {
                            description = "Parameter values",
                            items = {
                              ["$ref"] = "NestedParameter",
                            },
                            type = "array",
                          },
                        },
                        type = "object",
                      },
                      type = "array",
                    },
                    multiValue = {
                      description = "String values of the parameter.",
                      items = {
                        type = "string",
                      },
                      type = "array",
                    },
                    name = {
                      description = "The name of the parameter.",
                      type = "string",
                    },
                    value = {
                      description = "String value of the parameter.",
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              type = {
                description = "Type of event. The Google Workspace service or feature that an administrator changes is identified in the `type` property which identifies an event using the `eventName` property. For a full list of the API's `type` categories, see the list of event names for various applications above in `applicationName`.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        id = {
          description = "Unique identifier for each activity record.",
          properties = {
            applicationName = {
              description = "Application name to which the event belongs. For possible values see the list of applications above in `applicationName`.",
              type = "string",
            },
            customerId = {
              description = "The unique identifier for a Google Workspace account.",
              type = "string",
            },
            time = {
              description = "Time of occurrence of the activity. This is in UNIX epoch time in seconds.",
              format = "date-time",
              type = "string",
            },
            uniqueQualifier = {
              description = "Unique qualifier if multiple events have the same time.",
              format = "int64",
              type = "string",
            },
          },
          type = "object",
        },
        ipAddress = {
          description = "IP address of the user doing the action. This is the Internet Protocol (IP) address of the user when logging into Google Workspace, which may or may not reflect the user's physical location. For example, the IP address can be the user's proxy server's address or a virtual private network (VPN) address. The API supports IPv4 and IPv6.",
          type = "string",
        },
        kind = {
          default = "admin#reports#activity",
          description = "The type of API resource. For an activity report, the value is `audit#activity`.",
          type = "string",
        },
        ownerDomain = {
          description = "This is the domain that is affected by the report's event. For example domain of Admin console or the Drive application's document owner.",
          type = "string",
        },
      },
      type = "object",
    },
    Channel = {
      description = "A notification channel used to watch for resource changes.",
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
          description = "Identifies this as a notification channel used to watch for changes to a resource, which is \"`api#channel`\".",
          type = "string",
        },
        params = {
          additionalProperties = {
            type = "string",
          },
          description = "Additional parameters controlling delivery channel behavior. Optional.",
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
          description = "The type of delivery mechanism used for this channel. The value should be set to `\"web_hook\"`.",
          type = "string",
        },
      },
      type = "object",
    },
    NestedParameter = {
      description = "JSON template for a parameter used in various reports.",
      id = "NestedParameter",
      properties = {
        boolValue = {
          description = "Boolean value of the parameter.",
          type = "boolean",
        },
        intValue = {
          description = "Integer value of the parameter.",
          format = "int64",
          type = "string",
        },
        multiBoolValue = {
          description = "Multiple boolean values of the parameter.",
          items = {
            type = "boolean",
          },
          type = "array",
        },
        multiIntValue = {
          description = "Multiple integer values of the parameter.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        multiValue = {
          description = "Multiple string values of the parameter.",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The name of the parameter.",
          type = "string",
        },
        value = {
          description = "String value of the parameter.",
          type = "string",
        },
      },
      type = "object",
    },
    UsageReport = {
      description = "JSON template for a usage report.",
      id = "UsageReport",
      properties = {
        date = {
          description = "Output only. The date of the report request.",
          readOnly = true,
          type = "string",
        },
        entity = {
          description = "Output only. Information about the type of the item.",
          properties = {
            customerId = {
              description = "Output only. The unique identifier of the customer's account.",
              readOnly = true,
              type = "string",
            },
            entityId = {
              description = "Output only. Object key. Only relevant if entity.type = \"OBJECT\" Note: external-facing name of report is \"Entities\" rather than \"Objects\".",
              readOnly = true,
              type = "string",
            },
            profileId = {
              description = "Output only. The user's immutable Google Workspace profile identifier.",
              readOnly = true,
              type = "string",
            },
            type = {
              description = "Output only. The type of item. The value is `user`.",
              readOnly = true,
              type = "string",
            },
            userEmail = {
              description = "Output only. The user's email address. Only relevant if entity.type = \"USER\"",
              readOnly = true,
              type = "string",
            },
          },
          readOnly = true,
          type = "object",
        },
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#reports#usageReport",
          description = "The type of API resource. For a usage report, the value is `admin#reports#usageReport`.",
          type = "string",
        },
        parameters = {
          description = "Output only. Parameter value pairs for various applications. For the Entity Usage Report parameters and values, see [the Entity Usage parameters reference](/admin-sdk/reports/v1/reference/usage-ref-appendix-a/entities).",
          items = {
            properties = {
              boolValue = {
                description = "Output only. Boolean value of the parameter.",
                readOnly = true,
                type = "boolean",
              },
              datetimeValue = {
                description = "The RFC 3339 formatted value of the parameter, for example 2010-10-28T10:26:35.000Z.",
                format = "date-time",
                readOnly = true,
                type = "string",
              },
              intValue = {
                description = "Output only. Integer value of the parameter.",
                format = "int64",
                readOnly = true,
                type = "string",
              },
              msgValue = {
                description = "Output only. Nested message value of the parameter.",
                items = {
                  additionalProperties = {
                    description = "Properties of the object.",
                    type = "any",
                  },
                  type = "object",
                },
                readOnly = true,
                type = "array",
              },
              name = {
                description = "The name of the parameter. For the User Usage Report parameter names, see the User Usage parameters reference.",
                type = "string",
              },
              stringValue = {
                description = "Output only. String value of the parameter.",
                readOnly = true,
                type = "string",
              },
            },
            type = "object",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    UsageReports = {
      id = "UsageReports",
      properties = {
        etag = {
          description = "ETag of the resource.",
          type = "string",
        },
        kind = {
          default = "admin#reports#usageReports",
          description = "The type of API resource. For a usage report, the value is `admin#reports#usageReports`.",
          type = "string",
        },
        nextPageToken = {
          description = "Token to specify next page. A report with multiple pages has a `nextPageToken` property in the response. For your follow-on requests getting all of the report's pages, enter the `nextPageToken` value in the `pageToken` query string.",
          type = "string",
        },
        usageReports = {
          description = "Various application parameter records.",
          items = {
            ["$ref"] = "UsageReport",
          },
          type = "array",
        },
        warnings = {
          description = "Warnings, if any.",
          items = {
            properties = {
              code = {
                description = "Machine readable code or warning type. The warning code value is `200`.",
                type = "string",
              },
              data = {
                description = "Key-value pairs to give detailed information on the warning.",
                items = {
                  properties = {
                    key = {
                      description = "Key associated with a key-value pair to give detailed information on the warning.",
                      type = "string",
                    },
                    value = {
                      description = "Value associated with a key-value pair to give detailed information on the warning.",
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              message = {
                description = "The human readable messages for a warning are: - Data is not available warning - Sorry, data for date yyyy-mm-dd for application \"`application name`\" is not available. - Partial data is available warning - Data for date yyyy-mm-dd for application \"`application name`\" is not available right now, please try again after a few hours. ",
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
  },
  servicePath = "",
  title = "Admin SDK API",
  version = "reports_v1",
}