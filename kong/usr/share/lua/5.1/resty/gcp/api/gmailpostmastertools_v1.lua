return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/postmaster.readonly"] = {
          description = "See email traffic metrics for the domains you have registered in Gmail Postmaster Tools",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://gmailpostmastertools.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Postmaster Tools",
  description = "The Postmaster Tools API is a RESTful API that provides programmatic access to email traffic metrics (like spam reports, delivery errors etc) otherwise available through the Gmail Postmaster Tools UI currently.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/gmail/postmaster",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "gmailpostmastertools:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://gmailpostmastertools.mtls.googleapis.com/",
  name = "gmailpostmastertools",
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
    domains = {
      methods = {
        get = {
          description = "Gets a specific domain registered by the client. Returns NOT_FOUND if the domain does not exist.",
          flatPath = "v1/domains/{domainsId}",
          httpMethod = "GET",
          id = "gmailpostmastertools.domains.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The resource name of the domain. It should have the form `domains/{domain_name}`, where domain_name is the fully qualified domain name.",
              location = "path",
              pattern = "^domains/[^/]+$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}",
          response = {
            ["$ref"] = "Domain",
          },
          scopes = {
            "https://www.googleapis.com/auth/postmaster.readonly",
          },
        },
        list = {
          description = "Lists the domains that have been registered by the client. The order of domains in the response is unspecified and non-deterministic. Newly created domains will not necessarily be added to the end of this list.",
          flatPath = "v1/domains",
          httpMethod = "GET",
          id = "gmailpostmastertools.domains.list",
          parameterOrder = {},
          parameters = {
            pageSize = {
              description = "Requested page size. Server may return fewer domains than requested. If unspecified, server will pick an appropriate default.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The next_page_token value returned from a previous List request, if any. This is the value of ListDomainsResponse.next_page_token returned from the previous call to `ListDomains` method.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/domains",
          response = {
            ["$ref"] = "ListDomainsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/postmaster.readonly",
          },
        },
      },
      resources = {
        trafficStats = {
          methods = {
            get = {
              description = "Get traffic statistics for a domain on a specific date. Returns PERMISSION_DENIED if user does not have permission to access TrafficStats for the domain.",
              flatPath = "v1/domains/{domainsId}/trafficStats/{trafficStatsId}",
              httpMethod = "GET",
              id = "gmailpostmastertools.domains.trafficStats.get",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "The resource name of the traffic statistics to get. E.g., domains/mymail.mydomain.com/trafficStats/20160807.",
                  location = "path",
                  pattern = "^domains/[^/]+/trafficStats/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "TrafficStats",
              },
              scopes = {
                "https://www.googleapis.com/auth/postmaster.readonly",
              },
            },
            list = {
              description = "List traffic statistics for all available days. Returns PERMISSION_DENIED if user does not have permission to access TrafficStats for the domain.",
              flatPath = "v1/domains/{domainsId}/trafficStats",
              httpMethod = "GET",
              id = "gmailpostmastertools.domains.trafficStats.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                ["endDate.day"] = {
                  description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["endDate.month"] = {
                  description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["endDate.year"] = {
                  description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageSize = {
                  description = "Requested page size. Server may return fewer TrafficStats than requested. If unspecified, server will pick an appropriate default.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "The next_page_token value returned from a previous List request, if any. This is the value of ListTrafficStatsResponse.next_page_token returned from the previous call to `ListTrafficStats` method.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "The resource name of the domain whose traffic statistics we'd like to list. It should have the form `domains/{domain_name}`, where domain_name is the fully qualified domain name.",
                  location = "path",
                  pattern = "^domains/[^/]+$",
                  required = true,
                  type = "string",
                },
                ["startDate.day"] = {
                  description = "Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to specify a year by itself or a year and month where the day isn't significant.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["startDate.month"] = {
                  description = "Month of a year. Must be from 1 to 12, or 0 to specify a year without a month and day.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                ["startDate.year"] = {
                  description = "Year of the date. Must be from 1 to 9999, or 0 to specify a date without a year.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
              },
              path = "v1/{+parent}/trafficStats",
              response = {
                ["$ref"] = "ListTrafficStatsResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/postmaster.readonly",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://gmailpostmastertools.googleapis.com/",
  schemas = {
    DeliveryError = {
      description = "Metric on a particular delivery error type.",
      id = "DeliveryError",
      properties = {
        errorClass = {
          description = "The class of delivery error.",
          enum = {
            "DELIVERY_ERROR_CLASS_UNSPECIFIED",
            "PERMANENT_ERROR",
            "TEMPORARY_ERROR",
          },
          enumDescriptions = {
            "The default value which should never be used explicitly.",
            "Delivery of message has been rejected.",
            "Temporary failure of message delivery to the recipient.",
          },
          type = "string",
        },
        errorRatio = {
          description = "The ratio of messages where the error occurred vs all authenticated traffic.",
          format = "double",
          type = "number",
        },
        errorType = {
          description = "The type of delivery error.",
          enum = {
            "DELIVERY_ERROR_TYPE_UNSPECIFIED",
            "RATE_LIMIT_EXCEEDED",
            "SUSPECTED_SPAM",
            "CONTENT_SPAMMY",
            "BAD_ATTACHMENT",
            "BAD_DMARC_POLICY",
            "LOW_IP_REPUTATION",
            "LOW_DOMAIN_REPUTATION",
            "IP_IN_RBL",
            "DOMAIN_IN_RBL",
            "BAD_PTR_RECORD",
          },
          enumDescriptions = {
            "The default value which should never be used explicitly.",
            "The Domain or IP is sending traffic at a suspiciously high rate, due to which temporary rate limits have been imposed. The limit will be lifted when Gmail is confident enough of the nature of the traffic.",
            "The traffic is suspected to be spam, by Gmail, for various reasons.",
            "The traffic is suspected to be spammy, specific to the content.",
            "Traffic contains attachments not supported by Gmail.",
            "The sender domain has set up a DMARC rejection policy.",
            "The IP reputation of the sending IP is very low.",
            "The Domain reputation of the sending domain is very low.",
            "The IP is listed in one or more public [Real-time Blackhole Lists](http://en.wikipedia.org/wiki/DNSBL). Work with the RBL to get your IP delisted.",
            "The Domain is listed in one or more public [Real-time Blackhole Lists](http://en.wikipedia.org/wiki/DNSBL). Work with the RBL to get your domain delisted.",
            "The sending IP is missing a [PTR record](https://support.google.com/domains/answer/3251147#ptr).",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Domain = {
      description = "A registered domain resource in the Postmaster API.",
      id = "Domain",
      properties = {
        createTime = {
          description = "Timestamp when the user registered this domain. Assigned by the server.",
          format = "google-datetime",
          type = "string",
        },
        name = {
          description = "The resource name of the Domain. Domain names have the form `domains/{domain_name}`, where domain_name is the fully qualified domain name (i.e., mymail.mydomain.com).",
          type = "string",
        },
        permission = {
          description = "User’s permission for this domain. Assigned by the server.",
          enum = {
            "PERMISSION_UNSPECIFIED",
            "OWNER",
            "READER",
            "NONE",
          },
          enumDescriptions = {
            "The default value and should never be used explicitly.",
            "User has read access to the domain and can share access with others.",
            "User has read access to the domain.",
            "User doesn't have permission to access information about the domain. User did not verify ownership of domain nor was access granted by other domain owners.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    FeedbackLoop = {
      description = "[Feedback loop](https://support.google.com/mail/answer/6254652) identifier information.",
      id = "FeedbackLoop",
      properties = {
        id = {
          description = "Feedback loop identifier that uniquely identifies individual campaigns.",
          type = "string",
        },
        spamRatio = {
          description = "The ratio of user marked spam messages with the identifier vs the total number of inboxed messages with that identifier.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    IpReputation = {
      description = "IP Reputation information for a set of IPs in a specific reputation category.",
      id = "IpReputation",
      properties = {
        ipCount = {
          description = "Total number of unique IPs in this reputation category. This metric only pertains to traffic that passed [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).",
          format = "int64",
          type = "string",
        },
        reputation = {
          description = "The reputation category this IP reputation represents.",
          enum = {
            "REPUTATION_CATEGORY_UNSPECIFIED",
            "HIGH",
            "MEDIUM",
            "LOW",
            "BAD",
          },
          enumDescriptions = {
            "The default value which should never be used explicitly. This represents the state where no reputation information is available.",
            "Has a good track record of a very low spam rate, and complies with Gmail's sender guidelines. Mail will rarely be marked by the spam filter.",
            "Known to send good mail, but is prone to sending a low volume of spam intermittently. Most of the email from this entity will have a fair deliverability rate, except when there is a notable increase in spam levels.",
            "Known to send a considerable volume of spam regularly, and mail from this sender will likely be marked as spam.",
            "History of sending an enormously high volume of spam. Mail coming from this entity will almost always be rejected at SMTP level or marked as spam.",
          },
          type = "string",
        },
        sampleIps = {
          description = "A sample of IPs in this reputation category.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDomainsResponse = {
      description = "Response message for ListDomains.",
      id = "ListDomainsResponse",
      properties = {
        domains = {
          description = "The list of domains.",
          items = {
            ["$ref"] = "Domain",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListTrafficStatsResponse = {
      description = "Response message for ListTrafficStats.",
      id = "ListTrafficStatsResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        trafficStats = {
          description = "The list of TrafficStats.",
          items = {
            ["$ref"] = "TrafficStats",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TrafficStats = {
      description = "Email traffic statistics pertaining to a specific date.",
      id = "TrafficStats",
      properties = {
        deliveryErrors = {
          description = "Delivery errors for the domain. This metric only pertains to traffic that passed [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).",
          items = {
            ["$ref"] = "DeliveryError",
          },
          type = "array",
        },
        dkimSuccessRatio = {
          description = "The ratio of mail that successfully authenticated with DKIM vs. all mail that attempted to authenticate with [DKIM](http://www.dkim.org/). Spoofed mail is excluded.",
          format = "double",
          type = "number",
        },
        dmarcSuccessRatio = {
          description = "The ratio of mail that passed [DMARC](https://dmarc.org/) alignment checks vs all mail received from the domain that successfully authenticated with either of [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).",
          format = "double",
          type = "number",
        },
        domainReputation = {
          description = "Reputation of the domain.",
          enum = {
            "REPUTATION_CATEGORY_UNSPECIFIED",
            "HIGH",
            "MEDIUM",
            "LOW",
            "BAD",
          },
          enumDescriptions = {
            "The default value which should never be used explicitly. This represents the state where no reputation information is available.",
            "Has a good track record of a very low spam rate, and complies with Gmail's sender guidelines. Mail will rarely be marked by the spam filter.",
            "Known to send good mail, but is prone to sending a low volume of spam intermittently. Most of the email from this entity will have a fair deliverability rate, except when there is a notable increase in spam levels.",
            "Known to send a considerable volume of spam regularly, and mail from this sender will likely be marked as spam.",
            "History of sending an enormously high volume of spam. Mail coming from this entity will almost always be rejected at SMTP level or marked as spam.",
          },
          type = "string",
        },
        inboundEncryptionRatio = {
          description = "The ratio of incoming mail (to Gmail), that passed secure transport (TLS) vs all mail received from that domain. This metric only pertains to traffic that passed [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).",
          format = "double",
          type = "number",
        },
        ipReputations = {
          description = "Reputation information pertaining to the IP addresses of the email servers for the domain. There is exactly one entry for each reputation category except REPUTATION_CATEGORY_UNSPECIFIED.",
          items = {
            ["$ref"] = "IpReputation",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the traffic statistics. Traffic statistic names have the form `domains/{domain}/trafficStats/{date}`, where domain_name is the fully qualified domain name (i.e., mymail.mydomain.com) of the domain this traffic statistics pertains to and date is the date in yyyymmdd format that these statistics corresponds to. For example: domains/mymail.mydomain.com/trafficStats/20160807",
          type = "string",
        },
        outboundEncryptionRatio = {
          description = "The ratio of outgoing mail (from Gmail) that was accepted over secure transport (TLS).",
          format = "double",
          type = "number",
        },
        spammyFeedbackLoops = {
          description = "Spammy [Feedback loop identifiers] (https://support.google.com/mail/answer/6254652) with their individual spam rates. This metric only pertains to traffic that is authenticated by [DKIM](http://www.dkim.org/).",
          items = {
            ["$ref"] = "FeedbackLoop",
          },
          type = "array",
        },
        spfSuccessRatio = {
          description = "The ratio of mail that successfully authenticated with SPF vs. all mail that attempted to authenticate with [SPF](http://www.openspf.org/). Spoofed mail is excluded.",
          format = "double",
          type = "number",
        },
        userReportedSpamRatio = {
          description = "The ratio of user-report spam vs. email that was sent to the inbox. This metric only pertains to emails authenticated by [DKIM](http://www.dkim.org/).",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Gmail Postmaster Tools API",
  version = "v1",
  version_module = true,
}
