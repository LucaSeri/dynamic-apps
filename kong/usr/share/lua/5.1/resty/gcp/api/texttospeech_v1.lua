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
  baseUrl = "https://texttospeech.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Texttospeech",
  description = "Synthesizes natural-sounding speech by applying powerful neural network models.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/text-to-speech/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "texttospeech:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://texttospeech.mtls.googleapis.com/",
  name = "texttospeech",
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
        cancel = {
          description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
          flatPath = "v1/operations/{operationsId}:cancel",
          httpMethod = "POST",
          id = "texttospeech.operations.cancel",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be cancelled.",
              location = "path",
              pattern = "^operations/.*$",
              required = true,
              type = "string",
            },
          },
          path = "v1/{+name}:cancel",
          request = {
            ["$ref"] = "CancelOperationRequest",
          },
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
        delete = {
          description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
          flatPath = "v1/operations/{operationsId}",
          httpMethod = "DELETE",
          id = "texttospeech.operations.delete",
          parameterOrder = {
            "name",
          },
          parameters = {
            name = {
              description = "The name of the operation resource to be deleted.",
              location = "path",
              pattern = "^operations/.*$",
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
      },
    },
    projects = {
      resources = {
        locations = {
          methods = {
            synthesizeLongAudio = {
              description = "Synthesizes long form text asynchronously.",
              flatPath = "v1/projects/{projectsId}/locations/{locationsId}:synthesizeLongAudio",
              httpMethod = "POST",
              id = "texttospeech.projects.locations.synthesizeLongAudio",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "The resource states of the request in the form of `projects/*/locations/*/voices/*`.",
                  location = "path",
                  pattern = "^projects/[^/]+/locations/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}:synthesizeLongAudio",
              request = {
                ["$ref"] = "SynthesizeLongAudioRequest",
              },
              response = {
                ["$ref"] = "Operation",
              },
              scopes = {
                "https://www.googleapis.com/auth/cloud-platform",
              },
            },
          },
          resources = {
            operations = {
              methods = {
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "texttospeech.projects.locations.operations.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "texttospeech.projects.locations.operations.list",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    filter = {
                      description = "The standard list filter.",
                      location = "query",
                      type = "string",
                    },
                    name = {
                      description = "The name of the operation's parent resource.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
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
                  path = "v1/{+name}/operations",
                  response = {
                    ["$ref"] = "ListOperationsResponse",
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
    text = {
      methods = {
        synthesize = {
          description = "Synthesizes speech synchronously: receive results after all text input has been processed.",
          flatPath = "v1/text:synthesize",
          httpMethod = "POST",
          id = "texttospeech.text.synthesize",
          parameterOrder = {},
          parameters = {},
          path = "v1/text:synthesize",
          request = {
            ["$ref"] = "SynthesizeSpeechRequest",
          },
          response = {
            ["$ref"] = "SynthesizeSpeechResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
    voices = {
      methods = {
        list = {
          description = "Returns a list of Voice supported for synthesis.",
          flatPath = "v1/voices",
          httpMethod = "GET",
          id = "texttospeech.voices.list",
          parameterOrder = {},
          parameters = {
            languageCode = {
              description = "Optional. Recommended. [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. If not specified, the API will return all supported voices. If specified, the ListVoices call will only return voices that can be used to synthesize this language_code. For example, if you specify `\"en-NZ\"`, all `\"en-NZ\"` voices will be returned. If you specify `\"no\"`, both `\"no-\\*\"` (Norwegian) and `\"nb-\\*\"` (Norwegian Bokmal) voices will be returned.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/voices",
          response = {
            ["$ref"] = "ListVoicesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://texttospeech.googleapis.com/",
  schemas = {
    AudioConfig = {
      description = "Description of audio data to be synthesized.",
      id = "AudioConfig",
      properties = {
        audioEncoding = {
          description = "Required. The format of the audio byte stream.",
          enum = {
            "AUDIO_ENCODING_UNSPECIFIED",
            "LINEAR16",
            "MP3",
            "OGG_OPUS",
            "MULAW",
            "ALAW",
          },
          enumDescriptions = {
            "Not specified. Will return result google.rpc.Code.INVALID_ARGUMENT.",
            "Uncompressed 16-bit signed little-endian samples (Linear PCM). Audio content returned as LINEAR16 also contains a WAV header.",
            "MP3 audio at 32kbps.",
            "Opus encoded audio wrapped in an ogg container. The result will be a file which can be played natively on Android, and in browsers (at least Chrome and Firefox). The quality of the encoding is considerably higher than MP3 while using approximately the same bitrate.",
            "8-bit samples that compand 14-bit audio samples using G.711 PCMU/mu-law. Audio content returned as MULAW also contains a WAV header.",
            "8-bit samples that compand 14-bit audio samples using G.711 PCMU/A-law. Audio content returned as ALAW also contains a WAV header.",
          },
          type = "string",
        },
        effectsProfileId = {
          description = "Optional. Input only. An identifier which selects 'audio effects' profiles that are applied on (post synthesized) text to speech. Effects are applied on top of each other in the order they are given. See [audio profiles](https://cloud.google.com/text-to-speech/docs/audio-profiles) for current supported profile ids.",
          items = {
            type = "string",
          },
          type = "array",
        },
        pitch = {
          description = "Optional. Input only. Speaking pitch, in the range [-20.0, 20.0]. 20 means increase 20 semitones from the original pitch. -20 means decrease 20 semitones from the original pitch.",
          format = "double",
          type = "number",
        },
        sampleRateHertz = {
          description = "Optional. The synthesis sample rate (in hertz) for this audio. When this is specified in SynthesizeSpeechRequest, if this is different from the voice's natural sample rate, then the synthesizer will honor this request by converting to the desired sample rate (which might result in worse audio quality), unless the specified sample rate is not supported for the encoding chosen, in which case it will fail the request and return google.rpc.Code.INVALID_ARGUMENT.",
          format = "int32",
          type = "integer",
        },
        speakingRate = {
          description = "Optional. Input only. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is the normal native speed supported by the specific voice. 2.0 is twice as fast, and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any other values < 0.25 or > 4.0 will return an error.",
          format = "double",
          type = "number",
        },
        volumeGainDb = {
          description = "Optional. Input only. Volume gain (in dB) of the normal native volume supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set to a value of 0.0 (dB), will play at normal native signal amplitude. A value of -6.0 (dB) will play at approximately half the amplitude of the normal native signal amplitude. A value of +6.0 (dB) will play at approximately twice the amplitude of the normal native signal amplitude. Strongly recommend not to exceed +10 (dB) as there's usually no effective increase in loudness for any value greater than that.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "CancelOperationRequest",
      properties = {},
      type = "object",
    },
    CustomVoiceParams = {
      description = "Description of the custom voice to be synthesized.",
      id = "CustomVoiceParams",
      properties = {
        model = {
          description = "Required. The name of the AutoML model that synthesizes the custom voice.",
          type = "string",
        },
        reportedUsage = {
          description = "Optional. The usage of the synthesized audio to be reported.",
          enum = {
            "REPORTED_USAGE_UNSPECIFIED",
            "REALTIME",
            "OFFLINE",
          },
          enumDescriptions = {
            "Request with reported usage unspecified will be rejected.",
            "For scenarios where the synthesized audio is not downloadable and can only be used once. For example, real-time request in IVR system.",
            "For scenarios where the synthesized audio is downloadable and can be reused. For example, the synthesized audio is downloaded, stored in customer service system and played repeatedly.",
          },
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
    GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata = {
      description = "Metadata for response returned by the `SynthesizeLongAudio` method.",
      id = "GoogleCloudTexttospeechV1SynthesizeLongAudioMetadata",
      properties = {
        progressPercentage = {
          description = "The progress of the most recent processing update in percentage, ie. 70.0%.",
          format = "double",
          type = "number",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
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
    ListVoicesResponse = {
      description = "The message returned to the client by the `ListVoices` method.",
      id = "ListVoicesResponse",
      properties = {
        voices = {
          description = "The list of voices.",
          items = {
            ["$ref"] = "Voice",
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
    SynthesisInput = {
      description = "Contains text input to be synthesized. Either `text` or `ssml` must be supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT. The input size is limited to 5000 bytes.",
      id = "SynthesisInput",
      properties = {
        ssml = {
          description = "The SSML document to be synthesized. The SSML document must be valid and well-formed. Otherwise the RPC will fail and return google.rpc.Code.INVALID_ARGUMENT. For more information, see [SSML](https://cloud.google.com/text-to-speech/docs/ssml).",
          type = "string",
        },
        text = {
          description = "The raw text to be synthesized.",
          type = "string",
        },
      },
      type = "object",
    },
    SynthesizeLongAudioMetadata = {
      description = "Metadata for response returned by the `SynthesizeLongAudio` method.",
      id = "SynthesizeLongAudioMetadata",
      properties = {
        progressPercentage = {
          description = "The progress of the most recent processing update in percentage, ie. 70.0%.",
          format = "double",
          type = "number",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    SynthesizeLongAudioRequest = {
      description = "The top-level message sent by the client for the `SynthesizeLongAudio` method.",
      id = "SynthesizeLongAudioRequest",
      properties = {
        audioConfig = {
          ["$ref"] = "AudioConfig",
          description = "Required. The configuration of the synthesized audio.",
        },
        input = {
          ["$ref"] = "SynthesisInput",
          description = "Required. The Synthesizer requires either plain text or SSML as input.",
        },
        outputGcsUri = {
          description = "Specifies a Cloud Storage URI for the synthesis results. Must be specified in the format: `gs://bucket_name/object_name`, and the bucket must already exist.",
          type = "string",
        },
        voice = {
          ["$ref"] = "VoiceSelectionParams",
          description = "The desired voice of the synthesized audio.",
        },
      },
      type = "object",
    },
    SynthesizeSpeechRequest = {
      description = "The top-level message sent by the client for the `SynthesizeSpeech` method.",
      id = "SynthesizeSpeechRequest",
      properties = {
        audioConfig = {
          ["$ref"] = "AudioConfig",
          description = "Required. The configuration of the synthesized audio.",
        },
        input = {
          ["$ref"] = "SynthesisInput",
          description = "Required. The Synthesizer requires either plain text or SSML as input.",
        },
        voice = {
          ["$ref"] = "VoiceSelectionParams",
          description = "Required. The desired voice of the synthesized audio.",
        },
      },
      type = "object",
    },
    SynthesizeSpeechResponse = {
      description = "The message returned to the client by the `SynthesizeSpeech` method.",
      id = "SynthesizeSpeechResponse",
      properties = {
        audioContent = {
          description = "The audio data bytes encoded as specified in the request, including the header for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS). For LINEAR16 audio, we include the WAV header. Note: as with all bytes fields, protobuffers use a pure binary representation, whereas JSON representations use base64.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    Voice = {
      description = "Description of a voice supported by the TTS service.",
      id = "Voice",
      properties = {
        languageCodes = {
          description = "The languages that this voice supports, expressed as [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tags (e.g. \"en-US\", \"es-419\", \"cmn-tw\").",
          items = {
            type = "string",
          },
          type = "array",
        },
        name = {
          description = "The name of this voice. Each distinct voice has a unique name.",
          type = "string",
        },
        naturalSampleRateHertz = {
          description = "The natural sample rate (in hertz) for this voice.",
          format = "int32",
          type = "integer",
        },
        ssmlGender = {
          description = "The gender of this voice.",
          enum = {
            "SSML_VOICE_GENDER_UNSPECIFIED",
            "MALE",
            "FEMALE",
            "NEUTRAL",
          },
          enumDescriptions = {
            "An unspecified gender. In VoiceSelectionParams, this means that the client doesn't care which gender the selected voice will have. In the Voice field of ListVoicesResponse, this may mean that the voice doesn't fit any of the other categories in this enum, or that the gender of the voice isn't known.",
            "A male voice.",
            "A female voice.",
            "A gender-neutral voice. This voice is not yet supported.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VoiceSelectionParams = {
      description = "Description of which voice to use for a synthesis request.",
      id = "VoiceSelectionParams",
      properties = {
        customVoice = {
          ["$ref"] = "CustomVoiceParams",
          description = "The configuration for a custom voice. If [CustomVoiceParams.model] is set, the service will choose the custom voice matching the specified configuration.",
        },
        languageCode = {
          description = "Required. The language (and potentially also the region) of the voice expressed as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag, e.g. \"en-US\". This should not include a script tag (e.g. use \"cmn-cn\" rather than \"cmn-Hant-cn\"), because the script will be inferred from the input provided in the SynthesisInput. The TTS service will use this parameter to help choose an appropriate voice. Note that the TTS service may choose a voice with a slightly different language code than the one selected; it may substitute a different region (e.g. using en-US rather than en-CA if there isn't a Canadian voice available), or even a different language, e.g. using \"nb\" (Norwegian Bokmal) instead of \"no\" (Norwegian)\".",
          type = "string",
        },
        name = {
          description = "The name of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and gender.",
          type = "string",
        },
        ssmlGender = {
          description = "The preferred gender of the voice. If not set, the service will choose a voice based on the other parameters such as language_code and name. Note that this is only a preference, not requirement; if a voice of the appropriate gender is not available, the synthesizer should substitute a voice with a different gender rather than failing the request.",
          enum = {
            "SSML_VOICE_GENDER_UNSPECIFIED",
            "MALE",
            "FEMALE",
            "NEUTRAL",
          },
          enumDescriptions = {
            "An unspecified gender. In VoiceSelectionParams, this means that the client doesn't care which gender the selected voice will have. In the Voice field of ListVoicesResponse, this may mean that the voice doesn't fit any of the other categories in this enum, or that the gender of the voice isn't known.",
            "A male voice.",
            "A female voice.",
            "A gender-neutral voice. This voice is not yet supported.",
          },
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Cloud Text-to-Speech API",
  version = "v1",
  version_module = true,
}
