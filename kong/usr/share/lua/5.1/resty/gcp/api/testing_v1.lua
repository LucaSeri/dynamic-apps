return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
        ["https://www.googleapis.com/auth/cloud-platform.read-only"] = {
          description = "View your data across Google Cloud services and see the email address of your Google Account",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://testing.googleapis.com/",
  batchPath = "batch",
  description = "Allows developers to run automated tests for their mobile applications on Google infrastructure.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/cloud-test-lab/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "testing:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://testing.mtls.googleapis.com/",
  name = "testing",
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
    applicationDetailService = {
      methods = {
        getApkDetails = {
          description = "Gets the details of an Android application APK.",
          flatPath = "v1/applicationDetailService/getApkDetails",
          httpMethod = "POST",
          id = "testing.applicationDetailService.getApkDetails",
          parameterOrder = {},
          parameters = {},
          path = "v1/applicationDetailService/getApkDetails",
          request = {
            ["$ref"] = "FileReference",
          },
          response = {
            ["$ref"] = "GetApkDetailsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      resources = {
        testMatrices = {
          methods = {
            cancel = {
              description = "Cancels unfinished test executions in a test matrix. This call returns immediately and cancellation proceeds asynchronously. If the matrix is already final, this operation will have no effect. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist",
              flatPath = "v1/projects/{projectId}/testMatrices/{testMatrixId}:cancel",
              httpMethod = "POST",
              id = "testing.projects.testMatrices.cancel",
              parameterOrder = {
                "projectId",
                "testMatrixId",
              },
              parameters = {
                projectId = {
                  description = "Cloud project that owns the test.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                testMatrixId = {
                  description = "Test matrix that will be canceled.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/testMatrices/{testMatrixId}:cancel",
              response = {
                ["$ref"] = "CancelTestMatrixResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            create = {
              description = "Creates and runs a matrix of tests according to the given specifications. Unsupported environments will be returned in the state UNSUPPORTED. A test matrix is limited to use at most 2000 devices in parallel. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to write to project - INVALID_ARGUMENT - if the request is malformed or if the matrix tries to use too many simultaneous devices.",
              flatPath = "v1/projects/{projectId}/testMatrices",
              httpMethod = "POST",
              id = "testing.projects.testMatrices.create",
              parameterOrder = {
                "projectId",
              },
              parameters = {
                projectId = {
                  description = "The GCE project under which this job will run.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                requestId = {
                  description = "A string id used to detect duplicated requests. Ids are automatically scoped to a project, so users should ensure the ID is unique per-project. A UUID is recommended. Optional, but strongly recommended.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/testMatrices",
              request = {
                ["$ref"] = "TestMatrix",
              },
              response = {
                ["$ref"] = "TestMatrix",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
            get = {
              description = "Checks the status of a test matrix. May return any of the following canonical error codes: - PERMISSION_DENIED - if the user is not authorized to read project - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the Test Matrix does not exist",
              flatPath = "v1/projects/{projectId}/testMatrices/{testMatrixId}",
              httpMethod = "GET",
              id = "testing.projects.testMatrices.get",
              parameterOrder = {
                "projectId",
                "testMatrixId",
              },
              parameters = {
                projectId = {
                  description = "Cloud project that owns the test matrix.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                testMatrixId = {
                  description = "Unique test matrix id which was assigned by the service.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/projects/{projectId}/testMatrices/{testMatrixId}",
              response = {
                ["$ref"] = "TestMatrix",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
                "https://www.googleapis.com/auth/cloud-platform.read-only",
              },
            },
          },
        },
      },
    },
    testEnvironmentCatalog = {
      methods = {
        get = {
          description = "Gets the catalog of supported test environments. May return any of the following canonical error codes: - INVALID_ARGUMENT - if the request is malformed - NOT_FOUND - if the environment type does not exist - INTERNAL - if an internal error occurred",
          flatPath = "v1/testEnvironmentCatalog/{environmentType}",
          httpMethod = "GET",
          id = "testing.testEnvironmentCatalog.get",
          parameterOrder = {
            "environmentType",
          },
          parameters = {
            environmentType = {
              description = "Required. The type of environment that should be listed.",
              enum = {
                "ENVIRONMENT_TYPE_UNSPECIFIED",
                "ANDROID",
                "IOS",
                "NETWORK_CONFIGURATION",
                "PROVIDED_SOFTWARE",
                "DEVICE_IP_BLOCKS",
              },
              enumDescriptions = {
                "Do not use. For proto versioning only.",
                "A device running a version of the Android OS.",
                "A device running a version of iOS.",
                "A network configuration to use when running a test.",
                "The software environment provided by TestExecutionService.",
                "The IP blocks used by devices in the test environment.",
              },
              location = "path",
              required = true,
              type = "string",
            },
            projectId = {
              description = "For authorization, the cloud project requesting the TestEnvironmentCatalog.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/testEnvironmentCatalog/{environmentType}",
          response = {
            ["$ref"] = "TestEnvironmentCatalog",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
            "https://www.googleapis.com/auth/cloud-platform.read-only",
          },
        },
      },
    },
  },
  revision = "20230113",
  rootUrl = "https://testing.googleapis.com/",
  schemas = {
    Account = {
      description = "Identifies an account and how to log into it.",
      id = "Account",
      properties = {
        googleAuto = {
          ["$ref"] = "GoogleAuto",
          description = "An automatic google login account.",
        },
      },
      type = "object",
    },
    AndroidDevice = {
      description = "A single Android device.",
      id = "AndroidDevice",
      properties = {
        androidModelId = {
          description = "Required. The id of the Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
        androidVersionId = {
          description = "Required. The id of the Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
        locale = {
          description = "Required. The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
        orientation = {
          description = "Required. How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
      },
      type = "object",
    },
    AndroidDeviceCatalog = {
      description = "The currently supported Android devices.",
      id = "AndroidDeviceCatalog",
      properties = {
        models = {
          description = "The set of supported Android device models.",
          items = {
            ["$ref"] = "AndroidModel",
          },
          type = "array",
        },
        runtimeConfiguration = {
          ["$ref"] = "AndroidRuntimeConfiguration",
          description = "The set of supported runtime configurations.",
        },
        versions = {
          description = "The set of supported Android OS versions.",
          items = {
            ["$ref"] = "AndroidVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AndroidDeviceList = {
      description = "A list of Android device configurations in which the test is to be executed.",
      id = "AndroidDeviceList",
      properties = {
        androidDevices = {
          description = "Required. A list of Android devices.",
          items = {
            ["$ref"] = "AndroidDevice",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AndroidInstrumentationTest = {
      description = "A test of an Android application that can control an Android component independently of its normal lifecycle. Android instrumentation tests run an application APK and test APK inside the same process on a virtual or physical AndroidDevice. They also specify a test runner class, such as com.google.GoogleTestRunner, which can vary on the specific instrumentation framework chosen. See for more information on types of Android tests.",
      id = "AndroidInstrumentationTest",
      properties = {
        appApk = {
          ["$ref"] = "FileReference",
          description = "The APK for the application under test.",
        },
        appBundle = {
          ["$ref"] = "AppBundle",
          description = "A multi-apk app bundle for the application under test.",
        },
        appPackageId = {
          description = "The java package for the application under test. The default value is determined by examining the application's manifest.",
          type = "string",
        },
        orchestratorOption = {
          description = "The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.",
          enum = {
            "ORCHESTRATOR_OPTION_UNSPECIFIED",
            "USE_ORCHESTRATOR",
            "DO_NOT_USE_ORCHESTRATOR",
          },
          enumDescriptions = {
            "Default value: the server will choose the mode. Currently implies that the test will run without the orchestrator. In the future, all instrumentation tests will be run with the orchestrator. Using the orchestrator is highly encouraged because of all the benefits it offers.",
            "Run test using orchestrator. ** Only compatible with AndroidJUnitRunner version 1.1 or higher! ** Recommended.",
            "Run test without using orchestrator.",
          },
          type = "string",
        },
        shardingOption = {
          ["$ref"] = "ShardingOption",
          description = "The option to run tests in multiple shards in parallel.",
        },
        testApk = {
          ["$ref"] = "FileReference",
          description = "Required. The APK containing the test code to be executed.",
        },
        testPackageId = {
          description = "The java package for the test to be executed. The default value is determined by examining the application's manifest.",
          type = "string",
        },
        testRunnerClass = {
          description = "The InstrumentationTestRunner class. The default value is determined by examining the application's manifest.",
          type = "string",
        },
        testTargets = {
          description = "Each target must be fully qualified with the package name or class name, in one of these formats: - \"package package_name\" - \"class package_name.class_name\" - \"class package_name.class_name#method_name\" If empty, all targets in the module will be run.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AndroidMatrix = {
      description = "A set of Android device configuration permutations is defined by the the cross-product of the given axes. Internally, the given AndroidMatrix will be expanded into a set of AndroidDevices. Only supported permutations will be instantiated. Invalid permutations (e.g., incompatible models/versions) are ignored.",
      id = "AndroidMatrix",
      properties = {
        androidModelIds = {
          description = "Required. The ids of the set of Android device to be used. Use the TestEnvironmentDiscoveryService to get supported options.",
          items = {
            type = "string",
          },
          type = "array",
        },
        androidVersionIds = {
          description = "Required. The ids of the set of Android OS version to be used. Use the TestEnvironmentDiscoveryService to get supported options.",
          items = {
            type = "string",
          },
          type = "array",
        },
        locales = {
          description = "Required. The set of locales the test device will enable for testing. Use the TestEnvironmentDiscoveryService to get supported options.",
          items = {
            type = "string",
          },
          type = "array",
        },
        orientations = {
          description = "Required. The set of orientations to test with. Use the TestEnvironmentDiscoveryService to get supported options.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AndroidModel = {
      description = "A description of an Android device tests may be run on.",
      id = "AndroidModel",
      properties = {
        brand = {
          description = "The company that this device is branded with. Example: \"Google\", \"Samsung\".",
          type = "string",
        },
        codename = {
          description = "The name of the industrial design. This corresponds to android.os.Build.DEVICE.",
          type = "string",
        },
        form = {
          description = "Whether this device is virtual or physical.",
          enum = {
            "DEVICE_FORM_UNSPECIFIED",
            "VIRTUAL",
            "PHYSICAL",
            "EMULATOR",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "Android virtual device using Compute Engine native virtualization. Firebase Test Lab only.",
            "Actual hardware.",
            "Android virtual device using emulator in nested virtualization. Equivalent to Android Studio.",
          },
          type = "string",
        },
        formFactor = {
          description = "Whether this device is a phone, tablet, wearable, etc.",
          enum = {
            "DEVICE_FORM_FACTOR_UNSPECIFIED",
            "PHONE",
            "TABLET",
            "WEARABLE",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "This device has the shape of a phone.",
            "This device has the shape of a tablet.",
            "This device has the shape of a watch or other wearable.",
          },
          type = "string",
        },
        id = {
          description = "The unique opaque id for this model. Use this for invoking the TestExecutionService.",
          type = "string",
        },
        lowFpsVideoRecording = {
          description = "True if and only if tests with this model are recorded by stitching together screenshots. See use_low_spec_video_recording in device config.",
          type = "boolean",
        },
        manufacturer = {
          description = "The manufacturer of this device.",
          type = "string",
        },
        name = {
          description = "The human-readable marketing name for this device model. Examples: \"Nexus 5\", \"Galaxy S5\".",
          type = "string",
        },
        screenDensity = {
          description = "Screen density in DPI. This corresponds to ro.sf.lcd_density",
          format = "int32",
          type = "integer",
        },
        screenX = {
          description = "Screen size in the horizontal (X) dimension measured in pixels.",
          format = "int32",
          type = "integer",
        },
        screenY = {
          description = "Screen size in the vertical (Y) dimension measured in pixels.",
          format = "int32",
          type = "integer",
        },
        supportedAbis = {
          description = "The list of supported ABIs for this device. This corresponds to either android.os.Build.SUPPORTED_ABIS (for API level 21 and above) or android.os.Build.CPU_ABI/CPU_ABI2. The most preferred ABI is the first element in the list. Elements are optionally prefixed by \"version_id:\" (where version_id is the id of an AndroidVersion), denoting an ABI that is supported only on a particular version.",
          items = {
            type = "string",
          },
          type = "array",
        },
        supportedVersionIds = {
          description = "The set of Android versions this device supports.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tags = {
          description = "Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        thumbnailUrl = {
          description = "URL of a thumbnail image (photo) of the device.",
          type = "string",
        },
      },
      type = "object",
    },
    AndroidRoboTest = {
      description = "A test of an android application that explores the application on a virtual or physical Android Device, finding culprits and crashes as it goes.",
      id = "AndroidRoboTest",
      properties = {
        appApk = {
          ["$ref"] = "FileReference",
          description = "The APK for the application under test.",
        },
        appBundle = {
          ["$ref"] = "AppBundle",
          description = "A multi-apk app bundle for the application under test.",
        },
        appInitialActivity = {
          description = "The initial activity that should be used to start the app.",
          type = "string",
        },
        appPackageId = {
          description = "The java package for the application under test. The default value is determined by examining the application's manifest.",
          type = "string",
        },
        maxDepth = {
          description = "The max depth of the traversal stack Robo can explore. Needs to be at least 2 to make Robo explore the app beyond the first activity. Default is 50.",
          format = "int32",
          type = "integer",
        },
        maxSteps = {
          description = "The max number of steps Robo can execute. Default is no limit.",
          format = "int32",
          type = "integer",
        },
        roboDirectives = {
          description = "A set of directives Robo should apply during the crawl. This allows users to customize the crawl. For example, the username and password for a test account can be provided.",
          items = {
            ["$ref"] = "RoboDirective",
          },
          type = "array",
        },
        roboMode = {
          description = "The mode in which Robo should run. Most clients should allow the server to populate this field automatically.",
          enum = {
            "ROBO_MODE_UNSPECIFIED",
            "ROBO_VERSION_1",
            "ROBO_VERSION_2",
          },
          enumDescriptions = {
            "This means that the server should choose the mode. Recommended.",
            "Runs Robo in UIAutomator-only mode without app resigning",
            "Runs Robo in standard Espresso with UIAutomator fallback",
          },
          type = "string",
        },
        roboScript = {
          ["$ref"] = "FileReference",
          description = "A JSON file with a sequence of actions Robo should perform as a prologue for the crawl.",
        },
        startingIntents = {
          description = "The intents used to launch the app for the crawl. If none are provided, then the main launcher activity is launched. If some are provided, then only those provided are launched (the main launcher activity must be provided explicitly).",
          items = {
            ["$ref"] = "RoboStartingIntent",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AndroidRuntimeConfiguration = {
      description = "Android configuration that can be selected at the time a test is run.",
      id = "AndroidRuntimeConfiguration",
      properties = {
        locales = {
          description = "The set of available locales.",
          items = {
            ["$ref"] = "Locale",
          },
          type = "array",
        },
        orientations = {
          description = "The set of available orientations.",
          items = {
            ["$ref"] = "Orientation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AndroidTestLoop = {
      description = "A test of an Android Application with a Test Loop. The intent \\ will be implicitly added, since Games is the only user of this api, for the time being.",
      id = "AndroidTestLoop",
      properties = {
        appApk = {
          ["$ref"] = "FileReference",
          description = "The APK for the application under test.",
        },
        appBundle = {
          ["$ref"] = "AppBundle",
          description = "A multi-apk app bundle for the application under test.",
        },
        appPackageId = {
          description = "The java package for the application under test. The default is determined by examining the application's manifest.",
          type = "string",
        },
        scenarioLabels = {
          description = "The list of scenario labels that should be run during the test. The scenario labels should map to labels defined in the application's manifest. For example, player_experience and com.google.test.loops.player_experience add all of the loops labeled in the manifest with the com.google.test.loops.player_experience name to the execution. Scenarios can also be specified in the scenarios field.",
          items = {
            type = "string",
          },
          type = "array",
        },
        scenarios = {
          description = "The list of scenarios that should be run during the test. The default is all test loops, derived from the application's manifest.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    AndroidVersion = {
      description = "A version of the Android OS.",
      id = "AndroidVersion",
      properties = {
        apiLevel = {
          description = "The API level for this Android version. Examples: 18, 19.",
          format = "int32",
          type = "integer",
        },
        codeName = {
          description = "The code name for this Android version. Examples: \"JellyBean\", \"KitKat\".",
          type = "string",
        },
        distribution = {
          ["$ref"] = "Distribution",
          description = "Market share for this version.",
        },
        id = {
          description = "An opaque id for this Android version. Use this id to invoke the TestExecutionService.",
          type = "string",
        },
        releaseDate = {
          ["$ref"] = "Date",
          description = "The date this Android version became available in the market.",
        },
        tags = {
          description = "Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        versionString = {
          description = "A string representing this version of the Android OS. Examples: \"4.3\", \"4.4\".",
          type = "string",
        },
      },
      type = "object",
    },
    Apk = {
      description = "An Android package file to install.",
      id = "Apk",
      properties = {
        location = {
          ["$ref"] = "FileReference",
          description = "The path to an APK to be installed on the device before the test begins.",
        },
        packageName = {
          description = "The java package for the APK to be installed. Value is determined by examining the application's manifest.",
          type = "string",
        },
      },
      type = "object",
    },
    ApkDetail = {
      description = "Android application details based on application manifest and apk archive contents.",
      id = "ApkDetail",
      properties = {
        apkManifest = {
          ["$ref"] = "ApkManifest",
        },
      },
      type = "object",
    },
    ApkManifest = {
      description = "An Android app manifest. See http://developer.android.com/guide/topics/manifest/manifest-intro.html",
      id = "ApkManifest",
      properties = {
        applicationLabel = {
          description = "User-readable name for the application.",
          type = "string",
        },
        intentFilters = {
          items = {
            ["$ref"] = "IntentFilter",
          },
          type = "array",
        },
        maxSdkVersion = {
          description = "Maximum API level on which the application is designed to run.",
          format = "int32",
          type = "integer",
        },
        metadata = {
          description = "Meta-data tags defined in the manifest.",
          items = {
            ["$ref"] = "Metadata",
          },
          type = "array",
        },
        minSdkVersion = {
          description = "Minimum API level required for the application to run.",
          format = "int32",
          type = "integer",
        },
        packageName = {
          description = "Full Java-style package name for this application, e.g. \"com.example.foo\".",
          type = "string",
        },
        targetSdkVersion = {
          description = "Specifies the API Level on which the application is designed to run.",
          format = "int32",
          type = "integer",
        },
        usesFeature = {
          description = "Feature usage tags defined in the manifest.",
          items = {
            ["$ref"] = "UsesFeature",
          },
          type = "array",
        },
        usesPermission = {
          description = "Permissions declared to be used by the application",
          items = {
            type = "string",
          },
          type = "array",
        },
        versionCode = {
          description = "Version number used internally by the app.",
          format = "int64",
          type = "string",
        },
        versionName = {
          description = "Version number shown to users.",
          type = "string",
        },
      },
      type = "object",
    },
    AppBundle = {
      description = "An Android App Bundle file format, containing a BundleConfig.pb file, a base module directory, zero or more dynamic feature module directories. See https://developer.android.com/guide/app-bundle/build for guidance on building App Bundles.",
      id = "AppBundle",
      properties = {
        bundleLocation = {
          ["$ref"] = "FileReference",
          description = ".aab file representing the app bundle under test.",
        },
      },
      type = "object",
    },
    CancelTestMatrixResponse = {
      description = "Response containing the current state of the specified test matrix.",
      id = "CancelTestMatrixResponse",
      properties = {
        testState = {
          description = "The current rolled-up state of the test matrix. If this state is already final, then the cancelation request will have no effect.",
          enum = {
            "TEST_STATE_UNSPECIFIED",
            "VALIDATING",
            "PENDING",
            "RUNNING",
            "FINISHED",
            "ERROR",
            "UNSUPPORTED_ENVIRONMENT",
            "INCOMPATIBLE_ENVIRONMENT",
            "INCOMPATIBLE_ARCHITECTURE",
            "CANCELLED",
            "INVALID",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "The execution or matrix is being validated.",
            "The execution or matrix is waiting for resources to become available.",
            "The execution is currently being processed. Can only be set on an execution.",
            "The execution or matrix has terminated normally. On a matrix this means that the matrix level processing completed normally, but individual executions may be in an ERROR state.",
            "The execution or matrix has stopped because it encountered an infrastructure failure.",
            "The execution was not run because it corresponds to a unsupported environment. Can only be set on an execution.",
            "The execution was not run because the provided inputs are incompatible with the requested environment. Example: requested AndroidVersion is lower than APK's minSdkVersion Can only be set on an execution.",
            "The execution was not run because the provided inputs are incompatible with the requested architecture. Example: requested device does not support running the native code in the supplied APK Can only be set on an execution.",
            "The user cancelled the execution. Can only be set on an execution.",
            "The execution or matrix was not run because the provided inputs are not valid. Examples: input file is not of the expected type, is malformed/corrupt, or was flagged as malware",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ClientInfo = {
      description = "Information about the client which invoked the test.",
      id = "ClientInfo",
      properties = {
        clientInfoDetails = {
          description = "The list of detailed information about client.",
          items = {
            ["$ref"] = "ClientInfoDetail",
          },
          type = "array",
        },
        name = {
          description = "Required. Client name, such as gcloud.",
          type = "string",
        },
      },
      type = "object",
    },
    ClientInfoDetail = {
      description = "Key-value pair of detailed information about the client which invoked the test. Examples: {'Version', '1.0'}, {'Release Track', 'BETA'}.",
      id = "ClientInfoDetail",
      properties = {
        key = {
          description = "Required. The key of detailed client information.",
          type = "string",
        },
        value = {
          description = "Required. The value of detailed client information.",
          type = "string",
        },
      },
      type = "object",
    },
    Date = {
      description = "Represents a whole or partial calendar date, such as a birthday. The time of day and time zone are either specified elsewhere or are insignificant. The date is relative to the Gregorian Calendar. This can represent one of the following: * A full date, with non-zero year, month, and day values. * A month and day, with a zero year (for example, an anniversary). * A year on its own, with a zero month and a zero day. * A year and month, with a zero day (for example, a credit card expiration date). Related types: * google.type.TimeOfDay * google.type.DateTime * google.protobuf.Timestamp",
      id = "Date",
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
    DeviceFile = {
      description = "A single device file description.",
      id = "DeviceFile",
      properties = {
        obbFile = {
          ["$ref"] = "ObbFile",
          description = "A reference to an opaque binary blob file.",
        },
        regularFile = {
          ["$ref"] = "RegularFile",
          description = "A reference to a regular file.",
        },
      },
      type = "object",
    },
    DeviceIpBlock = {
      description = "A single device IP block",
      id = "DeviceIpBlock",
      properties = {
        addedDate = {
          ["$ref"] = "Date",
          description = "The date this block was added to Firebase Test Lab",
        },
        block = {
          description = "An IP address block in CIDR notation eg: 34.68.194.64/29",
          type = "string",
        },
        form = {
          description = "Whether this block is used by physical or virtual devices",
          enum = {
            "DEVICE_FORM_UNSPECIFIED",
            "VIRTUAL",
            "PHYSICAL",
            "EMULATOR",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "Android virtual device using Compute Engine native virtualization. Firebase Test Lab only.",
            "Actual hardware.",
            "Android virtual device using emulator in nested virtualization. Equivalent to Android Studio.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DeviceIpBlockCatalog = {
      description = "List of IP blocks used by the Firebase Test Lab",
      id = "DeviceIpBlockCatalog",
      properties = {
        ipBlocks = {
          description = "The device IP blocks used by Firebase Test Lab",
          items = {
            ["$ref"] = "DeviceIpBlock",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Distribution = {
      description = "Data about the relative number of devices running a given configuration of the Android platform.",
      id = "Distribution",
      properties = {
        marketShare = {
          description = "Output only. The estimated fraction (0-1) of the total market with this configuration.",
          format = "double",
          type = "number",
        },
        measurementTime = {
          description = "Output only. The time this distribution was measured.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    Environment = {
      description = "The environment in which the test is run.",
      id = "Environment",
      properties = {
        androidDevice = {
          ["$ref"] = "AndroidDevice",
          description = "An Android device which must be used with an Android test.",
        },
        iosDevice = {
          ["$ref"] = "IosDevice",
          description = "An iOS device which must be used with an iOS test.",
        },
      },
      type = "object",
    },
    EnvironmentMatrix = {
      description = "The matrix of environments in which the test is to be executed.",
      id = "EnvironmentMatrix",
      properties = {
        androidDeviceList = {
          ["$ref"] = "AndroidDeviceList",
          description = "A list of Android devices; the test will be run only on the specified devices.",
        },
        androidMatrix = {
          ["$ref"] = "AndroidMatrix",
          description = "A matrix of Android devices.",
        },
        iosDeviceList = {
          ["$ref"] = "IosDeviceList",
          description = "A list of iOS devices.",
        },
      },
      type = "object",
    },
    EnvironmentVariable = {
      description = "A key-value pair passed as an environment variable to the test.",
      id = "EnvironmentVariable",
      properties = {
        key = {
          description = "Key for the environment variable.",
          type = "string",
        },
        value = {
          description = "Value for the environment variable.",
          type = "string",
        },
      },
      type = "object",
    },
    FileReference = {
      description = "A reference to a file, used for user inputs.",
      id = "FileReference",
      properties = {
        gcsPath = {
          description = "A path to a file in Google Cloud Storage. Example: gs://build-app-1414623860166/app%40debug-unaligned.apk These paths are expected to be url encoded (percent encoding)",
          type = "string",
        },
      },
      type = "object",
    },
    GetApkDetailsResponse = {
      description = "Response containing the details of the specified Android application APK.",
      id = "GetApkDetailsResponse",
      properties = {
        apkDetail = {
          ["$ref"] = "ApkDetail",
          description = "Details of the Android APK.",
        },
      },
      type = "object",
    },
    GoogleAuto = {
      description = "Enables automatic Google account login. If set, the service automatically generates a Google test account and adds it to the device, before executing the test. Note that test accounts might be reused. Many applications show their full set of functionalities when an account is present on the device. Logging into the device with these generated accounts allows testing more functionalities.",
      id = "GoogleAuto",
      properties = {},
      type = "object",
    },
    GoogleCloudStorage = {
      description = "A storage location within Google cloud storage (GCS).",
      id = "GoogleCloudStorage",
      properties = {
        gcsPath = {
          description = "Required. The path to a directory in GCS that will eventually contain the results for this test. The requesting user must have write access on the bucket in the supplied path.",
          type = "string",
        },
      },
      type = "object",
    },
    IntentFilter = {
      description = "The section of an tag. https://developer.android.com/guide/topics/manifest/intent-filter-element.html",
      id = "IntentFilter",
      properties = {
        actionNames = {
          description = "The android:name value of the tag.",
          items = {
            type = "string",
          },
          type = "array",
        },
        categoryNames = {
          description = "The android:name value of the tag.",
          items = {
            type = "string",
          },
          type = "array",
        },
        mimeType = {
          description = "The android:mimeType value of the tag.",
          type = "string",
        },
      },
      type = "object",
    },
    IosDevice = {
      description = "A single iOS device.",
      id = "IosDevice",
      properties = {
        iosModelId = {
          description = "Required. The id of the iOS device to be used. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
        iosVersionId = {
          description = "Required. The id of the iOS major software version to be used. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
        locale = {
          description = "Required. The locale the test device used for testing. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
        orientation = {
          description = "Required. How the device is oriented during the test. Use the TestEnvironmentDiscoveryService to get supported options.",
          type = "string",
        },
      },
      type = "object",
    },
    IosDeviceCatalog = {
      description = "The currently supported iOS devices.",
      id = "IosDeviceCatalog",
      properties = {
        models = {
          description = "The set of supported iOS device models.",
          items = {
            ["$ref"] = "IosModel",
          },
          type = "array",
        },
        runtimeConfiguration = {
          ["$ref"] = "IosRuntimeConfiguration",
          description = "The set of supported runtime configurations.",
        },
        versions = {
          description = "The set of supported iOS software versions.",
          items = {
            ["$ref"] = "IosVersion",
          },
          type = "array",
        },
        xcodeVersions = {
          description = "The set of supported Xcode versions.",
          items = {
            ["$ref"] = "XcodeVersion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IosDeviceFile = {
      description = "A file or directory to install on the device before the test starts.",
      id = "IosDeviceFile",
      properties = {
        bundleId = {
          description = "The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.",
          type = "string",
        },
        content = {
          ["$ref"] = "FileReference",
          description = "The source file",
        },
        devicePath = {
          description = "Location of the file on the device, inside the app's sandboxed filesystem",
          type = "string",
        },
      },
      type = "object",
    },
    IosDeviceList = {
      description = "A list of iOS device configurations in which the test is to be executed.",
      id = "IosDeviceList",
      properties = {
        iosDevices = {
          description = "Required. A list of iOS devices.",
          items = {
            ["$ref"] = "IosDevice",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IosModel = {
      description = "A description of an iOS device tests may be run on.",
      id = "IosModel",
      properties = {
        deviceCapabilities = {
          description = "Device capabilities. Copied from https://developer.apple.com/library/archive/documentation/DeviceInformation/Reference/iOSDeviceCompatibility/DeviceCompatibilityMatrix/DeviceCompatibilityMatrix.html",
          items = {
            type = "string",
          },
          type = "array",
        },
        formFactor = {
          description = "Whether this device is a phone, tablet, wearable, etc.",
          enum = {
            "DEVICE_FORM_FACTOR_UNSPECIFIED",
            "PHONE",
            "TABLET",
            "WEARABLE",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "This device has the shape of a phone.",
            "This device has the shape of a tablet.",
            "This device has the shape of a watch or other wearable.",
          },
          type = "string",
        },
        id = {
          description = "The unique opaque id for this model. Use this for invoking the TestExecutionService.",
          type = "string",
        },
        name = {
          description = "The human-readable name for this device model. Examples: \"iPhone 4s\", \"iPad Mini 2\".",
          type = "string",
        },
        screenDensity = {
          description = "Screen density in DPI.",
          format = "int32",
          type = "integer",
        },
        screenX = {
          description = "Screen size in the horizontal (X) dimension measured in pixels.",
          format = "int32",
          type = "integer",
        },
        screenY = {
          description = "Screen size in the vertical (Y) dimension measured in pixels.",
          format = "int32",
          type = "integer",
        },
        supportedVersionIds = {
          description = "The set of iOS major software versions this device supports.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tags = {
          description = "Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IosRuntimeConfiguration = {
      description = "iOS configuration that can be selected at the time a test is run.",
      id = "IosRuntimeConfiguration",
      properties = {
        locales = {
          description = "The set of available locales.",
          items = {
            ["$ref"] = "Locale",
          },
          type = "array",
        },
        orientations = {
          description = "The set of available orientations.",
          items = {
            ["$ref"] = "Orientation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IosTestLoop = {
      description = "A test of an iOS application that implements one or more game loop scenarios. This test type accepts an archived application (.ipa file) and a list of integer scenarios that will be executed on the app sequentially.",
      id = "IosTestLoop",
      properties = {
        appBundleId = {
          description = "Output only. The bundle id for the application under test.",
          type = "string",
        },
        appIpa = {
          ["$ref"] = "FileReference",
          description = "Required. The .ipa of the application to test.",
        },
        scenarios = {
          description = "The list of scenarios that should be run during the test. Defaults to the single scenario 0 if unspecified.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IosTestSetup = {
      description = "A description of how to set up an iOS device prior to running the test.",
      id = "IosTestSetup",
      properties = {
        additionalIpas = {
          description = "iOS apps to install in addition to those being directly tested.",
          items = {
            ["$ref"] = "FileReference",
          },
          type = "array",
        },
        networkProfile = {
          description = "The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.",
          type = "string",
        },
        pullDirectories = {
          description = "List of directories on the device to upload to Cloud Storage at the end of the test. Directories should either be in a shared directory (such as /private/var/mobile/Media) or within an accessible directory inside the app's filesystem (such as /Documents) by specifying the bundle ID.",
          items = {
            ["$ref"] = "IosDeviceFile",
          },
          type = "array",
        },
        pushFiles = {
          description = "List of files to push to the device before starting the test.",
          items = {
            ["$ref"] = "IosDeviceFile",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IosVersion = {
      description = "An iOS version.",
      id = "IosVersion",
      properties = {
        id = {
          description = "An opaque id for this iOS version. Use this id to invoke the TestExecutionService.",
          type = "string",
        },
        majorVersion = {
          description = "An integer representing the major iOS version. Examples: \"8\", \"9\".",
          format = "int32",
          type = "integer",
        },
        minorVersion = {
          description = "An integer representing the minor iOS version. Examples: \"1\", \"2\".",
          format = "int32",
          type = "integer",
        },
        supportedXcodeVersionIds = {
          description = "The available Xcode versions for this version.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tags = {
          description = "Tags for this dimension. Examples: \"default\", \"preview\", \"deprecated\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    IosXcTest = {
      description = "A test of an iOS application that uses the XCTest framework. Xcode supports the option to \"build for testing\", which generates an .xctestrun file that contains a test specification (arguments, test methods, etc). This test type accepts a zip file containing the .xctestrun file and the corresponding contents of the Build/Products directory that contains all the binaries needed to run the tests.",
      id = "IosXcTest",
      properties = {
        appBundleId = {
          description = "Output only. The bundle id for the application under test.",
          type = "string",
        },
        testSpecialEntitlements = {
          description = "The option to test special app entitlements. Setting this would re-sign the app having special entitlements with an explicit application-identifier. Currently supports testing aps-environment entitlement.",
          type = "boolean",
        },
        testsZip = {
          ["$ref"] = "FileReference",
          description = "Required. The .zip containing the .xctestrun file and the contents of the DerivedData/Build/Products directory. The .xctestrun file in this zip is ignored if the xctestrun field is specified.",
        },
        xcodeVersion = {
          description = "The Xcode version that should be used for the test. Use the TestEnvironmentDiscoveryService to get supported options. Defaults to the latest Xcode version Firebase Test Lab supports.",
          type = "string",
        },
        xctestrun = {
          ["$ref"] = "FileReference",
          description = "An .xctestrun file that will override the .xctestrun file in the tests zip. Because the .xctestrun file contains environment variables along with test methods to run and/or ignore, this can be useful for sharding tests. Default is taken from the tests zip.",
        },
      },
      type = "object",
    },
    LauncherActivityIntent = {
      description = "Specifies an intent that starts the main launcher activity.",
      id = "LauncherActivityIntent",
      properties = {},
      type = "object",
    },
    Locale = {
      description = "A location/region designation for language.",
      id = "Locale",
      properties = {
        id = {
          description = "The id for this locale. Example: \"en_US\".",
          type = "string",
        },
        name = {
          description = "A human-friendly name for this language/locale. Example: \"English\".",
          type = "string",
        },
        region = {
          description = "A human-friendly string representing the region for this locale. Example: \"United States\". Not present for every locale.",
          type = "string",
        },
        tags = {
          description = "Tags for this dimension. Example: \"default\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ManualSharding = {
      description = "Shards test cases into the specified groups of packages, classes, and/or methods. With manual sharding enabled, specifying test targets via environment_variables or in InstrumentationTest is invalid.",
      id = "ManualSharding",
      properties = {
        testTargetsForShard = {
          description = "Required. Group of packages, classes, and/or test methods to be run for each manually-created shard. You must specify at least one shard if this field is present. When you select one or more physical devices, the number of repeated test_targets_for_shard must be <= 50. When you select one or more ARM virtual devices, it must be <= 100. When you select only x86 virtual devices, it must be <= 500.",
          items = {
            ["$ref"] = "TestTargetsForShard",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Metadata = {
      description = "A tag within a manifest. https://developer.android.com/guide/topics/manifest/meta-data-element.html",
      id = "Metadata",
      properties = {
        name = {
          description = "The android:name value",
          type = "string",
        },
        value = {
          description = "The android:value value",
          type = "string",
        },
      },
      type = "object",
    },
    NetworkConfiguration = {
      id = "NetworkConfiguration",
      properties = {
        downRule = {
          ["$ref"] = "TrafficRule",
          description = "The emulation rule applying to the download traffic.",
        },
        id = {
          description = "The unique opaque id for this network traffic configuration.",
          type = "string",
        },
        upRule = {
          ["$ref"] = "TrafficRule",
          description = "The emulation rule applying to the upload traffic.",
        },
      },
      type = "object",
    },
    NetworkConfigurationCatalog = {
      id = "NetworkConfigurationCatalog",
      properties = {
        configurations = {
          items = {
            ["$ref"] = "NetworkConfiguration",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ObbFile = {
      description = "An opaque binary blob file to install on the device before the test starts.",
      id = "ObbFile",
      properties = {
        obb = {
          ["$ref"] = "FileReference",
          description = "Required. Opaque Binary Blob (OBB) file(s) to install on the device.",
        },
        obbFileName = {
          description = "Required. OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into \\/Android/obb/\\/ on the device.",
          type = "string",
        },
      },
      type = "object",
    },
    Orientation = {
      description = "Screen orientation of the device.",
      id = "Orientation",
      properties = {
        id = {
          description = "The id for this orientation. Example: \"portrait\".",
          type = "string",
        },
        name = {
          description = "A human-friendly name for this orientation. Example: \"portrait\".",
          type = "string",
        },
        tags = {
          description = "Tags for this dimension. Example: \"default\".",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ProvidedSoftwareCatalog = {
      description = "The currently provided software environment on the devices under test.",
      id = "ProvidedSoftwareCatalog",
      properties = {
        androidxOrchestratorVersion = {
          description = "A string representing the current version of AndroidX Test Orchestrator that is used in the environment. The package is available at https://maven.google.com/web/index.html#androidx.test:orchestrator.",
          type = "string",
        },
        orchestratorVersion = {
          description = "Deprecated: Use AndroidX Test Orchestrator going forward. A string representing the current version of Android Test Orchestrator that is used in the environment. The package is available at https://maven.google.com/web/index.html#com.android.support.test:orchestrator.",
          type = "string",
        },
      },
      type = "object",
    },
    RegularFile = {
      description = "A file or directory to install on the device before the test starts.",
      id = "RegularFile",
      properties = {
        content = {
          ["$ref"] = "FileReference",
          description = "Required. The source file.",
        },
        devicePath = {
          description = "Required. Where to put the content on the device. Must be an absolute, allowlisted path. If the file exists, it will be replaced. The following device-side directories and any of their subdirectories are allowlisted: ${EXTERNAL_STORAGE}, /sdcard, or /storage ${ANDROID_DATA}/local/tmp, or /data/local/tmp Specifying a path outside of these directory trees is invalid. The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device and copy the file there. It is strongly advised to use the Environment API in app and test code to access files on the device in a portable way.",
          type = "string",
        },
      },
      type = "object",
    },
    ResultStorage = {
      description = "Locations where the results of running the test are stored.",
      id = "ResultStorage",
      properties = {
        googleCloudStorage = {
          ["$ref"] = "GoogleCloudStorage",
          description = "Required.",
        },
        resultsUrl = {
          description = "Output only. URL to the results in the Firebase Web Console.",
          type = "string",
        },
        toolResultsExecution = {
          ["$ref"] = "ToolResultsExecution",
          description = "Output only. The tool results execution that results are written to.",
        },
        toolResultsHistory = {
          ["$ref"] = "ToolResultsHistory",
          description = "The tool results history that contains the tool results execution that results are written to. If not provided, the service will choose an appropriate value.",
        },
      },
      type = "object",
    },
    RoboDirective = {
      description = "Directs Robo to interact with a specific UI element if it is encountered during the crawl. Currently, Robo can perform text entry or element click.",
      id = "RoboDirective",
      properties = {
        actionType = {
          description = "Required. The type of action that Robo should perform on the specified element.",
          enum = {
            "ACTION_TYPE_UNSPECIFIED",
            "SINGLE_CLICK",
            "ENTER_TEXT",
            "IGNORE",
          },
          enumDescriptions = {
            "DO NOT USE. For proto versioning only.",
            "Direct Robo to click on the specified element. No-op if specified element is not clickable.",
            "Direct Robo to enter text on the specified element. No-op if specified element is not enabled or does not allow text entry.",
            "Direct Robo to ignore interactions with a specific element.",
          },
          type = "string",
        },
        inputText = {
          description = "The text that Robo is directed to set. If left empty, the directive will be treated as a CLICK on the element matching the resource_name.",
          type = "string",
        },
        resourceName = {
          description = "Required. The android resource name of the target UI element. For example, in Java: R.string.foo in xml: @string/foo Only the \"foo\" part is needed. Reference doc: https://developer.android.com/guide/topics/resources/accessing-resources.html",
          type = "string",
        },
      },
      type = "object",
    },
    RoboStartingIntent = {
      description = "Message for specifying the start activities to crawl.",
      id = "RoboStartingIntent",
      properties = {
        launcherActivity = {
          ["$ref"] = "LauncherActivityIntent",
          description = "An intent that starts the main launcher activity.",
        },
        startActivity = {
          ["$ref"] = "StartActivityIntent",
          description = "An intent that starts an activity with specific details.",
        },
        timeout = {
          description = "Timeout in seconds for each intent.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Shard = {
      description = "Output only. Details about the shard.",
      id = "Shard",
      properties = {
        numShards = {
          description = "Output only. The total number of shards.",
          format = "int32",
          type = "integer",
        },
        shardIndex = {
          description = "Output only. The index of the shard among all the shards.",
          format = "int32",
          type = "integer",
        },
        testTargetsForShard = {
          ["$ref"] = "TestTargetsForShard",
          description = "Output only. Test targets for each shard. Only set for manual sharding.",
        },
      },
      type = "object",
    },
    ShardingOption = {
      description = "Options for enabling sharding.",
      id = "ShardingOption",
      properties = {
        manualSharding = {
          ["$ref"] = "ManualSharding",
          description = "Shards test cases into the specified groups of packages, classes, and/or methods.",
        },
        uniformSharding = {
          ["$ref"] = "UniformSharding",
          description = "Uniformly shards test cases given a total number of shards.",
        },
      },
      type = "object",
    },
    StartActivityIntent = {
      description = "A starting intent specified by an action, uri, and categories.",
      id = "StartActivityIntent",
      properties = {
        action = {
          description = "Action name. Required for START_ACTIVITY.",
          type = "string",
        },
        categories = {
          description = "Intent categories to set on the intent.",
          items = {
            type = "string",
          },
          type = "array",
        },
        uri = {
          description = "URI for the action.",
          type = "string",
        },
      },
      type = "object",
    },
    SystraceSetup = {
      id = "SystraceSetup",
      properties = {
        durationSeconds = {
          description = "Systrace duration in seconds. Should be between 1 and 30 seconds. 0 disables systrace.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TestDetails = {
      description = "Additional details about the progress of the running test.",
      id = "TestDetails",
      properties = {
        errorMessage = {
          description = "Output only. If the TestState is ERROR, then this string will contain human-readable details about the error.",
          type = "string",
        },
        progressMessages = {
          description = "Output only. Human-readable, detailed descriptions of the test's progress. For example: \"Provisioning a device\", \"Starting Test\". During the course of execution new data may be appended to the end of progress_messages.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    TestEnvironmentCatalog = {
      description = "A description of a test environment.",
      id = "TestEnvironmentCatalog",
      properties = {
        androidDeviceCatalog = {
          ["$ref"] = "AndroidDeviceCatalog",
          description = "Supported Android devices.",
        },
        deviceIpBlockCatalog = {
          ["$ref"] = "DeviceIpBlockCatalog",
          description = "The IP blocks used by devices in the test environment.",
        },
        iosDeviceCatalog = {
          ["$ref"] = "IosDeviceCatalog",
          description = "Supported iOS devices.",
        },
        networkConfigurationCatalog = {
          ["$ref"] = "NetworkConfigurationCatalog",
          description = "Supported network configurations.",
        },
        softwareCatalog = {
          ["$ref"] = "ProvidedSoftwareCatalog",
          description = "The software test environment provided by TestExecutionService.",
        },
      },
      type = "object",
    },
    TestExecution = {
      description = "A single test executed in a single environment.",
      id = "TestExecution",
      properties = {
        environment = {
          ["$ref"] = "Environment",
          description = "Output only. How the host machine(s) are configured.",
        },
        id = {
          description = "Output only. Unique id set by the service.",
          type = "string",
        },
        matrixId = {
          description = "Output only. Id of the containing TestMatrix.",
          type = "string",
        },
        projectId = {
          description = "Output only. The cloud project that owns the test execution.",
          type = "string",
        },
        shard = {
          ["$ref"] = "Shard",
          description = "Output only. Details about the shard.",
        },
        state = {
          description = "Output only. Indicates the current progress of the test execution (e.g., FINISHED).",
          enum = {
            "TEST_STATE_UNSPECIFIED",
            "VALIDATING",
            "PENDING",
            "RUNNING",
            "FINISHED",
            "ERROR",
            "UNSUPPORTED_ENVIRONMENT",
            "INCOMPATIBLE_ENVIRONMENT",
            "INCOMPATIBLE_ARCHITECTURE",
            "CANCELLED",
            "INVALID",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "The execution or matrix is being validated.",
            "The execution or matrix is waiting for resources to become available.",
            "The execution is currently being processed. Can only be set on an execution.",
            "The execution or matrix has terminated normally. On a matrix this means that the matrix level processing completed normally, but individual executions may be in an ERROR state.",
            "The execution or matrix has stopped because it encountered an infrastructure failure.",
            "The execution was not run because it corresponds to a unsupported environment. Can only be set on an execution.",
            "The execution was not run because the provided inputs are incompatible with the requested environment. Example: requested AndroidVersion is lower than APK's minSdkVersion Can only be set on an execution.",
            "The execution was not run because the provided inputs are incompatible with the requested architecture. Example: requested device does not support running the native code in the supplied APK Can only be set on an execution.",
            "The user cancelled the execution. Can only be set on an execution.",
            "The execution or matrix was not run because the provided inputs are not valid. Examples: input file is not of the expected type, is malformed/corrupt, or was flagged as malware",
          },
          type = "string",
        },
        testDetails = {
          ["$ref"] = "TestDetails",
          description = "Output only. Additional details about the running test.",
        },
        testSpecification = {
          ["$ref"] = "TestSpecification",
          description = "Output only. How to run the test.",
        },
        timestamp = {
          description = "Output only. The time this test execution was initially created.",
          format = "google-datetime",
          type = "string",
        },
        toolResultsStep = {
          ["$ref"] = "ToolResultsStep",
          description = "Output only. Where the results for this execution are written.",
        },
      },
      type = "object",
    },
    TestMatrix = {
      description = "TestMatrix captures all details about a test. It contains the environment configuration, test specification, test executions and overall state and outcome.",
      id = "TestMatrix",
      properties = {
        clientInfo = {
          ["$ref"] = "ClientInfo",
          description = "Information about the client which invoked the test.",
        },
        environmentMatrix = {
          ["$ref"] = "EnvironmentMatrix",
          description = "Required. The devices the tests are being executed on.",
        },
        failFast = {
          description = "If true, only a single attempt at most will be made to run each execution/shard in the matrix. Flaky test attempts are not affected. Normally, 2 or more attempts are made if a potential infrastructure issue is detected. This feature is for latency sensitive workloads. The incidence of execution failures may be significantly greater for fail-fast matrices and support is more limited because of that expectation.",
          type = "boolean",
        },
        flakyTestAttempts = {
          description = "The number of times a TestExecution should be re-attempted if one or more of its test cases fail for any reason. The maximum number of reruns allowed is 10. Default is 0, which implies no reruns.",
          format = "int32",
          type = "integer",
        },
        invalidMatrixDetails = {
          description = "Output only. Describes why the matrix is considered invalid. Only useful for matrices in the INVALID state.",
          enum = {
            "INVALID_MATRIX_DETAILS_UNSPECIFIED",
            "DETAILS_UNAVAILABLE",
            "MALFORMED_APK",
            "MALFORMED_TEST_APK",
            "NO_MANIFEST",
            "NO_PACKAGE_NAME",
            "INVALID_PACKAGE_NAME",
            "TEST_SAME_AS_APP",
            "NO_INSTRUMENTATION",
            "NO_SIGNATURE",
            "INSTRUMENTATION_ORCHESTRATOR_INCOMPATIBLE",
            "NO_TEST_RUNNER_CLASS",
            "NO_LAUNCHER_ACTIVITY",
            "FORBIDDEN_PERMISSIONS",
            "INVALID_ROBO_DIRECTIVES",
            "INVALID_RESOURCE_NAME",
            "INVALID_DIRECTIVE_ACTION",
            "TEST_LOOP_INTENT_FILTER_NOT_FOUND",
            "SCENARIO_LABEL_NOT_DECLARED",
            "SCENARIO_LABEL_MALFORMED",
            "SCENARIO_NOT_DECLARED",
            "DEVICE_ADMIN_RECEIVER",
            "MALFORMED_XC_TEST_ZIP",
            "BUILT_FOR_IOS_SIMULATOR",
            "NO_TESTS_IN_XC_TEST_ZIP",
            "USE_DESTINATION_ARTIFACTS",
            "TEST_NOT_APP_HOSTED",
            "PLIST_CANNOT_BE_PARSED",
            "TEST_ONLY_APK",
            "MALFORMED_IPA",
            "MISSING_URL_SCHEME",
            "MALFORMED_APP_BUNDLE",
            "NO_CODE_APK",
            "INVALID_INPUT_APK",
            "INVALID_APK_PREVIEW_SDK",
            "MATRIX_TOO_LARGE",
            "TEST_QUOTA_EXCEEDED",
            "SERVICE_NOT_ACTIVATED",
            "UNKNOWN_PERMISSION_ERROR",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "The matrix is INVALID, but there are no further details available.",
            "The input app APK could not be parsed.",
            "The input test APK could not be parsed.",
            "The AndroidManifest.xml could not be found.",
            "The APK manifest does not declare a package name.",
            "The APK application ID (aka package name) is invalid. See also https://developer.android.com/studio/build/application-id",
            "The test package and app package are the same.",
            "The test apk does not declare an instrumentation.",
            "The input app apk does not have a signature.",
            "The test runner class specified by user or in the test APK's manifest file is not compatible with Android Test Orchestrator. Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher. Orchestrator can be disabled by using DO_NOT_USE_ORCHESTRATOR OrchestratorOption.",
            "The test APK does not contain the test runner class specified by user or in the manifest file. This can be caused by either of the following reasons: - the user provided a runner class name that's incorrect, or - the test runner isn't built into the test APK (might be in the app APK instead).",
            "A main launcher activity could not be found.",
            "The app declares one or more permissions that are not allowed.",
            "There is a conflict in the provided robo_directives.",
            "There is at least one invalid resource name in the provided robo directives",
            "Invalid definition of action in the robo directives (e.g. a click or ignore action includes an input text field)",
            "There is no test loop intent filter, or the one that is given is not formatted correctly.",
            "The request contains a scenario label that was not declared in the manifest.",
            "There was an error when parsing a label's value.",
            "The request contains a scenario number that was not declared in the manifest.",
            "Device administrator applications are not allowed.",
            "The zipped XCTest was malformed. The zip did not contain a single .xctestrun file and the contents of the DerivedData/Build/Products directory.",
            "The zipped XCTest was built for the iOS simulator rather than for a physical device.",
            "The .xctestrun file did not specify any test targets.",
            "One or more of the test targets defined in the .xctestrun file specifies \"UseDestinationArtifacts\", which is disallowed.",
            "XC tests which run on physical devices must have \"IsAppHostedTestBundle\" == \"true\" in the xctestrun file.",
            "An Info.plist file in the XCTest zip could not be parsed.",
            "The APK is marked as \"testOnly\". Deprecated and not currently used.",
            "The input IPA could not be parsed.",
            "The application doesn't register the game loop URL scheme.",
            "The iOS application bundle (.app) couldn't be processed.",
            "APK contains no code. See also https://developer.android.com/guide/topics/manifest/application-element.html#code",
            "Either the provided input APK path was malformed, the APK file does not exist, or the user does not have permission to access the APK file.",
            "APK is built for a preview SDK which is unsupported",
            "The matrix expanded to contain too many executions.",
            "Not enough test quota to run the executions in this matrix.",
            "A required cloud service api is not activated. See: https://firebase.google.com/docs/test-lab/android/continuous#requirements",
            "There was an unknown permission issue running this test.",
          },
          type = "string",
        },
        outcomeSummary = {
          description = "Output Only. The overall outcome of the test. Only set when the test matrix state is FINISHED.",
          enum = {
            "OUTCOME_SUMMARY_UNSPECIFIED",
            "SUCCESS",
            "FAILURE",
            "INCONCLUSIVE",
            "SKIPPED",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "The test matrix run was successful, for instance: - All the test cases passed. - Robo did not detect a crash of the application under test.",
            "A run failed, for instance: - One or more test case failed. - A test timed out. - The application under test crashed.",
            "Something unexpected happened. The run should still be considered unsuccessful but this is likely a transient problem and re-running the test might be successful.",
            "All tests were skipped, for instance: - All device configurations were incompatible.",
          },
          type = "string",
        },
        projectId = {
          description = "The cloud project that owns the test matrix.",
          type = "string",
        },
        resultStorage = {
          ["$ref"] = "ResultStorage",
          description = "Required. Where the results for the matrix are written.",
        },
        state = {
          description = "Output only. Indicates the current progress of the test matrix.",
          enum = {
            "TEST_STATE_UNSPECIFIED",
            "VALIDATING",
            "PENDING",
            "RUNNING",
            "FINISHED",
            "ERROR",
            "UNSUPPORTED_ENVIRONMENT",
            "INCOMPATIBLE_ENVIRONMENT",
            "INCOMPATIBLE_ARCHITECTURE",
            "CANCELLED",
            "INVALID",
          },
          enumDescriptions = {
            "Do not use. For proto versioning only.",
            "The execution or matrix is being validated.",
            "The execution or matrix is waiting for resources to become available.",
            "The execution is currently being processed. Can only be set on an execution.",
            "The execution or matrix has terminated normally. On a matrix this means that the matrix level processing completed normally, but individual executions may be in an ERROR state.",
            "The execution or matrix has stopped because it encountered an infrastructure failure.",
            "The execution was not run because it corresponds to a unsupported environment. Can only be set on an execution.",
            "The execution was not run because the provided inputs are incompatible with the requested environment. Example: requested AndroidVersion is lower than APK's minSdkVersion Can only be set on an execution.",
            "The execution was not run because the provided inputs are incompatible with the requested architecture. Example: requested device does not support running the native code in the supplied APK Can only be set on an execution.",
            "The user cancelled the execution. Can only be set on an execution.",
            "The execution or matrix was not run because the provided inputs are not valid. Examples: input file is not of the expected type, is malformed/corrupt, or was flagged as malware",
          },
          type = "string",
        },
        testExecutions = {
          description = "Output only. The list of test executions that the service creates for this matrix.",
          items = {
            ["$ref"] = "TestExecution",
          },
          type = "array",
        },
        testMatrixId = {
          description = "Output only. Unique id set by the service.",
          type = "string",
        },
        testSpecification = {
          ["$ref"] = "TestSpecification",
          description = "Required. How to run the test.",
        },
        timestamp = {
          description = "Output only. The time this test matrix was initially created.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    TestSetup = {
      description = "A description of how to set up the Android device prior to running the test.",
      id = "TestSetup",
      properties = {
        account = {
          ["$ref"] = "Account",
          description = "The device will be logged in on this account for the duration of the test.",
        },
        additionalApks = {
          description = "APKs to install in addition to those being directly tested. Currently capped at 100.",
          items = {
            ["$ref"] = "Apk",
          },
          type = "array",
        },
        directoriesToPull = {
          description = "List of directories on the device to upload to GCS at the end of the test; they must be absolute paths under /sdcard, /storage or /data/local/tmp. Path names are restricted to characters a-z A-Z 0-9 _ - . + and / Note: The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device.",
          items = {
            type = "string",
          },
          type = "array",
        },
        dontAutograntPermissions = {
          description = "Whether to prevent all runtime permissions to be granted at app install",
          type = "boolean",
        },
        environmentVariables = {
          description = "Environment variables to set for the test (only applicable for instrumentation tests).",
          items = {
            ["$ref"] = "EnvironmentVariable",
          },
          type = "array",
        },
        filesToPush = {
          description = "List of files to push to the device before starting the test.",
          items = {
            ["$ref"] = "DeviceFile",
          },
          type = "array",
        },
        networkProfile = {
          description = "The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog.",
          type = "string",
        },
        systrace = {
          ["$ref"] = "SystraceSetup",
          description = "Deprecated: Systrace uses Python 2 which has been sunset 2020-01-01. Support of Systrace may stop at any time, at which point no Systrace file will be provided in the results. Systrace configuration for the run. If set a systrace will be taken, starting on test start and lasting for the configured duration. The systrace file thus obtained is put in the results bucket together with the other artifacts from the run.",
        },
      },
      type = "object",
    },
    TestSpecification = {
      description = "A description of how to run the test.",
      id = "TestSpecification",
      properties = {
        androidInstrumentationTest = {
          ["$ref"] = "AndroidInstrumentationTest",
          description = "An Android instrumentation test.",
        },
        androidRoboTest = {
          ["$ref"] = "AndroidRoboTest",
          description = "An Android robo test.",
        },
        androidTestLoop = {
          ["$ref"] = "AndroidTestLoop",
          description = "An Android Application with a Test Loop.",
        },
        disablePerformanceMetrics = {
          description = "Disables performance metrics recording. May reduce test latency.",
          type = "boolean",
        },
        disableVideoRecording = {
          description = "Disables video recording. May reduce test latency.",
          type = "boolean",
        },
        iosTestLoop = {
          ["$ref"] = "IosTestLoop",
          description = "An iOS application with a test loop.",
        },
        iosTestSetup = {
          ["$ref"] = "IosTestSetup",
          description = "Test setup requirements for iOS.",
        },
        iosXcTest = {
          ["$ref"] = "IosXcTest",
          description = "An iOS XCTest, via an .xctestrun file.",
        },
        testSetup = {
          ["$ref"] = "TestSetup",
          description = "Test setup requirements for Android e.g. files to install, bootstrap scripts.",
        },
        testTimeout = {
          description = "Max time a test execution is allowed to run before it is automatically cancelled. The default value is 5 min.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    TestTargetsForShard = {
      description = "Test targets for a shard.",
      id = "TestTargetsForShard",
      properties = {
        testTargets = {
          description = "Group of packages, classes, and/or test methods to be run for each shard. The targets need to be specified in AndroidJUnitRunner argument format. For example, \"package com.my.packages\" \"class com.my.package.MyClass\". The number of test_targets must be greater than 0.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ToolResultsExecution = {
      description = "Represents a tool results execution resource. This has the results of a TestMatrix.",
      id = "ToolResultsExecution",
      properties = {
        executionId = {
          description = "Output only. A tool results execution ID.",
          type = "string",
        },
        historyId = {
          description = "Output only. A tool results history ID.",
          type = "string",
        },
        projectId = {
          description = "Output only. The cloud project that owns the tool results execution.",
          type = "string",
        },
      },
      type = "object",
    },
    ToolResultsHistory = {
      description = "Represents a tool results history resource.",
      id = "ToolResultsHistory",
      properties = {
        historyId = {
          description = "Required. A tool results history ID.",
          type = "string",
        },
        projectId = {
          description = "Required. The cloud project that owns the tool results history.",
          type = "string",
        },
      },
      type = "object",
    },
    ToolResultsStep = {
      description = "Represents a tool results step resource. This has the results of a TestExecution.",
      id = "ToolResultsStep",
      properties = {
        executionId = {
          description = "Output only. A tool results execution ID.",
          type = "string",
        },
        historyId = {
          description = "Output only. A tool results history ID.",
          type = "string",
        },
        projectId = {
          description = "Output only. The cloud project that owns the tool results step.",
          type = "string",
        },
        stepId = {
          description = "Output only. A tool results step ID.",
          type = "string",
        },
      },
      type = "object",
    },
    TrafficRule = {
      description = "Network emulation parameters.",
      id = "TrafficRule",
      properties = {
        bandwidth = {
          description = "Bandwidth in kbits/second.",
          format = "float",
          type = "number",
        },
        burst = {
          description = "Burst size in kbits.",
          format = "float",
          type = "number",
        },
        delay = {
          description = "Packet delay, must be >= 0.",
          format = "google-duration",
          type = "string",
        },
        packetDuplicationRatio = {
          description = "Packet duplication ratio (0.0 - 1.0).",
          format = "float",
          type = "number",
        },
        packetLossRatio = {
          description = "Packet loss ratio (0.0 - 1.0).",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    UniformSharding = {
      description = "Uniformly shards test cases given a total number of shards. For instrumentation tests, it will be translated to \"-e numShard\" and \"-e shardIndex\" AndroidJUnitRunner arguments. With uniform sharding enabled, specifying either of these sharding arguments via `environment_variables` is invalid. Based on the sharding mechanism AndroidJUnitRunner uses, there is no guarantee that test cases will be distributed uniformly across all shards.",
      id = "UniformSharding",
      properties = {
        numShards = {
          description = "Required. The total number of shards to create. This must always be a positive number that is no greater than the total number of test cases. When you select one or more physical devices, the number of shards must be <= 50. When you select one or more ARM virtual devices, it must be <= 100. When you select only x86 virtual devices, it must be <= 500.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    UsesFeature = {
      description = "A tag within a manifest. https://developer.android.com/guide/topics/manifest/uses-feature-element.html",
      id = "UsesFeature",
      properties = {
        isRequired = {
          description = "The android:required value",
          type = "boolean",
        },
        name = {
          description = "The android:name value",
          type = "string",
        },
      },
      type = "object",
    },
    XcodeVersion = {
      description = "An Xcode version that an iOS version is compatible with.",
      id = "XcodeVersion",
      properties = {
        tags = {
          description = "Tags for this Xcode version. Example: \"default\".",
          items = {
            type = "string",
          },
          type = "array",
        },
        version = {
          description = "The id for this version. Example: \"9.2\".",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Testing API",
  version = "v1",
}