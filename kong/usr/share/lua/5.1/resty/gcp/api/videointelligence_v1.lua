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
  baseUrl = "https://videointelligence.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Cloud Video Intelligence",
  description = "Detects objects, explicit content, and scene changes in videos. It also specifies the region for annotation and transcribes speech to text. Supports both asynchronous API and streaming API.",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/video-intelligence/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "videointelligence:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://videointelligence.mtls.googleapis.com/",
  name = "videointelligence",
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
      resources = {
        projects = {
          resources = {
            locations = {
              resources = {
                operations = {
                  methods = {
                    cancel = {
                      description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                      flatPath = "v1/operations/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                      httpMethod = "POST",
                      id = "videointelligence.operations.projects.locations.operations.cancel",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be cancelled.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/operations/{+name}:cancel",
                      response = {
                        ["$ref"] = "GoogleProtobuf_Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    delete = {
                      description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                      flatPath = "v1/operations/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                      httpMethod = "DELETE",
                      id = "videointelligence.operations.projects.locations.operations.delete",
                      parameterOrder = {
                        "name",
                      },
                      parameters = {
                        name = {
                          description = "The name of the operation resource to be deleted.",
                          location = "path",
                          pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "v1/operations/{+name}",
                      response = {
                        ["$ref"] = "GoogleProtobuf_Empty",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/cloud-platform",
                      },
                    },
                    get = {
                      description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                      flatPath = "v1/operations/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                      httpMethod = "GET",
                      id = "videointelligence.operations.projects.locations.operations.get",
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
                      path = "v1/operations/{+name}",
                      response = {
                        ["$ref"] = "GoogleLongrunning_Operation",
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
      },
    },
    projects = {
      resources = {
        locations = {
          resources = {
            operations = {
              methods = {
                cancel = {
                  description = "Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}:cancel",
                  httpMethod = "POST",
                  id = "videointelligence.projects.locations.operations.cancel",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be cancelled.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}:cancel",
                  request = {
                    ["$ref"] = "GoogleLongrunning_CancelOperationRequest",
                  },
                  response = {
                    ["$ref"] = "GoogleProtobuf_Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "DELETE",
                  id = "videointelligence.projects.locations.operations.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "The name of the operation resource to be deleted.",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/operations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "GoogleProtobuf_Empty",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                get = {
                  description = "Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations/{operationsId}",
                  httpMethod = "GET",
                  id = "videointelligence.projects.locations.operations.get",
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
                    ["$ref"] = "GoogleLongrunning_Operation",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name` binding allows API services to override the binding to use different resource name schemes, such as `users/*/operations`. To override the binding, API services can add a binding such as `\"/v1/{name=users/*}/operations\"` to their service configuration. For backwards compatibility, the default name includes the operations collection id, however overriding users must ensure the name binding is the parent resource, without the operations collection id.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/operations",
                  httpMethod = "GET",
                  id = "videointelligence.projects.locations.operations.list",
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
                    ["$ref"] = "GoogleLongrunning_ListOperationsResponse",
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
    videos = {
      methods = {
        annotate = {
          description = "Performs asynchronous video annotation. Progress and results can be retrieved through the `google.longrunning.Operations` interface. `Operation.metadata` contains `AnnotateVideoProgress` (progress). `Operation.response` contains `AnnotateVideoResponse` (results).",
          flatPath = "v1/videos:annotate",
          httpMethod = "POST",
          id = "videointelligence.videos.annotate",
          parameterOrder = {},
          parameters = {},
          path = "v1/videos:annotate",
          request = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_AnnotateVideoRequest",
          },
          response = {
            ["$ref"] = "GoogleLongrunning_Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/cloud-platform",
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://videointelligence.googleapis.com/",
  schemas = {
    GoogleCloudVideointelligenceV1_AnnotateVideoProgress = {
      description = "Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1_AnnotateVideoProgress",
      properties = {
        annotationProgress = {
          description = "Progress metadata for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_VideoAnnotationProgress",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_AnnotateVideoRequest = {
      description = "Video annotation request.",
      id = "GoogleCloudVideointelligenceV1_AnnotateVideoRequest",
      properties = {
        features = {
          description = "Required. Requested video annotation features.",
          items = {
            enum = {
              "FEATURE_UNSPECIFIED",
              "LABEL_DETECTION",
              "SHOT_CHANGE_DETECTION",
              "EXPLICIT_CONTENT_DETECTION",
              "FACE_DETECTION",
              "SPEECH_TRANSCRIPTION",
              "TEXT_DETECTION",
              "OBJECT_TRACKING",
              "LOGO_RECOGNITION",
              "PERSON_DETECTION",
            },
            enumDescriptions = {
              "Unspecified.",
              "Label detection. Detect objects, such as dog or flower.",
              "Shot change detection.",
              "Explicit content detection.",
              "Human face detection.",
              "Speech transcription.",
              "OCR text detection and tracking.",
              "Object detection and tracking.",
              "Logo detection, tracking, and recognition.",
              "Person detection.",
            },
            type = "string",
          },
          type = "array",
        },
        inputContent = {
          description = "The video data bytes. If unset, the input video(s) should be specified via the `input_uri`. If set, `input_uri` must be unset.",
          format = "byte",
          type = "string",
        },
        inputUri = {
          description = "Input video location. Currently, only [Cloud Storage](https://cloud.google.com/storage/) URIs are supported. URIs must be specified in the following format: `gs://bucket-id/object-id` (other URI formats return google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request URIs](https://cloud.google.com/storage/docs/request-endpoints). To identify multiple videos, a video URI may include wildcards in the `object-id`. Supported wildcards: '*' to match 0 or more characters; '?' to match 1 character. If unset, the input video should be embedded in the request as `input_content`. If set, `input_content` must be unset.",
          type = "string",
        },
        locationId = {
          description = "Optional. Cloud region where annotation should take place. Supported cloud regions are: `us-east1`, `us-west1`, `europe-west1`, `asia-east1`. If no region is specified, the region will be determined based on video file location.",
          type = "string",
        },
        outputUri = {
          description = "Optional. Location where the output (in JSON format) should be stored. Currently, only [Cloud Storage](https://cloud.google.com/storage/) URIs are supported. These must be specified in the following format: `gs://bucket-id/object-id` (other URI formats return google.rpc.Code.INVALID_ARGUMENT). For more information, see [Request URIs](https://cloud.google.com/storage/docs/request-endpoints).",
          type = "string",
        },
        videoContext = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoContext",
          description = "Additional video context and/or feature-specific parameters.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_AnnotateVideoResponse = {
      description = "Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1_AnnotateVideoResponse",
      properties = {
        annotationResults = {
          description = "Annotation results for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_VideoAnnotationResults",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_DetectedAttribute = {
      description = "A generic detected attribute represented by name in string format.",
      id = "GoogleCloudVideointelligenceV1_DetectedAttribute",
      properties = {
        confidence = {
          description = "Detected attribute confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of supported type names will be provided in the document.",
          type = "string",
        },
        value = {
          description = "Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_DetectedLandmark = {
      description = "A generic detected landmark represented by name in string format and a 2D location.",
      id = "GoogleCloudVideointelligenceV1_DetectedLandmark",
      properties = {
        confidence = {
          description = "The confidence score of the detected landmark. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of this landmark, for example, left_hand, right_shoulder.",
          type = "string",
        },
        point = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_NormalizedVertex",
          description = "The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_Entity = {
      description = "Detected entity from video analysis.",
      id = "GoogleCloudVideointelligenceV1_Entity",
      properties = {
        description = {
          description = "Textual description, e.g., `Fixed-gear bicycle`.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        languageCode = {
          description = "Language code for `description` in BCP-47 format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_ExplicitContentAnnotation = {
      description = "Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.",
      id = "GoogleCloudVideointelligenceV1_ExplicitContentAnnotation",
      properties = {
        frames = {
          description = "All video frames where explicit content was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_ExplicitContentFrame",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_ExplicitContentDetectionConfig = {
      description = "Config for EXPLICIT_CONTENT_DETECTION.",
      id = "GoogleCloudVideointelligenceV1_ExplicitContentDetectionConfig",
      properties = {
        model = {
          description = "Model to use for explicit content detection. Supported values: \"builtin/stable\" (the default if unset) and \"builtin/latest\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_ExplicitContentFrame = {
      description = "Video frame level annotation results for explicit content.",
      id = "GoogleCloudVideointelligenceV1_ExplicitContentFrame",
      properties = {
        pornographyLikelihood = {
          description = "Likelihood of the pornography content..",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unspecified likelihood.",
            "Very unlikely.",
            "Unlikely.",
            "Possible.",
            "Likely.",
            "Very likely.",
          },
          type = "string",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_FaceAnnotation = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1_FaceAnnotation",
      properties = {
        frames = {
          description = "All video frames where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_FaceFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_FaceSegment",
          },
          type = "array",
        },
        thumbnail = {
          description = "Thumbnail of a representative face view (in JPEG format).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_FaceDetectionAnnotation = {
      description = "Face detection annotation.",
      id = "GoogleCloudVideointelligenceV1_FaceDetectionAnnotation",
      properties = {
        thumbnail = {
          description = "The thumbnail of a person's face.",
          format = "byte",
          type = "string",
        },
        tracks = {
          description = "The face tracks with attributes.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_FaceDetectionConfig = {
      description = "Config for FACE_DETECTION.",
      id = "GoogleCloudVideointelligenceV1_FaceDetectionConfig",
      properties = {
        includeAttributes = {
          description = "Whether to enable face attributes detection, such as glasses, dark_glasses, mouth_open etc. Ignored if 'include_bounding_boxes' is set to false.",
          type = "boolean",
        },
        includeBoundingBoxes = {
          description = "Whether bounding boxes are included in the face annotation output.",
          type = "boolean",
        },
        model = {
          description = "Model to use for face detection. Supported values: \"builtin/stable\" (the default if unset) and \"builtin/latest\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_FaceFrame = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1_FaceFrame",
      properties = {
        normalizedBoundingBoxes = {
          description = "Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_NormalizedBoundingBox",
          },
          type = "array",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_FaceSegment = {
      description = "Video segment level annotation results for face detection.",
      id = "GoogleCloudVideointelligenceV1_FaceSegment",
      properties = {
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          description = "Video segment where a face was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_LabelAnnotation = {
      description = "Label annotation.",
      id = "GoogleCloudVideointelligenceV1_LabelAnnotation",
      properties = {
        categoryEntities = {
          description = "Common categories for the detected entity. For example, when the label is `Terrier`, the category is likely `dog`. And in some cases there might be more than one categories e.g., `Terrier` could also be a `pet`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_Entity",
          },
          type = "array",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_Entity",
          description = "Detected entity.",
        },
        frames = {
          description = "All video frames where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LabelFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LabelSegment",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_LabelDetectionConfig = {
      description = "Config for LABEL_DETECTION.",
      id = "GoogleCloudVideointelligenceV1_LabelDetectionConfig",
      properties = {
        frameConfidenceThreshold = {
          description = "The confidence threshold we perform filtering on the labels from frame-level detection. If not set, it is set to 0.4 by default. The valid range for this threshold is [0.1, 0.9]. Any value set outside of this range will be clipped. Note: For best results, follow the default threshold. We will update the default threshold everytime when we release a new model.",
          format = "float",
          type = "number",
        },
        labelDetectionMode = {
          description = "What labels should be detected with LABEL_DETECTION, in addition to video-level labels or segment-level labels. If unspecified, defaults to `SHOT_MODE`.",
          enum = {
            "LABEL_DETECTION_MODE_UNSPECIFIED",
            "SHOT_MODE",
            "FRAME_MODE",
            "SHOT_AND_FRAME_MODE",
          },
          enumDescriptions = {
            "Unspecified.",
            "Detect shot-level labels.",
            "Detect frame-level labels.",
            "Detect both shot-level and frame-level labels.",
          },
          type = "string",
        },
        model = {
          description = "Model to use for label detection. Supported values: \"builtin/stable\" (the default if unset) and \"builtin/latest\".",
          type = "string",
        },
        stationaryCamera = {
          description = "Whether the video has been shot from a stationary (i.e., non-moving) camera. When set to true, might improve detection accuracy for moving objects. Should be used with `SHOT_AND_FRAME_MODE` enabled.",
          type = "boolean",
        },
        videoConfidenceThreshold = {
          description = "The confidence threshold we perform filtering on the labels from video-level and shot-level detections. If not set, it's set to 0.3 by default. The valid range for this threshold is [0.1, 0.9]. Any value set outside of this range will be clipped. Note: For best results, follow the default threshold. We will update the default threshold everytime when we release a new model.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_LabelFrame = {
      description = "Video frame level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1_LabelFrame",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_LabelSegment = {
      description = "Video segment level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1_LabelSegment",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          description = "Video segment where a label was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation = {
      description = "Annotation corresponding to one detected, tracked and recognized logo class.",
      id = "GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation",
      properties = {
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_Entity",
          description = "Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.",
        },
        segments = {
          description = "All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          },
          type = "array",
        },
        tracks = {
          description = "All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_Track",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_NormalizedBoundingBox = {
      description = "Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].",
      id = "GoogleCloudVideointelligenceV1_NormalizedBoundingBox",
      properties = {
        bottom = {
          description = "Bottom Y coordinate.",
          format = "float",
          type = "number",
        },
        left = {
          description = "Left X coordinate.",
          format = "float",
          type = "number",
        },
        right = {
          description = "Right X coordinate.",
          format = "float",
          type = "number",
        },
        top = {
          description = "Top Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_NormalizedBoundingPoly = {
      description = "Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.",
      id = "GoogleCloudVideointelligenceV1_NormalizedBoundingPoly",
      properties = {
        vertices = {
          description = "Normalized vertices of the bounding polygon.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_NormalizedVertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVideointelligenceV1_NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation = {
      description = "Annotations corresponding to one tracked object.",
      id = "GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation",
      properties = {
        confidence = {
          description = "Object category's labeling confidence of this track.",
          format = "float",
          type = "number",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_Entity",
          description = "Entity to specify the object category that this track is labeled as.",
        },
        frames = {
          description = "Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_ObjectTrackingFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          description = "Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.",
        },
        trackId = {
          description = "Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track_id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track_id over time.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_ObjectTrackingConfig = {
      description = "Config for OBJECT_TRACKING.",
      id = "GoogleCloudVideointelligenceV1_ObjectTrackingConfig",
      properties = {
        model = {
          description = "Model to use for object tracking. Supported values: \"builtin/stable\" (the default if unset) and \"builtin/latest\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_ObjectTrackingFrame = {
      description = "Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.",
      id = "GoogleCloudVideointelligenceV1_ObjectTrackingFrame",
      properties = {
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_NormalizedBoundingBox",
          description = "The normalized bounding box location of this object track for the frame.",
        },
        timeOffset = {
          description = "The timestamp of the frame in microseconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_PersonDetectionAnnotation = {
      description = "Person detection annotation per video.",
      id = "GoogleCloudVideointelligenceV1_PersonDetectionAnnotation",
      properties = {
        tracks = {
          description = "The detected tracks of a person.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_PersonDetectionConfig = {
      description = "Config for PERSON_DETECTION.",
      id = "GoogleCloudVideointelligenceV1_PersonDetectionConfig",
      properties = {
        includeAttributes = {
          description = "Whether to enable person attributes detection, such as cloth color (black, blue, etc), type (coat, dress, etc), pattern (plain, floral, etc), hair, etc. Ignored if 'include_bounding_boxes' is set to false.",
          type = "boolean",
        },
        includeBoundingBoxes = {
          description = "Whether bounding boxes are included in the person detection annotation output.",
          type = "boolean",
        },
        includePoseLandmarks = {
          description = "Whether to enable pose landmarks detection. Ignored if 'include_bounding_boxes' is set to false.",
          type = "boolean",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_ShotChangeDetectionConfig = {
      description = "Config for SHOT_CHANGE_DETECTION.",
      id = "GoogleCloudVideointelligenceV1_ShotChangeDetectionConfig",
      properties = {
        model = {
          description = "Model to use for shot change detection. Supported values: \"builtin/stable\" (the default if unset), \"builtin/latest\", and \"builtin/legacy\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_SpeechContext = {
      description = "Provides \"hints\" to the speech recognizer to favor specific words and phrases in the results.",
      id = "GoogleCloudVideointelligenceV1_SpeechContext",
      properties = {
        phrases = {
          description = "Optional. A list of strings containing words and phrases \"hints\" so that the speech recognition is more likely to recognize them. This can be used to improve the accuracy for specific words and phrases, for example, if specific commands are typically spoken by the user. This can also be used to add additional words to the vocabulary of the recognizer. See [usage limits](https://cloud.google.com/speech/limits#content).",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative = {
      description = "Alternative hypotheses (a.k.a. n-best list).",
      id = "GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        transcript = {
          description = "Transcript text representing the words that the user spoke.",
          type = "string",
        },
        words = {
          description = "Output only. A list of word-specific information for each recognized word. Note: When `enable_speaker_diarization` is set to true, you will see all the words from the beginning of the audio.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_WordInfo",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_SpeechTranscription = {
      description = "A speech recognition result corresponding to a portion of the audio.",
      id = "GoogleCloudVideointelligenceV1_SpeechTranscription",
      properties = {
        alternatives = {
          description = "May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_SpeechRecognitionAlternative",
          },
          type = "array",
        },
        languageCode = {
          description = "Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_SpeechTranscriptionConfig = {
      description = "Config for SPEECH_TRANSCRIPTION.",
      id = "GoogleCloudVideointelligenceV1_SpeechTranscriptionConfig",
      properties = {
        audioTracks = {
          description = "Optional. For file formats, such as MXF or MKV, supporting multiple audio tracks, specify up to two tracks. Default: track 0.",
          items = {
            format = "int32",
            type = "integer",
          },
          type = "array",
        },
        diarizationSpeakerCount = {
          description = "Optional. If set, specifies the estimated number of speakers in the conversation. If not set, defaults to '2'. Ignored unless enable_speaker_diarization is set to true.",
          format = "int32",
          type = "integer",
        },
        enableAutomaticPunctuation = {
          description = "Optional. If 'true', adds punctuation to recognition result hypotheses. This feature is only available in select languages. Setting this for requests in other languages has no effect at all. The default 'false' value does not add punctuation to result hypotheses. NOTE: \"This is currently offered as an experimental service, complimentary to all users. In the future this may be exclusively available as a premium feature.\"",
          type = "boolean",
        },
        enableSpeakerDiarization = {
          description = "Optional. If 'true', enables speaker detection for each recognized word in the top alternative of the recognition result using a speaker_tag provided in the WordInfo. Note: When this is true, we send all the words from the beginning of the audio for the top alternative in every consecutive response. This is done in order to improve our speaker tags as our models learn to identify the speakers in the conversation over time.",
          type = "boolean",
        },
        enableWordConfidence = {
          description = "Optional. If `true`, the top result includes a list of words and the confidence for those words. If `false`, no word-level confidence information is returned. The default is `false`.",
          type = "boolean",
        },
        filterProfanity = {
          description = "Optional. If set to `true`, the server will attempt to filter out profanities, replacing all but the initial character in each filtered word with asterisks, e.g. \"f***\". If set to `false` or omitted, profanities won't be filtered out.",
          type = "boolean",
        },
        languageCode = {
          description = "Required. *Required* The language of the supplied audio as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag. Example: \"en-US\". See [Language Support](https://cloud.google.com/speech/docs/languages) for a list of the currently supported language codes.",
          type = "string",
        },
        maxAlternatives = {
          description = "Optional. Maximum number of recognition hypotheses to be returned. Specifically, the maximum number of `SpeechRecognitionAlternative` messages within each `SpeechTranscription`. The server may return fewer than `max_alternatives`. Valid values are `0`-`30`. A value of `0` or `1` will return a maximum of one. If omitted, will return a maximum of one.",
          format = "int32",
          type = "integer",
        },
        speechContexts = {
          description = "Optional. A means to provide context to assist the speech recognition.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_SpeechContext",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_TextAnnotation = {
      description = "Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.",
      id = "GoogleCloudVideointelligenceV1_TextAnnotation",
      properties = {
        segments = {
          description = "All video segments where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_TextSegment",
          },
          type = "array",
        },
        text = {
          description = "The detected text.",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_TextDetectionConfig = {
      description = "Config for TEXT_DETECTION.",
      id = "GoogleCloudVideointelligenceV1_TextDetectionConfig",
      properties = {
        languageHints = {
          description = "Language hint can be specified if the language to be detected is known a priori. It can increase the accuracy of the detection. Language hint must be language code in BCP-47 format. Automatic language detection is performed if no hint is provided.",
          items = {
            type = "string",
          },
          type = "array",
        },
        model = {
          description = "Model to use for text detection. Supported values: \"builtin/stable\" (the default if unset) and \"builtin/latest\".",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_TextFrame = {
      description = "Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.",
      id = "GoogleCloudVideointelligenceV1_TextFrame",
      properties = {
        rotatedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_NormalizedBoundingPoly",
          description = "Bounding polygon of the detected text for this frame.",
        },
        timeOffset = {
          description = "Timestamp of this frame.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_TextSegment = {
      description = "Video segment level annotation results for text detection.",
      id = "GoogleCloudVideointelligenceV1_TextSegment",
      properties = {
        confidence = {
          description = "Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.",
          format = "float",
          type = "number",
        },
        frames = {
          description = "Information related to the frames where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_TextFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          description = "Video segment where a text snippet was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_TimestampedObject = {
      description = "For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.",
      id = "GoogleCloudVideointelligenceV1_TimestampedObject",
      properties = {
        attributes = {
          description = "Optional. The attributes of the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_DetectedAttribute",
          },
          type = "array",
        },
        landmarks = {
          description = "Optional. The detected landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_DetectedLandmark",
          },
          type = "array",
        },
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_NormalizedBoundingBox",
          description = "Normalized Bounding box in a frame, where the object is located.",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_Track = {
      description = "A track of an object instance.",
      id = "GoogleCloudVideointelligenceV1_Track",
      properties = {
        attributes = {
          description = "Optional. Attributes in the track level.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_DetectedAttribute",
          },
          type = "array",
        },
        confidence = {
          description = "Optional. The confidence score of the tracked object.",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          description = "Video segment of a track.",
        },
        timestampedObjects = {
          description = "The object with timestamp and attributes per frame in the track.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_TimestampedObject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_VideoAnnotationProgress = {
      description = "Annotation progress for a single video.",
      id = "GoogleCloudVideointelligenceV1_VideoAnnotationProgress",
      properties = {
        feature = {
          description = "Specifies which feature is being tracked if the request contains more than one feature.",
          enum = {
            "FEATURE_UNSPECIFIED",
            "LABEL_DETECTION",
            "SHOT_CHANGE_DETECTION",
            "EXPLICIT_CONTENT_DETECTION",
            "FACE_DETECTION",
            "SPEECH_TRANSCRIPTION",
            "TEXT_DETECTION",
            "OBJECT_TRACKING",
            "LOGO_RECOGNITION",
            "PERSON_DETECTION",
          },
          enumDescriptions = {
            "Unspecified.",
            "Label detection. Detect objects, such as dog or flower.",
            "Shot change detection.",
            "Explicit content detection.",
            "Human face detection.",
            "Speech transcription.",
            "OCR text detection and tracking.",
            "Object detection and tracking.",
            "Logo detection, tracking, and recognition.",
            "Person detection.",
          },
          type = "string",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        progressPercent = {
          description = "Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.",
          format = "int32",
          type = "integer",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          description = "Specifies which segment is being tracked if the request contains more than one segment.",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
          type = "string",
        },
        updateTime = {
          description = "Time of the most recent update.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_VideoAnnotationResults = {
      description = "Annotation results for a single video.",
      id = "GoogleCloudVideointelligenceV1_VideoAnnotationResults",
      properties = {
        error = {
          ["$ref"] = "GoogleRpc_Status",
          description = "If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed and some may fail.",
        },
        explicitAnnotation = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_ExplicitContentAnnotation",
          description = "Explicit content annotation.",
        },
        faceAnnotations = {
          description = "Deprecated. Please use `face_detection_annotations` instead.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_FaceAnnotation",
          },
          type = "array",
        },
        faceDetectionAnnotations = {
          description = "Face detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_FaceDetectionAnnotation",
          },
          type = "array",
        },
        frameLabelAnnotations = {
          description = "Label annotations on frame level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LabelAnnotation",
          },
          type = "array",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        logoRecognitionAnnotations = {
          description = "Annotations for list of logos detected, tracked and recognized in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LogoRecognitionAnnotation",
          },
          type = "array",
        },
        objectAnnotations = {
          description = "Annotations for list of objects detected and tracked in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_ObjectTrackingAnnotation",
          },
          type = "array",
        },
        personDetectionAnnotations = {
          description = "Person detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_PersonDetectionAnnotation",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          description = "Video segment on which the annotation is run.",
        },
        segmentLabelAnnotations = {
          description = "Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LabelAnnotation",
          },
          type = "array",
        },
        segmentPresenceLabelAnnotations = {
          description = "Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical `segment_label_annotations`, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LabelAnnotation",
          },
          type = "array",
        },
        shotAnnotations = {
          description = "Shot annotations. Each shot is represented as a video segment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          },
          type = "array",
        },
        shotLabelAnnotations = {
          description = "Topical label annotations on shot level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LabelAnnotation",
          },
          type = "array",
        },
        shotPresenceLabelAnnotations = {
          description = "Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical `shot_label_annotations`, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_LabelAnnotation",
          },
          type = "array",
        },
        speechTranscriptions = {
          description = "Speech transcription.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_SpeechTranscription",
          },
          type = "array",
        },
        textAnnotations = {
          description = "OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_TextAnnotation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_VideoContext = {
      description = "Video context and/or feature-specific parameters.",
      id = "GoogleCloudVideointelligenceV1_VideoContext",
      properties = {
        explicitContentDetectionConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_ExplicitContentDetectionConfig",
          description = "Config for EXPLICIT_CONTENT_DETECTION.",
        },
        faceDetectionConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_FaceDetectionConfig",
          description = "Config for FACE_DETECTION.",
        },
        labelDetectionConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_LabelDetectionConfig",
          description = "Config for LABEL_DETECTION.",
        },
        objectTrackingConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_ObjectTrackingConfig",
          description = "Config for OBJECT_TRACKING.",
        },
        personDetectionConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_PersonDetectionConfig",
          description = "Config for PERSON_DETECTION.",
        },
        segments = {
          description = "Video segments to annotate. The segments may overlap and are not required to be contiguous or span the whole video. If unspecified, each video is treated as a single segment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1_VideoSegment",
          },
          type = "array",
        },
        shotChangeDetectionConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_ShotChangeDetectionConfig",
          description = "Config for SHOT_CHANGE_DETECTION.",
        },
        speechTranscriptionConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_SpeechTranscriptionConfig",
          description = "Config for SPEECH_TRANSCRIPTION.",
        },
        textDetectionConfig = {
          ["$ref"] = "GoogleCloudVideointelligenceV1_TextDetectionConfig",
          description = "Config for TEXT_DETECTION.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_VideoSegment = {
      description = "Video segment.",
      id = "GoogleCloudVideointelligenceV1_VideoSegment",
      properties = {
        endTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
        startTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1_WordInfo = {
      description = "Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.",
      id = "GoogleCloudVideointelligenceV1_WordInfo",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        endTime = {
          description = "Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.",
          format = "google-duration",
          type = "string",
        },
        speakerTag = {
          description = "Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization_speaker_count, and is only set if speaker diarization is enabled.",
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
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress = {
      description = "Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1beta2_AnnotateVideoProgress",
      properties = {
        annotationProgress = {
          description = "Progress metadata for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse = {
      description = "Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1beta2_AnnotateVideoResponse",
      properties = {
        annotationResults = {
          description = "Annotation results for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_DetectedAttribute = {
      description = "A generic detected attribute represented by name in string format.",
      id = "GoogleCloudVideointelligenceV1beta2_DetectedAttribute",
      properties = {
        confidence = {
          description = "Detected attribute confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of supported type names will be provided in the document.",
          type = "string",
        },
        value = {
          description = "Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_DetectedLandmark = {
      description = "A generic detected landmark represented by name in string format and a 2D location.",
      id = "GoogleCloudVideointelligenceV1beta2_DetectedLandmark",
      properties = {
        confidence = {
          description = "The confidence score of the detected landmark. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of this landmark, for example, left_hand, right_shoulder.",
          type = "string",
        },
        point = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_NormalizedVertex",
          description = "The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_Entity = {
      description = "Detected entity from video analysis.",
      id = "GoogleCloudVideointelligenceV1beta2_Entity",
      properties = {
        description = {
          description = "Textual description, e.g., `Fixed-gear bicycle`.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        languageCode = {
          description = "Language code for `description` in BCP-47 format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation = {
      description = "Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.",
      id = "GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation",
      properties = {
        frames = {
          description = "All video frames where explicit content was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame = {
      description = "Video frame level annotation results for explicit content.",
      id = "GoogleCloudVideointelligenceV1beta2_ExplicitContentFrame",
      properties = {
        pornographyLikelihood = {
          description = "Likelihood of the pornography content..",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unspecified likelihood.",
            "Very unlikely.",
            "Unlikely.",
            "Possible.",
            "Likely.",
            "Very likely.",
          },
          type = "string",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_FaceAnnotation = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1beta2_FaceAnnotation",
      properties = {
        frames = {
          description = "All video frames where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_FaceFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_FaceSegment",
          },
          type = "array",
        },
        thumbnail = {
          description = "Thumbnail of a representative face view (in JPEG format).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation = {
      description = "Face detection annotation.",
      id = "GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation",
      properties = {
        thumbnail = {
          description = "The thumbnail of a person's face.",
          format = "byte",
          type = "string",
        },
        tracks = {
          description = "The face tracks with attributes.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_FaceFrame = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1beta2_FaceFrame",
      properties = {
        normalizedBoundingBoxes = {
          description = "Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox",
          },
          type = "array",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_FaceSegment = {
      description = "Video segment level annotation results for face detection.",
      id = "GoogleCloudVideointelligenceV1beta2_FaceSegment",
      properties = {
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          description = "Video segment where a face was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_LabelAnnotation = {
      description = "Label annotation.",
      id = "GoogleCloudVideointelligenceV1beta2_LabelAnnotation",
      properties = {
        categoryEntities = {
          description = "Common categories for the detected entity. For example, when the label is `Terrier`, the category is likely `dog`. And in some cases there might be more than one categories e.g., `Terrier` could also be a `pet`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_Entity",
          },
          type = "array",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_Entity",
          description = "Detected entity.",
        },
        frames = {
          description = "All video frames where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LabelFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LabelSegment",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_LabelFrame = {
      description = "Video frame level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1beta2_LabelFrame",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_LabelSegment = {
      description = "Video segment level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1beta2_LabelSegment",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          description = "Video segment where a label was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation = {
      description = "Annotation corresponding to one detected, tracked and recognized logo class.",
      id = "GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation",
      properties = {
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_Entity",
          description = "Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.",
        },
        segments = {
          description = "All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          },
          type = "array",
        },
        tracks = {
          description = "All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_Track",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox = {
      description = "Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].",
      id = "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox",
      properties = {
        bottom = {
          description = "Bottom Y coordinate.",
          format = "float",
          type = "number",
        },
        left = {
          description = "Left X coordinate.",
          format = "float",
          type = "number",
        },
        right = {
          description = "Right X coordinate.",
          format = "float",
          type = "number",
        },
        top = {
          description = "Top Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly = {
      description = "Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.",
      id = "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly",
      properties = {
        vertices = {
          description = "Normalized vertices of the bounding polygon.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_NormalizedVertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVideointelligenceV1beta2_NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation = {
      description = "Annotations corresponding to one tracked object.",
      id = "GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation",
      properties = {
        confidence = {
          description = "Object category's labeling confidence of this track.",
          format = "float",
          type = "number",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_Entity",
          description = "Entity to specify the object category that this track is labeled as.",
        },
        frames = {
          description = "Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          description = "Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.",
        },
        trackId = {
          description = "Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track_id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track_id over time.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame = {
      description = "Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.",
      id = "GoogleCloudVideointelligenceV1beta2_ObjectTrackingFrame",
      properties = {
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox",
          description = "The normalized bounding box location of this object track for the frame.",
        },
        timeOffset = {
          description = "The timestamp of the frame in microseconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation = {
      description = "Person detection annotation per video.",
      id = "GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation",
      properties = {
        tracks = {
          description = "The detected tracks of a person.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative = {
      description = "Alternative hypotheses (a.k.a. n-best list).",
      id = "GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        transcript = {
          description = "Transcript text representing the words that the user spoke.",
          type = "string",
        },
        words = {
          description = "Output only. A list of word-specific information for each recognized word. Note: When `enable_speaker_diarization` is set to true, you will see all the words from the beginning of the audio.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_WordInfo",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_SpeechTranscription = {
      description = "A speech recognition result corresponding to a portion of the audio.",
      id = "GoogleCloudVideointelligenceV1beta2_SpeechTranscription",
      properties = {
        alternatives = {
          description = "May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_SpeechRecognitionAlternative",
          },
          type = "array",
        },
        languageCode = {
          description = "Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_TextAnnotation = {
      description = "Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.",
      id = "GoogleCloudVideointelligenceV1beta2_TextAnnotation",
      properties = {
        segments = {
          description = "All video segments where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_TextSegment",
          },
          type = "array",
        },
        text = {
          description = "The detected text.",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_TextFrame = {
      description = "Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.",
      id = "GoogleCloudVideointelligenceV1beta2_TextFrame",
      properties = {
        rotatedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingPoly",
          description = "Bounding polygon of the detected text for this frame.",
        },
        timeOffset = {
          description = "Timestamp of this frame.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_TextSegment = {
      description = "Video segment level annotation results for text detection.",
      id = "GoogleCloudVideointelligenceV1beta2_TextSegment",
      properties = {
        confidence = {
          description = "Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.",
          format = "float",
          type = "number",
        },
        frames = {
          description = "Information related to the frames where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_TextFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          description = "Video segment where a text snippet was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_TimestampedObject = {
      description = "For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.",
      id = "GoogleCloudVideointelligenceV1beta2_TimestampedObject",
      properties = {
        attributes = {
          description = "Optional. The attributes of the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_DetectedAttribute",
          },
          type = "array",
        },
        landmarks = {
          description = "Optional. The detected landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_DetectedLandmark",
          },
          type = "array",
        },
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_NormalizedBoundingBox",
          description = "Normalized Bounding box in a frame, where the object is located.",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_Track = {
      description = "A track of an object instance.",
      id = "GoogleCloudVideointelligenceV1beta2_Track",
      properties = {
        attributes = {
          description = "Optional. Attributes in the track level.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_DetectedAttribute",
          },
          type = "array",
        },
        confidence = {
          description = "Optional. The confidence score of the tracked object.",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          description = "Video segment of a track.",
        },
        timestampedObjects = {
          description = "The object with timestamp and attributes per frame in the track.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_TimestampedObject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress = {
      description = "Annotation progress for a single video.",
      id = "GoogleCloudVideointelligenceV1beta2_VideoAnnotationProgress",
      properties = {
        feature = {
          description = "Specifies which feature is being tracked if the request contains more than one feature.",
          enum = {
            "FEATURE_UNSPECIFIED",
            "LABEL_DETECTION",
            "SHOT_CHANGE_DETECTION",
            "EXPLICIT_CONTENT_DETECTION",
            "FACE_DETECTION",
            "SPEECH_TRANSCRIPTION",
            "TEXT_DETECTION",
            "OBJECT_TRACKING",
            "LOGO_RECOGNITION",
            "PERSON_DETECTION",
          },
          enumDescriptions = {
            "Unspecified.",
            "Label detection. Detect objects, such as dog or flower.",
            "Shot change detection.",
            "Explicit content detection.",
            "Human face detection.",
            "Speech transcription.",
            "OCR text detection and tracking.",
            "Object detection and tracking.",
            "Logo detection, tracking, and recognition.",
            "Person detection.",
          },
          type = "string",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        progressPercent = {
          description = "Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.",
          format = "int32",
          type = "integer",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          description = "Specifies which segment is being tracked if the request contains more than one segment.",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
          type = "string",
        },
        updateTime = {
          description = "Time of the most recent update.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults = {
      description = "Annotation results for a single video.",
      id = "GoogleCloudVideointelligenceV1beta2_VideoAnnotationResults",
      properties = {
        error = {
          ["$ref"] = "GoogleRpc_Status",
          description = "If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed and some may fail.",
        },
        explicitAnnotation = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_ExplicitContentAnnotation",
          description = "Explicit content annotation.",
        },
        faceAnnotations = {
          description = "Deprecated. Please use `face_detection_annotations` instead.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_FaceAnnotation",
          },
          type = "array",
        },
        faceDetectionAnnotations = {
          description = "Face detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_FaceDetectionAnnotation",
          },
          type = "array",
        },
        frameLabelAnnotations = {
          description = "Label annotations on frame level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LabelAnnotation",
          },
          type = "array",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        logoRecognitionAnnotations = {
          description = "Annotations for list of logos detected, tracked and recognized in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LogoRecognitionAnnotation",
          },
          type = "array",
        },
        objectAnnotations = {
          description = "Annotations for list of objects detected and tracked in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_ObjectTrackingAnnotation",
          },
          type = "array",
        },
        personDetectionAnnotations = {
          description = "Person detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_PersonDetectionAnnotation",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          description = "Video segment on which the annotation is run.",
        },
        segmentLabelAnnotations = {
          description = "Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LabelAnnotation",
          },
          type = "array",
        },
        segmentPresenceLabelAnnotations = {
          description = "Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical `segment_label_annotations`, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LabelAnnotation",
          },
          type = "array",
        },
        shotAnnotations = {
          description = "Shot annotations. Each shot is represented as a video segment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
          },
          type = "array",
        },
        shotLabelAnnotations = {
          description = "Topical label annotations on shot level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LabelAnnotation",
          },
          type = "array",
        },
        shotPresenceLabelAnnotations = {
          description = "Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical `shot_label_annotations`, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_LabelAnnotation",
          },
          type = "array",
        },
        speechTranscriptions = {
          description = "Speech transcription.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_SpeechTranscription",
          },
          type = "array",
        },
        textAnnotations = {
          description = "OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1beta2_TextAnnotation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_VideoSegment = {
      description = "Video segment.",
      id = "GoogleCloudVideointelligenceV1beta2_VideoSegment",
      properties = {
        endTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
        startTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1beta2_WordInfo = {
      description = "Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.",
      id = "GoogleCloudVideointelligenceV1beta2_WordInfo",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        endTime = {
          description = "Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.",
          format = "google-duration",
          type = "string",
        },
        speakerTag = {
          description = "Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization_speaker_count, and is only set if speaker diarization is enabled.",
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
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress = {
      description = "Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoProgress",
      properties = {
        annotationProgress = {
          description = "Progress metadata for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse = {
      description = "Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1p1beta1_AnnotateVideoResponse",
      properties = {
        annotationResults = {
          description = "Annotation results for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute = {
      description = "A generic detected attribute represented by name in string format.",
      id = "GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute",
      properties = {
        confidence = {
          description = "Detected attribute confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of supported type names will be provided in the document.",
          type = "string",
        },
        value = {
          description = "Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark = {
      description = "A generic detected landmark represented by name in string format and a 2D location.",
      id = "GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark",
      properties = {
        confidence = {
          description = "The confidence score of the detected landmark. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of this landmark, for example, left_hand, right_shoulder.",
          type = "string",
        },
        point = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex",
          description = "The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_Entity = {
      description = "Detected entity from video analysis.",
      id = "GoogleCloudVideointelligenceV1p1beta1_Entity",
      properties = {
        description = {
          description = "Textual description, e.g., `Fixed-gear bicycle`.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        languageCode = {
          description = "Language code for `description` in BCP-47 format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation = {
      description = "Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.",
      id = "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation",
      properties = {
        frames = {
          description = "All video frames where explicit content was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame = {
      description = "Video frame level annotation results for explicit content.",
      id = "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentFrame",
      properties = {
        pornographyLikelihood = {
          description = "Likelihood of the pornography content..",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unspecified likelihood.",
            "Very unlikely.",
            "Unlikely.",
            "Possible.",
            "Likely.",
            "Very likely.",
          },
          type = "string",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation",
      properties = {
        frames = {
          description = "All video frames where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_FaceFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_FaceSegment",
          },
          type = "array",
        },
        thumbnail = {
          description = "Thumbnail of a representative face view (in JPEG format).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation = {
      description = "Face detection annotation.",
      id = "GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation",
      properties = {
        thumbnail = {
          description = "The thumbnail of a person's face.",
          format = "byte",
          type = "string",
        },
        tracks = {
          description = "The face tracks with attributes.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_FaceFrame = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1p1beta1_FaceFrame",
      properties = {
        normalizedBoundingBoxes = {
          description = "Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox",
          },
          type = "array",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_FaceSegment = {
      description = "Video segment level annotation results for face detection.",
      id = "GoogleCloudVideointelligenceV1p1beta1_FaceSegment",
      properties = {
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          description = "Video segment where a face was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation = {
      description = "Label annotation.",
      id = "GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation",
      properties = {
        categoryEntities = {
          description = "Common categories for the detected entity. For example, when the label is `Terrier`, the category is likely `dog`. And in some cases there might be more than one categories e.g., `Terrier` could also be a `pet`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_Entity",
          },
          type = "array",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_Entity",
          description = "Detected entity.",
        },
        frames = {
          description = "All video frames where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LabelFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LabelSegment",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_LabelFrame = {
      description = "Video frame level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1p1beta1_LabelFrame",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_LabelSegment = {
      description = "Video segment level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1p1beta1_LabelSegment",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          description = "Video segment where a label was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation = {
      description = "Annotation corresponding to one detected, tracked and recognized logo class.",
      id = "GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation",
      properties = {
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_Entity",
          description = "Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.",
        },
        segments = {
          description = "All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          },
          type = "array",
        },
        tracks = {
          description = "All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_Track",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox = {
      description = "Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].",
      id = "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox",
      properties = {
        bottom = {
          description = "Bottom Y coordinate.",
          format = "float",
          type = "number",
        },
        left = {
          description = "Left X coordinate.",
          format = "float",
          type = "number",
        },
        right = {
          description = "Right X coordinate.",
          format = "float",
          type = "number",
        },
        top = {
          description = "Top Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly = {
      description = "Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.",
      id = "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly",
      properties = {
        vertices = {
          description = "Normalized vertices of the bounding polygon.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVideointelligenceV1p1beta1_NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation = {
      description = "Annotations corresponding to one tracked object.",
      id = "GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation",
      properties = {
        confidence = {
          description = "Object category's labeling confidence of this track.",
          format = "float",
          type = "number",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_Entity",
          description = "Entity to specify the object category that this track is labeled as.",
        },
        frames = {
          description = "Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          description = "Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.",
        },
        trackId = {
          description = "Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track_id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track_id over time.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame = {
      description = "Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.",
      id = "GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingFrame",
      properties = {
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox",
          description = "The normalized bounding box location of this object track for the frame.",
        },
        timeOffset = {
          description = "The timestamp of the frame in microseconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation = {
      description = "Person detection annotation per video.",
      id = "GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation",
      properties = {
        tracks = {
          description = "The detected tracks of a person.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative = {
      description = "Alternative hypotheses (a.k.a. n-best list).",
      id = "GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        transcript = {
          description = "Transcript text representing the words that the user spoke.",
          type = "string",
        },
        words = {
          description = "Output only. A list of word-specific information for each recognized word. Note: When `enable_speaker_diarization` is set to true, you will see all the words from the beginning of the audio.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_WordInfo",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription = {
      description = "A speech recognition result corresponding to a portion of the audio.",
      id = "GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription",
      properties = {
        alternatives = {
          description = "May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_SpeechRecognitionAlternative",
          },
          type = "array",
        },
        languageCode = {
          description = "Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_TextAnnotation = {
      description = "Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.",
      id = "GoogleCloudVideointelligenceV1p1beta1_TextAnnotation",
      properties = {
        segments = {
          description = "All video segments where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_TextSegment",
          },
          type = "array",
        },
        text = {
          description = "The detected text.",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_TextFrame = {
      description = "Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.",
      id = "GoogleCloudVideointelligenceV1p1beta1_TextFrame",
      properties = {
        rotatedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingPoly",
          description = "Bounding polygon of the detected text for this frame.",
        },
        timeOffset = {
          description = "Timestamp of this frame.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_TextSegment = {
      description = "Video segment level annotation results for text detection.",
      id = "GoogleCloudVideointelligenceV1p1beta1_TextSegment",
      properties = {
        confidence = {
          description = "Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.",
          format = "float",
          type = "number",
        },
        frames = {
          description = "Information related to the frames where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_TextFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          description = "Video segment where a text snippet was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_TimestampedObject = {
      description = "For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.",
      id = "GoogleCloudVideointelligenceV1p1beta1_TimestampedObject",
      properties = {
        attributes = {
          description = "Optional. The attributes of the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute",
          },
          type = "array",
        },
        landmarks = {
          description = "Optional. The detected landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_DetectedLandmark",
          },
          type = "array",
        },
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_NormalizedBoundingBox",
          description = "Normalized Bounding box in a frame, where the object is located.",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_Track = {
      description = "A track of an object instance.",
      id = "GoogleCloudVideointelligenceV1p1beta1_Track",
      properties = {
        attributes = {
          description = "Optional. Attributes in the track level.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_DetectedAttribute",
          },
          type = "array",
        },
        confidence = {
          description = "Optional. The confidence score of the tracked object.",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          description = "Video segment of a track.",
        },
        timestampedObjects = {
          description = "The object with timestamp and attributes per frame in the track.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_TimestampedObject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress = {
      description = "Annotation progress for a single video.",
      id = "GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationProgress",
      properties = {
        feature = {
          description = "Specifies which feature is being tracked if the request contains more than one feature.",
          enum = {
            "FEATURE_UNSPECIFIED",
            "LABEL_DETECTION",
            "SHOT_CHANGE_DETECTION",
            "EXPLICIT_CONTENT_DETECTION",
            "FACE_DETECTION",
            "SPEECH_TRANSCRIPTION",
            "TEXT_DETECTION",
            "OBJECT_TRACKING",
            "LOGO_RECOGNITION",
            "PERSON_DETECTION",
          },
          enumDescriptions = {
            "Unspecified.",
            "Label detection. Detect objects, such as dog or flower.",
            "Shot change detection.",
            "Explicit content detection.",
            "Human face detection.",
            "Speech transcription.",
            "OCR text detection and tracking.",
            "Object detection and tracking.",
            "Logo detection, tracking, and recognition.",
            "Person detection.",
          },
          type = "string",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        progressPercent = {
          description = "Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.",
          format = "int32",
          type = "integer",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          description = "Specifies which segment is being tracked if the request contains more than one segment.",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
          type = "string",
        },
        updateTime = {
          description = "Time of the most recent update.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults = {
      description = "Annotation results for a single video.",
      id = "GoogleCloudVideointelligenceV1p1beta1_VideoAnnotationResults",
      properties = {
        error = {
          ["$ref"] = "GoogleRpc_Status",
          description = "If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed and some may fail.",
        },
        explicitAnnotation = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_ExplicitContentAnnotation",
          description = "Explicit content annotation.",
        },
        faceAnnotations = {
          description = "Deprecated. Please use `face_detection_annotations` instead.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_FaceAnnotation",
          },
          type = "array",
        },
        faceDetectionAnnotations = {
          description = "Face detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_FaceDetectionAnnotation",
          },
          type = "array",
        },
        frameLabelAnnotations = {
          description = "Label annotations on frame level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation",
          },
          type = "array",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        logoRecognitionAnnotations = {
          description = "Annotations for list of logos detected, tracked and recognized in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LogoRecognitionAnnotation",
          },
          type = "array",
        },
        objectAnnotations = {
          description = "Annotations for list of objects detected and tracked in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_ObjectTrackingAnnotation",
          },
          type = "array",
        },
        personDetectionAnnotations = {
          description = "Person detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_PersonDetectionAnnotation",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          description = "Video segment on which the annotation is run.",
        },
        segmentLabelAnnotations = {
          description = "Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation",
          },
          type = "array",
        },
        segmentPresenceLabelAnnotations = {
          description = "Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical `segment_label_annotations`, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation",
          },
          type = "array",
        },
        shotAnnotations = {
          description = "Shot annotations. Each shot is represented as a video segment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
          },
          type = "array",
        },
        shotLabelAnnotations = {
          description = "Topical label annotations on shot level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation",
          },
          type = "array",
        },
        shotPresenceLabelAnnotations = {
          description = "Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical `shot_label_annotations`, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_LabelAnnotation",
          },
          type = "array",
        },
        speechTranscriptions = {
          description = "Speech transcription.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_SpeechTranscription",
          },
          type = "array",
        },
        textAnnotations = {
          description = "OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p1beta1_TextAnnotation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_VideoSegment = {
      description = "Video segment.",
      id = "GoogleCloudVideointelligenceV1p1beta1_VideoSegment",
      properties = {
        endTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
        startTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p1beta1_WordInfo = {
      description = "Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.",
      id = "GoogleCloudVideointelligenceV1p1beta1_WordInfo",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        endTime = {
          description = "Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.",
          format = "google-duration",
          type = "string",
        },
        speakerTag = {
          description = "Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization_speaker_count, and is only set if speaker diarization is enabled.",
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
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress = {
      description = "Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoProgress",
      properties = {
        annotationProgress = {
          description = "Progress metadata for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse = {
      description = "Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1p2beta1_AnnotateVideoResponse",
      properties = {
        annotationResults = {
          description = "Annotation results for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute = {
      description = "A generic detected attribute represented by name in string format.",
      id = "GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute",
      properties = {
        confidence = {
          description = "Detected attribute confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of supported type names will be provided in the document.",
          type = "string",
        },
        value = {
          description = "Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark = {
      description = "A generic detected landmark represented by name in string format and a 2D location.",
      id = "GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark",
      properties = {
        confidence = {
          description = "The confidence score of the detected landmark. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of this landmark, for example, left_hand, right_shoulder.",
          type = "string",
        },
        point = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex",
          description = "The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_Entity = {
      description = "Detected entity from video analysis.",
      id = "GoogleCloudVideointelligenceV1p2beta1_Entity",
      properties = {
        description = {
          description = "Textual description, e.g., `Fixed-gear bicycle`.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        languageCode = {
          description = "Language code for `description` in BCP-47 format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation = {
      description = "Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.",
      id = "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation",
      properties = {
        frames = {
          description = "All video frames where explicit content was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame = {
      description = "Video frame level annotation results for explicit content.",
      id = "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentFrame",
      properties = {
        pornographyLikelihood = {
          description = "Likelihood of the pornography content..",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unspecified likelihood.",
            "Very unlikely.",
            "Unlikely.",
            "Possible.",
            "Likely.",
            "Very likely.",
          },
          type = "string",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation",
      properties = {
        frames = {
          description = "All video frames where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_FaceFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_FaceSegment",
          },
          type = "array",
        },
        thumbnail = {
          description = "Thumbnail of a representative face view (in JPEG format).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation = {
      description = "Face detection annotation.",
      id = "GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation",
      properties = {
        thumbnail = {
          description = "The thumbnail of a person's face.",
          format = "byte",
          type = "string",
        },
        tracks = {
          description = "The face tracks with attributes.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_FaceFrame = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1p2beta1_FaceFrame",
      properties = {
        normalizedBoundingBoxes = {
          description = "Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox",
          },
          type = "array",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_FaceSegment = {
      description = "Video segment level annotation results for face detection.",
      id = "GoogleCloudVideointelligenceV1p2beta1_FaceSegment",
      properties = {
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          description = "Video segment where a face was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation = {
      description = "Label annotation.",
      id = "GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation",
      properties = {
        categoryEntities = {
          description = "Common categories for the detected entity. For example, when the label is `Terrier`, the category is likely `dog`. And in some cases there might be more than one categories e.g., `Terrier` could also be a `pet`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_Entity",
          },
          type = "array",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_Entity",
          description = "Detected entity.",
        },
        frames = {
          description = "All video frames where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LabelFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LabelSegment",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_LabelFrame = {
      description = "Video frame level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1p2beta1_LabelFrame",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_LabelSegment = {
      description = "Video segment level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1p2beta1_LabelSegment",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          description = "Video segment where a label was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation = {
      description = "Annotation corresponding to one detected, tracked and recognized logo class.",
      id = "GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation",
      properties = {
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_Entity",
          description = "Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.",
        },
        segments = {
          description = "All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          },
          type = "array",
        },
        tracks = {
          description = "All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_Track",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox = {
      description = "Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].",
      id = "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox",
      properties = {
        bottom = {
          description = "Bottom Y coordinate.",
          format = "float",
          type = "number",
        },
        left = {
          description = "Left X coordinate.",
          format = "float",
          type = "number",
        },
        right = {
          description = "Right X coordinate.",
          format = "float",
          type = "number",
        },
        top = {
          description = "Top Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly = {
      description = "Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.",
      id = "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly",
      properties = {
        vertices = {
          description = "Normalized vertices of the bounding polygon.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVideointelligenceV1p2beta1_NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation = {
      description = "Annotations corresponding to one tracked object.",
      id = "GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation",
      properties = {
        confidence = {
          description = "Object category's labeling confidence of this track.",
          format = "float",
          type = "number",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_Entity",
          description = "Entity to specify the object category that this track is labeled as.",
        },
        frames = {
          description = "Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          description = "Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.",
        },
        trackId = {
          description = "Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track_id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track_id over time.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame = {
      description = "Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.",
      id = "GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingFrame",
      properties = {
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox",
          description = "The normalized bounding box location of this object track for the frame.",
        },
        timeOffset = {
          description = "The timestamp of the frame in microseconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation = {
      description = "Person detection annotation per video.",
      id = "GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation",
      properties = {
        tracks = {
          description = "The detected tracks of a person.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative = {
      description = "Alternative hypotheses (a.k.a. n-best list).",
      id = "GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        transcript = {
          description = "Transcript text representing the words that the user spoke.",
          type = "string",
        },
        words = {
          description = "Output only. A list of word-specific information for each recognized word. Note: When `enable_speaker_diarization` is set to true, you will see all the words from the beginning of the audio.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_WordInfo",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription = {
      description = "A speech recognition result corresponding to a portion of the audio.",
      id = "GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription",
      properties = {
        alternatives = {
          description = "May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_SpeechRecognitionAlternative",
          },
          type = "array",
        },
        languageCode = {
          description = "Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_TextAnnotation = {
      description = "Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.",
      id = "GoogleCloudVideointelligenceV1p2beta1_TextAnnotation",
      properties = {
        segments = {
          description = "All video segments where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_TextSegment",
          },
          type = "array",
        },
        text = {
          description = "The detected text.",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_TextFrame = {
      description = "Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.",
      id = "GoogleCloudVideointelligenceV1p2beta1_TextFrame",
      properties = {
        rotatedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingPoly",
          description = "Bounding polygon of the detected text for this frame.",
        },
        timeOffset = {
          description = "Timestamp of this frame.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_TextSegment = {
      description = "Video segment level annotation results for text detection.",
      id = "GoogleCloudVideointelligenceV1p2beta1_TextSegment",
      properties = {
        confidence = {
          description = "Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.",
          format = "float",
          type = "number",
        },
        frames = {
          description = "Information related to the frames where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_TextFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          description = "Video segment where a text snippet was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_TimestampedObject = {
      description = "For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.",
      id = "GoogleCloudVideointelligenceV1p2beta1_TimestampedObject",
      properties = {
        attributes = {
          description = "Optional. The attributes of the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute",
          },
          type = "array",
        },
        landmarks = {
          description = "Optional. The detected landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_DetectedLandmark",
          },
          type = "array",
        },
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_NormalizedBoundingBox",
          description = "Normalized Bounding box in a frame, where the object is located.",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_Track = {
      description = "A track of an object instance.",
      id = "GoogleCloudVideointelligenceV1p2beta1_Track",
      properties = {
        attributes = {
          description = "Optional. Attributes in the track level.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_DetectedAttribute",
          },
          type = "array",
        },
        confidence = {
          description = "Optional. The confidence score of the tracked object.",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          description = "Video segment of a track.",
        },
        timestampedObjects = {
          description = "The object with timestamp and attributes per frame in the track.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_TimestampedObject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress = {
      description = "Annotation progress for a single video.",
      id = "GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationProgress",
      properties = {
        feature = {
          description = "Specifies which feature is being tracked if the request contains more than one feature.",
          enum = {
            "FEATURE_UNSPECIFIED",
            "LABEL_DETECTION",
            "SHOT_CHANGE_DETECTION",
            "EXPLICIT_CONTENT_DETECTION",
            "FACE_DETECTION",
            "SPEECH_TRANSCRIPTION",
            "TEXT_DETECTION",
            "OBJECT_TRACKING",
            "LOGO_RECOGNITION",
            "PERSON_DETECTION",
          },
          enumDescriptions = {
            "Unspecified.",
            "Label detection. Detect objects, such as dog or flower.",
            "Shot change detection.",
            "Explicit content detection.",
            "Human face detection.",
            "Speech transcription.",
            "OCR text detection and tracking.",
            "Object detection and tracking.",
            "Logo detection, tracking, and recognition.",
            "Person detection.",
          },
          type = "string",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        progressPercent = {
          description = "Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.",
          format = "int32",
          type = "integer",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          description = "Specifies which segment is being tracked if the request contains more than one segment.",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
          type = "string",
        },
        updateTime = {
          description = "Time of the most recent update.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults = {
      description = "Annotation results for a single video.",
      id = "GoogleCloudVideointelligenceV1p2beta1_VideoAnnotationResults",
      properties = {
        error = {
          ["$ref"] = "GoogleRpc_Status",
          description = "If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed and some may fail.",
        },
        explicitAnnotation = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_ExplicitContentAnnotation",
          description = "Explicit content annotation.",
        },
        faceAnnotations = {
          description = "Deprecated. Please use `face_detection_annotations` instead.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_FaceAnnotation",
          },
          type = "array",
        },
        faceDetectionAnnotations = {
          description = "Face detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_FaceDetectionAnnotation",
          },
          type = "array",
        },
        frameLabelAnnotations = {
          description = "Label annotations on frame level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation",
          },
          type = "array",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        logoRecognitionAnnotations = {
          description = "Annotations for list of logos detected, tracked and recognized in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LogoRecognitionAnnotation",
          },
          type = "array",
        },
        objectAnnotations = {
          description = "Annotations for list of objects detected and tracked in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_ObjectTrackingAnnotation",
          },
          type = "array",
        },
        personDetectionAnnotations = {
          description = "Person detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_PersonDetectionAnnotation",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          description = "Video segment on which the annotation is run.",
        },
        segmentLabelAnnotations = {
          description = "Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation",
          },
          type = "array",
        },
        segmentPresenceLabelAnnotations = {
          description = "Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical `segment_label_annotations`, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation",
          },
          type = "array",
        },
        shotAnnotations = {
          description = "Shot annotations. Each shot is represented as a video segment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
          },
          type = "array",
        },
        shotLabelAnnotations = {
          description = "Topical label annotations on shot level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation",
          },
          type = "array",
        },
        shotPresenceLabelAnnotations = {
          description = "Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical `shot_label_annotations`, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_LabelAnnotation",
          },
          type = "array",
        },
        speechTranscriptions = {
          description = "Speech transcription.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_SpeechTranscription",
          },
          type = "array",
        },
        textAnnotations = {
          description = "OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p2beta1_TextAnnotation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_VideoSegment = {
      description = "Video segment.",
      id = "GoogleCloudVideointelligenceV1p2beta1_VideoSegment",
      properties = {
        endTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
        startTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p2beta1_WordInfo = {
      description = "Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.",
      id = "GoogleCloudVideointelligenceV1p2beta1_WordInfo",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        endTime = {
          description = "Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.",
          format = "google-duration",
          type = "string",
        },
        speakerTag = {
          description = "Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization_speaker_count, and is only set if speaker diarization is enabled.",
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
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress = {
      description = "Video annotation progress. Included in the `metadata` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoProgress",
      properties = {
        annotationProgress = {
          description = "Progress metadata for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse = {
      description = "Video annotation response. Included in the `response` field of the `Operation` returned by the `GetOperation` call of the `google::longrunning::Operations` service.",
      id = "GoogleCloudVideointelligenceV1p3beta1_AnnotateVideoResponse",
      properties = {
        annotationResults = {
          description = "Annotation results for all videos specified in `AnnotateVideoRequest`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_Celebrity = {
      description = "Celebrity definition.",
      id = "GoogleCloudVideointelligenceV1p3beta1_Celebrity",
      properties = {
        description = {
          description = "Textual description of additional information about the celebrity, if applicable.",
          type = "string",
        },
        displayName = {
          description = "The celebrity name.",
          type = "string",
        },
        name = {
          description = "The resource name of the celebrity. Have the format `video-intelligence/kg-mid` indicates a celebrity from preloaded gallery. kg-mid is the id in Google knowledge graph, which is unique for the celebrity.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation = {
      description = "Celebrity recognition annotation per video.",
      id = "GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation",
      properties = {
        celebrityTracks = {
          description = "The tracks detected from the input video, including recognized celebrities and other detected faces in the video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack = {
      description = "The annotation result of a celebrity face track. RecognizedCelebrity field could be empty if the face track does not have any matched celebrities.",
      id = "GoogleCloudVideointelligenceV1p3beta1_CelebrityTrack",
      properties = {
        celebrities = {
          description = "Top N match of the celebrities for the face in this track.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity",
          },
          type = "array",
        },
        faceTrack = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Track",
          description = "A track of a person's face.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute = {
      description = "A generic detected attribute represented by name in string format.",
      id = "GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute",
      properties = {
        confidence = {
          description = "Detected attribute confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of the attribute, for example, glasses, dark_glasses, mouth_open. A full list of supported type names will be provided in the document.",
          type = "string",
        },
        value = {
          description = "Text value of the detection result. For example, the value for \"HairColor\" can be \"black\", \"blonde\", etc.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark = {
      description = "A generic detected landmark represented by name in string format and a 2D location.",
      id = "GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark",
      properties = {
        confidence = {
          description = "The confidence score of the detected landmark. Range [0, 1].",
          format = "float",
          type = "number",
        },
        name = {
          description = "The name of this landmark, for example, left_hand, right_shoulder.",
          type = "string",
        },
        point = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex",
          description = "The 2D point of the detected landmark using the normalized image coordindate system. The normalized coordinates have the range from 0 to 1.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_Entity = {
      description = "Detected entity from video analysis.",
      id = "GoogleCloudVideointelligenceV1p3beta1_Entity",
      properties = {
        description = {
          description = "Textual description, e.g., `Fixed-gear bicycle`.",
          type = "string",
        },
        entityId = {
          description = "Opaque entity ID. Some IDs may be available in [Google Knowledge Graph Search API](https://developers.google.com/knowledge-graph/).",
          type = "string",
        },
        languageCode = {
          description = "Language code for `description` in BCP-47 format.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation = {
      description = "Explicit content annotation (based on per-frame visual signals only). If no explicit content has been detected in a frame, no annotations are present for that frame.",
      id = "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation",
      properties = {
        frames = {
          description = "All video frames where explicit content was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame = {
      description = "Video frame level annotation results for explicit content.",
      id = "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentFrame",
      properties = {
        pornographyLikelihood = {
          description = "Likelihood of the pornography content..",
          enum = {
            "LIKELIHOOD_UNSPECIFIED",
            "VERY_UNLIKELY",
            "UNLIKELY",
            "POSSIBLE",
            "LIKELY",
            "VERY_LIKELY",
          },
          enumDescriptions = {
            "Unspecified likelihood.",
            "Very unlikely.",
            "Unlikely.",
            "Possible.",
            "Likely.",
            "Very likely.",
          },
          type = "string",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation",
      properties = {
        frames = {
          description = "All video frames where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_FaceFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a face was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_FaceSegment",
          },
          type = "array",
        },
        thumbnail = {
          description = "Thumbnail of a representative face view (in JPEG format).",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation = {
      description = "Face detection annotation.",
      id = "GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation",
      properties = {
        thumbnail = {
          description = "The thumbnail of a person's face.",
          format = "byte",
          type = "string",
        },
        tracks = {
          description = "The face tracks with attributes.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_FaceFrame = {
      description = "Deprecated. No effect.",
      id = "GoogleCloudVideointelligenceV1p3beta1_FaceFrame",
      properties = {
        normalizedBoundingBoxes = {
          description = "Normalized Bounding boxes in a frame. There can be more than one boxes if the same face is detected in multiple locations within the current frame.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox",
          },
          type = "array",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_FaceSegment = {
      description = "Video segment level annotation results for face detection.",
      id = "GoogleCloudVideointelligenceV1p3beta1_FaceSegment",
      properties = {
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          description = "Video segment where a face was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation = {
      description = "Label annotation.",
      id = "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation",
      properties = {
        categoryEntities = {
          description = "Common categories for the detected entity. For example, when the label is `Terrier`, the category is likely `dog`. And in some cases there might be more than one categories e.g., `Terrier` could also be a `pet`.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Entity",
          },
          type = "array",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Entity",
          description = "Detected entity.",
        },
        frames = {
          description = "All video frames where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelFrame",
          },
          type = "array",
        },
        segments = {
          description = "All video segments where a label was detected.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelSegment",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_LabelFrame = {
      description = "Video frame level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1p3beta1_LabelFrame",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this location.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_LabelSegment = {
      description = "Video segment level annotation results for label detection.",
      id = "GoogleCloudVideointelligenceV1p3beta1_LabelSegment",
      properties = {
        confidence = {
          description = "Confidence that the label is accurate. Range: [0, 1].",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          description = "Video segment where a label was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation = {
      description = "Annotation corresponding to one detected, tracked and recognized logo class.",
      id = "GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation",
      properties = {
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Entity",
          description = "Entity category information to specify the logo class that all the logo tracks within this LogoRecognitionAnnotation are recognized as.",
        },
        segments = {
          description = "All video segments where the recognized logo appears. There might be multiple instances of the same logo class appearing in one VideoSegment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          },
          type = "array",
        },
        tracks = {
          description = "All logo tracks where the recognized logo appears. Each track corresponds to one logo instance appearing in consecutive frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Track",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox = {
      description = "Normalized bounding box. The normalized vertex coordinates are relative to the original image. Range: [0, 1].",
      id = "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox",
      properties = {
        bottom = {
          description = "Bottom Y coordinate.",
          format = "float",
          type = "number",
        },
        left = {
          description = "Left X coordinate.",
          format = "float",
          type = "number",
        },
        right = {
          description = "Right X coordinate.",
          format = "float",
          type = "number",
        },
        top = {
          description = "Top Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly = {
      description = "Normalized bounding polygon for text (that might not be aligned with axis). Contains list of the corner points in clockwise order starting from top-left corner. For example, for a rectangular bounding box: When the text is horizontal it might look like: 0----1 | | 3----2 When it's clockwise rotated 180 degrees around the top-left corner it becomes: 2----3 | | 1----0 and the vertex order will still be (0, 1, 2, 3). Note that values can be less than 0, or greater than 1 due to trignometric calculations for location of the box.",
      id = "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly",
      properties = {
        vertices = {
          description = "Normalized vertices of the bounding polygon.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex = {
      description = "A vertex represents a 2D point in the image. NOTE: the normalized vertex coordinates are relative to the original image and range from 0 to 1.",
      id = "GoogleCloudVideointelligenceV1p3beta1_NormalizedVertex",
      properties = {
        x = {
          description = "X coordinate.",
          format = "float",
          type = "number",
        },
        y = {
          description = "Y coordinate.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation = {
      description = "Annotations corresponding to one tracked object.",
      id = "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation",
      properties = {
        confidence = {
          description = "Object category's labeling confidence of this track.",
          format = "float",
          type = "number",
        },
        entity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Entity",
          description = "Entity to specify the object category that this track is labeled as.",
        },
        frames = {
          description = "Information corresponding to all frames where this object track appears. Non-streaming batch mode: it may be one or multiple ObjectTrackingFrame messages in frames. Streaming mode: it can only be one ObjectTrackingFrame message in frames.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          description = "Non-streaming batch mode ONLY. Each object track corresponds to one video segment where it appears.",
        },
        trackId = {
          description = "Streaming mode ONLY. In streaming mode, we do not know the end time of a tracked object before it is completed. Hence, there is no VideoSegment info returned. Instead, we provide a unique identifiable integer track_id so that the customers can correlate the results of the ongoing ObjectTrackAnnotation of the same track_id over time.",
          format = "int64",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame = {
      description = "Video frame level annotations for object detection and tracking. This field stores per frame location, time offset, and confidence.",
      id = "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingFrame",
      properties = {
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox",
          description = "The normalized bounding box location of this object track for the frame.",
        },
        timeOffset = {
          description = "The timestamp of the frame in microseconds.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation = {
      description = "Person detection annotation per video.",
      id = "GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation",
      properties = {
        tracks = {
          description = "The detected tracks of a person.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Track",
          },
          type = "array",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity = {
      description = "The recognized celebrity with confidence score.",
      id = "GoogleCloudVideointelligenceV1p3beta1_RecognizedCelebrity",
      properties = {
        celebrity = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_Celebrity",
          description = "The recognized celebrity.",
        },
        confidence = {
          description = "Recognition confidence. Range [0, 1].",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative = {
      description = "Alternative hypotheses (a.k.a. n-best list).",
      id = "GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        transcript = {
          description = "Transcript text representing the words that the user spoke.",
          type = "string",
        },
        words = {
          description = "Output only. A list of word-specific information for each recognized word. Note: When `enable_speaker_diarization` is set to true, you will see all the words from the beginning of the audio.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_WordInfo",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription = {
      description = "A speech recognition result corresponding to a portion of the audio.",
      id = "GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription",
      properties = {
        alternatives = {
          description = "May contain one or more recognition hypotheses (up to the maximum specified in `max_alternatives`). These alternatives are ordered in terms of accuracy, with the top (first) alternative being the most probable, as ranked by the recognizer.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_SpeechRecognitionAlternative",
          },
          type = "array",
        },
        languageCode = {
          description = "Output only. The [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language tag of the language in this result. This language code was detected to have the most likelihood of being spoken in the audio.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse = {
      description = "`StreamingAnnotateVideoResponse` is the only message returned to the client by `StreamingAnnotateVideo`. A series of zero or more `StreamingAnnotateVideoResponse` messages are streamed back to the client.",
      id = "GoogleCloudVideointelligenceV1p3beta1_StreamingAnnotateVideoResponse",
      properties = {
        annotationResults = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults",
          description = "Streaming annotation results.",
        },
        annotationResultsUri = {
          description = "Google Cloud Storage URI that stores annotation results of one streaming session in JSON format. It is the annotation_result_storage_directory from the request followed by '/cloud_project_number-session_id'.",
          type = "string",
        },
        error = {
          ["$ref"] = "GoogleRpc_Status",
          description = "If set, returns a google.rpc.Status message that specifies the error for the operation.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults = {
      description = "Streaming annotation results corresponding to a portion of the video that is currently being processed. Only ONE type of annotation will be specified in the response.",
      id = "GoogleCloudVideointelligenceV1p3beta1_StreamingVideoAnnotationResults",
      properties = {
        explicitAnnotation = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation",
          description = "Explicit content annotation results.",
        },
        frameTimestamp = {
          description = "Timestamp of the processed frame in microseconds.",
          format = "google-duration",
          type = "string",
        },
        labelAnnotations = {
          description = "Label annotation results.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation",
          },
          type = "array",
        },
        objectAnnotations = {
          description = "Object tracking results.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation",
          },
          type = "array",
        },
        shotAnnotations = {
          description = "Shot annotation results. Each shot is represented as a video segment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_TextAnnotation = {
      description = "Annotations related to one detected OCR text snippet. This will contain the corresponding text, confidence value, and frame level information for each detection.",
      id = "GoogleCloudVideointelligenceV1p3beta1_TextAnnotation",
      properties = {
        segments = {
          description = "All video segments where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_TextSegment",
          },
          type = "array",
        },
        text = {
          description = "The detected text.",
          type = "string",
        },
        version = {
          description = "Feature version.",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_TextFrame = {
      description = "Video frame level annotation results for text annotation (OCR). Contains information regarding timestamp and bounding box locations for the frames containing detected OCR text snippets.",
      id = "GoogleCloudVideointelligenceV1p3beta1_TextFrame",
      properties = {
        rotatedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingPoly",
          description = "Bounding polygon of the detected text for this frame.",
        },
        timeOffset = {
          description = "Timestamp of this frame.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_TextSegment = {
      description = "Video segment level annotation results for text detection.",
      id = "GoogleCloudVideointelligenceV1p3beta1_TextSegment",
      properties = {
        confidence = {
          description = "Confidence for the track of detected text. It is calculated as the highest over all frames where OCR detected text appears.",
          format = "float",
          type = "number",
        },
        frames = {
          description = "Information related to the frames where OCR detected text appears.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_TextFrame",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          description = "Video segment where a text snippet was detected.",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_TimestampedObject = {
      description = "For tracking related features. An object at time_offset with attributes, and located with normalized_bounding_box.",
      id = "GoogleCloudVideointelligenceV1p3beta1_TimestampedObject",
      properties = {
        attributes = {
          description = "Optional. The attributes of the object in the bounding box.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute",
          },
          type = "array",
        },
        landmarks = {
          description = "Optional. The detected landmarks.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_DetectedLandmark",
          },
          type = "array",
        },
        normalizedBoundingBox = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_NormalizedBoundingBox",
          description = "Normalized Bounding box in a frame, where the object is located.",
        },
        timeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the video frame for this object.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_Track = {
      description = "A track of an object instance.",
      id = "GoogleCloudVideointelligenceV1p3beta1_Track",
      properties = {
        attributes = {
          description = "Optional. Attributes in the track level.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_DetectedAttribute",
          },
          type = "array",
        },
        confidence = {
          description = "Optional. The confidence score of the tracked object.",
          format = "float",
          type = "number",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          description = "Video segment of a track.",
        },
        timestampedObjects = {
          description = "The object with timestamp and attributes per frame in the track.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_TimestampedObject",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress = {
      description = "Annotation progress for a single video.",
      id = "GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationProgress",
      properties = {
        feature = {
          description = "Specifies which feature is being tracked if the request contains more than one feature.",
          enum = {
            "FEATURE_UNSPECIFIED",
            "LABEL_DETECTION",
            "SHOT_CHANGE_DETECTION",
            "EXPLICIT_CONTENT_DETECTION",
            "FACE_DETECTION",
            "SPEECH_TRANSCRIPTION",
            "TEXT_DETECTION",
            "OBJECT_TRACKING",
            "LOGO_RECOGNITION",
            "CELEBRITY_RECOGNITION",
            "PERSON_DETECTION",
          },
          enumDescriptions = {
            "Unspecified.",
            "Label detection. Detect objects, such as dog or flower.",
            "Shot change detection.",
            "Explicit content detection.",
            "Human face detection.",
            "Speech transcription.",
            "OCR text detection and tracking.",
            "Object detection and tracking.",
            "Logo detection, tracking, and recognition.",
            "Celebrity recognition.",
            "Person detection.",
          },
          type = "string",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        progressPercent = {
          description = "Approximate percentage processed thus far. Guaranteed to be 100 when fully processed.",
          format = "int32",
          type = "integer",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          description = "Specifies which segment is being tracked if the request contains more than one segment.",
        },
        startTime = {
          description = "Time when the request was received.",
          format = "google-datetime",
          type = "string",
        },
        updateTime = {
          description = "Time of the most recent update.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults = {
      description = "Annotation results for a single video.",
      id = "GoogleCloudVideointelligenceV1p3beta1_VideoAnnotationResults",
      properties = {
        celebrityRecognitionAnnotations = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_CelebrityRecognitionAnnotation",
          description = "Celebrity recognition annotations.",
        },
        error = {
          ["$ref"] = "GoogleRpc_Status",
          description = "If set, indicates an error. Note that for a single `AnnotateVideoRequest` some videos may succeed and some may fail.",
        },
        explicitAnnotation = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_ExplicitContentAnnotation",
          description = "Explicit content annotation.",
        },
        faceAnnotations = {
          description = "Deprecated. Please use `face_detection_annotations` instead.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_FaceAnnotation",
          },
          type = "array",
        },
        faceDetectionAnnotations = {
          description = "Face detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_FaceDetectionAnnotation",
          },
          type = "array",
        },
        frameLabelAnnotations = {
          description = "Label annotations on frame level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation",
          },
          type = "array",
        },
        inputUri = {
          description = "Video file location in [Cloud Storage](https://cloud.google.com/storage/).",
          type = "string",
        },
        logoRecognitionAnnotations = {
          description = "Annotations for list of logos detected, tracked and recognized in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LogoRecognitionAnnotation",
          },
          type = "array",
        },
        objectAnnotations = {
          description = "Annotations for list of objects detected and tracked in video.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_ObjectTrackingAnnotation",
          },
          type = "array",
        },
        personDetectionAnnotations = {
          description = "Person detection annotations.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_PersonDetectionAnnotation",
          },
          type = "array",
        },
        segment = {
          ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          description = "Video segment on which the annotation is run.",
        },
        segmentLabelAnnotations = {
          description = "Topical label annotations on video level or user-specified segment level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation",
          },
          type = "array",
        },
        segmentPresenceLabelAnnotations = {
          description = "Presence label annotations on video level or user-specified segment level. There is exactly one element for each unique label. Compared to the existing topical `segment_label_annotations`, this field presents more fine-grained, segment-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation",
          },
          type = "array",
        },
        shotAnnotations = {
          description = "Shot annotations. Each shot is represented as a video segment.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
          },
          type = "array",
        },
        shotLabelAnnotations = {
          description = "Topical label annotations on shot level. There is exactly one element for each unique label.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation",
          },
          type = "array",
        },
        shotPresenceLabelAnnotations = {
          description = "Presence label annotations on shot level. There is exactly one element for each unique label. Compared to the existing topical `shot_label_annotations`, this field presents more fine-grained, shot-level labels detected in video content and is made available only when the client sets `LabelDetectionConfig.model` to \"builtin/latest\" in the request.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_LabelAnnotation",
          },
          type = "array",
        },
        speechTranscriptions = {
          description = "Speech transcription.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_SpeechTranscription",
          },
          type = "array",
        },
        textAnnotations = {
          description = "OCR text detection and tracking. Annotations for list of detected text snippets. Each will have list of frame information associated with it.",
          items = {
            ["$ref"] = "GoogleCloudVideointelligenceV1p3beta1_TextAnnotation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_VideoSegment = {
      description = "Video segment.",
      id = "GoogleCloudVideointelligenceV1p3beta1_VideoSegment",
      properties = {
        endTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the end of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
        startTimeOffset = {
          description = "Time-offset, relative to the beginning of the video, corresponding to the start of the segment (inclusive).",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    GoogleCloudVideointelligenceV1p3beta1_WordInfo = {
      description = "Word-specific information for recognized words. Word information is only included in the response when certain request parameters are set, such as `enable_word_time_offsets`.",
      id = "GoogleCloudVideointelligenceV1p3beta1_WordInfo",
      properties = {
        confidence = {
          description = "Output only. The confidence estimate between 0.0 and 1.0. A higher number indicates an estimated greater likelihood that the recognized words are correct. This field is set only for the top alternative. This field is not guaranteed to be accurate and users should not rely on it to be always provided. The default of 0.0 is a sentinel value indicating `confidence` was not set.",
          format = "float",
          readOnly = true,
          type = "number",
        },
        endTime = {
          description = "Time offset relative to the beginning of the audio, and corresponding to the end of the spoken word. This field is only set if `enable_word_time_offsets=true` and only in the top hypothesis. This is an experimental feature and the accuracy of the time offset can vary.",
          format = "google-duration",
          type = "string",
        },
        speakerTag = {
          description = "Output only. A distinct integer value is assigned for every speaker within the audio. This field specifies which one of those speakers was detected to have spoken this word. Value ranges from 1 up to diarization_speaker_count, and is only set if speaker diarization is enabled.",
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
    GoogleLongrunning_CancelOperationRequest = {
      description = "The request message for Operations.CancelOperation.",
      id = "GoogleLongrunning_CancelOperationRequest",
      properties = {},
      type = "object",
    },
    GoogleLongrunning_ListOperationsResponse = {
      description = "The response message for Operations.ListOperations.",
      id = "GoogleLongrunning_ListOperationsResponse",
      properties = {
        nextPageToken = {
          description = "The standard List next-page token.",
          type = "string",
        },
        operations = {
          description = "A list of operations that matches the specified filter in the request.",
          items = {
            ["$ref"] = "GoogleLongrunning_Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    GoogleLongrunning_Operation = {
      description = "This resource represents a long-running operation that is the result of a network API call.",
      id = "GoogleLongrunning_Operation",
      properties = {
        done = {
          description = "If the value is `false`, it means the operation is still in progress. If `true`, the operation is completed, and either `error` or `response` is available.",
          type = "boolean",
        },
        error = {
          ["$ref"] = "GoogleRpc_Status",
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
    GoogleProtobuf_Empty = {
      description = "A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }",
      id = "GoogleProtobuf_Empty",
      properties = {},
      type = "object",
    },
    GoogleRpc_Status = {
      description = "The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).",
      id = "GoogleRpc_Status",
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
  },
  servicePath = "",
  title = "Cloud Video Intelligence API",
  version = "v1",
  version_module = true,
}
