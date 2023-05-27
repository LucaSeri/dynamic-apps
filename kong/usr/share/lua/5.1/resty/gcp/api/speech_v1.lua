return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/cloud-platform"] = {
          description = "See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://speech.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Speech",
  description = "Converts audio to text by applying powerful neural network models.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/speech-to-text/docs/quickstart-protocol",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "speech:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://speech.mtls.googleapis.com/",
  name = "speech",
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
    operations = {
      methods = {
        get = {
          description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "GET",
          id = "speech.operations.get",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource.",
              location = "path",
              pattern = "^.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/operations/{+name}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        list = {
          description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
          flatPath = "v1/operations",
          httpMethod = "GET",
          id = "speech.operations.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "The standard list filter.",
              location = "query",
              type = "string",
            },
            name = {
              description = "The name of the operation's parent resource.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "The standard list page size.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "The standard list page token.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/operations",
          response = {
            ["$ref"] = "ListOperationsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    projects = {
      resources = {
        locations = {
          resources = {
            customClasses = {
              methods = {
                create = {
                  description = "Create a custom class.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/customClasses",
                  httpMethod = "POST",
                  id = "speech.projects.locations.customClasses.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource where this custom class will be created. Format: `projects/{project}/locations/{location}/customClasses` Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customClasses",
                  request = {
                    ["$ref"] = "CreateCustomClassRequest",
                  },
                  response = {
                    ["$ref"] = "CustomClass",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a custom class.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/customClasses/{customClassesId}",
                  httpMethod = "DELETE",
                  id = "speech.projects.locations.customClasses.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the custom class to delete. Format: `projects/{project}/locations/{location}/customClasses/{custom_class}` Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/customClasses/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get a custom class.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/customClasses/{customClassesId}",
                  httpMethod = "GET",
                  id = "speech.projects.locations.customClasses.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the custom class to retrieve. Format: `projects/{project}/locations/{location}/customClasses/{custom_class}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/customClasses/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "CustomClass",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List custom classes.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/customClasses",
                  httpMethod = "GET",
                  id = "speech.projects.locations.customClasses.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of custom classes to return. The service may return fewer than this value. If unspecified, at most 50 custom classes will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListCustomClass` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListCustomClass` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of custom classes. Format: `projects/{project}/locations/{location}/customClasses` Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/customClasses",
                  response = {
                    ["$ref"] = "ListCustomClassesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update a custom class.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/customClasses/{customClassesId}",
                  httpMethod = "PATCH",
                  id = "speech.projects.locations.customClasses.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the custom class.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/customClasses/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "CustomClass",
                  },
                  response = {
                    ["$ref"] = "CustomClass",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            phraseSets = {
              methods = {
                create = {
                  description = "Create a set of phrase hints. Each item in the set can be a single word or a multi-word phrase. The items in the PhraseSet are favored by the recognition model when you send a call that includes the PhraseSet.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseSets",
                  httpMethod = "POST",
                  id = "speech.projects.locations.phraseSets.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent resource where this phrase set will be created. Format: `projects/{project}/locations/{location}/phraseSets` Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/phraseSets",
                  request = {
                    ["$ref"] = "CreatePhraseSetRequest",
                  },
                  response = {
                    ["$ref"] = "PhraseSet",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Delete a phrase set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseSets/{phraseSetsId}",
                  httpMethod = "DELETE",
                  id = "speech.projects.locations.phraseSets.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the phrase set to delete. Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/phraseSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Get a phrase set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseSets/{phraseSetsId}",
                  httpMethod = "GET",
                  id = "speech.projects.locations.phraseSets.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the phrase set to retrieve. Format: `projects/{project}/locations/{location}/phraseSets/{phrase_set}` Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/phraseSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "PhraseSet",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "List phrase sets.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseSets",
                  httpMethod = "GET",
                  id = "speech.projects.locations.phraseSets.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    pageSize = {
                      description = "The maximum number of phrase sets to return. The service may return fewer than this value. If unspecified, at most 50 phrase sets will be returned. The maximum value is 1000; values above 1000 will be coerced to 1000.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "A page token, received from a previous `ListPhraseSet` call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to `ListPhraseSet` must match the call that provided the page token.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent, which owns this collection of phrase set. Format: `projects/{project}/locations/{location}` Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/phraseSets",
                  response = {
                    ["$ref"] = "ListPhraseSetResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                patch = {
                  description = "Update a phrase set.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/phraseSets/{phraseSetsId}",
                  httpMethod = "PATCH",
                  id = "speech.projects.locations.phraseSets.patch",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The resource name of the phrase set.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/phraseSets/[^/]+$",
                      required = true,
                      type = "string",
                    },
                    updateMask = {
                      description = "The list of fields to be updated.",
                      format = "google-fieldmask",
                      location = "query",
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  request = {
                    ["$ref"] = "PhraseSet",
                  },
                  response = {
                    ["$ref"] = "PhraseSet",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
          },
        },
      },
    },
    speech = {
      methods = {
        longrunningrecognize = {
          description = "Performs asynchronous speech recognition: receive results via the google.longrunning.Operations interface. Returns either an `Operation.error` or an `Operation.response` which contains a `LongRunningRecognizeResponse` message. For more information on asynchronous speech recognition, see the [how-to](https://cloud.google.com/speech-to-text/docs/async-recognize).",
          flatPath = "v1/speech:longrunningrecognize",
          httpMethod = "POST",
          id = "speech.speech.longrunningrecognize",
          parameterOrder = {},
          parameters = {},
          path = "v1/speech:longrunningrecognize",
          request = {
            ["$ref"] = "LongRunningRecognizeRequest",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        recognize = {
          description = "Performs synchronous speech recognition: receive results after all audio has been sent and processed.",
          flatPath = "v1/speech:recognize",
          httpMethod = "POST",
          id = "speech.speech.recognize",
          parameterOrder = {},
          parameters = {},
          path = "v1/speech:recognize",
          request = {
            ["$ref"] = "RecognizeRequest",
          },
          response = {
            ["$ref"] = "RecognizeResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230106",
  rootUrl = "https://speech.googleapis.com/",
  schemas = {
    ABNFGrammar = {
      id = "ABNFGrammar",
      properties = {
        abnfStrings = {
          description = "All declarations and rules of an ABNF grammar broken up into multiple strings that will end up concatenated.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ClassItem = {
      description = "An item of the class.",
      id = "ClassItem",
      properties = {
        value = {
          description = "The class item's value.",
          type = "string",
        },
      },
      type = "object",
    },
    CreateCustomClassRequest = {
      description = "Message sent by the client for the `CreateCustomClass` method.",
      id = "CreateCustomClassRequest",
      properties = {
        customClass = {
          ["$ref"] = "CustomClass",
          description = "Required. The custom class to create.",
        },
        customClassId = {
          description = "Required. The ID to use for the custom class, which will become the final component of the custom class' resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    CreatePhraseSetRequest = {
      description = "Message sent by the client for the `CreatePhraseSet` method.",
      id = "CreatePhraseSetRequest",
      properties = {
        phraseSet = {
          ["$ref"] = "PhraseSet",
          description = "Required. The phrase set to create.",
        },
        phraseSetId = {
          description = "Required. The ID to use for the phrase set, which will become the final component of the phrase set's resource name. This value should restrict to letters, numbers, and hyphens, with the first character a letter, the last a letter or a number, and be 4-63 characters.",
          type = "string",
        },
      },
      type = "object",
    },
    CustomClass = {
      description = "A set of words or phrases that represents a common concept likely to appear in your audio, for example a list of passenger ship names. CustomClass items can be substituted into placeholders that you set in PhraseSet phrases.",
      id = "CustomClass",
      properties = {
        customClassId = {
          description = "If this custom class is a resource, the custom_class_id is the resource id of the CustomClass. Case sensitive.",
          type = "string",
        },
        items = {
          description = "A collection of class items.",
          items = {
            ["$ref"] = "ClassItem",
          },
          type = "array",
        },
        name = {
          description = "The resource name of the custom class.",
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
    ListCustomClassesResponse = {
      description = "Message returned to the client by the `ListCustomClasses` method.",
      id = "ListCustomClassesResponse",
      properties = {
        customClasses = {
          description = "The custom classes.",
          items = {
            ["$ref"] = "CustomClass",
          },
          type = "array",
        },
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
      },
      type = "object",
    },
    ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPhraseSetResponse = {
      description = "Message returned to the client by the `ListPhraseSet` method.",
      id = "ListPhraseSetResponse",
      properties = {
        nextPageToken = {
          description = "A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.",
          type = "string",
        },
        phraseSets = {
          description = "The phrase set.",
          items = {
            ["$ref"] = "PhraseSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LongRunningRecognizeMetadata = {
      description = "Describes the progress of a long-running `LongRunningRecognize` call. It is included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "LongRunningRecognizeMetadata",
      properties = {
        lastUpdateTime = {
          description = "Time of the most recent processing update.",
          format = "google-datetime",
          type = "string",
        },
        progressPercent = {
          description = "Approximate percentage of audio processed thus far. Guaranteed to be 100 when the audio is fully processed and the results are available.",
          format = "int32",
          type = "integer",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
          type = "string",
        },
        uri = {
          description = "Output only. The URI of the audio file being transcribed. Empty if the audio was sent as byte content.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    LongRunningRecognizeRequest = {
      description = "The top-level message sent by the client for the `LongRunningRecognize` method.",
      id = "LongRunningRecognizeRequest",
      properties = {
        audio = {
          ["$ref"] = "RecognitionAudio",
          description = "Required. The audio data to be recognized.",
        },
        config = {
          ["$ref"] = "RecognitionConfig",
          description = "Required. Provides information to the recognizer that specifies how to process the request.",
        },
        outputConfig = {
          ["$ref"] = "TranscriptOutputConfig",
          description = "Optional. Specifies an optional destination for the recognition results.",
        },
      },
      type = "object",
    },
    LongRunningRecognizeResponse = {
      description = "The only message returned to the client by the `LongRunningRecognize` method. It contains the result as zero or more sequential `SpeechRecognitionResult` messages. It is included in the `result.response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "LongRunningRecognizeResponse",
      properties = {
        outputConfig = {
          ["$ref"] = "TranscriptOutputConfig",
          description = "Original output config if present in the request.",
        },
        outputError = {
          ["$ref"] = "Status",
          description = "If the transcript output fails this field contains the relevant error.",
        },
        requestId = {
          description = "The ID associated with the request. This is a unique ID specific only to the given request.",
          format = "int64",
          type = "string",
        },
        results = {
          description = "Sequential list of transcription results corresponding to sequential portions of audio.",
          items = {
            ["$ref"] = "SpeechRecognitionResult",
          },
          type = "array",
        },
        speechAdaptationInfo = {
          ["$ref"] = "SpeechAdaptationInfo",
          description = "Provides information on speech adaptation behavior in response",
        },
        totalBilledTime = {
          description = "When available, billed audio seconds for the corresponding request.",
          format = "google-duration",
          type = "string",
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
          description = "The error result of the operation in case of failure or cancellation.",
        },
        metadata = {
          additionalProperties = {
            description = "Properties of the object. Contains field @type with type URL.",
            type = "any",
          },
          description = "Service-specific metadata associated with the operation. It typically contains progress information and common metadata such as create time. Some services might not provide such metadata. Any method that returns a long-running operation should document the metadata type, if any.",
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
          description = "The normal response of the operation in case of success. If the original method returns no data on success, such as `Delete`, the response is `google.protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`, the response should be the resource. For other methods, the response should have the type `XxxResponse`, where `Xxx` is the original method name. For example, if the original method name is `TakeSnapshot()`, the inferred response type is `TakeSnapshotResponse`.",
          type = "object",
        },
      },
      type = "object",
    },
    Phrase = {
      description = "A phrases containing words and phrase \"hints\" so that the speech recognition is more likely to recognize them. This can be used to improve the accuracy for specific words and phrases, for example, if specific commands are typically spoken by the user. This can also be used to add additional words to the vocabulary of the recognizer. See [usage limits](https://cloud.google.com/speech-to-text/quotas#content). List items can also include pre-built or custom classes containing groups of words that represent common concepts that occur in natural language. For example, rather than providing a phrase hint for every month of the year (e.g. \"i was born in january\", \"i was born in febuary\", ...), use the pre-built `$MONTH` class improves the likelihood of correctly transcribing audio that includes months (e.g. \"i was born in $month\"). To refer to pre-built classes, use the class' symbol prepended with `$` e.g. `$MONTH`. To refer to custom classes that were defined inline in the request, set the class's `custom_class_id` to a string unique to all class resources and inline classes. Then use the class' id wrapped in $`{...}` e.g. \"${my-months}\". To refer to custom classes resources, use the class' id wrapped in `${}` (e.g. `${my-months}`). Speech-to-Text supports three locations: `global`, `us` (US North America), and `eu` (Europe). If you are calling the `speech.googleapis.com` endpoint, use the `global` location. To specify a region, use a [regional endpoint](/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.",
      id = "Phrase",
      properties = {
        boost = {
          description = "Hint Boost. Overrides the boost set at the phrase set level. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 and 20. We recommend using a binary search approach to finding the optimal value for your use case. Speech recognition will skip PhraseSets with a boost value of 0.",
          format = "float",
          type = "number",
        },
        value = {
          description = "The phrase itself.",
          type = "string",
        },
      },
      type = "object",
    },
    PhraseSet = {
      description = "Provides \"hints\" to the speech recognizer to favor specific words and phrases in the results.",
      id = "PhraseSet",
      properties = {
        boost = {
          description = "Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 (exclusive) and 20. We recommend using a binary search approach to finding the optimal value for your use case. Speech recognition will skip PhraseSets with a boost value of 0.",
          format = "float",
          type = "number",
        },
        name = {
          description = "The resource name of the phrase set.",
          type = "string",
        },
        phrases = {
          description = "A list of word and phrases.",
          items = {
            ["$ref"] = "Phrase",
          },
          type = "array",
        },
      },
      type = "object",
    },
    RecognitionAudio = {
      description = "Contains audio data in the encoding specified in the `RecognitionConfig`. Either `content` or `uri` must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. See [content limits](https://cloud.google.com/speech-to-text/quotas#content).",
      id = "RecognitionAudio",
      properties = {
        content = {
          description = "The audio data bytes encoded as specified in `RecognitionConfig`. Note: as with all bytes fields, proto buffers use a pure binary representation, whereas JSON representations use base64.",
          format = "byte",
          type = "string",
        },
        uri = {
          description = "URI that points to a file that contains audio data bytes as specified in `RecognitionConfig`. The file must not be compressed (for example, gzip). Currently, only Google Cloud Storage URIs are supported, which must be specified in the following format: `gs://bucket_name/object_name` (other URI formats return google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request URIs](https://cloud.google.com/storage/docs/reference-uris).",
          type = "string",
        },
      },
      type = "object",
    },
    RecognitionConfig = {
      description = "Provides information to the recognizer that specifies how to process the request.",
      id = "RecognitionConfig",
      properties = {
        adaptation = {
          ["$ref"] = "SpeechAdaptation",
          description = "Speech adaptation configuration improves the accuracy of speech recognition. For more information, see the [speech adaptation](https://cloud.google.com/speech-to-text/docs/adaptation) documentation. When speech adaptation is set it supersedes the `speech_contexts` field.",
        },
        alternativeLanguageCodes = {
          description = "A list of up to 3 additional [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags, listing possible alternative languages of the supplied audio. See [Language Support](https://cloud.google.com/speech-to-text/docs/languages) for a list of the currently supported language codes. If alternative languages are listed, recognition result will contain recognition in the most likely language detected including the main language_code. The recognition result will include the language tag of the language detected in the audio. Note: This feature is only supported for Voice Command and Voice Search use cases and performance may vary for other use cases (e.g., phone call transcription).",
          items = {
            type = "string",
          },
          type = "array",
        },
        audioChannelCount = {
          description = "The number of channels in the input audio data. ONLY set this for MULTI-CHANNEL recognition. Valid values for LINEAR16, OGG_OPUS and FLAC are `1`-`8`. Valid value for MULAW, AMR, AMR_WB and SPEEX_WITH_HEADER_BYTE is only `1`. If `0` or omitted, defaults to one channel (mono). Note: We only recognize the first channel by default. To perform independent recognition on each channel set `enable_separate_recognition_per_channel` to 'true'.",
          format = "int32",
          type = "integer",
        },
        diarizationConfig = {
          ["$ref"] = "SpeakerDiarizationConfig",
          description = "Config to enable speaker diarization and set additional parameters to make diarization better suited for your application. Note: When this is enabled, we send all the words from the beginning of the audio for the top alternative in every consecutive STREAMING responses. This is done in order to improve our speaker tags as our models learn to identify the speakers in the conversation over time. For non-streaming requests, the diarization results will be provided only in the top alternative of the FINAL SpeechRecognitionResult.",
        },
        enableAutomaticPunctuation = {
          description = "If 'true', adds punctuation to recognition result hypotheses. This feature is only available in select languages. Setting this for requests in other languages has no effect at all. The default 'false' value does not add punctuation to result hypotheses.",
          type = "boolean",
        },
        enableSeparateRecognitionPerChannel = {
          description = "This needs to be set to `true` explicitly and `audio_channel_count` > 1 to get each channel recognized separately. The recognition result will contain a `channel_tag` field to state which channel that result belongs to. If this is not true, we will only recognize the first channel. The request is billed cumulatively for all channels recognized: `audio_channel_count` multiplied by the length of the audio.",
          type = "boolean",
        },
        enableSpokenEmojis = {
          description = "The spoken emoji behavior for the call If not set, uses default behavior based on model of choice If 'true', adds spoken emoji formatting for the request. This will replace spoken emojis with the corresponding Unicode symbols in the final transcript. If 'false', spoken emojis are not replaced.",
          type = "boolean",
        },
        enableSpokenPunctuation = {
          description = "The spoken punctuation behavior for the call If not set, uses default behavior based on model of choice e.g. command_and_search will enable spoken punctuation by default If 'true', replaces spoken punctuation with the corresponding symbols in the request. For example, \"how are you question mark\" becomes \"how are you?\". See https://cloud.google.com/speech-to-text/docs/spoken-punctuation for support. If 'false', spoken punctuation is not replaced.",
          type = "boolean",
        },
        enableWordConfidence = {
          description = "If `true`, the top result includes a list of words and the confidence for those words. If `false`, no word-level confidence information is returned. The default is `false`.",
          type = "boolean",
        },
        enableWordTimeOffsets = {
          description = "If `true`, the top result includes a list of words and the start and end time offsets (timestamps) for those words. If `false`, no word-level time offset information is returned. The default is `false`.",
          type = "boolean",
        },
        encoding = {
          description = "Encoding of audio data sent in all `RecognitionAudio` messages. This field is optional for `FLAC` and `WAV` audio files and required for all other audio formats. For details, see AudioEncoding.",
          enum = {
            "ENCODING_UNSPECIFIED",
            "LINEAR16",
            "FLAC",
            "MULAW",
            "AMR",
            "AMR_WB",
            "OGG_OPUS",
            "SPEEX_WITH_HEADER_BYTE",
            "WEBM_OPUS",
          },
          enumDescriptions = {
            "Not specified.",
            "Uncompressed 16-bit signed little-endian samples (Linear PCM).",
            "`FLAC` (Free Lossless Audio Codec) is the recommended encoding because it is lossless--therefore recognition is not compromised--and requires only about half the bandwidth of `LINEAR16`. `FLAC` stream encoding supports 16-bit and 24-bit samples, however, not all fields in `STREAMINFO` are supported.",
            "8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law.",
            "Adaptive Multi-Rate Narrowband codec. `sample_rate_hertz` must be 8000.",
            "Adaptive Multi-Rate Wideband codec. `sample_rate_hertz` must be 16000.",
            "Opus encoded audio frames in Ogg container ([OggOpus](https://wiki.xiph.org/OggOpus)). `sample_rate_hertz` must be one of 8000, 12000, 16000, 24000, or 48000.",
            "Although the use of lossy encodings is not recommended, if a very low bitrate encoding is required, `OGG_OPUS` is highly preferred over Speex encoding. The [Speex](https://speex.org/) encoding supported by Cloud Speech API has a header byte in each block, as in MIME type `audio/x-speex-with-header-byte`. It is a variant of the RTP Speex encoding defined in [RFC 5574](https://tools.ietf.org/html/rfc5574). The stream is a sequence of blocks, one block per RTP packet. Each block starts with a byte containing the length of the block, in bytes, followed by one or more frames of Speex data, padded to an integral number of bytes (octets) as specified in RFC 5574. In other words, each RTP header is replaced with a single byte containing the block length. Only Speex wideband is supported. `sample_rate_hertz` must be 16000.",
            "Opus encoded audio frames in WebM container ([OggOpus](https://wiki.xiph.org/OggOpus)). `sample_rate_hertz` must be one of 8000, 12000, 16000, 24000, or 48000.",
          },
          type = "string",
        },
        languageCode = {
          description = "Required. The language of the supplied audio as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: \"en-US\". See [Language Support](https://cloud.google.com/speech-to-text/docs/languages) for a list of the currently supported language codes.",
          type = "string",
        },
        maxAlternatives = {
          description = "Maximum number of recognition hypotheses to be returned. Specifically, the maximum number of `SpeechRecognitionAlternative` messages within each `SpeechRecognitionResult`. The server may return fewer than `max_alternatives`. Valid values are `0`-`30`. A value of `0` or `1` will return a maximum of one. If omitted, will return a maximum of one.",
          format = "int32",
          type = "integer",
        },
        metadata = {
          ["$ref"] = "RecognitionMetadata",
          description = "Metadata regarding this request.",
        },
        model = {
          description = "Which model to select for the given request. Select the model best suited to your domain to get best results. If a model is not explicitly specified, then we auto-select a model based on the parameters in the RecognitionConfig. *Model* *Description* latest_long Best for long form content like media or conversation. latest_short Best for short form content like commands or single shot directed speech. command_and_search Best for short queries such as voice commands or voice search. phone_call Best for audio that originated from a phone call (typically recorded at an 8khz sampling rate). video Best for audio that originated from video or includes multiple speakers. Ideally the audio is recorded at a 16khz or greater sampling rate. This is a premium model that costs more than the standard rate. default Best for audio that is not one of the specific audio models. For example, long-form audio. Ideally the audio is high-fidelity, recorded at a 16khz or greater sampling rate. medical_conversation Best for audio that originated from a conversation between a medical provider and patient. medical_dictation Best for audio that originated from dictation notes by a medical provider. ",
          type = "string",
        },
        profanityFilter = {
          description = "If set to `true`, the server will attempt to filter out profanities, replacing all but the initial character in each filtered word with asterisks, e.g. \"f***\". If set to `false` or omitted, profanities won't be filtered out.",
          type = "boolean",
        },
        sampleRateHertz = {
          description = "Sample rate in Hertz of the audio data sent in all `RecognitionAudio` messages. Valid values are: 8000-48000. 16000 is optimal. For best results, set the sampling rate of the audio source to 16000 Hz. If that's not possible, use the native sample rate of the audio source (instead of re-sampling). This field is optional for FLAC and WAV audio files, but is required for all other audio formats. For details, see AudioEncoding.",
          format = "int32",
          type = "integer",
        },
        speechContexts = {
          description = "Array of SpeechContext. A means to provide context to assist the speech recognition. For more information, see [speech adaptation](https://cloud.google.com/speech-to-text/docs/adaptation).",
          items = {
            ["$ref"] = "SpeechContext",
          },
          type = "array",
        },
        useEnhanced = {
          description = "Set to true to use an enhanced model for speech recognition. If `use_enhanced` is set to true and the `model` field is not set, then an appropriate enhanced model is chosen if an enhanced model exists for the audio. If `use_enhanced` is true and an enhanced version of the specified model does not exist, then the speech is recognized using the standard version of the specified model.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RecognitionMetadata = {
      description = "Description of audio data to be recognized.",
      id = "RecognitionMetadata",
      properties = {
        audioTopic = {
          description = "Description of the content. Eg. \"Recordings of federal supreme court hearings from 2012\".",
          type = "string",
        },
        industryNaicsCodeOfAudio = {
          description = "The industry vertical to which this speech recognition request most closely applies. This is most indicative of the topics contained in the audio. Use the 6-digit NAICS code to identify the industry vertical - see https://www.naics.com/search/.",
          format = "uint32",
          type = "integer",
        },
        interactionType = {
          description = "The use case most closely describing the audio content to be recognized.",
          enum = {
            "INTERACTION_TYPE_UNSPECIFIED",
            "DISCUSSION",
            "PRESENTATION",
            "PHONE_CALL",
            "VOICEMAIL",
            "PROFESSIONALLY_PRODUCED",
            "VOICE_SEARCH",
            "VOICE_COMMAND",
            "DICTATION",
          },
          enumDescriptions = {
            "Use case is either unknown or is something other than one of the other values below.",
            "Multiple people in a conversation or discussion. For example in a meeting with two or more people actively participating. Typically all the primary people speaking would be in the same room (if not, see PHONE_CALL)",
            "One or more persons lecturing or presenting to others, mostly uninterrupted.",
            "A phone-call or video-conference in which two or more people, who are not in the same room, are actively participating.",
            "A recorded message intended for another person to listen to.",
            "Professionally produced audio (eg. TV Show, Podcast).",
            "Transcribe spoken questions and queries into text.",
            "Transcribe voice commands, such as for controlling a device.",
            "Transcribe speech to text to create a written document, such as a text-message, email or report.",
          },
          type = "string",
        },
        microphoneDistance = {
          description = "The audio type that most closely describes the audio being recognized.",
          enum = {
            "MICROPHONE_DISTANCE_UNSPECIFIED",
            "NEARFIELD",
            "MIDFIELD",
            "FARFIELD",
          },
          enumDescriptions = {
            "Audio type is not known.",
            "The audio was captured from a closely placed microphone. Eg. phone, dictaphone, or handheld microphone. Generally if there speaker is within 1 meter of the microphone.",
            "The speaker if within 3 meters of the microphone.",
            "The speaker is more than 3 meters away from the microphone.",
          },
          type = "string",
        },
        originalMediaType = {
          description = "The original media the speech was recorded on.",
          enum = {
            "ORIGINAL_MEDIA_TYPE_UNSPECIFIED",
            "AUDIO",
            "VIDEO",
          },
          enumDescriptions = {
            "Unknown original media type.",
            "The speech data is an audio recording.",
            "The speech data originally recorded on a video.",
          },
          type = "string",
        },
        originalMimeType = {
          description = "Mime type of the original audio file. For example `audio/m4a`, `audio/x-alaw-basic`, `audio/mp3`, `audio/3gpp`. A list of possible audio mime types is maintained at http://www.iana.org/assignments/media-types/media-types.xhtml#audio",
          type = "string",
        },
        recordingDeviceName = {
          description = "The device used to make the recording. Examples 'Nexus 5X' or 'Polycom SoundStation IP 6000' or 'POTS' or 'VoIP' or 'Cardioid Microphone'.",
          type = "string",
        },
        recordingDeviceType = {
          description = "The type of device the speech was recorded with.",
          enum = {
            "RECORDING_DEVICE_TYPE_UNSPECIFIED",
            "SMARTPHONE",
            "PC",
            "PHONE_LINE",
            "VEHICLE",
            "OTHER_OUTDOOR_DEVICE",
            "OTHER_INDOOR_DEVICE",
          },
          enumDescriptions = {
            "The recording device is unknown.",
            "Speech was recorded on a smartphone.",
            "Speech was recorded using a personal computer or tablet.",
            "Speech was recorded over a phone line.",
            "Speech was recorded in a vehicle.",
            "Speech was recorded outdoors.",
            "Speech was recorded indoors.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    RecognizeRequest = {
      description = "The top-level message sent by the client for the `Recognize` method.",
      id = "RecognizeRequest",
      properties = {
        audio = {
          ["$ref"] = "RecognitionAudio",
          description = "Required. The audio data to be recognized.",
        },
        config = {
          ["$ref"] = "RecognitionConfig",
          description = "Required. Provides information to the recognizer that specifies how to process the request.",
        },
      },
      type = "object",
    },
    RecognizeResponse = {
      description = "The only message returned to the client by the `Recognize` method. It contains the result as zero or more sequential `SpeechRecognitionResult` messages.",
      id = "RecognizeResponse",
      properties = {
        requestId = {
          description = "The ID associated with the request. This is a unique ID specific only to the given request.",
          format = "int64",
          type = "string",
        },
        results = {
          description = "Sequential list of transcription results corresponding to sequential portions of audio.",
          items = {
            ["$ref"] = "SpeechRecognitionResult",
          },
          type = "array",
        },
        speechAdaptationInfo = {
          ["$ref"] = "SpeechAdaptationInfo",
          description = "Provides information on adaptation behavior in response",
        },
        totalBilledTime = {
          description = "When available, billed audio seconds for the corresponding request.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    SpeakerDiarizationConfig = {
      description = "Config to enable speaker diarization.",
      id = "SpeakerDiarizationConfig",
      properties = {
        enableSpeakerDiarization = {
          description = "If 'true', enables speaker detection for each recognized word in the top alternative of the recognition result using a speaker_tag provided in the WordInfo.",
          type = "boolean",
        },
        maxSpeakerCount = {
          description = "Maximum number of speakers in the conversation. This range gives you more flexibility by allowing the system to automatically determine the correct number of speakers. If not set, the default value is 6.",
          format = "int32",
          type = "integer",
        },
        minSpeakerCount = {
          description = "Minimum number of speakers in the conversation. This range gives you more flexibility by allowing the system to automatically determine the correct number of speakers. If not set, the default value is 2.",
          format = "int32",
          type = "integer",
        },
        speakerTag = {
          description = "Output only. Unused.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    SpeechAdaptation = {
      description = "Speech adaptation configuration.",
      id = "SpeechAdaptation",
      properties = {
        abnfGrammar = {
          ["$ref"] = "ABNFGrammar",
          description = "Augmented Backus-Naur form (ABNF) is a standardized grammar notation comprised by a set of derivation rules. See specifications: https://www.w3.org/TR/speech-grammar",
        },
        customClasses = {
          description = "A collection of custom classes. To specify the classes inline, leave the class' `name` blank and fill in the rest of its fields, giving it a unique `custom_class_id`. Refer to the inline defined class in phrase hints by its `custom_class_id`.",
          items = {
            ["$ref"] = "CustomClass",
          },
          type = "array",
        },
        phraseSetReferences = {
          description = "A collection of phrase set resource names to use.",
          items = {
            type = "string",
          },
          type = "array",
        },
        phraseSets = {
          description = "A collection of phrase sets. To specify the hints inline, leave the phrase set's `name` blank and fill in the rest of its fields. Any phrase set can use any custom class.",
          items = {
            ["$ref"] = "PhraseSet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SpeechAdaptationInfo = {
      description = "Information on speech adaptation use in results",
      id = "SpeechAdaptationInfo",
      properties = {
        adaptationTimeout = {
          description = "Whether there was a timeout when applying speech adaptation. If true, adaptation had no effect in the response transcript.",
          type = "boolean",
        },
        timeoutMessage = {
          description = "If set, returns a message specifying which part of the speech adaptation request timed out.",
          type = "string",
        },
      },
      type = "object",
    },
    SpeechContext = {
      description = "Provides \"hints\" to the speech recognizer to favor specific words and phrases in the results.",
      id = "SpeechContext",
      properties = {
        boost = {
          description = "Hint Boost. Positive value will increase the probability that a specific phrase will be recognized over other similar sounding phrases. The higher the boost, the higher the chance of false positive recognition as well. Negative boost values would correspond to anti-biasing. Anti-biasing is not enabled, so negative boost will simply be ignored. Though `boost` can accept a wide range of positive values, most use cases are best served with values between 0 and 20. We recommend using a binary search approach to finding the optimal value for your use case.",
          format = "float",
          type = "number",
        },
        phrases = {
          description = "A list of strings containing words and phrases \"hints\" so that the speech recognition is more likely to recognize them. This can be used to improve the accuracy for specific words and phrases, for example, if specific commands are typically spoken by the user. This can also be used to add additional words to the vocabulary of the recognizer. See [usage limits](https://cloud.google.com/speech-to-text/quotas#content). List items can also be set to classes for groups of words that represent common concepts that occur in natural language. For example, rather than providing phrase hints for every month of the year, using the $MONTH class improves the likelihood of correctly transcribing audio that includes months.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SpeechRecognitionAlternative = {
      description = "Alternative hypotheses (a.k.a. n-best list).",
      id = "SpeechRecognitionAlternative",
      properties = {
        confidence = {
          description = "The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative of a non-streaming result or, of a streaming result where `is_final=true`. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          type = "number",
        },
        transcript = {
          description = "Transcript text representing the words that the user spoke. In languages that use spaces to separate words, the transcript might have a leading space if it isn't the first result. You can concatenate each result to obtain the full transcript without using a separator.",
          type = "string",
        },
        words = {
          description = "A list of word-specific information for each recognized word. Note: When `enable_speaker_diarization` is true, you will see all the words from the beginning of the audio.",
          items = {
            ["$ref"] = "WordInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    SpeechRecognitionResult = {
      description = "A speech recognition result corresponding to a portion of the audio.",
      id = "SpeechRecognitionResult",
      properties = {
        alternatives = {
          description = "May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.",
          items = {
            ["$ref"] = "SpeechRecognitionAlternative",
          },
          type = "array",
        },
        channelTag = {
          description = "For multi-channel audio, this is the channel number corresponding to the recognized result for the audio from that channel. For audio_channel_count = N, its output values can range from '1' to 'N'.",
          format = "int32",
          type = "integer",
        },
        languageCode = {
          description = "Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.",
          readOnly = true,
          type = "string",
        },
        resultEndTime = {
          description = "Time offset of the end of this result relative to the beginning of the audio.",
          format = "google-duration",
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
    TranscriptOutputConfig = {
      description = "Specifies an optional destination for the recognition results.",
      id = "TranscriptOutputConfig",
      properties = {
        gcsUri = {
          description = "Specifies a Cloud Storage URI for the recognition results. Must be specified in the format: `gs://bucket_name/object_name`, and the bucket must already exist.",
          type = "string",
        },
      },
      type = "object",
    },
    WordInfo = {
      description = "Word-specific information for recognized words.",
      id = "WordInfo",
      properties = {
        confidence = {
          description = "The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative of a non-streaming result or, of a streaming result where `is_final=true`. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          type = "number",
        },
        endTime = {
          description = "Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.",
          format = "google-duration",
          type = "string",
        },
        speakerTag = {
          description = "Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from '1' to diarization_speaker_count. speaker_tag is set if enable_speaker_diarization = 'true' and only in the top alternative.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        startTime = {
          description = "Time offset relative to the beginning of the audio, and corresponding to the start of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.",
          format = "google-duration",
          type = "string",
        },
        word = {
          description = "The word corresponding to this set of information.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Speech-to-Text API",
  version = "v1",
  version_module = true,
}