return {
  auth = {
    oauth2 = {
      scopes = {
        openid = {
          description = "Associate you with your personal info on Google",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://pagespeedonline.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Pagespeed Insights",
  description = "The PageSpeed Insights API lets you analyze the performance of your website with a simple API. It offers tailored suggestions for how you can optimize your site, and lets you easily integrate PageSpeed Insights analysis into your development tools and workflow. ",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/speed/docs/insights/v5/about",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "pagespeedonline:v5",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://pagespeedonline.mtls.googleapis.com/",
  name = "pagespeedonline",
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
    pagespeedapi = {
      methods = {
        runpagespeed = {
          description = "Runs PageSpeed analysis on the page at the specified URL, and returns PageSpeed scores, a list of suggestions to make that page faster, and other information.",
          flatPath = "pagespeedonline/v5/runPagespeed",
          httpMethod = "GET",
          id = "pagespeedonline.pagespeedapi.runpagespeed",
          parameterOrder = {
            "url",
          },
          parameters = {
            captchaToken = {
              description = "The captcha token passed when filling out a captcha.",
              location = "query",
              type = "string",
            },
            category = {
              description = "A Lighthouse category to run; if none are given, only Performance category will be run",
              enum = {
                "CATEGORY_UNSPECIFIED",
                "ACCESSIBILITY",
                "BEST_PRACTICES",
                "PERFORMANCE",
                "PWA",
                "SEO",
              },
              enumDescriptions = {
                "Default UNDEFINED category.",
                "Accessibility (a11y), category pertaining to a website's capacity to be accessible to all users.",
                "Best Practices, category pertaining to a website's conformance to web best practice.",
                "Performance, category pertaining to a website's performance.",
                "Progressive Web App (PWA), category pertaining to a website's ability to be run as a PWA.",
                "Search Engine Optimization (SEO), category pertaining to a website's ability to be indexed by search engines.",
              },
              location = "query",
              repeated = true,
              type = "string",
            },
            locale = {
              description = "The locale used to localize formatted results",
              location = "query",
              pattern = "[a-zA-Z]+((_|-)[a-zA-Z]+)?",
              type = "string",
            },
            strategy = {
              description = "The analysis strategy (desktop or mobile) to use, and desktop is the default",
              enum = {
                "STRATEGY_UNSPECIFIED",
                "DESKTOP",
                "MOBILE",
              },
              enumDescriptions = {
                "UNDEFINED.",
                "Fetch and analyze the URL for desktop browsers.",
                "Fetch and analyze the URL for mobile devices.",
              },
              location = "query",
              type = "string",
            },
            url = {
              description = "Required. The URL to fetch and analyze",
              location = "query",
              pattern = "(?i)(url:|origin:)?http(s)?://.*",
              required = true,
              type = "string",
            },
            utm_campaign = {
              description = "Campaign name for analytics.",
              location = "query",
              type = "string",
            },
            utm_source = {
              description = "Campaign source for analytics.",
              location = "query",
              type = "string",
            },
          },
          path = "pagespeedonline/v5/runPagespeed",
          response = {
            ["$ref"] = "PagespeedApiPagespeedResponseV5",
          },
          scopes = {
            "openid",
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://pagespeedonline.googleapis.com/",
  schemas = {
    AuditRefs = {
      description = "A light reference to an audit by id, used to group and weight audits in a given category.",
      id = "AuditRefs",
      properties = {
        acronym = {
          description = "The conventional acronym for the audit/metric.",
          type = "string",
        },
        group = {
          description = "The category group that the audit belongs to (optional).",
          type = "string",
        },
        id = {
          description = "The audit ref id.",
          type = "string",
        },
        relevantAudits = {
          description = "Any audit IDs closely relevant to this one.",
          items = {
            type = "string",
          },
          type = "array",
        },
        weight = {
          description = "The weight this audit's score has on the overall category score.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Bucket = {
      description = "A proportion of data in the total distribution, bucketed by a min/max percentage. Each bucket's range is bounded by min <= x < max, In millisecond.",
      id = "Bucket",
      properties = {
        max = {
          description = "Upper bound for a bucket's range.",
          format = "int32",
          type = "integer",
        },
        min = {
          description = "Lower bound for a bucket's range.",
          format = "int32",
          type = "integer",
        },
        proportion = {
          description = "The proportion of data in this bucket.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Categories = {
      description = "The categories in a Lighthouse run.",
      id = "Categories",
      properties = {
        accessibility = {
          ["$ref"] = "LighthouseCategoryV5",
          description = "The accessibility category, containing all accessibility related audits.",
        },
        ["best-practices"] = {
          ["$ref"] = "LighthouseCategoryV5",
          description = "The best practices category, containing all best practices related audits.",
        },
        performance = {
          ["$ref"] = "LighthouseCategoryV5",
          description = "The performance category, containing all performance related audits.",
        },
        pwa = {
          ["$ref"] = "LighthouseCategoryV5",
          description = "The Progressive-Web-App (PWA) category, containing all pwa related audits.",
        },
        seo = {
          ["$ref"] = "LighthouseCategoryV5",
          description = "The Search-Engine-Optimization (SEO) category, containing all seo related audits.",
        },
      },
      type = "object",
    },
    CategoryGroupV5 = {
      description = "Message containing a category",
      id = "CategoryGroupV5",
      properties = {
        description = {
          description = "The description of what the category is grouping",
          type = "string",
        },
        title = {
          description = "The human readable title of the group",
          type = "string",
        },
      },
      type = "object",
    },
    ConfigSettings = {
      description = "Message containing the configuration settings for the Lighthouse run.",
      id = "ConfigSettings",
      properties = {
        channel = {
          description = "How Lighthouse was run, e.g. from the Chrome extension or from the npm module.",
          type = "string",
        },
        emulatedFormFactor = {
          description = "The form factor the emulation should use. This field is deprecated, form_factor should be used instead.",
          type = "string",
        },
        formFactor = {
          description = "How Lighthouse should interpret this run in regards to scoring performance metrics and skipping mobile-only tests in desktop.",
          type = "string",
        },
        locale = {
          description = "The locale setting.",
          type = "string",
        },
        onlyCategories = {
          description = "List of categories of audits the run should conduct.",
          type = "any",
        },
      },
      type = "object",
    },
    Environment = {
      description = "Message containing environment configuration for a Lighthouse run.",
      id = "Environment",
      properties = {
        benchmarkIndex = {
          description = "The benchmark index number that indicates rough device class.",
          format = "double",
          type = "number",
        },
        hostUserAgent = {
          description = "The user agent string of the version of Chrome used.",
          type = "string",
        },
        networkUserAgent = {
          description = "The user agent string that was sent over the network.",
          type = "string",
        },
      },
      type = "object",
    },
    I18n = {
      description = "Message containing the i18n data for the LHR - Version 1.",
      id = "I18n",
      properties = {
        rendererFormattedStrings = {
          ["$ref"] = "RendererFormattedStrings",
          description = "Internationalized strings that are formatted to the locale in configSettings.",
        },
      },
      type = "object",
    },
    LighthouseAuditResultV5 = {
      description = "An audit's result object in a Lighthouse result.",
      id = "LighthouseAuditResultV5",
      properties = {
        description = {
          description = "The description of the audit.",
          type = "string",
        },
        details = {
          additionalProperties = {
            description = "Properties of the object.",
            type = "any",
          },
          description = "Freeform details section of the audit.",
          type = "object",
        },
        displayValue = {
          description = "The value that should be displayed on the UI for this audit.",
          type = "string",
        },
        errorMessage = {
          description = "An error message from a thrown error inside the audit.",
          type = "string",
        },
        explanation = {
          description = "An explanation of the errors in the audit.",
          type = "string",
        },
        id = {
          description = "The audit's id.",
          type = "string",
        },
        numericUnit = {
          description = "The unit of the numeric_value field. Used to format the numeric value for display.",
          type = "string",
        },
        numericValue = {
          description = "A numeric value that has a meaning specific to the audit, e.g. the number of nodes in the DOM or the timestamp of a specific load event. More information can be found in the audit details, if present.",
          format = "double",
          type = "number",
        },
        score = {
          description = "The score of the audit, can be null.",
          type = "any",
        },
        scoreDisplayMode = {
          description = "The enumerated score display mode.",
          type = "string",
        },
        title = {
          description = "The human readable title.",
          type = "string",
        },
        warnings = {
          description = "Possible warnings that occurred in the audit, can be null.",
          type = "any",
        },
      },
      type = "object",
    },
    LighthouseCategoryV5 = {
      description = "A Lighthouse category.",
      id = "LighthouseCategoryV5",
      properties = {
        auditRefs = {
          description = "An array of references to all the audit members of this category.",
          items = {
            ["$ref"] = "AuditRefs",
          },
          type = "array",
        },
        description = {
          description = "A more detailed description of the category and its importance.",
          type = "string",
        },
        id = {
          description = "The string identifier of the category.",
          type = "string",
        },
        manualDescription = {
          description = "A description for the manual audits in the category.",
          type = "string",
        },
        score = {
          description = "The overall score of the category, the weighted average of all its audits. (The category's score, can be null.)",
          type = "any",
        },
        title = {
          description = "The human-friendly name of the category.",
          type = "string",
        },
      },
      type = "object",
    },
    LighthouseResultV5 = {
      description = "The Lighthouse result object.",
      id = "LighthouseResultV5",
      properties = {
        audits = {
          additionalProperties = {
            ["$ref"] = "LighthouseAuditResultV5",
          },
          description = "Map of audits in the LHR.",
          type = "object",
        },
        categories = {
          ["$ref"] = "Categories",
          description = "Map of categories in the LHR.",
        },
        categoryGroups = {
          additionalProperties = {
            ["$ref"] = "CategoryGroupV5",
          },
          description = "Map of category groups in the LHR.",
          type = "object",
        },
        configSettings = {
          ["$ref"] = "ConfigSettings",
          description = "The configuration settings for this LHR.",
        },
        environment = {
          ["$ref"] = "Environment",
          description = "Environment settings that were used when making this LHR.",
        },
        fetchTime = {
          description = "The time that this run was fetched.",
          type = "string",
        },
        finalUrl = {
          description = "The final resolved url that was audited.",
          type = "string",
        },
        i18n = {
          ["$ref"] = "I18n",
          description = "The internationalization strings that are required to render the LHR.",
        },
        lighthouseVersion = {
          description = "The lighthouse version that was used to generate this LHR.",
          type = "string",
        },
        requestedUrl = {
          description = "The original requested url.",
          type = "string",
        },
        runWarnings = {
          description = "List of all run warnings in the LHR. Will always output to at least `[]`.",
          items = {
            type = "any",
          },
          type = "array",
        },
        runtimeError = {
          ["$ref"] = "RuntimeError",
          description = "A top-level error message that, if present, indicates a serious enough problem that this Lighthouse result may need to be discarded.",
        },
        stackPacks = {
          description = "The Stack Pack advice strings.",
          items = {
            ["$ref"] = "StackPack",
          },
          type = "array",
        },
        timing = {
          ["$ref"] = "Timing",
          description = "Timing information for this LHR.",
        },
        userAgent = {
          description = "The user agent that was used to run this LHR.",
          type = "string",
        },
      },
      type = "object",
    },
    PagespeedApiLoadingExperienceV5 = {
      description = "The CrUX loading experience object that contains CrUX data breakdowns.",
      id = "PagespeedApiLoadingExperienceV5",
      properties = {
        id = {
          description = "The url, pattern or origin which the metrics are on.",
          type = "string",
        },
        initial_url = {
          description = "The requested URL, which may differ from the resolved \"id\".",
          type = "string",
        },
        metrics = {
          additionalProperties = {
            ["$ref"] = "UserPageLoadMetricV5",
          },
          description = "The map of .",
          type = "object",
        },
        origin_fallback = {
          description = "True if the result is an origin fallback from a page, false otherwise.",
          type = "boolean",
        },
        overall_category = {
          description = "The human readable speed \"category\" of the id.",
          type = "string",
        },
      },
      type = "object",
    },
    PagespeedApiPagespeedResponseV5 = {
      description = "The Pagespeed API response object.",
      id = "PagespeedApiPagespeedResponseV5",
      properties = {
        analysisUTCTimestamp = {
          description = "The UTC timestamp of this analysis.",
          type = "string",
        },
        captchaResult = {
          description = "The captcha verify result",
          type = "string",
        },
        id = {
          description = "Canonicalized and final URL for the document, after following page redirects (if any).",
          type = "string",
        },
        kind = {
          description = "Kind of result.",
          type = "string",
        },
        lighthouseResult = {
          ["$ref"] = "LighthouseResultV5",
          description = "Lighthouse response for the audit url as an object.",
        },
        loadingExperience = {
          ["$ref"] = "PagespeedApiLoadingExperienceV5",
          description = "Metrics of end users' page loading experience.",
        },
        originLoadingExperience = {
          ["$ref"] = "PagespeedApiLoadingExperienceV5",
          description = "Metrics of the aggregated page loading experience of the origin",
        },
        version = {
          ["$ref"] = "PagespeedVersion",
          description = "The version of PageSpeed used to generate these results.",
        },
      },
      type = "object",
    },
    PagespeedVersion = {
      description = "The Pagespeed Version object.",
      id = "PagespeedVersion",
      properties = {
        major = {
          description = "The major version number of PageSpeed used to generate these results.",
          type = "string",
        },
        minor = {
          description = "The minor version number of PageSpeed used to generate these results.",
          type = "string",
        },
      },
      type = "object",
    },
    RendererFormattedStrings = {
      description = "Message holding the formatted strings used in the renderer.",
      id = "RendererFormattedStrings",
      properties = {
        auditGroupExpandTooltip = {
          description = "The tooltip text on an expandable chevron icon.",
          type = "string",
        },
        calculatorLink = {
          description = "Text link pointing to the Lighthouse scoring calculator. This link immediately follows a sentence stating the performance score is calculated from the perf metrics.",
          type = "string",
        },
        crcInitialNavigation = {
          description = "The label for the initial request in a critical request chain.",
          type = "string",
        },
        crcLongestDurationLabel = {
          description = "The label for values shown in the summary of critical request chains.",
          type = "string",
        },
        dropdownCopyJSON = {
          description = "Option in a dropdown menu that copies the Lighthouse JSON object to the system clipboard.",
          type = "string",
        },
        dropdownDarkTheme = {
          description = "Option in a dropdown menu that toggles the themeing of the report between Light(default) and Dark themes.",
          type = "string",
        },
        dropdownPrintExpanded = {
          description = "Option in a dropdown menu that opens a full Lighthouse report in a print dialog.",
          type = "string",
        },
        dropdownPrintSummary = {
          description = "Option in a dropdown menu that opens a small, summary report in a print dialog.",
          type = "string",
        },
        dropdownSaveGist = {
          description = "Option in a dropdown menu that saves the current report as a new GitHub Gist.",
          type = "string",
        },
        dropdownSaveHTML = {
          description = "Option in a dropdown menu that saves the Lighthouse report HTML locally to the system as a '.html' file.",
          type = "string",
        },
        dropdownSaveJSON = {
          description = "Option in a dropdown menu that saves the Lighthouse JSON object to the local system as a '.json' file.",
          type = "string",
        },
        dropdownViewer = {
          description = "Option in a dropdown menu that opens the current report in the Lighthouse Viewer Application.",
          type = "string",
        },
        errorLabel = {
          description = "The label shown next to an audit or metric that has had an error.",
          type = "string",
        },
        errorMissingAuditInfo = {
          description = "The error string shown next to an erroring audit.",
          type = "string",
        },
        footerIssue = {
          description = "Label for button to create an issue against the Lighthouse GitHub project.",
          type = "string",
        },
        labDataTitle = {
          description = "The title of the lab data performance category.",
          type = "string",
        },
        lsPerformanceCategoryDescription = {
          description = "The disclaimer shown under performance explaining that the network can vary.",
          type = "string",
        },
        manualAuditsGroupTitle = {
          description = "The heading shown above a list of audits that were not computerd in the run.",
          type = "string",
        },
        notApplicableAuditsGroupTitle = {
          description = "The heading shown above a list of audits that do not apply to a page.",
          type = "string",
        },
        opportunityResourceColumnLabel = {
          description = "The heading for the estimated page load savings opportunity of an audit.",
          type = "string",
        },
        opportunitySavingsColumnLabel = {
          description = "The heading for the estimated page load savings of opportunity audits.",
          type = "string",
        },
        passedAuditsGroupTitle = {
          description = "The heading that is shown above a list of audits that are passing.",
          type = "string",
        },
        runtimeDesktopEmulation = {
          description = "Descriptive explanation for emulation setting when emulating a generic desktop form factor, as opposed to a mobile-device like form factor.",
          type = "string",
        },
        runtimeMobileEmulation = {
          description = "Descriptive explanation for emulation setting when emulating a Nexus 5X mobile device.",
          type = "string",
        },
        runtimeNoEmulation = {
          description = "Descriptive explanation for emulation setting when no device emulation is set.",
          type = "string",
        },
        runtimeSettingsAxeVersion = {
          description = "Label for a row in a table that shows the version of the Axe library used",
          type = "string",
        },
        runtimeSettingsBenchmark = {
          description = "Label for a row in a table that shows the estimated CPU power of the machine running Lighthouse. Example row values: 532, 1492, 783.",
          type = "string",
        },
        runtimeSettingsCPUThrottling = {
          description = "Label for a row in a table that describes the CPU throttling conditions that were used during a Lighthouse run, if any.",
          type = "string",
        },
        runtimeSettingsChannel = {
          description = "Label for a row in a table that shows in what tool Lighthouse is being run (e.g. The lighthouse CLI, Chrome DevTools, Lightrider, WebPageTest, etc).",
          type = "string",
        },
        runtimeSettingsDevice = {
          description = "Label for a row in a table that describes the kind of device that was emulated for the Lighthouse run. Example values for row elements: 'No Emulation', 'Emulated Desktop', etc.",
          type = "string",
        },
        runtimeSettingsFetchTime = {
          description = "Label for a row in a table that shows the time at which a Lighthouse run was conducted; formatted as a timestamp, e.g. Jan 1, 1970 12:00 AM UTC.",
          type = "string",
        },
        runtimeSettingsNetworkThrottling = {
          description = "Label for a row in a table that describes the network throttling conditions that were used during a Lighthouse run, if any.",
          type = "string",
        },
        runtimeSettingsTitle = {
          description = "Title of the Runtime settings table in a Lighthouse report. Runtime settings are the environment configurations that a specific report used at auditing time.",
          type = "string",
        },
        runtimeSettingsUA = {
          description = "Label for a row in a table that shows the User Agent that was detected on the Host machine that ran Lighthouse.",
          type = "string",
        },
        runtimeSettingsUANetwork = {
          description = "Label for a row in a table that shows the User Agent that was used to send out all network requests during the Lighthouse run.",
          type = "string",
        },
        runtimeSettingsUrl = {
          description = "Label for a row in a table that shows the URL that was audited during a Lighthouse run.",
          type = "string",
        },
        runtimeUnknown = {
          description = "Descriptive explanation for a runtime setting that is set to an unknown value.",
          type = "string",
        },
        scorescaleLabel = {
          description = "The label that explains the score gauges scale (0-49, 50-89, 90-100).",
          type = "string",
        },
        showRelevantAudits = {
          description = "Label preceding a radio control for filtering the list of audits. The radio choices are various performance metrics (FCP, LCP, TBT), and if chosen, the audits in the report are hidden if they are not relevant to the selected metric.",
          type = "string",
        },
        snippetCollapseButtonLabel = {
          description = "The label for the button to show only a few lines of a snippet",
          type = "string",
        },
        snippetExpandButtonLabel = {
          description = "The label for the button to show all lines of a snippet",
          type = "string",
        },
        thirdPartyResourcesLabel = {
          description = "This label is for a filter checkbox above a table of items",
          type = "string",
        },
        throttlingProvided = {
          description = "Descriptive explanation for environment throttling that was provided by the runtime environment instead of provided by Lighthouse throttling.",
          type = "string",
        },
        toplevelWarningsMessage = {
          description = "The label shown preceding important warnings that may have invalidated an entire report.",
          type = "string",
        },
        varianceDisclaimer = {
          description = "The disclaimer shown below a performance metric value.",
          type = "string",
        },
        viewTreemapLabel = {
          description = "Label for a button that opens the Treemap App",
          type = "string",
        },
        warningAuditsGroupTitle = {
          description = "The heading that is shown above a list of audits that have warnings",
          type = "string",
        },
        warningHeader = {
          description = "The label shown above a bulleted list of warnings.",
          type = "string",
        },
      },
      type = "object",
    },
    RuntimeError = {
      description = "Message containing a runtime error config.",
      id = "RuntimeError",
      properties = {
        code = {
          description = "The enumerated Lighthouse Error code.",
          type = "string",
        },
        message = {
          description = "A human readable message explaining the error code.",
          type = "string",
        },
      },
      type = "object",
    },
    StackPack = {
      description = "Message containing Stack Pack information.",
      id = "StackPack",
      properties = {
        descriptions = {
          additionalProperties = {
            type = "string",
          },
          description = "The stack pack advice strings.",
          type = "object",
        },
        iconDataURL = {
          description = "The stack pack icon data uri.",
          type = "string",
        },
        id = {
          description = "The stack pack id.",
          type = "string",
        },
        title = {
          description = "The stack pack title.",
          type = "string",
        },
      },
      type = "object",
    },
    Timing = {
      description = "Message containing the performance timing data for the Lighthouse run.",
      id = "Timing",
      properties = {
        total = {
          description = "The total duration of Lighthouse's run.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    UserPageLoadMetricV5 = {
      description = "A CrUX metric object for a single metric and form factor.",
      id = "UserPageLoadMetricV5",
      properties = {
        category = {
          description = "The category of the specific time metric.",
          type = "string",
        },
        distributions = {
          description = "Metric distributions. Proportions should sum up to 1.",
          items = {
            ["$ref"] = "Bucket",
          },
          type = "array",
        },
        formFactor = {
          description = "Identifies the form factor of the metric being collected.",
          type = "string",
        },
        median = {
          description = "The median number of the metric, in millisecond.",
          format = "int32",
          type = "integer",
        },
        metricId = {
          description = "Identifies the type of the metric.",
          type = "string",
        },
        percentile = {
          description = "We use this field to store certain percentile value for this metric. For v4, this field contains pc50. For v5, this field contains pc90.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "PageSpeed Insights API",
  version = "v5",
  version_module = true,
}
