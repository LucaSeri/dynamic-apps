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
  baseUrl = "https://transcoder.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Transcoder",
  description = "This API converts video files into formats suitable for consumer distribution. For more information, see the Transcoder API overview. ",
  discoveryVersion = "v1",
  documentationLink = "https://cloud.google.com/transcoder/docs/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "transcoder:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://transcoder.mtls.googleapis.com/",
  name = "transcoder",
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
    projects = {
      resources = {
        locations = {
          resources = {
            jobTemplates = {
              methods = {
                create = {
                  description = "Creates a job template in the specified region.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobTemplates",
                  httpMethod = "POST",
                  id = "transcoder.projects.locations.jobTemplates.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    jobTemplateId = {
                      description = "Required. The ID to use for the job template, which will become the final component of the job template's resource name. This value should be 4-63 characters, and valid characters must match the regular expression `a-zA-Z*`.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent location to create this job template. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/jobTemplates",
                  request = {
                    ["$ref"] = "JobTemplate",
                  },
                  response = {
                    ["$ref"] = "JobTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a job template.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobTemplates/{jobTemplatesId}",
                  httpMethod = "DELETE",
                  id = "transcoder.projects.locations.jobTemplates.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "If set to true, and the job template is not found, the request will succeed but no action will be taken on the server.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the job template to delete. `projects/{project}/locations/{location}/jobTemplates/{job_template}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobTemplates/[^/]+$",
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
                  description = "Returns the job template data.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobTemplates/{jobTemplatesId}",
                  httpMethod = "GET",
                  id = "transcoder.projects.locations.jobTemplates.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the job template to retrieve. Format: `projects/{project}/locations/{location}/jobTemplates/{job_template}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobTemplates/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "JobTemplate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists job templates in the specified region.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobTemplates",
                  httpMethod = "GET",
                  id = "transcoder.projects.locations.jobTemplates.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "The filter expression, following the syntax outlined in https://google.aip.dev/160.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The `next_page_token` value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The parent location from which to retrieve the collection of job templates. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/jobTemplates",
                  response = {
                    ["$ref"] = "ListJobTemplatesResponse",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
              },
            },
            jobs = {
              methods = {
                create = {
                  description = "Creates a job in the specified region.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs",
                  httpMethod = "POST",
                  id = "transcoder.projects.locations.jobs.create",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The parent location to create and process this job. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/jobs",
                  request = {
                    ["$ref"] = "Job",
                  },
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                delete = {
                  description = "Deletes a job.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}",
                  httpMethod = "DELETE",
                  id = "transcoder.projects.locations.jobs.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    allowMissing = {
                      description = "If set to true, and the job is not found, the request will succeed but no action will be taken on the server.",
                      location = "query",
                      type = "boolean",
                    },
                    name = {
                      description = "Required. The name of the job to delete. Format: `projects/{project}/locations/{location}/jobs/{job}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
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
                  description = "Returns the job data.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs/{jobsId}",
                  httpMethod = "GET",
                  id = "transcoder.projects.locations.jobs.get",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the job to retrieve. Format: `projects/{project}/locations/{location}/jobs/{job}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+/jobs/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}",
                  response = {
                    ["$ref"] = "Job",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/cloud-platform",
                  },
                },
                list = {
                  description = "Lists jobs in the specified region.",
                  flatPath = "v1/projects/{projectsId}/locations/{locationsId}/jobs",
                  httpMethod = "GET",
                  id = "transcoder.projects.locations.jobs.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    filter = {
                      description = "The filter expression, following the syntax outlined in https://google.aip.dev/160.",
                      location = "query",
                      type = "string",
                    },
                    orderBy = {
                      description = "One or more fields to compare and use to sort the output. See https://google.aip.dev/132#ordering.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "The maximum number of items to return.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "The `next_page_token` value returned from a previous List request, if any.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. Format: `projects/{project}/locations/{location}`",
                      location = "path",
                      pattern = "^projects/[^/]+/locations/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/jobs",
                  response = {
                    ["$ref"] = "ListJobsResponse",
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
  revision = "20230105",
  rootUrl = "https://transcoder.googleapis.com/",
  schemas = {
    AdBreak = {
      description = "Ad break.",
      id = "AdBreak",
      properties = {
        startTimeOffset = {
          description = "Start time in seconds for the ad break, relative to the output file timeline. The default is `0s`.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Animation = {
      description = "Animation types.",
      id = "Animation",
      properties = {
        animationEnd = {
          ["$ref"] = "AnimationEnd",
          description = "End previous animation.",
        },
        animationFade = {
          ["$ref"] = "AnimationFade",
          description = "Display overlay object with fade animation.",
        },
        animationStatic = {
          ["$ref"] = "AnimationStatic",
          description = "Display static overlay object.",
        },
      },
      type = "object",
    },
    AnimationEnd = {
      description = "End previous overlay animation from the video. Without AnimationEnd, the overlay object will keep the state of previous animation until the end of the video.",
      id = "AnimationEnd",
      properties = {
        startTimeOffset = {
          description = "The time to end overlay object, in seconds. Default: 0",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    AnimationFade = {
      description = "Display overlay object with fade animation.",
      id = "AnimationFade",
      properties = {
        endTimeOffset = {
          description = "The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s",
          format = "google-duration",
          type = "string",
        },
        fadeType = {
          description = "Required. Type of fade animation: `FADE_IN` or `FADE_OUT`.",
          enum = {
            "FADE_TYPE_UNSPECIFIED",
            "FADE_IN",
            "FADE_OUT",
          },
          enumDescriptions = {
            "The fade type is not specified.",
            "Fade the overlay object into view.",
            "Fade the overlay object out of view.",
          },
          type = "string",
        },
        startTimeOffset = {
          description = "The time to start the fade animation, in seconds. Default: 0",
          format = "google-duration",
          type = "string",
        },
        xy = {
          ["$ref"] = "NormalizedCoordinate",
          description = "Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.",
        },
      },
      type = "object",
    },
    AnimationStatic = {
      description = "Display static overlay object.",
      id = "AnimationStatic",
      properties = {
        startTimeOffset = {
          description = "The time to start displaying the overlay object, in seconds. Default: 0",
          format = "google-duration",
          type = "string",
        },
        xy = {
          ["$ref"] = "NormalizedCoordinate",
          description = "Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.",
        },
      },
      type = "object",
    },
    Audio = {
      description = "Audio preprocessing configuration.",
      id = "Audio",
      properties = {
        highBoost = {
          description = "Enable boosting high frequency components. The default is `false`. **Note:** This field is not supported.",
          type = "boolean",
        },
        lowBoost = {
          description = "Enable boosting low frequency components. The default is `false`. **Note:** This field is not supported.",
          type = "boolean",
        },
        lufs = {
          description = "Specify audio loudness normalization in loudness units relative to full scale (LUFS). Enter a value between -24 and 0 (the default), where: * -24 is the Advanced Television Systems Committee (ATSC A/85) standard * -23 is the EU R128 broadcast standard * -19 is the prior standard for online mono audio * -18 is the ReplayGain standard * -16 is the prior standard for stereo audio * -14 is the new online audio standard recommended by Spotify, as well as Amazon Echo * 0 disables normalization",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    AudioMapping = {
      description = "The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.",
      id = "AudioMapping",
      properties = {
        atomKey = {
          description = "Required. The `EditAtom.key` that references the atom with audio inputs in the `Job.edit_list`.",
          type = "string",
        },
        gainDb = {
          description = "Audio volume control in dB. Negative values decrease volume, positive values increase. The default is 0.",
          format = "double",
          type = "number",
        },
        inputChannel = {
          description = "Required. The zero-based index of the channel in the input audio stream.",
          format = "int32",
          type = "integer",
        },
        inputKey = {
          description = "Required. The `Input.key` that identifies the input file.",
          type = "string",
        },
        inputTrack = {
          description = "Required. The zero-based index of the track in the input file.",
          format = "int32",
          type = "integer",
        },
        outputChannel = {
          description = "Required. The zero-based index of the channel in the output audio stream.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    AudioStream = {
      description = "Audio stream resource.",
      id = "AudioStream",
      properties = {
        bitrateBps = {
          description = "Required. Audio bitrate in bits per second. Must be between 1 and 10,000,000.",
          format = "int32",
          type = "integer",
        },
        channelCount = {
          description = "Number of audio channels. Must be between 1 and 6. The default is 2.",
          format = "int32",
          type = "integer",
        },
        channelLayout = {
          description = "A list of channel names specifying layout of the audio channels. This only affects the metadata embedded in the container headers, if supported by the specified format. The default is `[\"fl\", \"fr\"]`. Supported channel names: - `fl` - Front left channel - `fr` - Front right channel - `sl` - Side left channel - `sr` - Side right channel - `fc` - Front center channel - `lfe` - Low frequency",
          items = {
            type = "string",
          },
          type = "array",
        },
        codec = {
          description = "The codec for this audio stream. The default is `aac`. Supported audio codecs: - `aac` - `aac-he` - `aac-he-v2` - `mp3` - `ac3` - `eac3`",
          type = "string",
        },
        mapping = {
          description = "The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.",
          items = {
            ["$ref"] = "AudioMapping",
          },
          type = "array",
        },
        sampleRateHertz = {
          description = "The audio sample rate in Hertz. The default is 48000 Hertz.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    BwdifConfig = {
      description = "Bob Weaver Deinterlacing Filter Configuration.",
      id = "BwdifConfig",
      properties = {
        deinterlaceAllFrames = {
          description = "Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.",
          type = "boolean",
        },
        mode = {
          description = "Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field",
          type = "string",
        },
        parity = {
          description = "The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity",
          type = "string",
        },
      },
      type = "object",
    },
    Color = {
      description = "Color preprocessing configuration. **Note:** This configuration is not supported.",
      id = "Color",
      properties = {
        brightness = {
          description = "Control brightness of the video. Enter a value between -1 and 1, where -1 is minimum brightness and 1 is maximum brightness. 0 is no change. The default is 0.",
          format = "double",
          type = "number",
        },
        contrast = {
          description = "Control black and white contrast of the video. Enter a value between -1 and 1, where -1 is minimum contrast and 1 is maximum contrast. 0 is no change. The default is 0.",
          format = "double",
          type = "number",
        },
        saturation = {
          description = "Control color saturation of the video. Enter a value between -1 and 1, where -1 is fully desaturated and 1 is maximum saturation. 0 is no change. The default is 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Crop = {
      description = "Video cropping configuration for the input video. The cropped input video is scaled to match the output resolution.",
      id = "Crop",
      properties = {
        bottomPixels = {
          description = "The number of pixels to crop from the bottom. The default is 0.",
          format = "int32",
          type = "integer",
        },
        leftPixels = {
          description = "The number of pixels to crop from the left. The default is 0.",
          format = "int32",
          type = "integer",
        },
        rightPixels = {
          description = "The number of pixels to crop from the right. The default is 0.",
          format = "int32",
          type = "integer",
        },
        topPixels = {
          description = "The number of pixels to crop from the top. The default is 0.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Deblock = {
      description = "Deblock preprocessing configuration. **Note:** This configuration is not supported.",
      id = "Deblock",
      properties = {
        enabled = {
          description = "Enable deblocker. The default is `false`.",
          type = "boolean",
        },
        strength = {
          description = "Set strength of the deblocker. Enter a value between 0 and 1. The higher the value, the stronger the block removal. 0 is no deblocking. The default is 0.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Deinterlace = {
      description = "Deinterlace configuration for input video.",
      id = "Deinterlace",
      properties = {
        bwdif = {
          ["$ref"] = "BwdifConfig",
          description = "Specifies the Bob Weaver Deinterlacing Filter Configuration.",
        },
        yadif = {
          ["$ref"] = "YadifConfig",
          description = "Specifies the Yet Another Deinterlacing Filter Configuration.",
        },
      },
      type = "object",
    },
    Denoise = {
      description = "Denoise preprocessing configuration. **Note:** This configuration is not supported.",
      id = "Denoise",
      properties = {
        strength = {
          description = "Set strength of the denoise. Enter a value between 0 and 1. The higher the value, the smoother the image. 0 is no denoising. The default is 0.",
          format = "double",
          type = "number",
        },
        tune = {
          description = "Set the denoiser mode. The default is `standard`. Supported denoiser modes: - `standard` - `grain`",
          type = "string",
        },
      },
      type = "object",
    },
    EditAtom = {
      description = "Edit atom.",
      id = "EditAtom",
      properties = {
        endTimeOffset = {
          description = "End time in seconds for the atom, relative to the input file timeline. When `end_time_offset` is not specified, the `inputs` are used until the end of the atom.",
          format = "google-duration",
          type = "string",
        },
        inputs = {
          description = "List of `Input.key`s identifying files that should be used in this atom. The listed `inputs` must have the same timeline.",
          items = {
            type = "string",
          },
          type = "array",
        },
        key = {
          description = "A unique key for this atom. Must be specified when using advanced mapping.",
          type = "string",
        },
        startTimeOffset = {
          description = "Start time in seconds for the atom, relative to the input file timeline. The default is `0s`.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    ElementaryStream = {
      description = "Encoding of an input file such as an audio, video, or text track. Elementary streams must be packaged before mapping and sharing between different output formats.",
      id = "ElementaryStream",
      properties = {
        audioStream = {
          ["$ref"] = "AudioStream",
          description = "Encoding of an audio stream.",
        },
        key = {
          description = "A unique key for this elementary stream.",
          type = "string",
        },
        textStream = {
          ["$ref"] = "TextStream",
          description = "Encoding of a text stream. For example, closed captions or subtitles.",
        },
        videoStream = {
          ["$ref"] = "VideoStream",
          description = "Encoding of a video stream.",
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
    H264CodecSettings = {
      description = "H264 codec settings.",
      id = "H264CodecSettings",
      properties = {
        allowOpenGop = {
          description = "Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default is `false`.",
          type = "boolean",
        },
        aqStrength = {
          description = "Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A higher value equals a lower bitrate but smoother image. The default is 0.",
          format = "double",
          type = "number",
        },
        bFrameCount = {
          description = "The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than `VideoStream.gop_frame_count` if set. The default is 0.",
          format = "int32",
          type = "integer",
        },
        bPyramid = {
          description = "Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The default is `false`.",
          type = "boolean",
        },
        bitrateBps = {
          description = "Required. The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 800,000,000.",
          format = "int32",
          type = "integer",
        },
        crfLevel = {
          description = "Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21.",
          format = "int32",
          type = "integer",
        },
        enableTwoPass = {
          description = "Use two-pass encoding strategy to achieve better video quality. `VideoStream.rate_control_mode` must be `vbr`. The default is `false`.",
          type = "boolean",
        },
        entropyCoder = {
          description = "The entropy coder to use. The default is `cabac`. Supported entropy coders: - `cavlc` - `cabac`",
          type = "string",
        },
        frameRate = {
          description = "Required. The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.",
          format = "double",
          type = "number",
        },
        gopDuration = {
          description = "Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.",
          format = "google-duration",
          type = "string",
        },
        gopFrameCount = {
          description = "Select the GOP size based on the specified frame count. Must be greater than zero.",
          format = "int32",
          type = "integer",
        },
        heightPixels = {
          description = "The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
        pixelFormat = {
          description = "Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format",
          type = "string",
        },
        preset = {
          description = "Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Preset). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.",
          type = "string",
        },
        profile = {
          description = "Enforces the specified codec profile. The following profiles are supported: * `baseline` * `main` * `high` (default) The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.",
          type = "string",
        },
        rateControlMode = {
          description = "Specify the `rate_control_mode`. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate - `crf` - constant rate factor",
          type = "string",
        },
        tune = {
          description = "Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.264#Tune). Note that certain values for this field may cause the transcoder to override other fields you set in the `H264CodecSettings` message.",
          type = "string",
        },
        vbvFullnessBits = {
          description = "Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to 90% of `VideoStream.vbv_size_bits`.",
          format = "int32",
          type = "integer",
        },
        vbvSizeBits = {
          description = "Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to `VideoStream.bitrate_bps`.",
          format = "int32",
          type = "integer",
        },
        widthPixels = {
          description = "The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    H265CodecSettings = {
      description = "H265 codec settings.",
      id = "H265CodecSettings",
      properties = {
        allowOpenGop = {
          description = "Specifies whether an open Group of Pictures (GOP) structure should be allowed or not. The default is `false`.",
          type = "boolean",
        },
        aqStrength = {
          description = "Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1, where 0 disables the quantizer and 1 maximizes the quantizer. A higher value equals a lower bitrate but smoother image. The default is 0.",
          format = "double",
          type = "number",
        },
        bFrameCount = {
          description = "The number of consecutive B-frames. Must be greater than or equal to zero. Must be less than `VideoStream.gop_frame_count` if set. The default is 0.",
          format = "int32",
          type = "integer",
        },
        bPyramid = {
          description = "Allow B-pyramid for reference frame selection. This may not be supported on all decoders. The default is `false`.",
          type = "boolean",
        },
        bitrateBps = {
          description = "Required. The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 800,000,000.",
          format = "int32",
          type = "integer",
        },
        crfLevel = {
          description = "Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21.",
          format = "int32",
          type = "integer",
        },
        enableTwoPass = {
          description = "Use two-pass encoding strategy to achieve better video quality. `VideoStream.rate_control_mode` must be `vbr`. The default is `false`.",
          type = "boolean",
        },
        frameRate = {
          description = "Required. The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.",
          format = "double",
          type = "number",
        },
        gopDuration = {
          description = "Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.",
          format = "google-duration",
          type = "string",
        },
        gopFrameCount = {
          description = "Select the GOP size based on the specified frame count. Must be greater than zero.",
          format = "int32",
          type = "integer",
        },
        heightPixels = {
          description = "The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
        pixelFormat = {
          description = "Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format",
          type = "string",
        },
        preset = {
          description = "Enforces the specified codec preset. The default is `veryfast`. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.265). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.",
          type = "string",
        },
        profile = {
          description = "Enforces the specified codec profile. The following profiles are supported: * 8-bit profiles * `main` (default) * `main-intra` * `mainstillpicture` * 10-bit profiles * `main10` (default) * `main10-intra` * `main422-10` * `main422-10-intra` * `main444-10` * `main444-10-intra` * 12-bit profiles * `main12` (default) * `main12-intra` * `main422-12` * `main422-12-intra` * `main444-12` * `main444-12-intra` The available options are [FFmpeg-compatible](https://x265.readthedocs.io/). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.",
          type = "string",
        },
        rateControlMode = {
          description = "Specify the `rate_control_mode`. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate - `crf` - constant rate factor",
          type = "string",
        },
        tune = {
          description = "Enforces the specified codec tune. The available options are [FFmpeg-compatible](https://trac.ffmpeg.org/wiki/Encode/H.265). Note that certain values for this field may cause the transcoder to override other fields you set in the `H265CodecSettings` message.",
          type = "string",
        },
        vbvFullnessBits = {
          description = "Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to 90% of `VideoStream.vbv_size_bits`.",
          format = "int32",
          type = "integer",
        },
        vbvSizeBits = {
          description = "Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater than zero. The default is equal to `VideoStream.bitrate_bps`.",
          format = "int32",
          type = "integer",
        },
        widthPixels = {
          description = "The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Image = {
      description = "Overlaid jpeg image.",
      id = "Image",
      properties = {
        alpha = {
          description = "Target image opacity. Valid values are from `1.0` (solid, default) to `0.0` (transparent), exclusive. Set this to a value greater than `0.0`.",
          format = "double",
          type = "number",
        },
        resolution = {
          ["$ref"] = "NormalizedCoordinate",
          description = "Normalized image resolution, based on output video resolution. Valid values: `0.0`–`1.0`. To respect the original image aspect ratio, set either `x` or `y` to `0.0`. To use the original image resolution, set both `x` and `y` to `0.0`.",
        },
        uri = {
          description = "Required. URI of the JPEG image in Cloud Storage. For example, `gs://bucket/inputs/image.jpeg`. JPEG is the only supported image type.",
          type = "string",
        },
      },
      type = "object",
    },
    Input = {
      description = "Input asset.",
      id = "Input",
      properties = {
        key = {
          description = "A unique key for this input. Must be specified when using advanced mapping and edit lists.",
          type = "string",
        },
        preprocessingConfig = {
          ["$ref"] = "PreprocessingConfig",
          description = "Preprocessing configurations.",
        },
        uri = {
          description = "URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). If empty, the value is populated from `Job.input_uri`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).",
          type = "string",
        },
      },
      type = "object",
    },
    Job = {
      description = "Transcoding job resource.",
      id = "Job",
      properties = {
        config = {
          ["$ref"] = "JobConfig",
          description = "The configuration for this job.",
        },
        createTime = {
          description = "Output only. The time the job was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        endTime = {
          description = "Output only. The time the transcoding finished.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        error = {
          ["$ref"] = "Status",
          description = "Output only. An error object that describes the reason for the failure. This property is always present when `state` is `FAILED`.",
          readOnly = true,
        },
        inputUri = {
          description = "Input only. Specify the `input_uri` to populate empty `uri` fields in each element of `Job.config.inputs` or `JobTemplate.config.inputs` when using template. URI of the media. Input files must be at least 5 seconds in duration and stored in Cloud Storage (for example, `gs://bucket/inputs/file.mp4`). See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).",
          type = "string",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this job. You can use these to organize and group your jobs.",
          type = "object",
        },
        name = {
          description = "The resource name of the job. Format: `projects/{project_number}/locations/{location}/jobs/{job}`",
          type = "string",
        },
        outputUri = {
          description = "Input only. Specify the `output_uri` to populate an empty `Job.config.output.uri` or `JobTemplate.config.output.uri` when using template. URI for the output file(s). For example, `gs://my-bucket/outputs/`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).",
          type = "string",
        },
        startTime = {
          description = "Output only. The time the transcoding started.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the job.",
          enum = {
            "PROCESSING_STATE_UNSPECIFIED",
            "PENDING",
            "RUNNING",
            "SUCCEEDED",
            "FAILED",
          },
          enumDescriptions = {
            "The processing state is not specified.",
            "The job is enqueued and will be picked up for processing soon.",
            "The job is being processed.",
            "The job has been completed successfully.",
            "The job has failed. For additional information, see `failure_reason` and `failure_details`",
          },
          readOnly = true,
          type = "string",
        },
        templateId = {
          description = "Input only. Specify the `template_id` to use for populating `Job.config`. The default is `preset/web-hd`. Preset Transcoder templates: - `preset/{preset_id}` - User defined JobTemplate: `{job_template_id}`",
          type = "string",
        },
        ttlAfterCompletionDays = {
          description = "Job time to live value in days, which will be effective after job completion. Job should be deleted automatically after the given TTL. Enter a value between 1 and 90. The default is 30.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    JobConfig = {
      description = "Job configuration",
      id = "JobConfig",
      properties = {
        adBreaks = {
          description = "List of ad breaks. Specifies where to insert ad break tags in the output manifests.",
          items = {
            ["$ref"] = "AdBreak",
          },
          type = "array",
        },
        editList = {
          description = "List of `Edit atom`s. Defines the ultimate timeline of the resulting file or manifest.",
          items = {
            ["$ref"] = "EditAtom",
          },
          type = "array",
        },
        elementaryStreams = {
          description = "List of elementary streams.",
          items = {
            ["$ref"] = "ElementaryStream",
          },
          type = "array",
        },
        inputs = {
          description = "List of input assets stored in Cloud Storage.",
          items = {
            ["$ref"] = "Input",
          },
          type = "array",
        },
        manifests = {
          description = "List of output manifests.",
          items = {
            ["$ref"] = "Manifest",
          },
          type = "array",
        },
        muxStreams = {
          description = "List of multiplexing settings for output streams.",
          items = {
            ["$ref"] = "MuxStream",
          },
          type = "array",
        },
        output = {
          ["$ref"] = "Output",
          description = "Output configuration.",
        },
        overlays = {
          description = "List of overlays on the output video, in descending Z-order.",
          items = {
            ["$ref"] = "Overlay",
          },
          type = "array",
        },
        pubsubDestination = {
          ["$ref"] = "PubsubDestination",
          description = "Destination on Pub/Sub.",
        },
        spriteSheets = {
          description = "List of output sprite sheets. Spritesheets require at least one VideoStream in the Jobconfig.",
          items = {
            ["$ref"] = "SpriteSheet",
          },
          type = "array",
        },
      },
      type = "object",
    },
    JobTemplate = {
      description = "Transcoding job template resource.",
      id = "JobTemplate",
      properties = {
        config = {
          ["$ref"] = "JobConfig",
          description = "The configuration for this template.",
        },
        labels = {
          additionalProperties = {
            type = "string",
          },
          description = "The labels associated with this job template. You can use these to organize and group your job templates.",
          type = "object",
        },
        name = {
          description = "The resource name of the job template. Format: `projects/{project_number}/locations/{location}/jobTemplates/{job_template}`",
          type = "string",
        },
      },
      type = "object",
    },
    ListJobTemplatesResponse = {
      description = "Response message for `TranscoderService.ListJobTemplates`.",
      id = "ListJobTemplatesResponse",
      properties = {
        jobTemplates = {
          description = "List of job templates in the specified region.",
          items = {
            ["$ref"] = "JobTemplate",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The pagination token.",
          type = "string",
        },
        unreachable = {
          description = "List of regions that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListJobsResponse = {
      description = "Response message for `TranscoderService.ListJobs`.",
      id = "ListJobsResponse",
      properties = {
        jobs = {
          description = "List of jobs in the specified region.",
          items = {
            ["$ref"] = "Job",
          },
          type = "array",
        },
        nextPageToken = {
          description = "The pagination token.",
          type = "string",
        },
        unreachable = {
          description = "List of regions that could not be reached.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Manifest = {
      description = "Manifest configuration.",
      id = "Manifest",
      properties = {
        fileName = {
          description = "The name of the generated file. The default is `manifest` with the extension suffix corresponding to the `Manifest.type`.",
          type = "string",
        },
        muxStreams = {
          description = "Required. List of user given `MuxStream.key`s that should appear in this manifest. When `Manifest.type` is `HLS`, a media manifest with name `MuxStream.key` and `.m3u8` extension is generated for each element of the `Manifest.mux_streams`.",
          items = {
            type = "string",
          },
          type = "array",
        },
        type = {
          description = "Required. Type of the manifest, can be `HLS` or `DASH`.",
          enum = {
            "MANIFEST_TYPE_UNSPECIFIED",
            "HLS",
            "DASH",
          },
          enumDescriptions = {
            "The manifest type is not specified.",
            "Create `HLS` manifest. The corresponding file extension is `.m3u8`.",
            "Create `DASH` manifest. The corresponding file extension is `.mpd`.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    MuxStream = {
      description = "Multiplexing settings for output stream.",
      id = "MuxStream",
      properties = {
        container = {
          description = "The container format. The default is `mp4` Supported container formats: - `ts` - `fmp4`- the corresponding file extension is `.m4s` - `mp4` - `vtt` See also: [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats)",
          type = "string",
        },
        elementaryStreams = {
          description = "List of `ElementaryStream.key`s multiplexed in this stream.",
          items = {
            type = "string",
          },
          type = "array",
        },
        fileName = {
          description = "The name of the generated file. The default is `MuxStream.key` with the extension suffix corresponding to the `MuxStream.container`. Individual segments also have an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `mux_stream0000000123.ts`.",
          type = "string",
        },
        key = {
          description = "A unique key for this multiplexed stream. HLS media manifests will be named `MuxStream.key` with the `.m3u8` extension suffix.",
          type = "string",
        },
        segmentSettings = {
          ["$ref"] = "SegmentSettings",
          description = "Segment settings for `ts`, `fmp4` and `vtt`.",
        },
      },
      type = "object",
    },
    NormalizedCoordinate = {
      description = "2D normalized coordinates. Default: `{0.0, 0.0}`",
      id = "NormalizedCoordinate",
      properties = {
        x = {
          description = "Normalized x coordinate.",
          format = "double",
          type = "number",
        },
        y = {
          description = "Normalized y coordinate.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    Output = {
      description = "Location of output file(s) in a Cloud Storage bucket.",
      id = "Output",
      properties = {
        uri = {
          description = "URI for the output file(s). For example, `gs://my-bucket/outputs/`. If empty, the value is populated from `Job.output_uri`. See [Supported input and output formats](https://cloud.google.com/transcoder/docs/concepts/supported-input-and-output-formats).",
          type = "string",
        },
      },
      type = "object",
    },
    Overlay = {
      description = "Overlay configuration.",
      id = "Overlay",
      properties = {
        animations = {
          description = "List of Animations. The list should be chronological, without any time overlap.",
          items = {
            ["$ref"] = "Animation",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "Image",
          description = "Image overlay.",
        },
      },
      type = "object",
    },
    Pad = {
      description = "Pad filter configuration for the input video. The padded input video is scaled after padding with black to match the output resolution.",
      id = "Pad",
      properties = {
        bottomPixels = {
          description = "The number of pixels to add to the bottom. The default is 0.",
          format = "int32",
          type = "integer",
        },
        leftPixels = {
          description = "The number of pixels to add to the left. The default is 0.",
          format = "int32",
          type = "integer",
        },
        rightPixels = {
          description = "The number of pixels to add to the right. The default is 0.",
          format = "int32",
          type = "integer",
        },
        topPixels = {
          description = "The number of pixels to add to the top. The default is 0.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    PreprocessingConfig = {
      description = "Preprocessing configurations.",
      id = "PreprocessingConfig",
      properties = {
        audio = {
          ["$ref"] = "Audio",
          description = "Audio preprocessing configuration.",
        },
        color = {
          ["$ref"] = "Color",
          description = "Color preprocessing configuration.",
        },
        crop = {
          ["$ref"] = "Crop",
          description = "Specify the video cropping configuration.",
        },
        deblock = {
          ["$ref"] = "Deblock",
          description = "Deblock preprocessing configuration.",
        },
        deinterlace = {
          ["$ref"] = "Deinterlace",
          description = "Specify the video deinterlace configuration.",
        },
        denoise = {
          ["$ref"] = "Denoise",
          description = "Denoise preprocessing configuration.",
        },
        pad = {
          ["$ref"] = "Pad",
          description = "Specify the video pad filter configuration.",
        },
      },
      type = "object",
    },
    PubsubDestination = {
      description = "A Pub/Sub destination.",
      id = "PubsubDestination",
      properties = {
        topic = {
          description = "The name of the Pub/Sub topic to publish job completion notification to. For example: `projects/{project}/topics/{topic}`.",
          type = "string",
        },
      },
      type = "object",
    },
    SegmentSettings = {
      description = "Segment settings for `ts`, `fmp4` and `vtt`.",
      id = "SegmentSettings",
      properties = {
        individualSegments = {
          description = "Required. Create an individual segment file. The default is `false`.",
          type = "boolean",
        },
        segmentDuration = {
          description = "Duration of the segments in seconds. The default is `6.0s`. Note that `segmentDuration` must be greater than or equal to [`gopDuration`](#videostream), and `segmentDuration` must be divisible by [`gopDuration`](#videostream).",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    SpriteSheet = {
      description = "Sprite sheet configuration.",
      id = "SpriteSheet",
      properties = {
        columnCount = {
          description = "The maximum number of sprites per row in a sprite sheet. The default is 0, which indicates no maximum limit.",
          format = "int32",
          type = "integer",
        },
        endTimeOffset = {
          description = "End time in seconds, relative to the output file timeline. When `end_time_offset` is not specified, the sprites are generated until the end of the output file.",
          format = "google-duration",
          type = "string",
        },
        filePrefix = {
          description = "Required. File name prefix for the generated sprite sheets. Each sprite sheet has an incremental 10-digit zero-padded suffix starting from 0 before the extension, such as `sprite_sheet0000000123.jpeg`.",
          type = "string",
        },
        format = {
          description = "Format type. The default is `jpeg`. Supported formats: - `jpeg`",
          type = "string",
        },
        interval = {
          description = "Starting from `0s`, create sprites at regular intervals. Specify the interval value in seconds.",
          format = "google-duration",
          type = "string",
        },
        quality = {
          description = "The quality of the generated sprite sheet. Enter a value between 1 and 100, where 1 is the lowest quality and 100 is the highest quality. The default is 100. A high quality value corresponds to a low image data compression ratio.",
          format = "int32",
          type = "integer",
        },
        rowCount = {
          description = "The maximum number of rows per sprite sheet. When the sprite sheet is full, a new sprite sheet is created. The default is 0, which indicates no maximum limit.",
          format = "int32",
          type = "integer",
        },
        spriteHeightPixels = {
          description = "Required. The height of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_height_pixels field or the SpriteSheet.sprite_width_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
        spriteWidthPixels = {
          description = "Required. The width of sprite in pixels. Must be an even integer. To preserve the source aspect ratio, set the SpriteSheet.sprite_width_pixels field or the SpriteSheet.sprite_height_pixels field, but not both (the API will automatically calculate the missing field). For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
        startTimeOffset = {
          description = "Start time in seconds, relative to the output file timeline. Determines the first sprite to pick. The default is `0s`.",
          format = "google-duration",
          type = "string",
        },
        totalCount = {
          description = "Total number of sprites. Create the specified number of sprites distributed evenly across the timeline of the output media. The default is 100.",
          format = "int32",
          type = "integer",
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
    TextMapping = {
      description = "The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.",
      id = "TextMapping",
      properties = {
        atomKey = {
          description = "Required. The `EditAtom.key` that references atom with text inputs in the `Job.edit_list`.",
          type = "string",
        },
        inputKey = {
          description = "Required. The `Input.key` that identifies the input file.",
          type = "string",
        },
        inputTrack = {
          description = "Required. The zero-based index of the track in the input file.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    TextStream = {
      description = "Encoding of a text stream. For example, closed captions or subtitles.",
      id = "TextStream",
      properties = {
        codec = {
          description = "The codec for this text stream. The default is `webvtt`. Supported text codecs: - `srt` - `ttml` - `cea608` - `cea708` - `webvtt`",
          type = "string",
        },
        mapping = {
          description = "The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.",
          items = {
            ["$ref"] = "TextMapping",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoStream = {
      description = "Video stream resource.",
      id = "VideoStream",
      properties = {
        h264 = {
          ["$ref"] = "H264CodecSettings",
          description = "H264 codec settings.",
        },
        h265 = {
          ["$ref"] = "H265CodecSettings",
          description = "H265 codec settings.",
        },
        vp9 = {
          ["$ref"] = "Vp9CodecSettings",
          description = "VP9 codec settings.",
        },
      },
      type = "object",
    },
    Vp9CodecSettings = {
      description = "VP9 codec settings.",
      id = "Vp9CodecSettings",
      properties = {
        bitrateBps = {
          description = "Required. The video bitrate in bits per second. The minimum value is 1,000. The maximum value is 480,000,000.",
          format = "int32",
          type = "integer",
        },
        crfLevel = {
          description = "Target CRF level. Must be between 10 and 36, where 10 is the highest quality and 36 is the most efficient compression. The default is 21. **Note:** This field is not supported.",
          format = "int32",
          type = "integer",
        },
        frameRate = {
          description = "Required. The target video frame rate in frames per second (FPS). Must be less than or equal to 120. Will default to the input frame rate if larger than the input frame rate. The API will generate an output FPS that is divisible by the input FPS, and smaller or equal to the target FPS. See [Calculating frame rate](https://cloud.google.com/transcoder/docs/concepts/frame-rate) for more information.",
          format = "double",
          type = "number",
        },
        gopDuration = {
          description = "Select the GOP size based on the specified duration. The default is `3s`. Note that `gopDuration` must be less than or equal to [`segmentDuration`](#SegmentSettings), and [`segmentDuration`](#SegmentSettings) must be divisible by `gopDuration`.",
          format = "google-duration",
          type = "string",
        },
        gopFrameCount = {
          description = "Select the GOP size based on the specified frame count. Must be greater than zero.",
          format = "int32",
          type = "integer",
        },
        heightPixels = {
          description = "The height of the video in pixels. Must be an even integer. When not specified, the height is adjusted to match the specified width and input aspect ratio. If both are omitted, the input height is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the height, in pixels, per the horizontal ASR. The API calculates the width per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
        pixelFormat = {
          description = "Pixel format to use. The default is `yuv420p`. Supported pixel formats: - `yuv420p` pixel format - `yuv422p` pixel format - `yuv444p` pixel format - `yuv420p10` 10-bit HDR pixel format - `yuv422p10` 10-bit HDR pixel format - `yuv444p10` 10-bit HDR pixel format - `yuv420p12` 12-bit HDR pixel format - `yuv422p12` 12-bit HDR pixel format - `yuv444p12` 12-bit HDR pixel format",
          type = "string",
        },
        profile = {
          description = "Enforces the specified codec profile. The following profiles are supported: * `profile0` (default) * `profile1` * `profile2` * `profile3` The available options are [WebM-compatible](https://www.webmproject.org/vp9/profiles/). Note that certain values for this field may cause the transcoder to override other fields you set in the `Vp9CodecSettings` message.",
          type = "string",
        },
        rateControlMode = {
          description = "Specify the `rate_control_mode`. The default is `vbr`. Supported rate control modes: - `vbr` - variable bitrate",
          type = "string",
        },
        widthPixels = {
          description = "The width of the video in pixels. Must be an even integer. When not specified, the width is adjusted to match the specified height and input aspect ratio. If both are omitted, the input width is used. For portrait videos that contain horizontal ASR and rotation metadata, provide the width, in pixels, per the horizontal ASR. The API calculates the height per the horizontal ASR. The API detects any rotation metadata and swaps the requested height and width for the output.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    YadifConfig = {
      description = "Yet Another Deinterlacing Filter Configuration.",
      id = "YadifConfig",
      properties = {
        deinterlaceAllFrames = {
          description = "Deinterlace all frames rather than just the frames identified as interlaced. The default is `false`.",
          type = "boolean",
        },
        disableSpatialInterlacing = {
          description = "Disable spacial interlacing. The default is `false`.",
          type = "boolean",
        },
        mode = {
          description = "Specifies the deinterlacing mode to adopt. The default is `send_frame`. Supported values: - `send_frame`: Output one frame for each frame - `send_field`: Output one frame for each field",
          type = "string",
        },
        parity = {
          description = "The picture field parity assumed for the input interlaced video. The default is `auto`. Supported values: - `tff`: Assume the top field is first - `bff`: Assume the bottom field is first - `auto`: Enable automatic detection of field parity",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Transcoder API",
  version = "v1",
  version_module = true,
}