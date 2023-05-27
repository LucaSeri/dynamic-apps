return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/youtube"] = {
          description = "Manage your YouTube account",
        },
        ["https://www.googleapis.com/auth/youtube.channel-memberships.creator"] = {
          description = "See a list of your current active channel members, their current level, and when they became a member",
        },
        ["https://www.googleapis.com/auth/youtube.force-ssl"] = {
          description = "See, edit, and permanently delete your YouTube videos, ratings, comments and captions",
        },
        ["https://www.googleapis.com/auth/youtube.readonly"] = {
          description = "View your YouTube account",
        },
        ["https://www.googleapis.com/auth/youtube.upload"] = {
          description = "Manage your YouTube videos",
        },
        ["https://www.googleapis.com/auth/youtubepartner"] = {
          description = "View and manage your assets and associated content on YouTube",
        },
        ["https://www.googleapis.com/auth/youtubepartner-channel-audit"] = {
          description = "View private information of your YouTube channel relevant during the audit process with a YouTube partner",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://youtube.googleapis.com/",
  batchPath = "batch",
  canonicalName = "YouTube",
  description = "The YouTube Data API v3 is an API that provides access to YouTube data, such as videos, playlists, and channels.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/youtube/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "youtube:v3",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://youtube.mtls.googleapis.com/",
  name = "youtube",
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
    abuseReports = {
      methods = {
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/abuseReports",
          httpMethod = "POST",
          id = "youtube.abuseReports.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/abuseReports",
          request = {
            ["$ref"] = "AbuseReport",
          },
          response = {
            ["$ref"] = "AbuseReport",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
      },
    },
    activities = {
      methods = {
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/activities",
          httpMethod = "GET",
          id = "youtube.activities.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            channelId = {
              location = "query",
              type = "string",
            },
            home = {
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            mine = {
              location = "query",
              type = "boolean",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more activity resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in an activity resource, the snippet property contains other properties that identify the type of activity, a display title for the activity, and so forth. If you set *part=snippet*, the API response will also contain all of those nested properties.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            publishedAfter = {
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            publishedBefore = {
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            regionCode = {
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/activities",
          response = {
            ["$ref"] = "ActivityListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
      },
    },
    captions = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/captions",
          httpMethod = "DELETE",
          id = "youtube.captions.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOf = {
              description = "ID of the Google+ Page for the channel that the request is be on behalf of",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/captions",
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        download = {
          description = "Downloads a caption track.",
          flatPath = "youtube/v3/captions/{id}",
          httpMethod = "GET",
          id = "youtube.captions.download",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "The ID of the caption track to download, required for One Platform.",
              location = "path",
              required = true,
              type = "string",
            },
            onBehalfOf = {
              description = "ID of the Google+ Page for the channel that the request is be on behalf of",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            tfmt = {
              description = "Convert the captions into this format. Supported options are sbv, srt, and vtt.",
              location = "query",
              type = "string",
            },
            tlang = {
              description = "tlang is the language code; machine translate the captions into this language.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/captions/{id}",
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
          supportsMediaDownload = true,
          useMediaDownloadService = true,
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/captions",
          httpMethod = "POST",
          id = "youtube.captions.insert",
          mediaUpload = {
            accept = {
              "text/xml",
              "application/octet-stream",
              "*/*",
            },
            maxSize = "104857600",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/youtube/v3/captions",
              },
              simple = {
                multipart = true,
                path = "/upload/youtube/v3/captions",
              },
            },
          },
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOf = {
              description = "ID of the Google+ Page for the channel that the request is be on behalf of",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the caption resource parts that the API response will include. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            sync = {
              description = "Extra parameter to allow automatically syncing the uploaded caption/transcript with the audio.",
              location = "query",
              type = "boolean",
            },
          },
          path = "youtube/v3/captions",
          request = {
            ["$ref"] = "Caption",
          },
          response = {
            ["$ref"] = "Caption",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
          supportsMediaUpload = true,
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/captions",
          httpMethod = "GET",
          id = "youtube.captions.list",
          parameterOrder = {
            "part",
            "videoId",
          },
          parameters = {
            id = {
              description = "Returns the captions with the given IDs for Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            onBehalfOf = {
              description = "ID of the Google+ Page for the channel that the request is on behalf of.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            videoId = {
              description = "Returns the captions for the specified video.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/captions",
          response = {
            ["$ref"] = "CaptionListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/captions",
          httpMethod = "PUT",
          id = "youtube.captions.update",
          mediaUpload = {
            accept = {
              "text/xml",
              "application/octet-stream",
              "*/*",
            },
            maxSize = "104857600",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/youtube/v3/captions",
              },
              simple = {
                multipart = true,
                path = "/upload/youtube/v3/captions",
              },
            },
          },
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOf = {
              description = "ID of the Google+ Page for the channel that the request is on behalf of.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more caption resource parts that the API response will include. The part names that you can include in the parameter value are id and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            sync = {
              description = "Extra parameter to allow automatically syncing the uploaded caption/transcript with the audio.",
              location = "query",
              type = "boolean",
            },
          },
          path = "youtube/v3/captions",
          request = {
            ["$ref"] = "Caption",
          },
          response = {
            ["$ref"] = "Caption",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
          supportsMediaUpload = true,
        },
      },
    },
    channelBanners = {
      methods = {
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/channelBanners/insert",
          httpMethod = "POST",
          id = "youtube.channelBanners.insert",
          mediaUpload = {
            accept = {
              "image/jpeg",
              "image/png",
              "application/octet-stream",
            },
            maxSize = "6291456",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/youtube/v3/channelBanners/insert",
              },
              simple = {
                multipart = true,
                path = "/upload/youtube/v3/channelBanners/insert",
              },
            },
          },
          parameterOrder = {},
          parameters = {
            channelId = {
              description = "Unused, channel_id is currently derived from the security context of the requestor.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/channelBanners/insert",
          request = {
            ["$ref"] = "ChannelBannerResource",
          },
          response = {
            ["$ref"] = "ChannelBannerResource",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.upload",
          },
          supportsMediaUpload = true,
        },
      },
    },
    channelSections = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/channelSections",
          httpMethod = "DELETE",
          id = "youtube.channelSections.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/channelSections",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/channelSections",
          httpMethod = "POST",
          id = "youtube.channelSections.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part names that you can include in the parameter value are snippet and contentDetails.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/channelSections",
          request = {
            ["$ref"] = "ChannelSection",
          },
          response = {
            ["$ref"] = "ChannelSection",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/channelSections",
          httpMethod = "GET",
          id = "youtube.channelSections.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            channelId = {
              description = "Return the ChannelSections owned by the specified channel ID.",
              location = "query",
              type = "string",
            },
            hl = {
              description = "Return content in specified language",
              location = "query",
              type = "string",
            },
            id = {
              description = "Return the ChannelSections with the given IDs for Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            mine = {
              description = "Return the ChannelSections owned by the authenticated user.",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more channelSection resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, and contentDetails. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channelSection resource, the snippet property contains other properties, such as a display title for the channelSection. If you set *part=snippet*, the API response will also contain all of those nested properties.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/channelSections",
          response = {
            ["$ref"] = "ChannelSectionListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/channelSections",
          httpMethod = "PUT",
          id = "youtube.channelSections.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part names that you can include in the parameter value are snippet and contentDetails.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/channelSections",
          request = {
            ["$ref"] = "ChannelSection",
          },
          response = {
            ["$ref"] = "ChannelSection",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    channels = {
      methods = {
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/channels",
          httpMethod = "GET",
          id = "youtube.channels.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            categoryId = {
              description = "Return the channels within the specified guide category ID.",
              location = "query",
              type = "string",
            },
            forUsername = {
              description = "Return the channel associated with a YouTube username.",
              location = "query",
              type = "string",
            },
            hl = {
              description = "Stands for \"host language\". Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en_US, es_MX).",
              location = "query",
              type = "string",
            },
            id = {
              description = "Return the channels with the specified IDs.",
              location = "query",
              repeated = true,
              type = "string",
            },
            managedByMe = {
              description = "Return the channels managed by the authenticated user.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            mine = {
              description = "Return the ids of channels owned by the authenticated user.",
              location = "query",
              type = "boolean",
            },
            mySubscribers = {
              description = "Return the channels subscribed to the authenticated user",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more channel resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channel resource, the contentDetails property contains other properties, such as the uploads properties. As such, if you set *part=contentDetails*, the API response will also contain all of those nested properties.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/channels",
          response = {
            ["$ref"] = "ChannelListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
            "https://www.googleapis.com/auth/youtubepartner-channel-audit",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/channels",
          httpMethod = "PUT",
          id = "youtube.channels.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "The *onBehalfOfContentOwner* parameter indicates that the authenticated user is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with needs to be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The API currently only allows the parameter value to be set to either brandingSettings or invideoPromotion. (You cannot update both of those parts with a single request.) Note that this method overrides the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/channels",
          request = {
            ["$ref"] = "Channel",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    commentThreads = {
      methods = {
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/commentThreads",
          httpMethod = "POST",
          id = "youtube.commentThreads.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter identifies the properties that the API response will include. Set the parameter value to snippet. The snippet part has a quota cost of 2 units.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/commentThreads",
          request = {
            ["$ref"] = "CommentThread",
          },
          response = {
            ["$ref"] = "CommentThread",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/commentThreads",
          httpMethod = "GET",
          id = "youtube.commentThreads.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            allThreadsRelatedToChannelId = {
              description = "Returns the comment threads of all videos of the channel and the channel comments as well.",
              location = "query",
              type = "string",
            },
            channelId = {
              description = "Returns the comment threads for all the channel comments (ie does not include comments left on videos).",
              location = "query",
              type = "string",
            },
            id = {
              description = "Returns the comment threads with the given IDs for Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "20",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            moderationStatus = {
              default = "published",
              description = "Limits the returned comment threads to those with the specified moderation status. Not compatible with the 'id' filter. Valid values: published, heldForReview, likelySpam.",
              enum = {
                "published",
                "heldForReview",
                "likelySpam",
                "rejected",
              },
              enumDescriptions = {
                "The comment is available for public display.",
                "The comment is awaiting review by a moderator.",
                "",
                "The comment is unfit for display.",
              },
              location = "query",
              type = "string",
            },
            order = {
              default = "time",
              enum = {
                "orderUnspecified",
                "time",
                "relevance",
              },
              enumDescriptions = {
                "",
                "Order by time.",
                "Order by relevance.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more commentThread resource properties that the API response will include.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            searchTerms = {
              description = "Limits the returned comment threads to those matching the specified key words. Not compatible with the 'id' filter.",
              location = "query",
              type = "string",
            },
            textFormat = {
              default = "html",
              description = "The requested text format for the returned comments.",
              enum = {
                "textFormatUnspecified",
                "html",
                "plainText",
              },
              enumDescriptions = {
                "",
                "Returns the comments in HTML format. This is the default value.",
                "Returns the comments in plain text format.",
              },
              location = "query",
              type = "string",
            },
            videoId = {
              description = "Returns the comment threads of the specified video.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/commentThreads",
          response = {
            ["$ref"] = "CommentThreadListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
      },
    },
    comments = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/comments",
          httpMethod = "DELETE",
          id = "youtube.comments.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/comments",
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/comments",
          httpMethod = "POST",
          id = "youtube.comments.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter identifies the properties that the API response will include. Set the parameter value to snippet. The snippet part has a quota cost of 2 units.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/comments",
          request = {
            ["$ref"] = "Comment",
          },
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/comments",
          httpMethod = "GET",
          id = "youtube.comments.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            id = {
              description = "Returns the comments with the given IDs for One Platform.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "20",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            parentId = {
              description = "Returns replies to the specified comment. Note, currently YouTube features only one level of replies (ie replies to top level comments). However replies to replies may be supported in the future.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more comment resource properties that the API response will include.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            textFormat = {
              default = "html",
              description = "The requested text format for the returned comments.",
              enum = {
                "textFormatUnspecified",
                "html",
                "plainText",
              },
              enumDescriptions = {
                "",
                "Returns the comments in HTML format. This is the default value.",
                "Returns the comments in plain text format.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/comments",
          response = {
            ["$ref"] = "CommentListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        markAsSpam = {
          description = "Expresses the caller's opinion that one or more comments should be flagged as spam.",
          flatPath = "youtube/v3/comments/markAsSpam",
          httpMethod = "POST",
          id = "youtube.comments.markAsSpam",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Flags the comments with the given IDs as spam in the caller's opinion.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/comments/markAsSpam",
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        setModerationStatus = {
          description = "Sets the moderation status of one or more comments.",
          flatPath = "youtube/v3/comments/setModerationStatus",
          httpMethod = "POST",
          id = "youtube.comments.setModerationStatus",
          parameterOrder = {
            "id",
            "moderationStatus",
          },
          parameters = {
            banAuthor = {
              default = "false",
              description = "If set to true the author of the comment gets added to the ban list. This means all future comments of the author will autmomatically be rejected. Only valid in combination with STATUS_REJECTED.",
              location = "query",
              type = "boolean",
            },
            id = {
              description = "Modifies the moderation status of the comments with the given IDs",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            moderationStatus = {
              description = "Specifies the requested moderation status. Note, comments can be in statuses, which are not available through this call. For example, this call does not allow to mark a comment as 'likely spam'. Valid values: MODERATION_STATUS_PUBLISHED, MODERATION_STATUS_HELD_FOR_REVIEW, MODERATION_STATUS_REJECTED.",
              enum = {
                "published",
                "heldForReview",
                "likelySpam",
                "rejected",
              },
              enumDescriptions = {
                "The comment is available for public display.",
                "The comment is awaiting review by a moderator.",
                "",
                "The comment is unfit for display.",
              },
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/comments/setModerationStatus",
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/comments",
          httpMethod = "PUT",
          id = "youtube.comments.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter identifies the properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/comments",
          request = {
            ["$ref"] = "Comment",
          },
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
      },
    },
    i18nLanguages = {
      methods = {
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/i18nLanguages",
          httpMethod = "GET",
          id = "youtube.i18nLanguages.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            hl = {
              default = "en_US",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the i18nLanguage resource properties that the API response will include. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/i18nLanguages",
          response = {
            ["$ref"] = "I18nLanguageListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    i18nRegions = {
      methods = {
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/i18nRegions",
          httpMethod = "GET",
          id = "youtube.i18nRegions.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            hl = {
              default = "en_US",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the i18nRegion resource properties that the API response will include. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/i18nRegions",
          response = {
            ["$ref"] = "I18nRegionListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    liveBroadcasts = {
      methods = {
        bind = {
          description = "Bind a broadcast to a stream.",
          flatPath = "youtube/v3/liveBroadcasts/bind",
          httpMethod = "POST",
          id = "youtube.liveBroadcasts.bind",
          parameterOrder = {
            "id",
            "part",
          },
          parameters = {
            id = {
              description = "Broadcast to bind to the stream",
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            streamId = {
              description = "Stream to bind, if not set unbind the current one.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/liveBroadcasts/bind",
          response = {
            ["$ref"] = "LiveBroadcast",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        delete = {
          description = "Delete a given broadcast.",
          flatPath = "youtube/v3/liveBroadcasts",
          httpMethod = "DELETE",
          id = "youtube.liveBroadcasts.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "Broadcast to delete.",
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/liveBroadcasts",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        insert = {
          description = "Inserts a new stream for the authenticated user.",
          flatPath = "youtube/v3/liveBroadcasts",
          httpMethod = "POST",
          id = "youtube.liveBroadcasts.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, contentDetails, and status.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveBroadcasts",
          request = {
            ["$ref"] = "LiveBroadcast",
          },
          response = {
            ["$ref"] = "LiveBroadcast",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        insertCuepoint = {
          description = "Insert cuepoints in a broadcast",
          flatPath = "youtube/v3/liveBroadcasts/cuepoint",
          httpMethod = "POST",
          id = "youtube.liveBroadcasts.insertCuepoint",
          parameterOrder = {},
          parameters = {
            id = {
              description = "Broadcast to insert ads to, or equivalently `external_video_id` for internal use.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.",
              location = "query",
              repeated = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveBroadcasts/cuepoint",
          request = {
            ["$ref"] = "Cuepoint",
          },
          response = {
            ["$ref"] = "Cuepoint",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        list = {
          description = "Retrieve the list of broadcasts associated with the given channel.",
          flatPath = "youtube/v3/liveBroadcasts",
          httpMethod = "GET",
          id = "youtube.liveBroadcasts.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            broadcastStatus = {
              description = "Return broadcasts with a certain status, e.g. active broadcasts.",
              enum = {
                "broadcastStatusFilterUnspecified",
                "all",
                "active",
                "upcoming",
                "completed",
              },
              enumDescriptions = {
                "",
                "Return all broadcasts.",
                "Return current live broadcasts.",
                "Return broadcasts that have not yet started.",
                "Return broadcasts that have already ended.",
              },
              location = "query",
              type = "string",
            },
            broadcastType = {
              default = "event",
              description = "Return only broadcasts with the selected type.",
              enum = {
                "broadcastTypeFilterUnspecified",
                "all",
                "event",
                "persistent",
              },
              enumDescriptions = {
                "",
                "Return all broadcasts.",
                "Return only scheduled event broadcasts.",
                "Return only persistent broadcasts.",
              },
              location = "query",
              type = "string",
            },
            id = {
              description = "Return broadcasts with the given ids from Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            mine = {
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, status and statistics.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveBroadcasts",
          response = {
            ["$ref"] = "LiveBroadcastListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
        transition = {
          description = "Transition a broadcast to a given status.",
          flatPath = "youtube/v3/liveBroadcasts/transition",
          httpMethod = "POST",
          id = "youtube.liveBroadcasts.transition",
          parameterOrder = {
            "broadcastStatus",
            "id",
            "part",
          },
          parameters = {
            broadcastStatus = {
              description = "The status to which the broadcast is going to transition.",
              enum = {
                "statusUnspecified",
                "testing",
                "live",
                "complete",
              },
              enumDescriptions = {
                "",
                "Start testing the broadcast. YouTube transmits video to the broadcast's monitor stream. Note that you can only transition a broadcast to the testing state if its contentDetails.monitorStream.enableMonitorStream property is set to true.\",",
                "Return only persistent broadcasts.",
                "The broadcast is over. YouTube stops transmitting video.",
              },
              location = "query",
              required = true,
              type = "string",
            },
            id = {
              description = "Broadcast to transition.",
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveBroadcasts/transition",
          response = {
            ["$ref"] = "LiveBroadcast",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        update = {
          description = "Updates an existing broadcast for the authenticated user.",
          flatPath = "youtube/v3/liveBroadcasts",
          httpMethod = "PUT",
          id = "youtube.liveBroadcasts.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, contentDetails, and status. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a broadcast's privacy status is defined in the status part. As such, if your request is updating a private or unlisted broadcast, and the request's part parameter value includes the status part, the broadcast's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the broadcast will revert to the default privacy setting.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveBroadcasts",
          request = {
            ["$ref"] = "LiveBroadcast",
          },
          response = {
            ["$ref"] = "LiveBroadcast",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
      },
    },
    liveChatBans = {
      methods = {
        delete = {
          description = "Deletes a chat ban.",
          flatPath = "youtube/v3/liveChat/bans",
          httpMethod = "DELETE",
          id = "youtube.liveChatBans.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveChat/bans",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/liveChat/bans",
          httpMethod = "POST",
          id = "youtube.liveChatBans.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response returns. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveChat/bans",
          request = {
            ["$ref"] = "LiveChatBan",
          },
          response = {
            ["$ref"] = "LiveChatBan",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
      },
    },
    liveChatMessages = {
      methods = {
        delete = {
          description = "Deletes a chat message.",
          flatPath = "youtube/v3/liveChat/messages",
          httpMethod = "DELETE",
          id = "youtube.liveChatMessages.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveChat/messages",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/liveChat/messages",
          httpMethod = "POST",
          id = "youtube.liveChatMessages.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter serves two purposes. It identifies the properties that the write operation will set as well as the properties that the API response will include. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveChat/messages",
          request = {
            ["$ref"] = "LiveChatMessage",
          },
          response = {
            ["$ref"] = "LiveChatMessage",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/liveChat/messages",
          httpMethod = "GET",
          id = "youtube.liveChatMessages.list",
          parameterOrder = {
            "liveChatId",
            "part",
          },
          parameters = {
            hl = {
              description = "Specifies the localization language in which the system messages should be returned.",
              location = "query",
              type = "string",
            },
            liveChatId = {
              description = "The id of the live chat for which comments should be returned.",
              location = "query",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "500",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "2000",
              minimum = "200",
              type = "integer",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken property identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the liveChatComment resource parts that the API response will include. Supported values are id and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            profileImageSize = {
              description = "Specifies the size of the profile image that should be returned for each user.",
              format = "uint32",
              location = "query",
              maximum = "720",
              minimum = "16",
              type = "integer",
            },
          },
          path = "youtube/v3/liveChat/messages",
          response = {
            ["$ref"] = "LiveChatMessageListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
      },
    },
    liveChatModerators = {
      methods = {
        delete = {
          description = "Deletes a chat moderator.",
          flatPath = "youtube/v3/liveChat/moderators",
          httpMethod = "DELETE",
          id = "youtube.liveChatModerators.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveChat/moderators",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/liveChat/moderators",
          httpMethod = "POST",
          id = "youtube.liveChatModerators.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response returns. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveChat/moderators",
          request = {
            ["$ref"] = "LiveChatModerator",
          },
          response = {
            ["$ref"] = "LiveChatModerator",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/liveChat/moderators",
          httpMethod = "GET",
          id = "youtube.liveChatModerators.list",
          parameterOrder = {
            "liveChatId",
            "part",
          },
          parameters = {
            liveChatId = {
              description = "The id of the live chat for which moderators should be returned.",
              location = "query",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the liveChatModerator resource parts that the API response will include. Supported values are id and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveChat/moderators",
          response = {
            ["$ref"] = "LiveChatModeratorListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
      },
    },
    liveStreams = {
      methods = {
        delete = {
          description = "Deletes an existing stream for the authenticated user.",
          flatPath = "youtube/v3/liveStreams",
          httpMethod = "DELETE",
          id = "youtube.liveStreams.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/liveStreams",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        insert = {
          description = "Inserts a new stream for the authenticated user.",
          flatPath = "youtube/v3/liveStreams",
          httpMethod = "POST",
          id = "youtube.liveStreams.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, cdn, content_details, and status.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveStreams",
          request = {
            ["$ref"] = "LiveStream",
          },
          response = {
            ["$ref"] = "LiveStream",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
        list = {
          description = "Retrieve the list of streams associated with the given channel. --",
          flatPath = "youtube/v3/liveStreams",
          httpMethod = "GET",
          id = "youtube.liveStreams.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            id = {
              description = "Return LiveStreams with the given ids from Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            mine = {
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more liveStream resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, cdn, and status.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveStreams",
          response = {
            ["$ref"] = "LiveStreamListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
        update = {
          description = "Updates an existing stream for the authenticated user.",
          flatPath = "youtube/v3/liveStreams",
          httpMethod = "PUT",
          id = "youtube.liveStreams.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. The part properties that you can include in the parameter value are id, snippet, cdn, and status. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. If the request body does not specify a value for a mutable property, the existing value for that property will be removed.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/liveStreams",
          request = {
            ["$ref"] = "LiveStream",
          },
          response = {
            ["$ref"] = "LiveStream",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
          },
        },
      },
    },
    members = {
      methods = {
        list = {
          description = "Retrieves a list of members that match the request criteria for a channel.",
          flatPath = "youtube/v3/members",
          httpMethod = "GET",
          id = "youtube.members.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            filterByMemberChannelId = {
              description = "Comma separated list of channel IDs. Only data about members that are part of this list will be included in the response.",
              location = "query",
              type = "string",
            },
            hasAccessToLevel = {
              description = "Filter members in the results set to the ones that have access to a level.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "1000",
              minimum = "0",
              type = "integer",
            },
            mode = {
              default = "all_current",
              description = "Parameter that specifies which channel members to return.",
              enum = {
                "listMembersModeUnknown",
                "updates",
                "all_current",
              },
              enumDescriptions = {
                "",
                "Return only members that joined after the first call with this mode was made.",
                "Return all current members, from newest to oldest.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the member resource parts that the API response will include. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/members",
          response = {
            ["$ref"] = "MemberListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.channel-memberships.creator",
          },
        },
      },
    },
    membershipsLevels = {
      methods = {
        list = {
          description = "Retrieves a list of all pricing levels offered by a creator to the fans.",
          flatPath = "youtube/v3/membershipsLevels",
          httpMethod = "GET",
          id = "youtube.membershipsLevels.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter specifies the membershipsLevel resource parts that the API response will include. Supported values are id and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/membershipsLevels",
          response = {
            ["$ref"] = "MembershipsLevelListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.channel-memberships.creator",
          },
        },
      },
    },
    playlistItems = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/playlistItems",
          httpMethod = "DELETE",
          id = "youtube.playlistItems.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/playlistItems",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/playlistItems",
          httpMethod = "POST",
          id = "youtube.playlistItems.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/playlistItems",
          request = {
            ["$ref"] = "PlaylistItem",
          },
          response = {
            ["$ref"] = "PlaylistItem",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/playlistItems",
          httpMethod = "GET",
          id = "youtube.playlistItems.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            id = {
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set *part=snippet*, the API response will contain all of those properties.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            playlistId = {
              description = "Return the playlist items within the given playlist.",
              location = "query",
              type = "string",
            },
            videoId = {
              description = "Return the playlist items associated with the given video ID.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/playlistItems",
          response = {
            ["$ref"] = "PlaylistItemListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/playlistItems",
          httpMethod = "PUT",
          id = "youtube.playlistItems.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a playlist item can specify a start time and end time, which identify the times portion of the video that should play when users watch the video in the playlist. If your request is updating a playlist item that sets these values, and the request's part parameter value includes the contentDetails part, the playlist item's start and end times will be updated to whatever value the request body specifies. If the request body does not specify values, the existing start and end times will be removed and replaced with the default settings.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/playlistItems",
          request = {
            ["$ref"] = "PlaylistItem",
          },
          response = {
            ["$ref"] = "PlaylistItem",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    playlists = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/playlists",
          httpMethod = "DELETE",
          id = "youtube.playlists.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/playlists",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/playlists",
          httpMethod = "POST",
          id = "youtube.playlists.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/playlists",
          request = {
            ["$ref"] = "Playlist",
          },
          response = {
            ["$ref"] = "Playlist",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/playlists",
          httpMethod = "GET",
          id = "youtube.playlists.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            channelId = {
              description = "Return the playlists owned by the specified channel ID.",
              location = "query",
              type = "string",
            },
            hl = {
              description = "Returen content in specified language",
              location = "query",
              type = "string",
            },
            id = {
              description = "Return the playlists with the given IDs for Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            mine = {
              description = "Return the playlists owned by the authenticated user.",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more playlist resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlist resource, the snippet property contains properties like author, title, description, tags, and timeCreated. As such, if you set *part=snippet*, the API response will contain all of those properties.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/playlists",
          response = {
            ["$ref"] = "PlaylistListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/playlists",
          httpMethod = "PUT",
          id = "youtube.playlists.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that this method will override the existing values for mutable properties that are contained in any parts that the request body specifies. For example, a playlist's description is contained in the snippet part, which must be included in the request body. If the request does not specify a value for the snippet.description property, the playlist's existing description will be deleted.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/playlists",
          request = {
            ["$ref"] = "Playlist",
          },
          response = {
            ["$ref"] = "Playlist",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    search = {
      methods = {
        list = {
          description = "Retrieves a list of search resources",
          flatPath = "youtube/v3/search",
          httpMethod = "GET",
          id = "youtube.search.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            channelId = {
              description = "Filter on resources belonging to this channelId.",
              location = "query",
              type = "string",
            },
            channelType = {
              description = "Add a filter on the channel search.",
              enum = {
                "channelTypeUnspecified",
                "any",
                "show",
              },
              enumDescriptions = {
                "",
                "Return all channels.",
                "Only retrieve shows.",
              },
              location = "query",
              type = "string",
            },
            eventType = {
              description = "Filter on the livestream status of the videos.",
              enum = {
                "none",
                "upcoming",
                "live",
                "completed",
              },
              enumDescriptions = {
                "",
                "The live broadcast is upcoming.",
                "The live broadcast is active.",
                "The live broadcast has been completed.",
              },
              location = "query",
              type = "string",
            },
            forContentOwner = {
              description = "Search owned by a content owner.",
              location = "query",
              type = "boolean",
            },
            forDeveloper = {
              description = "Restrict the search to only retrieve videos uploaded using the project id of the authenticated user.",
              location = "query",
              type = "boolean",
            },
            forMine = {
              description = "Search for the private videos of the authenticated user.",
              location = "query",
              type = "boolean",
            },
            location = {
              description = "Filter on location of the video",
              location = "query",
              type = "string",
            },
            locationRadius = {
              description = "Filter on distance from the location (specified above).",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            order = {
              default = "relevance",
              description = "Sort order of the results.",
              enum = {
                "searchSortUnspecified",
                "date",
                "rating",
                "viewCount",
                "relevance",
                "title",
                "videoCount",
              },
              enumDescriptions = {
                "",
                "Resources are sorted in reverse chronological order based on the date they were created.",
                "Resources are sorted from highest to lowest rating.",
                "Resources are sorted from highest to lowest number of views.",
                "Resources are sorted based on their relevance to the search query. This is the default value for this parameter.",
                "Resources are sorted alphabetically by title.",
                "Channels are sorted in descending order of their number of uploaded videos.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more search resource properties that the API response will include. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            publishedAfter = {
              description = "Filter on resources published after this date.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            publishedBefore = {
              description = "Filter on resources published before this date.",
              format = "google-datetime",
              location = "query",
              type = "string",
            },
            q = {
              description = "Textual search terms to match.",
              location = "query",
              type = "string",
            },
            regionCode = {
              description = "Display the content as seen by viewers in this country.",
              location = "query",
              type = "string",
            },
            relatedToVideoId = {
              description = "Search related to a resource.",
              location = "query",
              type = "string",
            },
            relevanceLanguage = {
              description = "Return results relevant to this language.",
              location = "query",
              type = "string",
            },
            safeSearch = {
              default = "moderate",
              description = "Indicates whether the search results should include restricted content as well as standard content.",
              enum = {
                "safeSearchSettingUnspecified",
                "none",
                "moderate",
                "strict",
              },
              enumDescriptions = {
                "",
                "YouTube will not filter the search result set.",
                "YouTube will filter some content from search results and, at the least, will filter content that is restricted in your locale. Based on their content, search results could be removed from search results or demoted in search results. This is the default parameter value.",
                "YouTube will try to exclude all restricted content from the search result set. Based on their content, search results could be removed from search results or demoted in search results.",
              },
              location = "query",
              type = "string",
            },
            topicId = {
              description = "Restrict results to a particular topic.",
              location = "query",
              type = "string",
            },
            type = {
              description = "Restrict results to a particular set of resource types from One Platform.",
              location = "query",
              repeated = true,
              type = "string",
            },
            videoCaption = {
              description = "Filter on the presence of captions on the videos.",
              enum = {
                "videoCaptionUnspecified",
                "any",
                "closedCaption",
                "none",
              },
              enumDescriptions = {
                "",
                "Do not filter results based on caption availability.",
                "Only include videos that have captions.",
                "Only include videos that do not have captions.",
              },
              location = "query",
              type = "string",
            },
            videoCategoryId = {
              description = "Filter on videos in a specific category.",
              location = "query",
              type = "string",
            },
            videoDefinition = {
              description = "Filter on the definition of the videos.",
              enum = {
                "any",
                "standard",
                "high",
              },
              enumDescriptions = {
                "Return all videos, regardless of their resolution.",
                "Only retrieve videos in standard definition.",
                "Only retrieve HD videos.",
              },
              location = "query",
              type = "string",
            },
            videoDimension = {
              description = "Filter on 3d videos.",
              enum = {
                "any",
                "2d",
                "3d",
              },
              enumDescriptions = {
                "Include both 3D and non-3D videos in returned results. This is the default value.",
                "Restrict search results to exclude 3D videos.",
                "Restrict search results to only include 3D videos.",
              },
              location = "query",
              type = "string",
            },
            videoDuration = {
              description = "Filter on the duration of the videos.",
              enum = {
                "videoDurationUnspecified",
                "any",
                "short",
                "medium",
                "long",
              },
              enumDescriptions = {
                "",
                "Do not filter video search results based on their duration. This is the default value.",
                "Only include videos that are less than four minutes long.",
                "Only include videos that are between four and 20 minutes long (inclusive).",
                "Only include videos longer than 20 minutes.",
              },
              location = "query",
              type = "string",
            },
            videoEmbeddable = {
              description = "Filter on embeddable videos.",
              enum = {
                "videoEmbeddableUnspecified",
                "any",
                "true",
              },
              enumDescriptions = {
                "",
                "Return all videos, embeddable or not.",
                "Only retrieve embeddable videos.",
              },
              location = "query",
              type = "string",
            },
            videoLicense = {
              description = "Filter on the license of the videos.",
              enum = {
                "any",
                "youtube",
                "creativeCommon",
              },
              enumDescriptions = {
                "Return all videos, regardless of which license they have, that match the query parameters.",
                "Only return videos that have the standard YouTube license.",
                "Only return videos that have a Creative Commons license. Users can reuse videos with this license in other videos that they create. Learn more.",
              },
              location = "query",
              type = "string",
            },
            videoSyndicated = {
              description = "Filter on syndicated videos.",
              enum = {
                "videoSyndicatedUnspecified",
                "any",
                "true",
              },
              enumDescriptions = {
                "",
                "Return all videos, syndicated or not.",
                "Only retrieve syndicated videos.",
              },
              location = "query",
              type = "string",
            },
            videoType = {
              description = "Filter on videos of a specific type.",
              enum = {
                "videoTypeUnspecified",
                "any",
                "movie",
                "episode",
              },
              enumDescriptions = {
                "",
                "Return all videos.",
                "Only retrieve movies.",
                "Only retrieve episodes of shows.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/search",
          response = {
            ["$ref"] = "SearchListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    subscriptions = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/subscriptions",
          httpMethod = "DELETE",
          id = "youtube.subscriptions.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/subscriptions",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/subscriptions",
          httpMethod = "POST",
          id = "youtube.subscriptions.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/subscriptions",
          request = {
            ["$ref"] = "Subscription",
          },
          response = {
            ["$ref"] = "Subscription",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/subscriptions",
          httpMethod = "GET",
          id = "youtube.subscriptions.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            channelId = {
              description = "Return the subscriptions of the given channel owner.",
              location = "query",
              type = "string",
            },
            forChannelId = {
              description = "Return the subscriptions to the subset of these channels that the authenticated user is subscribed to.",
              location = "query",
              type = "string",
            },
            id = {
              description = "Return the subscriptions with the given IDs for Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "0",
              type = "integer",
            },
            mine = {
              description = "Flag for returning the subscriptions of the authenticated user.",
              location = "query",
              type = "boolean",
            },
            myRecentSubscribers = {
              location = "query",
              type = "boolean",
            },
            mySubscribers = {
              description = "Return the subscribers of the given channel owner.",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            order = {
              default = "relevance",
              description = "The order of the returned subscriptions",
              enum = {
                "subscriptionOrderUnspecified",
                "relevance",
                "unread",
                "alphabetical",
              },
              enumDescriptions = {
                "",
                "Sort by relevance.",
                "Sort by order of activity.",
                "Sort alphabetically.",
              },
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more subscription resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a subscription resource, the snippet property contains other properties, such as a display title for the subscription. If you set *part=snippet*, the API response will also contain all of those nested properties.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/subscriptions",
          response = {
            ["$ref"] = "SubscriptionListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    superChatEvents = {
      methods = {
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/superChatEvents",
          httpMethod = "GET",
          id = "youtube.superChatEvents.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            hl = {
              description = "Return rendered funding amounts in specified language.",
              location = "query",
              type = "string",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the superChatEvent resource parts that the API response will include. This parameter is currently not supported.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/superChatEvents",
          response = {
            ["$ref"] = "SuperChatEventListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
      },
    },
    tests = {
      methods = {
        insert = {
          description = "POST method.",
          flatPath = "youtube/v3/tests",
          httpMethod = "POST",
          id = "youtube.tests.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            externalChannelId = {
              location = "query",
              type = "string",
            },
            part = {
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/tests",
          request = {
            ["$ref"] = "TestItem",
          },
          response = {
            ["$ref"] = "TestItem",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
      },
    },
    thirdPartyLinks = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/thirdPartyLinks",
          httpMethod = "DELETE",
          id = "youtube.thirdPartyLinks.delete",
          parameterOrder = {
            "linkingToken",
            "type",
          },
          parameters = {
            externalChannelId = {
              description = "Channel ID to which changes should be applied, for delegation.",
              location = "query",
              type = "string",
            },
            linkingToken = {
              description = "Delete the partner links with the given linking token.",
              location = "query",
              required = true,
              type = "string",
            },
            part = {
              description = "Do not use. Required for compatibility.",
              location = "query",
              repeated = true,
              type = "string",
            },
            type = {
              description = "Type of the link to be deleted.",
              enum = {
                "linkUnspecified",
                "channelToStoreLink",
              },
              enumDescriptions = {
                "",
                "A link that is connecting (or about to connect) a channel with a store on a merchandising platform in order to enable retail commerce capabilities for that channel on YouTube.",
              },
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/thirdPartyLinks",
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/thirdPartyLinks",
          httpMethod = "POST",
          id = "youtube.thirdPartyLinks.insert",
          parameterOrder = {
            "part",
          },
          parameters = {
            externalChannelId = {
              description = "Channel ID to which changes should be applied, for delegation.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supported values are linkingToken, status, and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/thirdPartyLinks",
          request = {
            ["$ref"] = "ThirdPartyLink",
          },
          response = {
            ["$ref"] = "ThirdPartyLink",
          },
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/thirdPartyLinks",
          httpMethod = "GET",
          id = "youtube.thirdPartyLinks.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            externalChannelId = {
              description = "Channel ID to which changes should be applied, for delegation.",
              location = "query",
              type = "string",
            },
            linkingToken = {
              description = "Get a third party link with the given linking token.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the thirdPartyLink resource parts that the API response will include. Supported values are linkingToken, status, and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            type = {
              description = "Get a third party link of the given type.",
              enum = {
                "linkUnspecified",
                "channelToStoreLink",
              },
              enumDescriptions = {
                "",
                "A link that is connecting (or about to connect) a channel with a store on a merchandising platform in order to enable retail commerce capabilities for that channel on YouTube.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/thirdPartyLinks",
          response = {
            ["$ref"] = "ThirdPartyLinkListResponse",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/thirdPartyLinks",
          httpMethod = "PUT",
          id = "youtube.thirdPartyLinks.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            externalChannelId = {
              description = "Channel ID to which changes should be applied, for delegation.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the thirdPartyLink resource parts that the API request and response will include. Supported values are linkingToken, status, and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/thirdPartyLinks",
          request = {
            ["$ref"] = "ThirdPartyLink",
          },
          response = {
            ["$ref"] = "ThirdPartyLink",
          },
        },
      },
    },
    thumbnails = {
      methods = {
        set = {
          description = "As this is not an insert in a strict sense (it supports uploading/setting of a thumbnail for multiple videos, which doesn't result in creation of a single resource), I use a custom verb here.",
          flatPath = "youtube/v3/thumbnails/set",
          httpMethod = "POST",
          id = "youtube.thumbnails.set",
          mediaUpload = {
            accept = {
              "image/jpeg",
              "image/png",
              "application/octet-stream",
            },
            maxSize = "2097152",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/youtube/v3/thumbnails/set",
              },
              simple = {
                multipart = true,
                path = "/upload/youtube/v3/thumbnails/set",
              },
            },
          },
          parameterOrder = {
            "videoId",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            videoId = {
              description = "Returns the Thumbnail with the given video IDs for Stubby or Apiary.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/thumbnails/set",
          response = {
            ["$ref"] = "ThumbnailSetResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.upload",
            "https://www.googleapis.com/auth/youtubepartner",
          },
          supportsMediaUpload = true,
        },
      },
    },
    videoAbuseReportReasons = {
      methods = {
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/videoAbuseReportReasons",
          httpMethod = "GET",
          id = "youtube.videoAbuseReportReasons.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            hl = {
              default = "en-US",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the videoCategory resource parts that the API response will include. Supported values are id and snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/videoAbuseReportReasons",
          response = {
            ["$ref"] = "VideoAbuseReportReasonListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
          },
        },
      },
    },
    videoCategories = {
      methods = {
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/videoCategories",
          httpMethod = "GET",
          id = "youtube.videoCategories.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            hl = {
              default = "en-US",
              location = "query",
              type = "string",
            },
            id = {
              description = "Returns the video categories with the given IDs for Stubby or Apiary.",
              location = "query",
              repeated = true,
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies the videoCategory resource properties that the API response will include. Set the parameter value to snippet.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            regionCode = {
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/videoCategories",
          response = {
            ["$ref"] = "VideoCategoryListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    videos = {
      methods = {
        delete = {
          description = "Deletes a resource.",
          flatPath = "youtube/v3/videos",
          httpMethod = "DELETE",
          id = "youtube.videos.delete",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/videos",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        getRating = {
          description = "Retrieves the ratings that the authorized user gave to a list of specified videos.",
          flatPath = "youtube/v3/videos/getRating",
          httpMethod = "GET",
          id = "youtube.videos.getRating",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/videos/getRating",
          response = {
            ["$ref"] = "VideoGetRatingResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        insert = {
          description = "Inserts a new resource into this collection.",
          flatPath = "youtube/v3/videos",
          httpMethod = "POST",
          id = "youtube.videos.insert",
          mediaUpload = {
            accept = {
              "video/*",
              "application/octet-stream",
            },
            maxSize = "274877906944",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/youtube/v3/videos",
              },
              simple = {
                multipart = true,
                path = "/upload/youtube/v3/videos",
              },
            },
          },
          parameterOrder = {
            "part",
          },
          parameters = {
            autoLevels = {
              description = "Should auto-levels be applied to the upload.",
              location = "query",
              type = "boolean",
            },
            notifySubscribers = {
              default = "true",
              description = "Notify the channel subscribers about the new video. As default, the notification is enabled.",
              location = "query",
              type = "boolean",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwnerChannel = {
              description = "This parameter can only be used in a properly authorized request. *Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that not all parts contain properties that can be set when inserting or updating a video. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            stabilize = {
              description = "Should stabilize be applied to the upload.",
              location = "query",
              type = "boolean",
            },
          },
          path = "youtube/v3/videos",
          request = {
            ["$ref"] = "Video",
          },
          response = {
            ["$ref"] = "Video",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.upload",
            "https://www.googleapis.com/auth/youtubepartner",
          },
          supportsMediaUpload = true,
        },
        list = {
          description = "Retrieves a list of resources, possibly filtered.",
          flatPath = "youtube/v3/videos",
          httpMethod = "GET",
          id = "youtube.videos.list",
          parameterOrder = {
            "part",
          },
          parameters = {
            chart = {
              description = "Return the videos that are in the specified chart.",
              enum = {
                "chartUnspecified",
                "mostPopular",
              },
              enumDescriptions = {
                "",
                "Return the most popular videos for the specified content region and video category.",
              },
              location = "query",
              type = "string",
            },
            hl = {
              description = "Stands for \"host language\". Specifies the localization language of the metadata to be filled into snippet.localized. The field is filled with the default metadata if there is no localization in the specified language. The parameter value must be a language code included in the list returned by the i18nLanguages.list method (e.g. en_US, es_MX).",
              location = "query",
              type = "string",
            },
            id = {
              description = "Return videos with the given ids.",
              location = "query",
              repeated = true,
              type = "string",
            },
            locale = {
              location = "query",
              type = "string",
            },
            maxHeight = {
              format = "int32",
              location = "query",
              maximum = "8192",
              minimum = "72",
              type = "integer",
            },
            maxResults = {
              default = "5",
              description = "The *maxResults* parameter specifies the maximum number of items that should be returned in the result set. *Note:* This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter.",
              format = "uint32",
              location = "query",
              maximum = "50",
              minimum = "1",
              type = "integer",
            },
            maxWidth = {
              description = "Return the player with maximum height specified in",
              format = "int32",
              location = "query",
              maximum = "8192",
              minimum = "72",
              type = "integer",
            },
            myRating = {
              description = "Return videos liked/disliked by the authenticated user. Does not support RateType.RATED_TYPE_NONE.",
              enum = {
                "none",
                "like",
                "dislike",
              },
              enumDescriptions = {
                "",
                "The entity is liked.",
                "The entity is disliked.",
              },
              location = "query",
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "The *pageToken* parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved. *Note:* This parameter is supported for use in conjunction with the myRating and chart parameters, but it is not supported for use in conjunction with the id parameter.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter specifies a comma-separated list of one or more video resource properties that the API response will include. If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set *part=snippet*, the API response will contain all of those properties.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
            regionCode = {
              description = "Use a chart that is specific to the specified region",
              location = "query",
              type = "string",
            },
            videoCategoryId = {
              default = "0",
              description = "Use chart that is specific to the specified video category",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/videos",
          response = {
            ["$ref"] = "VideoListResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.readonly",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        rate = {
          description = "Adds a like or dislike rating to a video or removes a rating from a video.",
          flatPath = "youtube/v3/videos/rate",
          httpMethod = "POST",
          id = "youtube.videos.rate",
          parameterOrder = {
            "id",
            "rating",
          },
          parameters = {
            id = {
              location = "query",
              required = true,
              type = "string",
            },
            rating = {
              enum = {
                "none",
                "like",
                "dislike",
              },
              enumDescriptions = {
                "",
                "The entity is liked.",
                "The entity is disliked.",
              },
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/videos/rate",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        reportAbuse = {
          description = "Report abuse for a video.",
          flatPath = "youtube/v3/videos/reportAbuse",
          httpMethod = "POST",
          id = "youtube.videos.reportAbuse",
          parameterOrder = {},
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/videos/reportAbuse",
          request = {
            ["$ref"] = "VideoAbuseReport",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
        update = {
          description = "Updates an existing resource.",
          flatPath = "youtube/v3/videos",
          httpMethod = "PUT",
          id = "youtube.videos.update",
          parameterOrder = {
            "part",
          },
          parameters = {
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
            part = {
              description = "The *part* parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include. Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a video's privacy setting is contained in the status part. As such, if your request is updating a private video, and the request's part parameter value includes the status part, the video's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the video will revert to the default privacy setting. In addition, not all parts contain properties that can be set when inserting or updating a video. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response.",
              location = "query",
              repeated = true,
              required = true,
              type = "string",
            },
          },
          path = "youtube/v3/videos",
          request = {
            ["$ref"] = "Video",
          },
          response = {
            ["$ref"] = "Video",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    watermarks = {
      methods = {
        set = {
          description = "Allows upload of watermark image and setting it for a channel.",
          flatPath = "youtube/v3/watermarks/set",
          httpMethod = "POST",
          id = "youtube.watermarks.set",
          mediaUpload = {
            accept = {
              "image/jpeg",
              "image/png",
              "application/octet-stream",
            },
            maxSize = "10485760",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/youtube/v3/watermarks/set",
              },
              simple = {
                multipart = true,
                path = "/upload/youtube/v3/watermarks/set",
              },
            },
          },
          parameterOrder = {
            "channelId",
          },
          parameters = {
            channelId = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/watermarks/set",
          request = {
            ["$ref"] = "InvideoBranding",
          },
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtube.upload",
            "https://www.googleapis.com/auth/youtubepartner",
          },
          supportsMediaUpload = true,
        },
        unset = {
          description = "Allows removal of channel watermark.",
          flatPath = "youtube/v3/watermarks/unset",
          httpMethod = "POST",
          id = "youtube.watermarks.unset",
          parameterOrder = {
            "channelId",
          },
          parameters = {
            channelId = {
              location = "query",
              required = true,
              type = "string",
            },
            onBehalfOfContentOwner = {
              description = "*Note:* This parameter is intended exclusively for YouTube content partners. The *onBehalfOfContentOwner* parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.",
              location = "query",
              type = "string",
            },
          },
          path = "youtube/v3/watermarks/unset",
          scopes = {
            "https://www.googleapis.com/auth/youtube",
            "https://www.googleapis.com/auth/youtube.force-ssl",
            "https://www.googleapis.com/auth/youtubepartner",
          },
        },
      },
    },
    youtube = {
      resources = {
        v3 = {
          methods = {
            updateCommentThreads = {
              description = "Updates an existing resource.",
              flatPath = "youtube/v3/commentThreads",
              httpMethod = "PUT",
              id = "youtube.youtube.v3.updateCommentThreads",
              parameterOrder = {},
              parameters = {
                part = {
                  description = "The *part* parameter specifies a comma-separated list of commentThread resource properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
              },
              path = "youtube/v3/commentThreads",
              request = {
                ["$ref"] = "CommentThread",
              },
              response = {
                ["$ref"] = "CommentThread",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://youtube.googleapis.com/",
  schemas = {
    AbuseReport = {
      id = "AbuseReport",
      properties = {
        abuseTypes = {
          items = {
            ["$ref"] = "AbuseType",
          },
          type = "array",
        },
        description = {
          type = "string",
        },
        relatedEntities = {
          items = {
            ["$ref"] = "RelatedEntity",
          },
          type = "array",
        },
        subject = {
          ["$ref"] = "Entity",
        },
      },
      type = "object",
    },
    AbuseType = {
      id = "AbuseType",
      properties = {
        id = {
          type = "string",
        },
      },
      type = "object",
    },
    AccessPolicy = {
      description = "Rights management policy for YouTube resources.",
      id = "AccessPolicy",
      properties = {
        allowed = {
          description = "The value of allowed indicates whether the access to the policy is allowed or denied by default.",
          type = "boolean",
        },
        exception = {
          description = "A list of region codes that identify countries where the default policy do not apply.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Activity = {
      description = "An *activity* resource contains information about an action that a particular channel, or user, has taken on YouTube.The actions reported in activity feeds include rating a video, sharing a video, marking a video as a favorite, commenting on a video, uploading a video, and so forth. Each activity resource identifies the type of action, the channel associated with the action, and the resource(s) associated with the action, such as the video that was rated or uploaded.",
      id = "Activity",
      properties = {
        contentDetails = {
          ["$ref"] = "ActivityContentDetails",
          description = "The contentDetails object contains information about the content associated with the activity. For example, if the snippet.type value is videoRated, then the contentDetails object's content identifies the rated video.",
        },
        etag = {
          description = "Etag of this resource",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the activity.",
          type = "string",
        },
        kind = {
          default = "youtube#activity",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#activity\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "ActivitySnippet",
          description = "The snippet object contains basic details about the activity, including the activity's type and group ID.",
        },
      },
      type = "object",
    },
    ActivityContentDetails = {
      description = "Details about the content of an activity: the video that was shared, the channel that was subscribed to, etc.",
      id = "ActivityContentDetails",
      properties = {
        bulletin = {
          ["$ref"] = "ActivityContentDetailsBulletin",
          description = "The bulletin object contains details about a channel bulletin post. This object is only present if the snippet.type is bulletin.",
        },
        channelItem = {
          ["$ref"] = "ActivityContentDetailsChannelItem",
          description = "The channelItem object contains details about a resource which was added to a channel. This property is only present if the snippet.type is channelItem.",
        },
        comment = {
          ["$ref"] = "ActivityContentDetailsComment",
          description = "The comment object contains information about a resource that received a comment. This property is only present if the snippet.type is comment.",
        },
        favorite = {
          ["$ref"] = "ActivityContentDetailsFavorite",
          description = "The favorite object contains information about a video that was marked as a favorite video. This property is only present if the snippet.type is favorite.",
        },
        like = {
          ["$ref"] = "ActivityContentDetailsLike",
          description = "The like object contains information about a resource that received a positive (like) rating. This property is only present if the snippet.type is like.",
        },
        playlistItem = {
          ["$ref"] = "ActivityContentDetailsPlaylistItem",
          description = "The playlistItem object contains information about a new playlist item. This property is only present if the snippet.type is playlistItem.",
        },
        promotedItem = {
          ["$ref"] = "ActivityContentDetailsPromotedItem",
          description = "The promotedItem object contains details about a resource which is being promoted. This property is only present if the snippet.type is promotedItem.",
        },
        recommendation = {
          ["$ref"] = "ActivityContentDetailsRecommendation",
          description = "The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation.",
        },
        social = {
          ["$ref"] = "ActivityContentDetailsSocial",
          description = "The social object contains details about a social network post. This property is only present if the snippet.type is social.",
        },
        subscription = {
          ["$ref"] = "ActivityContentDetailsSubscription",
          description = "The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription.",
        },
        upload = {
          ["$ref"] = "ActivityContentDetailsUpload",
          description = "The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsBulletin = {
      description = "Details about a channel bulletin post.",
      id = "ActivityContentDetailsBulletin",
      properties = {
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information that identifies the resource associated with a bulletin post. @mutable youtube.activities.insert",
        },
      },
      type = "object",
    },
    ActivityContentDetailsChannelItem = {
      description = "Details about a resource which was added to a channel.",
      id = "ActivityContentDetailsChannelItem",
      properties = {
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information that identifies the resource that was added to the channel.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsComment = {
      description = "Information about a resource that received a comment.",
      id = "ActivityContentDetailsComment",
      properties = {
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information that identifies the resource associated with the comment.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsFavorite = {
      description = "Information about a video that was marked as a favorite video.",
      id = "ActivityContentDetailsFavorite",
      properties = {
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information that identifies the resource that was marked as a favorite.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsLike = {
      description = "Information about a resource that received a positive (like) rating.",
      id = "ActivityContentDetailsLike",
      properties = {
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information that identifies the rated resource.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsPlaylistItem = {
      description = "Information about a new playlist item.",
      id = "ActivityContentDetailsPlaylistItem",
      properties = {
        playlistId = {
          description = "The value that YouTube uses to uniquely identify the playlist.",
          type = "string",
        },
        playlistItemId = {
          description = "ID of the item within the playlist.",
          type = "string",
        },
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information about the resource that was added to the playlist.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsPromotedItem = {
      description = "Details about a resource which is being promoted.",
      id = "ActivityContentDetailsPromotedItem",
      properties = {
        adTag = {
          description = "The URL the client should fetch to request a promoted item.",
          type = "string",
        },
        clickTrackingUrl = {
          description = "The URL the client should ping to indicate that the user clicked through on this promoted item.",
          type = "string",
        },
        creativeViewUrl = {
          description = "The URL the client should ping to indicate that the user was shown this promoted item.",
          type = "string",
        },
        ctaType = {
          description = "The type of call-to-action, a message to the user indicating action that can be taken.",
          enum = {
            "ctaTypeUnspecified",
            "visitAdvertiserSite",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        customCtaButtonText = {
          description = "The custom call-to-action button text. If specified, it will override the default button text for the cta_type.",
          type = "string",
        },
        descriptionText = {
          description = "The text description to accompany the promoted item.",
          type = "string",
        },
        destinationUrl = {
          description = "The URL the client should direct the user to, if the user chooses to visit the advertiser's website.",
          type = "string",
        },
        forecastingUrl = {
          description = "The list of forecasting URLs. The client should ping all of these URLs when a promoted item is not available, to indicate that a promoted item could have been shown.",
          items = {
            type = "string",
          },
          type = "array",
        },
        impressionUrl = {
          description = "The list of impression URLs. The client should ping all of these URLs to indicate that the user was shown this promoted item.",
          items = {
            type = "string",
          },
          type = "array",
        },
        videoId = {
          description = "The ID that YouTube uses to uniquely identify the promoted video.",
          type = "string",
        },
      },
      type = "object",
    },
    ActivityContentDetailsRecommendation = {
      description = "Information that identifies the recommended resource.",
      id = "ActivityContentDetailsRecommendation",
      properties = {
        reason = {
          description = "The reason that the resource is recommended to the user.",
          enum = {
            "reasonUnspecified",
            "videoFavorited",
            "videoLiked",
            "videoWatched",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information that identifies the recommended resource.",
        },
        seedResourceId = {
          ["$ref"] = "ResourceId",
          description = "The seedResourceId object contains information about the resource that caused the recommendation.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsSocial = {
      description = "Details about a social network post.",
      id = "ActivityContentDetailsSocial",
      properties = {
        author = {
          description = "The author of the social network post.",
          type = "string",
        },
        imageUrl = {
          description = "An image of the post's author.",
          type = "string",
        },
        referenceUrl = {
          description = "The URL of the social network post.",
          type = "string",
        },
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object encapsulates information that identifies the resource associated with a social network post.",
        },
        type = {
          description = "The name of the social network.",
          enum = {
            "unspecified",
            "googlePlus",
            "facebook",
            "twitter",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ActivityContentDetailsSubscription = {
      description = "Information about a channel that a user subscribed to.",
      id = "ActivityContentDetailsSubscription",
      properties = {
        resourceId = {
          ["$ref"] = "ResourceId",
          description = "The resourceId object contains information that identifies the resource that the user subscribed to.",
        },
      },
      type = "object",
    },
    ActivityContentDetailsUpload = {
      description = "Information about the uploaded video.",
      id = "ActivityContentDetailsUpload",
      properties = {
        videoId = {
          description = "The ID that YouTube uses to uniquely identify the uploaded video.",
          type = "string",
        },
      },
      type = "object",
    },
    ActivityListResponse = {
      id = "ActivityListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          items = {
            ["$ref"] = "Activity",
          },
          type = "array",
        },
        kind = {
          default = "youtube#activityListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#activityListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    ActivitySnippet = {
      description = "Basic details about an activity, including title, description, thumbnails, activity type and group. Next ID: 12",
      id = "ActivitySnippet",
      properties = {
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the channel associated with the activity.",
          type = "string",
        },
        channelTitle = {
          description = "Channel title for the channel responsible for this activity",
          type = "string",
        },
        description = {
          description = "The description of the resource primarily associated with the activity. @mutable youtube.activities.insert",
          type = "string",
        },
        groupId = {
          description = "The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user's activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value.",
          type = "string",
        },
        publishedAt = {
          description = "The date and time that the video was uploaded.",
          format = "date-time",
          type = "string",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.",
        },
        title = {
          description = "The title of the resource primarily associated with the activity.",
          type = "string",
        },
        type = {
          description = "The type of activity that the resource describes.",
          enum = {
            "typeUnspecified",
            "upload",
            "like",
            "favorite",
            "comment",
            "subscription",
            "playlistItem",
            "recommendation",
            "bulletin",
            "social",
            "channelItem",
            "promotedItem",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Caption = {
      description = "A *caption* resource represents a YouTube caption track. A caption track is associated with exactly one YouTube video.",
      id = "Caption",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          annotations = {
            required = {
              "youtube.captions.update",
            },
          },
          description = "The ID that YouTube uses to uniquely identify the caption track.",
          type = "string",
        },
        kind = {
          default = "youtube#caption",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#caption\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "CaptionSnippet",
          description = "The snippet object contains basic details about the caption.",
        },
      },
      type = "object",
    },
    CaptionListResponse = {
      id = "CaptionListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of captions that match the request criteria.",
          items = {
            ["$ref"] = "Caption",
          },
          type = "array",
        },
        kind = {
          default = "youtube#captionListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#captionListResponse\".",
          type = "string",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    CaptionSnippet = {
      description = "Basic details about a caption track, such as its language and name.",
      id = "CaptionSnippet",
      properties = {
        audioTrackType = {
          description = "The type of audio track associated with the caption track.",
          enum = {
            "unknown",
            "primary",
            "commentary",
            "descriptive",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        failureReason = {
          description = "The reason that YouTube failed to process the caption track. This property is only present if the state property's value is failed.",
          enum = {
            "unknownFormat",
            "unsupportedFormat",
            "processingFailed",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        isAutoSynced = {
          description = "Indicates whether YouTube synchronized the caption track to the audio track in the video. The value will be true if a sync was explicitly requested when the caption track was uploaded. For example, when calling the captions.insert or captions.update methods, you can set the sync parameter to true to instruct YouTube to sync the uploaded track to the video. If the value is false, YouTube uses the time codes in the uploaded caption track to determine when to display captions.",
          type = "boolean",
        },
        isCC = {
          description = "Indicates whether the track contains closed captions for the deaf and hard of hearing. The default value is false.",
          type = "boolean",
        },
        isDraft = {
          description = "Indicates whether the caption track is a draft. If the value is true, then the track is not publicly visible. The default value is false. @mutable youtube.captions.insert youtube.captions.update",
          type = "boolean",
        },
        isEasyReader = {
          description = "Indicates whether caption track is formatted for \"easy reader,\" meaning it is at a third-grade level for language learners. The default value is false.",
          type = "boolean",
        },
        isLarge = {
          description = "Indicates whether the caption track uses large text for the vision-impaired. The default value is false.",
          type = "boolean",
        },
        language = {
          annotations = {
            required = {
              "youtube.captions.insert",
            },
          },
          description = "The language of the caption track. The property value is a BCP-47 language tag.",
          type = "string",
        },
        lastUpdated = {
          description = "The date and time when the caption track was last updated.",
          format = "date-time",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "youtube.captions.insert",
            },
          },
          description = "The name of the caption track. The name is intended to be visible to the user as an option during playback.",
          type = "string",
        },
        status = {
          description = "The caption track's status.",
          enum = {
            "serving",
            "syncing",
            "failed",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        trackKind = {
          description = "The caption track's type.",
          enum = {
            "standard",
            "ASR",
            "forced",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        videoId = {
          annotations = {
            required = {
              "youtube.captions.insert",
            },
          },
          description = "The ID that YouTube uses to uniquely identify the video associated with the caption track. @mutable youtube.captions.insert",
          type = "string",
        },
      },
      type = "object",
    },
    CdnSettings = {
      description = "Brief description of the live stream cdn settings.",
      id = "CdnSettings",
      properties = {
        format = {
          annotations = {
            required = {
              "youtube.liveStreams.insert",
              "youtube.liveStreams.update",
            },
          },
          description = "The format of the video stream that you are sending to Youtube. ",
          type = "string",
        },
        frameRate = {
          description = "The frame rate of the inbound video data.",
          enum = {
            "30fps",
            "60fps",
            "variable",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        ingestionInfo = {
          ["$ref"] = "IngestionInfo",
          description = "The ingestionInfo object contains information that YouTube provides that you need to transmit your RTMP or HTTP stream to YouTube.",
        },
        ingestionType = {
          annotations = {
            required = {
              "youtube.liveStreams.insert",
              "youtube.liveStreams.update",
            },
          },
          description = " The method or protocol used to transmit the video stream.",
          enum = {
            "rtmp",
            "dash",
            "webrtc",
            "hls",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        resolution = {
          description = "The resolution of the inbound video data.",
          enum = {
            "240p",
            "360p",
            "480p",
            "720p",
            "1080p",
            "1440p",
            "2160p",
            "variable",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Channel = {
      description = "A *channel* resource contains information about a YouTube channel.",
      id = "Channel",
      properties = {
        auditDetails = {
          ["$ref"] = "ChannelAuditDetails",
          description = "The auditionDetails object encapsulates channel data that is relevant for YouTube Partners during the audition process.",
        },
        brandingSettings = {
          ["$ref"] = "ChannelBrandingSettings",
          description = "The brandingSettings object encapsulates information about the branding of the channel.",
        },
        contentDetails = {
          ["$ref"] = "ChannelContentDetails",
          description = "The contentDetails object encapsulates information about the channel's content.",
        },
        contentOwnerDetails = {
          ["$ref"] = "ChannelContentOwnerDetails",
          description = "The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.",
        },
        conversionPings = {
          ["$ref"] = "ChannelConversionPings",
          description = "The conversionPings object encapsulates information about conversion pings that need to be respected by the channel.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the channel.",
          type = "string",
        },
        kind = {
          default = "youtube#channel",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#channel\".",
          type = "string",
        },
        localizations = {
          additionalProperties = {
            ["$ref"] = "ChannelLocalization",
          },
          description = "Localizations for different languages",
          type = "object",
        },
        snippet = {
          ["$ref"] = "ChannelSnippet",
          description = "The snippet object contains basic details about the channel, such as its title, description, and thumbnail images.",
        },
        statistics = {
          ["$ref"] = "ChannelStatistics",
          description = "The statistics object encapsulates statistics for the channel.",
        },
        status = {
          ["$ref"] = "ChannelStatus",
          description = "The status object encapsulates information about the privacy status of the channel.",
        },
        topicDetails = {
          ["$ref"] = "ChannelTopicDetails",
          description = "The topicDetails object encapsulates information about Freebase topics associated with the channel.",
        },
      },
      type = "object",
    },
    ChannelAuditDetails = {
      description = "The auditDetails object encapsulates channel data that is relevant for YouTube Partners during the audit process.",
      id = "ChannelAuditDetails",
      properties = {
        communityGuidelinesGoodStanding = {
          description = "Whether or not the channel respects the community guidelines.",
          type = "boolean",
        },
        contentIdClaimsGoodStanding = {
          description = "Whether or not the channel has any unresolved claims.",
          type = "boolean",
        },
        copyrightStrikesGoodStanding = {
          description = "Whether or not the channel has any copyright strikes.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ChannelBannerResource = {
      description = "A channel banner returned as the response to a channel_banner.insert call.",
      id = "ChannelBannerResource",
      properties = {
        etag = {
          type = "string",
        },
        kind = {
          default = "youtube#channelBannerResource",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#channelBannerResource\".",
          type = "string",
        },
        url = {
          description = "The URL of this banner image.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelBrandingSettings = {
      description = "Branding properties of a YouTube channel.",
      id = "ChannelBrandingSettings",
      properties = {
        channel = {
          ["$ref"] = "ChannelSettings",
          description = "Branding properties for the channel view.",
        },
        hints = {
          description = "Additional experimental branding properties.",
          items = {
            ["$ref"] = "PropertyValue",
          },
          type = "array",
        },
        image = {
          ["$ref"] = "ImageSettings",
          description = "Branding properties for branding images.",
        },
        watch = {
          ["$ref"] = "WatchSettings",
          description = "Branding properties for the watch page.",
        },
      },
      type = "object",
    },
    ChannelContentDetails = {
      description = "Details about the content of a channel.",
      id = "ChannelContentDetails",
      properties = {
        relatedPlaylists = {
          properties = {
            favorites = {
              description = "The ID of the playlist that contains the channel\"s favorite videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.",
              type = "string",
            },
            likes = {
              description = "The ID of the playlist that contains the channel\"s liked videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.",
              type = "string",
            },
            uploads = {
              description = "The ID of the playlist that contains the channel\"s uploaded videos. Use the videos.insert method to upload new videos and the videos.delete method to delete previously uploaded videos.",
              type = "string",
            },
            watchHistory = {
              description = "The ID of the playlist that contains the channel\"s watch history. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.",
              type = "string",
            },
            watchLater = {
              description = "The ID of the playlist that contains the channel\"s watch later playlist. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list.",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
    ChannelContentOwnerDetails = {
      description = "The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.",
      id = "ChannelContentOwnerDetails",
      properties = {
        contentOwner = {
          description = "The ID of the content owner linked to the channel.",
          type = "string",
        },
        timeLinked = {
          description = "The date and time when the channel was linked to the content owner.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelConversionPing = {
      description = "Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping.",
      id = "ChannelConversionPing",
      properties = {
        context = {
          description = "Defines the context of the ping.",
          enum = {
            "subscribe",
            "unsubscribe",
            "cview",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        conversionUrl = {
          description = "The url (without the schema) that the player shall send the ping to. It's at caller's descretion to decide which schema to use (http vs https) Example of a returned url: //googleads.g.doubleclick.net/pagead/ viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must append biscotti authentication (ms param in case of mobile, for example) to this ping.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelConversionPings = {
      description = "The conversionPings object encapsulates information about conversion pings that need to be respected by the channel.",
      id = "ChannelConversionPings",
      properties = {
        pings = {
          description = "Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping.",
          items = {
            ["$ref"] = "ChannelConversionPing",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ChannelListResponse = {
      id = "ChannelListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          items = {
            ["$ref"] = "Channel",
          },
          type = "array",
        },
        kind = {
          default = "youtube#channelListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#channelListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelLocalization = {
      description = "Channel localization setting",
      id = "ChannelLocalization",
      properties = {
        description = {
          description = "The localized strings for channel's description.",
          type = "string",
        },
        title = {
          description = "The localized strings for channel's title.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelProfileDetails = {
      id = "ChannelProfileDetails",
      properties = {
        channelId = {
          description = "The YouTube channel ID.",
          type = "string",
        },
        channelUrl = {
          description = "The channel's URL.",
          type = "string",
        },
        displayName = {
          description = "The channel's display name.",
          type = "string",
        },
        profileImageUrl = {
          description = "The channels's avatar URL.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelSection = {
      id = "ChannelSection",
      properties = {
        contentDetails = {
          ["$ref"] = "ChannelSectionContentDetails",
          description = "The contentDetails object contains details about the channel section content, such as a list of playlists or channels featured in the section.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the channel section.",
          type = "string",
        },
        kind = {
          default = "youtube#channelSection",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#channelSection\".",
          type = "string",
        },
        localizations = {
          additionalProperties = {
            ["$ref"] = "ChannelSectionLocalization",
          },
          description = "Localizations for different languages",
          type = "object",
        },
        snippet = {
          ["$ref"] = "ChannelSectionSnippet",
          description = "The snippet object contains basic details about the channel section, such as its type, style and title.",
        },
        targeting = {
          ["$ref"] = "ChannelSectionTargeting",
          description = "The targeting object contains basic targeting settings about the channel section.",
        },
      },
      type = "object",
    },
    ChannelSectionContentDetails = {
      description = "Details about a channelsection, including playlists and channels.",
      id = "ChannelSectionContentDetails",
      properties = {
        channels = {
          description = "The channel ids for type multiple_channels.",
          items = {
            type = "string",
          },
          type = "array",
        },
        playlists = {
          description = "The playlist ids for type single_playlist and multiple_playlists. For singlePlaylist, only one playlistId is allowed.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ChannelSectionListResponse = {
      id = "ChannelSectionListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of ChannelSections that match the request criteria.",
          items = {
            ["$ref"] = "ChannelSection",
          },
          type = "array",
        },
        kind = {
          default = "youtube#channelSectionListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#channelSectionListResponse\".",
          type = "string",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelSectionLocalization = {
      description = "ChannelSection localization setting",
      id = "ChannelSectionLocalization",
      properties = {
        title = {
          description = "The localized strings for channel section's title.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelSectionSnippet = {
      description = "Basic details about a channel section, including title, style and position.",
      id = "ChannelSectionSnippet",
      properties = {
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the channel that published the channel section.",
          type = "string",
        },
        defaultLanguage = {
          description = "The language of the channel section's default title and description.",
          type = "string",
        },
        localized = {
          ["$ref"] = "ChannelSectionLocalization",
          description = "Localized title, read-only.",
        },
        position = {
          description = "The position of the channel section in the channel.",
          format = "uint32",
          type = "integer",
        },
        style = {
          description = "The style of the channel section.",
          enum = {
            "channelsectionStyleUnspecified",
            "horizontalRow",
            "verticalList",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        title = {
          description = "The channel section's title for multiple_playlists and multiple_channels.",
          type = "string",
        },
        type = {
          description = "The type of the channel section.",
          enum = {
            "channelsectionTypeUndefined",
            "singlePlaylist",
            "multiplePlaylists",
            "popularUploads",
            "recentUploads",
            "likes",
            "allPlaylists",
            "likedPlaylists",
            "recentPosts",
            "recentActivity",
            "liveEvents",
            "upcomingEvents",
            "completedEvents",
            "multipleChannels",
            "postedVideos",
            "postedPlaylists",
            "subscriptions",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ChannelSectionTargeting = {
      description = "ChannelSection targeting setting.",
      id = "ChannelSectionTargeting",
      properties = {
        countries = {
          description = "The country the channel section is targeting.",
          items = {
            type = "string",
          },
          type = "array",
        },
        languages = {
          description = "The language the channel section is targeting.",
          items = {
            type = "string",
          },
          type = "array",
        },
        regions = {
          description = "The region the channel section is targeting.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ChannelSettings = {
      description = "Branding properties for the channel view.",
      id = "ChannelSettings",
      properties = {
        country = {
          description = "The country of the channel.",
          type = "string",
        },
        defaultLanguage = {
          type = "string",
        },
        defaultTab = {
          description = "Which content tab users should see when viewing the channel.",
          type = "string",
        },
        description = {
          description = "Specifies the channel description.",
          type = "string",
        },
        featuredChannelsTitle = {
          description = "Title for the featured channels tab.",
          type = "string",
        },
        featuredChannelsUrls = {
          description = "The list of featured channels.",
          items = {
            type = "string",
          },
          type = "array",
        },
        keywords = {
          description = "Lists keywords associated with the channel, comma-separated.",
          type = "string",
        },
        moderateComments = {
          description = "Whether user-submitted comments left on the channel page need to be approved by the channel owner to be publicly visible.",
          type = "boolean",
        },
        profileColor = {
          description = "A prominent color that can be rendered on this channel page.",
          type = "string",
        },
        showBrowseView = {
          description = "Whether the tab to browse the videos should be displayed.",
          type = "boolean",
        },
        showRelatedChannels = {
          description = "Whether related channels should be proposed.",
          type = "boolean",
        },
        title = {
          description = "Specifies the channel title.",
          type = "string",
        },
        trackingAnalyticsAccountId = {
          description = "The ID for a Google Analytics account to track and measure traffic to the channels.",
          type = "string",
        },
        unsubscribedTrailer = {
          description = "The trailer of the channel, for users that are not subscribers.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelSnippet = {
      description = "Basic details about a channel, including title, description and thumbnails.",
      id = "ChannelSnippet",
      properties = {
        country = {
          description = "The country of the channel.",
          type = "string",
        },
        customUrl = {
          description = "The custom url of the channel.",
          type = "string",
        },
        defaultLanguage = {
          description = "The language of the channel's default title and description.",
          type = "string",
        },
        description = {
          description = "The description of the channel.",
          type = "string",
        },
        localized = {
          ["$ref"] = "ChannelLocalization",
          description = "Localized title and description, read-only.",
        },
        publishedAt = {
          description = "The date and time that the channel was created.",
          format = "date-time",
          type = "string",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. When displaying thumbnails in your application, make sure that your code uses the image URLs exactly as they are returned in API responses. For example, your application should not use the http domain instead of the https domain in a URL returned in an API response. Beginning in July 2018, channel thumbnail URLs will only be available in the https domain, which is how the URLs appear in API responses. After that time, you might see broken images in your application if it tries to load YouTube images from the http domain. Thumbnail images might be empty for newly created channels and might take up to one day to populate.",
        },
        title = {
          description = "The channel's title.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelStatistics = {
      description = "Statistics about a channel: number of subscribers, number of videos in the channel, etc.",
      id = "ChannelStatistics",
      properties = {
        commentCount = {
          description = "The number of comments for the channel.",
          format = "uint64",
          type = "string",
        },
        hiddenSubscriberCount = {
          description = "Whether or not the number of subscribers is shown for this user.",
          type = "boolean",
        },
        subscriberCount = {
          description = "The number of subscribers that the channel has.",
          format = "uint64",
          type = "string",
        },
        videoCount = {
          description = "The number of videos uploaded to the channel.",
          format = "uint64",
          type = "string",
        },
        viewCount = {
          description = "The number of times the channel has been viewed.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelStatus = {
      description = "JSON template for the status part of a channel.",
      id = "ChannelStatus",
      properties = {
        isLinked = {
          description = "If true, then the user is linked to either a YouTube username or G+ account. Otherwise, the user doesn't have a public YouTube identity.",
          type = "boolean",
        },
        longUploadsStatus = {
          description = "The long uploads status of this channel. See https://support.google.com/youtube/answer/71673 for more information.",
          enum = {
            "longUploadsUnspecified",
            "allowed",
            "eligible",
            "disallowed",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        madeForKids = {
          type = "boolean",
        },
        privacyStatus = {
          description = "Privacy status of the channel.",
          enum = {
            "public",
            "unlisted",
            "private",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        selfDeclaredMadeForKids = {
          type = "boolean",
        },
      },
      type = "object",
    },
    ChannelToStoreLinkDetails = {
      description = "Information specific to a store on a merchandising platform linked to a YouTube channel.",
      id = "ChannelToStoreLinkDetails",
      properties = {
        merchantId = {
          description = "Google Merchant Center id of the store.",
          format = "uint64",
          type = "string",
        },
        storeName = {
          description = "Name of the store.",
          type = "string",
        },
        storeUrl = {
          description = "Landing page of the store.",
          type = "string",
        },
      },
      type = "object",
    },
    ChannelTopicDetails = {
      description = "Freebase topic information related to the channel.",
      id = "ChannelTopicDetails",
      properties = {
        topicCategories = {
          description = "A list of Wikipedia URLs that describe the channel's content.",
          items = {
            type = "string",
          },
          type = "array",
        },
        topicIds = {
          description = "A list of Freebase topic IDs associated with the channel. You can retrieve information about each topic using the Freebase Topic API.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Comment = {
      description = "A *comment* represents a single YouTube comment.",
      id = "Comment",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the comment.",
          type = "string",
        },
        kind = {
          default = "youtube#comment",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#comment\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "CommentSnippet",
          description = "The snippet object contains basic details about the comment.",
        },
      },
      type = "object",
    },
    CommentListResponse = {
      id = "CommentListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of comments that match the request criteria.",
          items = {
            ["$ref"] = "Comment",
          },
          type = "array",
        },
        kind = {
          default = "youtube#commentListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#commentListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    CommentSnippet = {
      description = "Basic details about a comment, such as its author and text.",
      id = "CommentSnippet",
      properties = {
        authorChannelId = {
          ["$ref"] = "CommentSnippetAuthorChannelId",
        },
        authorChannelUrl = {
          description = "Link to the author's YouTube channel, if any.",
          type = "string",
        },
        authorDisplayName = {
          description = "The name of the user who posted the comment.",
          type = "string",
        },
        authorProfileImageUrl = {
          description = "The URL for the avatar of the user who posted the comment.",
          type = "string",
        },
        canRate = {
          description = "Whether the current viewer can rate this comment.",
          type = "boolean",
        },
        channelId = {
          description = "The id of the corresponding YouTube channel. In case of a channel comment this is the channel the comment refers to. In case of a video comment it's the video's channel.",
          type = "string",
        },
        likeCount = {
          description = "The total number of likes this comment has received.",
          format = "uint32",
          type = "integer",
        },
        moderationStatus = {
          description = "The comment's moderation status. Will not be set if the comments were requested through the id filter.",
          enum = {
            "published",
            "heldForReview",
            "likelySpam",
            "rejected",
          },
          enumDescriptions = {
            "The comment is available for public display.",
            "The comment is awaiting review by a moderator.",
            "",
            "The comment is unfit for display.",
          },
          type = "string",
        },
        parentId = {
          description = "The unique id of the parent comment, only set for replies.",
          type = "string",
        },
        publishedAt = {
          description = "The date and time when the comment was originally published.",
          format = "date-time",
          type = "string",
        },
        textDisplay = {
          description = "The comment's text. The format is either plain text or HTML dependent on what has been requested. Even the plain text representation may differ from the text originally posted in that it may replace video links with video titles etc.",
          type = "string",
        },
        textOriginal = {
          description = "The comment's original raw text as initially posted or last updated. The original text will only be returned if it is accessible to the viewer, which is only guaranteed if the viewer is the comment's author.",
          type = "string",
        },
        updatedAt = {
          description = "The date and time when the comment was last updated.",
          format = "date-time",
          type = "string",
        },
        videoId = {
          description = "The ID of the video the comment refers to, if any.",
          type = "string",
        },
        viewerRating = {
          description = "The rating the viewer has given to this comment. For the time being this will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE. This may change in the future.",
          enum = {
            "none",
            "like",
            "dislike",
          },
          enumDescriptions = {
            "",
            "The entity is liked.",
            "The entity is disliked.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CommentSnippetAuthorChannelId = {
      description = "The id of the author's YouTube channel, if any.",
      id = "CommentSnippetAuthorChannelId",
      properties = {
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    CommentThread = {
      description = "A *comment thread* represents information that applies to a top level comment and all its replies. It can also include the top level comment itself and some of the replies.",
      id = "CommentThread",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the comment thread.",
          type = "string",
        },
        kind = {
          default = "youtube#commentThread",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#commentThread\".",
          type = "string",
        },
        replies = {
          ["$ref"] = "CommentThreadReplies",
          description = "The replies object contains a limited number of replies (if any) to the top level comment found in the snippet.",
        },
        snippet = {
          ["$ref"] = "CommentThreadSnippet",
          description = "The snippet object contains basic details about the comment thread and also the top level comment.",
        },
      },
      type = "object",
    },
    CommentThreadListResponse = {
      id = "CommentThreadListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of comment threads that match the request criteria.",
          items = {
            ["$ref"] = "CommentThread",
          },
          type = "array",
        },
        kind = {
          default = "youtube#commentThreadListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#commentThreadListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    CommentThreadReplies = {
      description = "Comments written in (direct or indirect) reply to the top level comment.",
      id = "CommentThreadReplies",
      properties = {
        comments = {
          description = "A limited number of replies. Unless the number of replies returned equals total_reply_count in the snippet the returned replies are only a subset of the total number of replies.",
          items = {
            ["$ref"] = "Comment",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CommentThreadSnippet = {
      description = "Basic details about a comment thread.",
      id = "CommentThreadSnippet",
      properties = {
        canReply = {
          description = "Whether the current viewer of the thread can reply to it. This is viewer specific - other viewers may see a different value for this field.",
          type = "boolean",
        },
        channelId = {
          description = "The YouTube channel the comments in the thread refer to or the channel with the video the comments refer to. If video_id isn't set the comments refer to the channel itself.",
          type = "string",
        },
        isPublic = {
          description = "Whether the thread (and therefore all its comments) is visible to all YouTube users.",
          type = "boolean",
        },
        topLevelComment = {
          ["$ref"] = "Comment",
          description = "The top level comment of this thread.",
        },
        totalReplyCount = {
          description = "The total number of replies (not including the top level comment).",
          format = "uint32",
          type = "integer",
        },
        videoId = {
          description = "The ID of the video the comments refer to, if any. No video_id implies a channel discussion comment.",
          type = "string",
        },
      },
      type = "object",
    },
    ContentRating = {
      description = "Ratings schemes. The country-specific ratings are mostly for movies and shows. LINT.IfChange",
      id = "ContentRating",
      properties = {
        acbRating = {
          description = "The video's Australian Classification Board (ACB) or Australian Communications and Media Authority (ACMA) rating. ACMA ratings are used to classify children's television programming.",
          enum = {
            "acbUnspecified",
            "acbE",
            "acbP",
            "acbC",
            "acbG",
            "acbPg",
            "acbM",
            "acbMa15plus",
            "acbR18plus",
            "acbUnrated",
          },
          enumDescriptions = {
            "",
            "E",
            "Programs that have been given a P classification by the Australian Communications and Media Authority. These programs are intended for preschool children.",
            "Programs that have been given a C classification by the Australian Communications and Media Authority. These programs are intended for children (other than preschool children) who are younger than 14 years of age.",
            "G",
            "PG",
            "M",
            "MA15+",
            "R18+",
            "",
          },
          type = "string",
        },
        agcomRating = {
          description = "The video's rating from Italy's Autorità per le Garanzie nelle Comunicazioni (AGCOM).",
          enum = {
            "agcomUnspecified",
            "agcomT",
            "agcomVm14",
            "agcomVm18",
            "agcomUnrated",
          },
          enumDescriptions = {
            "",
            "T",
            "VM14",
            "VM18",
            "",
          },
          type = "string",
        },
        anatelRating = {
          description = "The video's Anatel (Asociación Nacional de Televisión) rating for Chilean television.",
          enum = {
            "anatelUnspecified",
            "anatelF",
            "anatelI",
            "anatelI7",
            "anatelI10",
            "anatelI12",
            "anatelR",
            "anatelA",
            "anatelUnrated",
          },
          enumDescriptions = {
            "",
            "F",
            "I",
            "I-7",
            "I-10",
            "I-12",
            "R",
            "A",
            "",
          },
          type = "string",
        },
        bbfcRating = {
          description = "The video's British Board of Film Classification (BBFC) rating.",
          enum = {
            "bbfcUnspecified",
            "bbfcU",
            "bbfcPg",
            "bbfc12a",
            "bbfc12",
            "bbfc15",
            "bbfc18",
            "bbfcR18",
            "bbfcUnrated",
          },
          enumDescriptions = {
            "",
            "U",
            "PG",
            "12A",
            "12",
            "15",
            "18",
            "R18",
            "",
          },
          type = "string",
        },
        bfvcRating = {
          description = "The video's rating from Thailand's Board of Film and Video Censors.",
          enum = {
            "bfvcUnspecified",
            "bfvcG",
            "bfvcE",
            "bfvc13",
            "bfvc15",
            "bfvc18",
            "bfvc20",
            "bfvcB",
            "bfvcUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "E",
            "13",
            "15",
            "18",
            "20",
            "B",
            "",
          },
          type = "string",
        },
        bmukkRating = {
          description = "The video's rating from the Austrian Board of Media Classification (Bundesministerium für Unterricht, Kunst und Kultur).",
          enum = {
            "bmukkUnspecified",
            "bmukkAa",
            "bmukk6",
            "bmukk8",
            "bmukk10",
            "bmukk12",
            "bmukk14",
            "bmukk16",
            "bmukkUnrated",
          },
          enumDescriptions = {
            "",
            "Unrestricted",
            "6+",
            "8+",
            "10+",
            "12+",
            "14+",
            "16+",
            "",
          },
          type = "string",
        },
        catvRating = {
          description = "Rating system for Canadian TV - Canadian TV Classification System The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian English-language broadcasts. For more information, see the Canadian Broadcast Standards Council website.",
          enum = {
            "catvUnspecified",
            "catvC",
            "catvC8",
            "catvG",
            "catvPg",
            "catv14plus",
            "catv18plus",
            "catvUnrated",
            "catvE",
          },
          enumDescriptions = {
            "",
            "C",
            "C8",
            "G",
            "PG",
            "14+",
            "18+",
            "",
            "",
          },
          type = "string",
        },
        catvfrRating = {
          description = "The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian French-language broadcasts. For more information, see the Canadian Broadcast Standards Council website.",
          enum = {
            "catvfrUnspecified",
            "catvfrG",
            "catvfr8plus",
            "catvfr13plus",
            "catvfr16plus",
            "catvfr18plus",
            "catvfrUnrated",
            "catvfrE",
          },
          enumDescriptions = {
            "",
            "G",
            "8+",
            "13+",
            "16+",
            "18+",
            "",
            "",
          },
          type = "string",
        },
        cbfcRating = {
          description = "The video's Central Board of Film Certification (CBFC - India) rating.",
          enum = {
            "cbfcUnspecified",
            "cbfcU",
            "cbfcUA",
            "cbfcUA7plus",
            "cbfcUA13plus",
            "cbfcUA16plus",
            "cbfcA",
            "cbfcS",
            "cbfcUnrated",
          },
          enumDescriptions = {
            "",
            "U",
            "U/A",
            "U/A 7+",
            "U/A 13+",
            "U/A 16+",
            "A",
            "S",
            "",
          },
          type = "string",
        },
        cccRating = {
          description = "The video's Consejo de Calificación Cinematográfica (Chile) rating.",
          enum = {
            "cccUnspecified",
            "cccTe",
            "ccc6",
            "ccc14",
            "ccc18",
            "ccc18v",
            "ccc18s",
            "cccUnrated",
          },
          enumDescriptions = {
            "",
            "Todo espectador",
            "6+ - Inconveniente para menores de 7 años",
            "14+",
            "18+",
            "18+ - contenido excesivamente violento",
            "18+ - contenido pornográfico",
            "",
          },
          type = "string",
        },
        cceRating = {
          description = "The video's rating from Portugal's Comissão de Classificação de Espect´culos.",
          enum = {
            "cceUnspecified",
            "cceM4",
            "cceM6",
            "cceM12",
            "cceM16",
            "cceM18",
            "cceUnrated",
            "cceM14",
          },
          enumDescriptions = {
            "",
            "4",
            "6",
            "12",
            "16",
            "18",
            "",
            "14",
          },
          type = "string",
        },
        chfilmRating = {
          description = "The video's rating in Switzerland.",
          enum = {
            "chfilmUnspecified",
            "chfilm0",
            "chfilm6",
            "chfilm12",
            "chfilm16",
            "chfilm18",
            "chfilmUnrated",
          },
          enumDescriptions = {
            "",
            "0",
            "6",
            "12",
            "16",
            "18",
            "",
          },
          type = "string",
        },
        chvrsRating = {
          description = "The video's Canadian Home Video Rating System (CHVRS) rating.",
          enum = {
            "chvrsUnspecified",
            "chvrsG",
            "chvrsPg",
            "chvrs14a",
            "chvrs18a",
            "chvrsR",
            "chvrsE",
            "chvrsUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "14A",
            "18A",
            "R",
            "E",
            "",
          },
          type = "string",
        },
        cicfRating = {
          description = "The video's rating from the Commission de Contrôle des Films (Belgium).",
          enum = {
            "cicfUnspecified",
            "cicfE",
            "cicfKtEa",
            "cicfKntEna",
            "cicfUnrated",
          },
          enumDescriptions = {
            "",
            "E",
            "KT/EA",
            "KNT/ENA",
            "",
          },
          type = "string",
        },
        cnaRating = {
          description = "The video's rating from Romania's CONSILIUL NATIONAL AL AUDIOVIZUALULUI (CNA).",
          enum = {
            "cnaUnspecified",
            "cnaAp",
            "cna12",
            "cna15",
            "cna18",
            "cna18plus",
            "cnaUnrated",
          },
          enumDescriptions = {
            "",
            "AP",
            "12",
            "15",
            "18",
            "18+",
            "",
          },
          type = "string",
        },
        cncRating = {
          description = "Rating system in France - Commission de classification cinematographique",
          enum = {
            "cncUnspecified",
            "cncT",
            "cnc10",
            "cnc12",
            "cnc16",
            "cnc18",
            "cncE",
            "cncInterdiction",
            "cncUnrated",
          },
          enumDescriptions = {
            "",
            "T",
            "10",
            "12",
            "16",
            "18",
            "E",
            "interdiction",
            "",
          },
          type = "string",
        },
        csaRating = {
          description = "The video's rating from France's Conseil supérieur de l’audiovisuel, which rates broadcast content.",
          enum = {
            "csaUnspecified",
            "csaT",
            "csa10",
            "csa12",
            "csa16",
            "csa18",
            "csaInterdiction",
            "csaUnrated",
          },
          enumDescriptions = {
            "",
            "T",
            "10",
            "12",
            "16",
            "18",
            "Interdiction",
            "",
          },
          type = "string",
        },
        cscfRating = {
          description = "The video's rating from Luxembourg's Commission de surveillance de la classification des films (CSCF).",
          enum = {
            "cscfUnspecified",
            "cscfAl",
            "cscfA",
            "cscf6",
            "cscf9",
            "cscf12",
            "cscf16",
            "cscf18",
            "cscfUnrated",
          },
          enumDescriptions = {
            "",
            "AL",
            "A",
            "6",
            "9",
            "12",
            "16",
            "18",
            "",
          },
          type = "string",
        },
        czfilmRating = {
          description = "The video's rating in the Czech Republic.",
          enum = {
            "czfilmUnspecified",
            "czfilmU",
            "czfilm12",
            "czfilm14",
            "czfilm18",
            "czfilmUnrated",
          },
          enumDescriptions = {
            "",
            "U",
            "12",
            "14",
            "18",
            "",
          },
          type = "string",
        },
        djctqRating = {
          description = "The video's Departamento de Justiça, Classificação, Qualificação e Títulos (DJCQT - Brazil) rating.",
          enum = {
            "djctqUnspecified",
            "djctqL",
            "djctq10",
            "djctq12",
            "djctq14",
            "djctq16",
            "djctq18",
            "djctqEr",
            "djctqL10",
            "djctqL12",
            "djctqL14",
            "djctqL16",
            "djctqL18",
            "djctq1012",
            "djctq1014",
            "djctq1016",
            "djctq1018",
            "djctq1214",
            "djctq1216",
            "djctq1218",
            "djctq1416",
            "djctq1418",
            "djctq1618",
            "djctqUnrated",
          },
          enumDescriptions = {
            "",
            "L",
            "10",
            "12",
            "14",
            "16",
            "18",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        djctqRatingReasons = {
          description = "Reasons that explain why the video received its DJCQT (Brazil) rating.",
          items = {
            enum = {
              "djctqRatingReasonUnspecified",
              "djctqViolence",
              "djctqExtremeViolence",
              "djctqSexualContent",
              "djctqNudity",
              "djctqSex",
              "djctqExplicitSex",
              "djctqDrugs",
              "djctqLegalDrugs",
              "djctqIllegalDrugs",
              "djctqInappropriateLanguage",
              "djctqCriminalActs",
              "djctqImpactingContent",
            },
            enumDescriptions = {
              "",
              "Brazil rating content descriptors. See http://go/brazilratings section F. Violência (Violence)",
              "Violência extrema (Extreme violence)",
              "Conteúdo sexual (Sexual content)",
              "Nudez (Nudity)",
              "Sexo (Sex)",
              "Sexo Explícito (Explicit sex)",
              "Drogas (Drugs)",
              "Drogas Lícitas (Legal drugs)",
              "Drogas Ilícitas (Illegal drugs)",
              "Linguagem Imprópria (Inappropriate language)",
              "Atos Criminosos (Criminal Acts)",
              "Conteúdo Impactante (Impacting content)",
            },
            type = "string",
          },
          type = "array",
        },
        ecbmctRating = {
          description = "Rating system in Turkey - Evaluation and Classification Board of the Ministry of Culture and Tourism",
          enum = {
            "ecbmctUnspecified",
            "ecbmctG",
            "ecbmct7a",
            "ecbmct7plus",
            "ecbmct13a",
            "ecbmct13plus",
            "ecbmct15a",
            "ecbmct15plus",
            "ecbmct18plus",
            "ecbmctUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "7A",
            "7+",
            "13A",
            "13+",
            "15A",
            "15+",
            "18+",
            "",
          },
          type = "string",
        },
        eefilmRating = {
          description = "The video's rating in Estonia.",
          enum = {
            "eefilmUnspecified",
            "eefilmPere",
            "eefilmL",
            "eefilmMs6",
            "eefilmK6",
            "eefilmMs12",
            "eefilmK12",
            "eefilmK14",
            "eefilmK16",
            "eefilmUnrated",
          },
          enumDescriptions = {
            "",
            "Pere",
            "L",
            "MS-6",
            "K-6",
            "MS-12",
            "K-12",
            "K-14",
            "K-16",
            "",
          },
          type = "string",
        },
        egfilmRating = {
          description = "The video's rating in Egypt.",
          enum = {
            "egfilmUnspecified",
            "egfilmGn",
            "egfilm18",
            "egfilmBn",
            "egfilmUnrated",
          },
          enumDescriptions = {
            "",
            "GN",
            "18",
            "BN",
            "",
          },
          type = "string",
        },
        eirinRating = {
          description = "The video's Eirin (映倫) rating. Eirin is the Japanese rating system.",
          enum = {
            "eirinUnspecified",
            "eirinG",
            "eirinPg12",
            "eirinR15plus",
            "eirinR18plus",
            "eirinUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG-12",
            "R15+",
            "R18+",
            "",
          },
          type = "string",
        },
        fcbmRating = {
          description = "The video's rating from Malaysia's Film Censorship Board.",
          enum = {
            "fcbmUnspecified",
            "fcbmU",
            "fcbmPg13",
            "fcbmP13",
            "fcbm18",
            "fcbm18sx",
            "fcbm18pa",
            "fcbm18sg",
            "fcbm18pl",
            "fcbmUnrated",
          },
          enumDescriptions = {
            "",
            "U",
            "PG13",
            "P13",
            "18",
            "18SX",
            "18PA",
            "18SG",
            "18PL",
            "",
          },
          type = "string",
        },
        fcoRating = {
          description = "The video's rating from Hong Kong's Office for Film, Newspaper and Article Administration.",
          enum = {
            "fcoUnspecified",
            "fcoI",
            "fcoIia",
            "fcoIib",
            "fcoIi",
            "fcoIii",
            "fcoUnrated",
          },
          enumDescriptions = {
            "",
            "I",
            "IIA",
            "IIB",
            "II",
            "III",
            "",
          },
          type = "string",
        },
        fmocRating = {
          description = "This property has been deprecated. Use the contentDetails.contentRating.cncRating instead.",
          enum = {
            "fmocUnspecified",
            "fmocU",
            "fmoc10",
            "fmoc12",
            "fmoc16",
            "fmoc18",
            "fmocE",
            "fmocUnrated",
          },
          enumDescriptions = {
            "",
            "U",
            "10",
            "12",
            "16",
            "18",
            "E",
            "",
          },
          type = "string",
        },
        fpbRating = {
          description = "The video's rating from South Africa's Film and Publication Board.",
          enum = {
            "fpbUnspecified",
            "fpbA",
            "fpbPg",
            "fpb79Pg",
            "fpb1012Pg",
            "fpb13",
            "fpb16",
            "fpb18",
            "fpbX18",
            "fpbXx",
            "fpbUnrated",
            "fpb10",
          },
          enumDescriptions = {
            "",
            "A",
            "PG",
            "7-9PG",
            "10-12PG",
            "13",
            "16",
            "18",
            "X18",
            "XX",
            "",
            "10",
          },
          type = "string",
        },
        fpbRatingReasons = {
          description = "Reasons that explain why the video received its FPB (South Africa) rating.",
          items = {
            enum = {
              "fpbRatingReasonUnspecified",
              "fpbBlasphemy",
              "fpbLanguage",
              "fpbNudity",
              "fpbPrejudice",
              "fpbSex",
              "fpbViolence",
              "fpbDrugs",
              "fpbSexualViolence",
              "fpbHorror",
              "fpbCriminalTechniques",
              "fpbImitativeActsTechniques",
            },
            enumDescriptions = {
              "",
              "South Africa rating content descriptors.",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            },
            type = "string",
          },
          type = "array",
        },
        fskRating = {
          description = "The video's Freiwillige Selbstkontrolle der Filmwirtschaft (FSK - Germany) rating.",
          enum = {
            "fskUnspecified",
            "fsk0",
            "fsk6",
            "fsk12",
            "fsk16",
            "fsk18",
            "fskUnrated",
          },
          enumDescriptions = {
            "",
            "FSK 0",
            "FSK 6",
            "FSK 12",
            "FSK 16",
            "FSK 18",
            "",
          },
          type = "string",
        },
        grfilmRating = {
          description = "The video's rating in Greece.",
          enum = {
            "grfilmUnspecified",
            "grfilmK",
            "grfilmE",
            "grfilmK12",
            "grfilmK13",
            "grfilmK15",
            "grfilmK17",
            "grfilmK18",
            "grfilmUnrated",
          },
          enumDescriptions = {
            "",
            "K",
            "E",
            "K-12",
            "K-13",
            "K-15",
            "K-17",
            "K-18",
            "",
          },
          type = "string",
        },
        icaaRating = {
          description = "The video's Instituto de la Cinematografía y de las Artes Audiovisuales (ICAA - Spain) rating.",
          enum = {
            "icaaUnspecified",
            "icaaApta",
            "icaa7",
            "icaa12",
            "icaa13",
            "icaa16",
            "icaa18",
            "icaaX",
            "icaaUnrated",
          },
          enumDescriptions = {
            "",
            "APTA",
            "7",
            "12",
            "13",
            "16",
            "18",
            "X",
            "",
          },
          type = "string",
        },
        ifcoRating = {
          description = "The video's Irish Film Classification Office (IFCO - Ireland) rating. See the IFCO website for more information.",
          enum = {
            "ifcoUnspecified",
            "ifcoG",
            "ifcoPg",
            "ifco12",
            "ifco12a",
            "ifco15",
            "ifco15a",
            "ifco16",
            "ifco18",
            "ifcoUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "12",
            "12A",
            "15",
            "15A",
            "16",
            "18",
            "",
          },
          type = "string",
        },
        ilfilmRating = {
          description = "The video's rating in Israel.",
          enum = {
            "ilfilmUnspecified",
            "ilfilmAa",
            "ilfilm12",
            "ilfilm14",
            "ilfilm16",
            "ilfilm18",
            "ilfilmUnrated",
          },
          enumDescriptions = {
            "",
            "AA",
            "12",
            "14",
            "16",
            "18",
            "",
          },
          type = "string",
        },
        incaaRating = {
          description = "The video's INCAA (Instituto Nacional de Cine y Artes Audiovisuales - Argentina) rating.",
          enum = {
            "incaaUnspecified",
            "incaaAtp",
            "incaaSam13",
            "incaaSam16",
            "incaaSam18",
            "incaaC",
            "incaaUnrated",
          },
          enumDescriptions = {
            "",
            "ATP (Apta para todo publico)",
            "13 (Solo apta para mayores de 13 años)",
            "16 (Solo apta para mayores de 16 años)",
            "18 (Solo apta para mayores de 18 años)",
            "X (Solo apta para mayores de 18 años, de exhibición condicionada)",
            "",
          },
          type = "string",
        },
        kfcbRating = {
          description = "The video's rating from the Kenya Film Classification Board.",
          enum = {
            "kfcbUnspecified",
            "kfcbG",
            "kfcbPg",
            "kfcb16plus",
            "kfcbR",
            "kfcbUnrated",
          },
          enumDescriptions = {
            "",
            "GE",
            "PG",
            "16",
            "18",
            "",
          },
          type = "string",
        },
        kijkwijzerRating = {
          description = "The video's NICAM/Kijkwijzer rating from the Nederlands Instituut voor de Classificatie van Audiovisuele Media (Netherlands).",
          enum = {
            "kijkwijzerUnspecified",
            "kijkwijzerAl",
            "kijkwijzer6",
            "kijkwijzer9",
            "kijkwijzer12",
            "kijkwijzer16",
            "kijkwijzer18",
            "kijkwijzerUnrated",
          },
          enumDescriptions = {
            "",
            "AL",
            "6",
            "9",
            "12",
            "16",
            "",
            "",
          },
          type = "string",
        },
        kmrbRating = {
          description = "The video's Korea Media Rating Board (영상물등급위원회) rating. The KMRB rates videos in South Korea.",
          enum = {
            "kmrbUnspecified",
            "kmrbAll",
            "kmrb12plus",
            "kmrb15plus",
            "kmrbTeenr",
            "kmrbR",
            "kmrbUnrated",
          },
          enumDescriptions = {
            "",
            "전체관람가",
            "12세 이상 관람가",
            "15세 이상 관람가",
            "",
            "청소년 관람불가",
            "",
          },
          type = "string",
        },
        lsfRating = {
          description = "The video's rating from Indonesia's Lembaga Sensor Film.",
          enum = {
            "lsfUnspecified",
            "lsfSu",
            "lsfA",
            "lsfBo",
            "lsf13",
            "lsfR",
            "lsf17",
            "lsfD",
            "lsf21",
            "lsfUnrated",
          },
          enumDescriptions = {
            "",
            "SU",
            "A",
            "BO",
            "13",
            "R",
            "17",
            "D",
            "21",
            "",
          },
          type = "string",
        },
        mccaaRating = {
          description = "The video's rating from Malta's Film Age-Classification Board.",
          enum = {
            "mccaaUnspecified",
            "mccaaU",
            "mccaaPg",
            "mccaa12a",
            "mccaa12",
            "mccaa14",
            "mccaa15",
            "mccaa16",
            "mccaa18",
            "mccaaUnrated",
          },
          enumDescriptions = {
            "",
            "U",
            "PG",
            "12A",
            "12",
            "14 - this rating was removed from the new classification structure introduced in 2013.",
            "15",
            "16 - this rating was removed from the new classification structure introduced in 2013.",
            "18",
            "",
          },
          type = "string",
        },
        mccypRating = {
          description = "The video's rating from the Danish Film Institute's (Det Danske Filminstitut) Media Council for Children and Young People.",
          enum = {
            "mccypUnspecified",
            "mccypA",
            "mccyp7",
            "mccyp11",
            "mccyp15",
            "mccypUnrated",
          },
          enumDescriptions = {
            "",
            "A",
            "7",
            "11",
            "15",
            "",
          },
          type = "string",
        },
        mcstRating = {
          description = "The video's rating system for Vietnam - MCST",
          enum = {
            "mcstUnspecified",
            "mcstP",
            "mcst0",
            "mcstC13",
            "mcstC16",
            "mcst16plus",
            "mcstC18",
            "mcstGPg",
            "mcstUnrated",
          },
          enumDescriptions = {
            "",
            "P",
            "0",
            "C13",
            "C16",
            "16+",
            "C18",
            "MCST_G_PG",
            "",
          },
          type = "string",
        },
        mdaRating = {
          description = "The video's rating from Singapore's Media Development Authority (MDA) and, specifically, it's Board of Film Censors (BFC).",
          enum = {
            "mdaUnspecified",
            "mdaG",
            "mdaPg",
            "mdaPg13",
            "mdaNc16",
            "mdaM18",
            "mdaR21",
            "mdaUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "PG13",
            "NC16",
            "M18",
            "R21",
            "",
          },
          type = "string",
        },
        medietilsynetRating = {
          description = "The video's rating from Medietilsynet, the Norwegian Media Authority.",
          enum = {
            "medietilsynetUnspecified",
            "medietilsynetA",
            "medietilsynet6",
            "medietilsynet7",
            "medietilsynet9",
            "medietilsynet11",
            "medietilsynet12",
            "medietilsynet15",
            "medietilsynet18",
            "medietilsynetUnrated",
          },
          enumDescriptions = {
            "",
            "A",
            "6",
            "7",
            "9",
            "11",
            "12",
            "15",
            "18",
            "",
          },
          type = "string",
        },
        mekuRating = {
          description = "The video's rating from Finland's Kansallinen Audiovisuaalinen Instituutti (National Audiovisual Institute).",
          enum = {
            "mekuUnspecified",
            "mekuS",
            "meku7",
            "meku12",
            "meku16",
            "meku18",
            "mekuUnrated",
          },
          enumDescriptions = {
            "",
            "S",
            "7",
            "12",
            "16",
            "18",
            "",
          },
          type = "string",
        },
        menaMpaaRating = {
          description = "The rating system for MENA countries, a clone of MPAA. It is needed to prevent titles go live w/o additional QC check, since some of them can be inappropriate for the countries at all. See b/33408548 for more details.",
          enum = {
            "menaMpaaUnspecified",
            "menaMpaaG",
            "menaMpaaPg",
            "menaMpaaPg13",
            "menaMpaaR",
            "menaMpaaUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "PG-13",
            "R",
            "To keep the same enum values as MPAA's items have, skip NC_17.",
          },
          type = "string",
        },
        mibacRating = {
          description = "The video's rating from the Ministero dei Beni e delle Attività Culturali e del Turismo (Italy).",
          enum = {
            "mibacUnspecified",
            "mibacT",
            "mibacVap",
            "mibacVm6",
            "mibacVm12",
            "mibacVm14",
            "mibacVm16",
            "mibacVm18",
            "mibacUnrated",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        mocRating = {
          description = "The video's Ministerio de Cultura (Colombia) rating.",
          enum = {
            "mocUnspecified",
            "mocE",
            "mocT",
            "moc7",
            "moc12",
            "moc15",
            "moc18",
            "mocX",
            "mocBanned",
            "mocUnrated",
          },
          enumDescriptions = {
            "",
            "E",
            "T",
            "7",
            "12",
            "15",
            "18",
            "X",
            "Banned",
            "",
          },
          type = "string",
        },
        moctwRating = {
          description = "The video's rating from Taiwan's Ministry of Culture (文化部).",
          enum = {
            "moctwUnspecified",
            "moctwG",
            "moctwP",
            "moctwPg",
            "moctwR",
            "moctwUnrated",
            "moctwR12",
            "moctwR15",
          },
          enumDescriptions = {
            "",
            "G",
            "P",
            "PG",
            "R",
            "",
            "R-12",
            "R-15",
          },
          type = "string",
        },
        mpaaRating = {
          description = "The video's Motion Picture Association of America (MPAA) rating.",
          enum = {
            "mpaaUnspecified",
            "mpaaG",
            "mpaaPg",
            "mpaaPg13",
            "mpaaR",
            "mpaaNc17",
            "mpaaX",
            "mpaaUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "PG-13",
            "R",
            "NC-17",
            "! X",
            "",
          },
          type = "string",
        },
        mpaatRating = {
          description = "The rating system for trailer, DVD, and Ad in the US. See http://movielabs.com/md/ratings/v2.3/html/US_MPAAT_Ratings.html.",
          enum = {
            "mpaatUnspecified",
            "mpaatGb",
            "mpaatRb",
          },
          enumDescriptions = {
            "",
            "GB",
            "RB",
          },
          type = "string",
        },
        mtrcbRating = {
          description = "The video's rating from the Movie and Television Review and Classification Board (Philippines).",
          enum = {
            "mtrcbUnspecified",
            "mtrcbG",
            "mtrcbPg",
            "mtrcbR13",
            "mtrcbR16",
            "mtrcbR18",
            "mtrcbX",
            "mtrcbUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "R-13",
            "R-16",
            "R-18",
            "X",
            "",
          },
          type = "string",
        },
        nbcRating = {
          description = "The video's rating from the Maldives National Bureau of Classification.",
          enum = {
            "nbcUnspecified",
            "nbcG",
            "nbcPg",
            "nbc12plus",
            "nbc15plus",
            "nbc18plus",
            "nbc18plusr",
            "nbcPu",
            "nbcUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "12+",
            "15+",
            "18+",
            "18+R",
            "PU",
            "",
          },
          type = "string",
        },
        nbcplRating = {
          description = "The video's rating in Poland.",
          enum = {
            "nbcplUnspecified",
            "nbcplI",
            "nbcplIi",
            "nbcplIii",
            "nbcplIv",
            "nbcpl18plus",
            "nbcplUnrated",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        nfrcRating = {
          description = "The video's rating from the Bulgarian National Film Center.",
          enum = {
            "nfrcUnspecified",
            "nfrcA",
            "nfrcB",
            "nfrcC",
            "nfrcD",
            "nfrcX",
            "nfrcUnrated",
          },
          enumDescriptions = {
            "",
            "A",
            "B",
            "C",
            "D",
            "X",
            "",
          },
          type = "string",
        },
        nfvcbRating = {
          description = "The video's rating from Nigeria's National Film and Video Censors Board.",
          enum = {
            "nfvcbUnspecified",
            "nfvcbG",
            "nfvcbPg",
            "nfvcb12",
            "nfvcb12a",
            "nfvcb15",
            "nfvcb18",
            "nfvcbRe",
            "nfvcbUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "12",
            "12A",
            "15",
            "18",
            "RE",
            "",
          },
          type = "string",
        },
        nkclvRating = {
          description = "The video's rating from the Nacionãlais Kino centrs (National Film Centre of Latvia).",
          enum = {
            "nkclvUnspecified",
            "nkclvU",
            "nkclv7plus",
            "nkclv12plus",
            "nkclv16plus",
            "nkclv18plus",
            "nkclvUnrated",
          },
          enumDescriptions = {
            "",
            "U",
            "7+",
            "12+",
            "! 16+",
            "18+",
            "",
          },
          type = "string",
        },
        nmcRating = {
          description = "The National Media Council ratings system for United Arab Emirates.",
          enum = {
            "nmcUnspecified",
            "nmcG",
            "nmcPg",
            "nmcPg13",
            "nmcPg15",
            "nmc15plus",
            "nmc18plus",
            "nmc18tc",
            "nmcUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "PG-13",
            "PG-15",
            "15+",
            "18+",
            "18TC",
            "",
          },
          type = "string",
        },
        oflcRating = {
          description = "The video's Office of Film and Literature Classification (OFLC - New Zealand) rating.",
          enum = {
            "oflcUnspecified",
            "oflcG",
            "oflcPg",
            "oflcM",
            "oflcR13",
            "oflcR15",
            "oflcR16",
            "oflcR18",
            "oflcUnrated",
            "oflcRp13",
            "oflcRp16",
            "oflcRp18",
          },
          enumDescriptions = {
            "",
            "G",
            "PG",
            "M",
            "R13",
            "R15",
            "R16",
            "R18",
            "",
            "RP13",
            "RP16",
            "RP18",
          },
          type = "string",
        },
        pefilmRating = {
          description = "The video's rating in Peru.",
          enum = {
            "pefilmUnspecified",
            "pefilmPt",
            "pefilmPg",
            "pefilm14",
            "pefilm18",
            "pefilmUnrated",
          },
          enumDescriptions = {
            "",
            "PT",
            "PG",
            "14",
            "18",
            "",
          },
          type = "string",
        },
        rcnofRating = {
          description = "The video's rating from the Hungarian Nemzeti Filmiroda, the Rating Committee of the National Office of Film.",
          enum = {
            "rcnofUnspecified",
            "rcnofI",
            "rcnofIi",
            "rcnofIii",
            "rcnofIv",
            "rcnofV",
            "rcnofVi",
            "rcnofUnrated",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        resorteviolenciaRating = {
          description = "The video's rating in Venezuela.",
          enum = {
            "resorteviolenciaUnspecified",
            "resorteviolenciaA",
            "resorteviolenciaB",
            "resorteviolenciaC",
            "resorteviolenciaD",
            "resorteviolenciaE",
            "resorteviolenciaUnrated",
          },
          enumDescriptions = {
            "",
            "A",
            "B",
            "C",
            "D",
            "E",
            "",
          },
          type = "string",
        },
        rtcRating = {
          description = "The video's General Directorate of Radio, Television and Cinematography (Mexico) rating.",
          enum = {
            "rtcUnspecified",
            "rtcAa",
            "rtcA",
            "rtcB",
            "rtcB15",
            "rtcC",
            "rtcD",
            "rtcUnrated",
          },
          enumDescriptions = {
            "",
            "AA",
            "A",
            "B",
            "B15",
            "C",
            "D",
            "",
          },
          type = "string",
        },
        rteRating = {
          description = "The video's rating from Ireland's Raidió Teilifís Éireann.",
          enum = {
            "rteUnspecified",
            "rteGa",
            "rteCh",
            "rtePs",
            "rteMa",
            "rteUnrated",
          },
          enumDescriptions = {
            "",
            "GA",
            "CH",
            "PS",
            "MA",
            "",
          },
          type = "string",
        },
        russiaRating = {
          description = "The video's National Film Registry of the Russian Federation (MKRF - Russia) rating.",
          enum = {
            "russiaUnspecified",
            "russia0",
            "russia6",
            "russia12",
            "russia16",
            "russia18",
            "russiaUnrated",
          },
          enumDescriptions = {
            "",
            "0+",
            "6+",
            "12+",
            "16+",
            "18+",
            "",
          },
          type = "string",
        },
        skfilmRating = {
          description = "The video's rating in Slovakia.",
          enum = {
            "skfilmUnspecified",
            "skfilmG",
            "skfilmP2",
            "skfilmP5",
            "skfilmP8",
            "skfilmUnrated",
          },
          enumDescriptions = {
            "",
            "G",
            "P2",
            "P5",
            "P8",
            "",
          },
          type = "string",
        },
        smaisRating = {
          description = "The video's rating in Iceland.",
          enum = {
            "smaisUnspecified",
            "smaisL",
            "smais7",
            "smais12",
            "smais14",
            "smais16",
            "smais18",
            "smaisUnrated",
          },
          enumDescriptions = {
            "",
            "L",
            "7",
            "12",
            "14",
            "16",
            "18",
            "",
          },
          type = "string",
        },
        smsaRating = {
          description = "The video's rating from Statens medieråd (Sweden's National Media Council).",
          enum = {
            "smsaUnspecified",
            "smsaA",
            "smsa7",
            "smsa11",
            "smsa15",
            "smsaUnrated",
          },
          enumDescriptions = {
            "",
            "All ages",
            "7",
            "11",
            "15",
            "",
          },
          type = "string",
        },
        tvpgRating = {
          description = "The video's TV Parental Guidelines (TVPG) rating.",
          enum = {
            "tvpgUnspecified",
            "tvpgY",
            "tvpgY7",
            "tvpgY7Fv",
            "tvpgG",
            "tvpgPg",
            "pg14",
            "tvpgMa",
            "tvpgUnrated",
          },
          enumDescriptions = {
            "",
            "TV-Y",
            "TV-Y7",
            "TV-Y7-FV",
            "TV-G",
            "TV-PG",
            "TV-14",
            "TV-MA",
            "",
          },
          type = "string",
        },
        ytRating = {
          description = "A rating that YouTube uses to identify age-restricted content.",
          enum = {
            "ytUnspecified",
            "ytAgeRestricted",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Cuepoint = {
      description = "Note that there may be a 5-second end-point resolution issue. For instance, if a cuepoint comes in for 22:03:27, we may stuff the cuepoint into 22:03:25 or 22:03:30, depending. This is an artifact of HLS.",
      id = "Cuepoint",
      properties = {
        cueType = {
          enum = {
            "cueTypeUnspecified",
            "cueTypeAd",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        durationSecs = {
          description = "The duration of this cuepoint.",
          format = "uint32",
          type = "integer",
        },
        etag = {
          type = "string",
        },
        id = {
          description = "The identifier for cuepoint resource.",
          type = "string",
        },
        insertionOffsetTimeMs = {
          description = "The time when the cuepoint should be inserted by offset to the broadcast actual start time.",
          format = "int64",
          type = "string",
        },
        walltimeMs = {
          description = "The wall clock time at which the cuepoint should be inserted. Only one of insertion_offset_time_ms and walltime_ms may be set at a time.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    Entity = {
      id = "Entity",
      properties = {
        id = {
          type = "string",
        },
        typeId = {
          type = "string",
        },
        url = {
          type = "string",
        },
      },
      type = "object",
    },
    GeoPoint = {
      description = "Geographical coordinates of a point, in WGS84.",
      id = "GeoPoint",
      properties = {
        altitude = {
          description = "Altitude above the reference ellipsoid, in meters.",
          format = "double",
          type = "number",
        },
        latitude = {
          description = "Latitude in degrees.",
          format = "double",
          type = "number",
        },
        longitude = {
          description = "Longitude in degrees.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    I18nLanguage = {
      description = "An *i18nLanguage* resource identifies a UI language currently supported by YouTube.",
      id = "I18nLanguage",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the i18n language.",
          type = "string",
        },
        kind = {
          default = "youtube#i18nLanguage",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nLanguage\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "I18nLanguageSnippet",
          description = "The snippet object contains basic details about the i18n language, such as language code and human-readable name.",
        },
      },
      type = "object",
    },
    I18nLanguageListResponse = {
      id = "I18nLanguageListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of supported i18n languages. In this map, the i18n language ID is the map key, and its value is the corresponding i18nLanguage resource.",
          items = {
            ["$ref"] = "I18nLanguage",
          },
          type = "array",
        },
        kind = {
          default = "youtube#i18nLanguageListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nLanguageListResponse\".",
          type = "string",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    I18nLanguageSnippet = {
      description = "Basic details about an i18n language, such as language code and human-readable name.",
      id = "I18nLanguageSnippet",
      properties = {
        hl = {
          description = "A short BCP-47 code that uniquely identifies a language.",
          type = "string",
        },
        name = {
          description = "The human-readable name of the language in the language itself.",
          type = "string",
        },
      },
      type = "object",
    },
    I18nRegion = {
      description = "A *i18nRegion* resource identifies a region where YouTube is available.",
      id = "I18nRegion",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the i18n region.",
          type = "string",
        },
        kind = {
          default = "youtube#i18nRegion",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nRegion\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "I18nRegionSnippet",
          description = "The snippet object contains basic details about the i18n region, such as region code and human-readable name.",
        },
      },
      type = "object",
    },
    I18nRegionListResponse = {
      id = "I18nRegionListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of regions where YouTube is available. In this map, the i18n region ID is the map key, and its value is the corresponding i18nRegion resource.",
          items = {
            ["$ref"] = "I18nRegion",
          },
          type = "array",
        },
        kind = {
          default = "youtube#i18nRegionListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#i18nRegionListResponse\".",
          type = "string",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    I18nRegionSnippet = {
      description = "Basic details about an i18n region, such as region code and human-readable name.",
      id = "I18nRegionSnippet",
      properties = {
        gl = {
          description = "The region code as a 2-letter ISO country code.",
          type = "string",
        },
        name = {
          description = "The human-readable name of the region.",
          type = "string",
        },
      },
      type = "object",
    },
    ImageSettings = {
      description = "Branding properties for images associated with the channel.",
      id = "ImageSettings",
      properties = {
        backgroundImageUrl = {
          ["$ref"] = "LocalizedProperty",
          description = "The URL for the background image shown on the video watch page. The image should be 1200px by 615px, with a maximum file size of 128k.",
        },
        bannerExternalUrl = {
          description = "This is generated when a ChannelBanner.Insert request has succeeded for the given channel.",
          type = "string",
        },
        bannerImageUrl = {
          description = "Banner image. Desktop size (1060x175).",
          type = "string",
        },
        bannerMobileExtraHdImageUrl = {
          description = "Banner image. Mobile size high resolution (1440x395).",
          type = "string",
        },
        bannerMobileHdImageUrl = {
          description = "Banner image. Mobile size high resolution (1280x360).",
          type = "string",
        },
        bannerMobileImageUrl = {
          description = "Banner image. Mobile size (640x175).",
          type = "string",
        },
        bannerMobileLowImageUrl = {
          description = "Banner image. Mobile size low resolution (320x88).",
          type = "string",
        },
        bannerMobileMediumHdImageUrl = {
          description = "Banner image. Mobile size medium/high resolution (960x263).",
          type = "string",
        },
        bannerTabletExtraHdImageUrl = {
          description = "Banner image. Tablet size extra high resolution (2560x424).",
          type = "string",
        },
        bannerTabletHdImageUrl = {
          description = "Banner image. Tablet size high resolution (2276x377).",
          type = "string",
        },
        bannerTabletImageUrl = {
          description = "Banner image. Tablet size (1707x283).",
          type = "string",
        },
        bannerTabletLowImageUrl = {
          description = "Banner image. Tablet size low resolution (1138x188).",
          type = "string",
        },
        bannerTvHighImageUrl = {
          description = "Banner image. TV size high resolution (1920x1080).",
          type = "string",
        },
        bannerTvImageUrl = {
          description = "Banner image. TV size extra high resolution (2120x1192).",
          type = "string",
        },
        bannerTvLowImageUrl = {
          description = "Banner image. TV size low resolution (854x480).",
          type = "string",
        },
        bannerTvMediumImageUrl = {
          description = "Banner image. TV size medium resolution (1280x720).",
          type = "string",
        },
        largeBrandedBannerImageImapScript = {
          ["$ref"] = "LocalizedProperty",
          description = "The image map script for the large banner image.",
        },
        largeBrandedBannerImageUrl = {
          ["$ref"] = "LocalizedProperty",
          description = "The URL for the 854px by 70px image that appears below the video player in the expanded video view of the video watch page.",
        },
        smallBrandedBannerImageImapScript = {
          ["$ref"] = "LocalizedProperty",
          description = "The image map script for the small banner image.",
        },
        smallBrandedBannerImageUrl = {
          ["$ref"] = "LocalizedProperty",
          description = "The URL for the 640px by 70px banner image that appears below the video player in the default view of the video watch page. The URL for the image that appears above the top-left corner of the video player. This is a 25-pixel-high image with a flexible width that cannot exceed 170 pixels.",
        },
        trackingImageUrl = {
          description = "The URL for a 1px by 1px tracking pixel that can be used to collect statistics for views of the channel or video pages.",
          type = "string",
        },
        watchIconImageUrl = {
          type = "string",
        },
      },
      type = "object",
    },
    IngestionInfo = {
      description = "Describes information necessary for ingesting an RTMP, HTTP, or SRT stream.",
      id = "IngestionInfo",
      properties = {
        backupIngestionAddress = {
          description = "The backup ingestion URL that you should use to stream video to YouTube. You have the option of simultaneously streaming the content that you are sending to the ingestionAddress to this URL.",
          type = "string",
        },
        ingestionAddress = {
          description = "The primary ingestion URL that you should use to stream video to YouTube. You must stream video to this URL. Depending on which application or tool you use to encode your video stream, you may need to enter the stream URL and stream name separately or you may need to concatenate them in the following format: *STREAM_URL/STREAM_NAME* ",
          type = "string",
        },
        rtmpsBackupIngestionAddress = {
          description = "This ingestion url may be used instead of backupIngestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams.",
          type = "string",
        },
        rtmpsIngestionAddress = {
          description = "This ingestion url may be used instead of ingestionAddress in order to stream via RTMPS. Not applicable to non-RTMP streams.",
          type = "string",
        },
        streamName = {
          description = "The stream name that YouTube assigns to the video stream.",
          type = "string",
        },
      },
      type = "object",
    },
    InvideoBranding = {
      description = "LINT.IfChange Describes an invideo branding.",
      id = "InvideoBranding",
      properties = {
        imageBytes = {
          description = "The bytes the uploaded image. Only used in api to youtube communication.",
          format = "byte",
          type = "string",
        },
        imageUrl = {
          description = "The url of the uploaded image. Only used in apiary to api communication.",
          type = "string",
        },
        position = {
          ["$ref"] = "InvideoPosition",
          description = "The spatial position within the video where the branding watermark will be displayed.",
        },
        targetChannelId = {
          description = "The channel to which this branding links. If not present it defaults to the current channel.",
          type = "string",
        },
        timing = {
          ["$ref"] = "InvideoTiming",
          description = "The temporal position within the video where watermark will be displayed.",
        },
      },
      type = "object",
    },
    InvideoPosition = {
      description = "Describes the spatial position of a visual widget inside a video. It is a union of various position types, out of which only will be set one.",
      id = "InvideoPosition",
      properties = {
        cornerPosition = {
          description = "Describes in which corner of the video the visual widget will appear.",
          enum = {
            "topLeft",
            "topRight",
            "bottomLeft",
            "bottomRight",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        type = {
          description = "Defines the position type.",
          enum = {
            "corner",
          },
          enumDescriptions = {
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    InvideoTiming = {
      description = "Describes a temporal position of a visual widget inside a video.",
      id = "InvideoTiming",
      properties = {
        durationMs = {
          description = "Defines the duration in milliseconds for which the promotion should be displayed. If missing, the client should use the default.",
          format = "uint64",
          type = "string",
        },
        offsetMs = {
          description = "Defines the time at which the promotion will appear. Depending on the value of type the value of the offsetMs field will represent a time offset from the start or from the end of the video, expressed in milliseconds.",
          format = "uint64",
          type = "string",
        },
        type = {
          description = "Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video.",
          enum = {
            "offsetFromStart",
            "offsetFromEnd",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LanguageTag = {
      id = "LanguageTag",
      properties = {
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    LevelDetails = {
      id = "LevelDetails",
      properties = {
        displayName = {
          description = "The name that should be used when referring to this level.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveBroadcast = {
      description = "A *liveBroadcast* resource represents an event that will be streamed, via live video, on YouTube.",
      id = "LiveBroadcast",
      properties = {
        contentDetails = {
          ["$ref"] = "LiveBroadcastContentDetails",
          description = "The contentDetails object contains information about the event's video content, such as whether the content can be shown in an embedded video player or if it will be archived and therefore available for viewing after the event has concluded.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          annotations = {
            required = {
              "youtube.liveBroadcasts.update",
            },
          },
          description = "The ID that YouTube assigns to uniquely identify the broadcast.",
          type = "string",
        },
        kind = {
          default = "youtube#liveBroadcast",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveBroadcast\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "LiveBroadcastSnippet",
          description = "The snippet object contains basic details about the event, including its title, description, start time, and end time.",
        },
        statistics = {
          ["$ref"] = "LiveBroadcastStatistics",
          description = "The statistics object contains info about the event's current stats. These include concurrent viewers and total chat count. Statistics can change (in either direction) during the lifetime of an event. Statistics are only returned while the event is live.",
        },
        status = {
          ["$ref"] = "LiveBroadcastStatus",
          description = "The status object contains information about the event's status.",
        },
      },
      type = "object",
    },
    LiveBroadcastContentDetails = {
      description = "Detailed settings of a broadcast.",
      id = "LiveBroadcastContentDetails",
      properties = {
        boundStreamId = {
          description = "This value uniquely identifies the live stream bound to the broadcast.",
          type = "string",
        },
        boundStreamLastUpdateTimeMs = {
          description = "The date and time that the live stream referenced by boundStreamId was last updated.",
          format = "date-time",
          type = "string",
        },
        closedCaptionsType = {
          enum = {
            "closedCaptionsTypeUnspecified",
            "closedCaptionsDisabled",
            "closedCaptionsHttpPost",
            "closedCaptionsEmbedded",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        enableAutoStart = {
          description = "This setting indicates whether auto start is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.",
          type = "boolean",
        },
        enableAutoStop = {
          description = "This setting indicates whether auto stop is enabled for this broadcast. The default value for this property is false. This setting can only be used by Events.",
          type = "boolean",
        },
        enableClosedCaptions = {
          description = "This setting indicates whether HTTP POST closed captioning is enabled for this broadcast. The ingestion URL of the closed captions is returned through the liveStreams API. This is mutually exclusive with using the closed_captions_type property, and is equivalent to setting closed_captions_type to CLOSED_CAPTIONS_HTTP_POST.",
          type = "boolean",
        },
        enableContentEncryption = {
          description = "This setting indicates whether YouTube should enable content encryption for the broadcast.",
          type = "boolean",
        },
        enableDvr = {
          description = "This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true. *Important:* You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends.",
          type = "boolean",
        },
        enableEmbed = {
          description = "This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video.",
          type = "boolean",
        },
        enableLowLatency = {
          description = "Indicates whether this broadcast has low latency enabled.",
          type = "boolean",
        },
        latencyPreference = {
          description = "If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should match enable_low_latency=true LATENCY_ULTRA_LOW should have enable_low_latency omitted.",
          enum = {
            "latencyPreferenceUnspecified",
            "normal",
            "low",
            "ultraLow",
          },
          enumDescriptions = {
            "",
            "Best for: highest quality viewer playbacks and higher resolutions.",
            "Best for: near real-time interaction, with minimal playback buffering.",
            "Best for: real-time interaction Does not support: Closed captions, 1440p, and 4k resolutions",
          },
          type = "string",
        },
        mesh = {
          description = "The mesh for projecting the video if projection is mesh. The mesh value must be a UTF-8 string containing the base-64 encoding of 3D mesh data that follows the Spherical Video V2 RFC specification for an mshp box, excluding the box size and type but including the following four reserved zero bytes for the version and flags.",
          format = "byte",
          type = "string",
        },
        monitorStream = {
          ["$ref"] = "MonitorStreamInfo",
          description = "The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly.",
        },
        projection = {
          description = "The projection format of this broadcast. This defaults to rectangular.",
          enum = {
            "projectionUnspecified",
            "rectangular",
            "360",
            "mesh",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        recordFromStart = {
          description = "Automatically start recording after the event goes live. The default value for this property is true. *Important:* You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback.",
          type = "boolean",
        },
        startWithSlate = {
          description = "This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers.",
          type = "boolean",
        },
        stereoLayout = {
          description = "The 3D stereo layout of this broadcast. This defaults to mono.",
          enum = {
            "stereoLayoutUnspecified",
            "mono",
            "leftRight",
            "topBottom",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LiveBroadcastListResponse = {
      id = "LiveBroadcastListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of broadcasts that match the request criteria.",
          items = {
            ["$ref"] = "LiveBroadcast",
          },
          type = "array",
        },
        kind = {
          default = "youtube#liveBroadcastListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveBroadcastListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveBroadcastSnippet = {
      description = "Basic broadcast information.",
      id = "LiveBroadcastSnippet",
      properties = {
        actualEndTime = {
          description = "The date and time that the broadcast actually ended. This information is only available once the broadcast's state is complete.",
          format = "date-time",
          type = "string",
        },
        actualStartTime = {
          description = "The date and time that the broadcast actually started. This information is only available once the broadcast's state is live.",
          format = "date-time",
          type = "string",
        },
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the channel that is publishing the broadcast.",
          type = "string",
        },
        description = {
          description = "The broadcast's description. As with the title, you can set this field by modifying the broadcast resource or by setting the description field of the corresponding video resource.",
          type = "string",
        },
        isDefaultBroadcast = {
          description = "Indicates whether this broadcast is the default broadcast. Internal only.",
          type = "boolean",
        },
        liveChatId = {
          description = "The id of the live chat for this broadcast.",
          type = "string",
        },
        publishedAt = {
          description = "The date and time that the broadcast was added to YouTube's live broadcast schedule.",
          format = "date-time",
          type = "string",
        },
        scheduledEndTime = {
          description = "The date and time that the broadcast is scheduled to end.",
          format = "date-time",
          type = "string",
        },
        scheduledStartTime = {
          annotations = {
            required = {
              "youtube.liveBroadcasts.insert",
              "youtube.liveBroadcasts.update",
            },
          },
          description = "The date and time that the broadcast is scheduled to start.",
          format = "date-time",
          type = "string",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the broadcast. For each nested object in this object, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.",
        },
        title = {
          annotations = {
            required = {
              "youtube.liveBroadcasts.insert",
              "youtube.liveBroadcasts.update",
            },
          },
          description = "The broadcast's title. Note that the broadcast represents exactly one YouTube video. You can set this field by modifying the broadcast resource or by setting the title field of the corresponding video resource.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveBroadcastStatistics = {
      description = "Statistics about the live broadcast. These represent a snapshot of the values at the time of the request. Statistics are only returned for live broadcasts.",
      id = "LiveBroadcastStatistics",
      properties = {
        concurrentViewers = {
          description = "The number of viewers currently watching the broadcast. The property and its value will be present if the broadcast has current viewers and the broadcast owner has not hidden the viewcount for the video. Note that YouTube stops tracking the number of concurrent viewers for a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an archived video of a live broadcast that already ended.",
          format = "uint64",
          type = "string",
        },
        totalChatCount = {
          description = "The total number of live chat messages currently on the broadcast. The property and its value will be present if the broadcast is public, has the live chat feature enabled, and has at least one message. Note that this field will not be filled after the broadcast ends. So this property would not identify the number of chat messages for an archived video of a completed live broadcast.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    LiveBroadcastStatus = {
      description = "Live broadcast state.",
      id = "LiveBroadcastStatus",
      properties = {
        lifeCycleStatus = {
          description = "The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method.",
          enum = {
            "lifeCycleStatusUnspecified",
            "created",
            "ready",
            "testing",
            "live",
            "complete",
            "revoked",
            "testStarting",
            "liveStarting",
          },
          enumDescriptions = {
            "No value or the value is unknown.",
            "Incomplete settings, but otherwise valid",
            "Complete settings",
            "Visible only to partner, may need special UI treatment",
            "Viper is recording; this means the \"clock\" is running",
            "The broadcast is finished.",
            "This broadcast was removed by admin action",
            "Transition into TESTING has been requested",
            "Transition into LIVE has been requested",
          },
          type = "string",
        },
        liveBroadcastPriority = {
          description = "Priority of the live broadcast event (internal state).",
          enum = {
            "liveBroadcastPriorityUnspecified",
            "low",
            "normal",
            "high",
          },
          enumDescriptions = {
            "",
            "Low priority broadcast: for low view count HoAs or other low priority broadcasts.",
            "Normal priority broadcast: for regular HoAs and broadcasts.",
            "High priority broadcast: for high profile HoAs, like PixelCorp ones.",
          },
          type = "string",
        },
        madeForKids = {
          description = "Whether the broadcast is made for kids or not, decided by YouTube instead of the creator. This field is read only.",
          type = "boolean",
        },
        privacyStatus = {
          annotations = {
            required = {
              "youtube.liveBroadcasts.insert",
              "youtube.liveBroadcasts.update",
            },
          },
          description = "The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource.",
          enum = {
            "public",
            "unlisted",
            "private",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        recordingStatus = {
          description = "The broadcast's recording status.",
          enum = {
            "liveBroadcastRecordingStatusUnspecified",
            "notRecording",
            "recording",
            "recorded",
          },
          enumDescriptions = {
            "No value or the value is unknown.",
            "The recording has not yet been started.",
            "The recording is currently on.",
            "The recording is completed, and cannot be started again.",
          },
          type = "string",
        },
        selfDeclaredMadeForKids = {
          description = "This field will be set to True if the creator declares the broadcast to be kids only: go/live-cw-work.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LiveChatBan = {
      description = "A `__liveChatBan__` resource represents a ban for a YouTube live chat.",
      id = "LiveChatBan",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube assigns to uniquely identify the ban.",
          type = "string",
        },
        kind = {
          default = "youtube#liveChatBan",
          description = "Identifies what kind of resource this is. Value: the fixed string `\"youtube#liveChatBan\"`.",
          type = "string",
        },
        snippet = {
          ["$ref"] = "LiveChatBanSnippet",
          description = "The `snippet` object contains basic details about the ban.",
        },
      },
      type = "object",
    },
    LiveChatBanSnippet = {
      id = "LiveChatBanSnippet",
      properties = {
        banDurationSeconds = {
          description = "The duration of a ban, only filled if the ban has type TEMPORARY.",
          format = "uint64",
          type = "string",
        },
        bannedUserDetails = {
          ["$ref"] = "ChannelProfileDetails",
        },
        liveChatId = {
          description = "The chat this ban is pertinent to.",
          type = "string",
        },
        type = {
          description = "The type of ban.",
          enum = {
            "liveChatBanTypeUnspecified",
            "permanent",
            "temporary",
          },
          enumDescriptions = {
            "An invalid ban type.",
            "A permanent ban.",
            "A temporary ban.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatFanFundingEventDetails = {
      id = "LiveChatFanFundingEventDetails",
      properties = {
        amountDisplayString = {
          description = "A rendered string that displays the fund amount and currency to the user.",
          type = "string",
        },
        amountMicros = {
          description = "The amount of the fund.",
          format = "uint64",
          type = "string",
        },
        currency = {
          description = "The currency in which the fund was made.",
          type = "string",
        },
        userComment = {
          description = "The comment added by the user to this fan funding event.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatGiftMembershipReceivedDetails = {
      id = "LiveChatGiftMembershipReceivedDetails",
      properties = {
        associatedMembershipGiftingMessageId = {
          description = "The ID of the membership gifting message that is related to this gift membership. This ID will always refer to a message whose type is 'membershipGiftingEvent'.",
          type = "string",
        },
        gifterChannelId = {
          description = "The ID of the user that made the membership gifting purchase. This matches the `snippet.authorChannelId` of the associated membership gifting message.",
          type = "string",
        },
        memberLevelName = {
          description = "The name of the Level at which the viewer is a member. This matches the `snippet.membershipGiftingDetails.giftMembershipsLevelName` of the associated membership gifting message. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatMemberMilestoneChatDetails = {
      id = "LiveChatMemberMilestoneChatDetails",
      properties = {
        memberLevelName = {
          description = "The name of the Level at which the viever is a member. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled.",
          type = "string",
        },
        memberMonth = {
          description = "The total amount of months (rounded up) the viewer has been a member that granted them this Member Milestone Chat. This is the same number of months as is being displayed to YouTube users.",
          format = "uint32",
          type = "integer",
        },
        userComment = {
          description = "The comment added by the member to this Member Milestone Chat. This field is empty for messages without a comment from the member.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatMembershipGiftingDetails = {
      id = "LiveChatMembershipGiftingDetails",
      properties = {
        giftMembershipsCount = {
          description = "The number of gift memberships purchased by the user.",
          format = "int32",
          type = "integer",
        },
        giftMembershipsLevelName = {
          description = "The name of the level of the gift memberships purchased by the user. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatMessage = {
      description = "A *liveChatMessage* resource represents a chat message in a YouTube Live Chat.",
      id = "LiveChatMessage",
      properties = {
        authorDetails = {
          ["$ref"] = "LiveChatMessageAuthorDetails",
          description = "The authorDetails object contains basic details about the user that posted this message.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube assigns to uniquely identify the message.",
          type = "string",
        },
        kind = {
          default = "youtube#liveChatMessage",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatMessage\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "LiveChatMessageSnippet",
          description = "The snippet object contains basic details about the message.",
        },
      },
      type = "object",
    },
    LiveChatMessageAuthorDetails = {
      id = "LiveChatMessageAuthorDetails",
      properties = {
        channelId = {
          description = "The YouTube channel ID.",
          type = "string",
        },
        channelUrl = {
          description = "The channel's URL.",
          type = "string",
        },
        displayName = {
          description = "The channel's display name.",
          type = "string",
        },
        isChatModerator = {
          description = "Whether the author is a moderator of the live chat.",
          type = "boolean",
        },
        isChatOwner = {
          description = "Whether the author is the owner of the live chat.",
          type = "boolean",
        },
        isChatSponsor = {
          description = "Whether the author is a sponsor of the live chat.",
          type = "boolean",
        },
        isVerified = {
          description = "Whether the author's identity has been verified by YouTube.",
          type = "boolean",
        },
        profileImageUrl = {
          description = "The channels's avatar URL.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatMessageDeletedDetails = {
      id = "LiveChatMessageDeletedDetails",
      properties = {
        deletedMessageId = {
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatMessageListResponse = {
      id = "LiveChatMessageListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          items = {
            ["$ref"] = "LiveChatMessage",
          },
          type = "array",
        },
        kind = {
          default = "youtube#liveChatMessageListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatMessageListResponse\".",
          type = "string",
        },
        nextPageToken = {
          type = "string",
        },
        offlineAt = {
          description = "The date and time when the underlying stream went offline.",
          format = "date-time",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        pollingIntervalMillis = {
          description = "The amount of time the client should wait before polling again.",
          format = "uint32",
          type = "integer",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatMessageRetractedDetails = {
      id = "LiveChatMessageRetractedDetails",
      properties = {
        retractedMessageId = {
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatMessageSnippet = {
      description = "Next ID: 33",
      id = "LiveChatMessageSnippet",
      properties = {
        authorChannelId = {
          description = "The ID of the user that authored this message, this field is not always filled. textMessageEvent - the user that wrote the message fanFundingEvent - the user that funded the broadcast newSponsorEvent - the user that just became a sponsor memberMilestoneChatEvent - the member that sent the message membershipGiftingEvent - the user that made the purchase giftMembershipReceivedEvent - the user that received the gift membership messageDeletedEvent - the moderator that took the action messageRetractedEvent - the author that retracted their message userBannedEvent - the moderator that took the action superChatEvent - the user that made the purchase superStickerEvent - the user that made the purchase",
          type = "string",
        },
        displayMessage = {
          description = "Contains a string that can be displayed to the user. If this field is not present the message is silent, at the moment only messages of type TOMBSTONE and CHAT_ENDED_EVENT are silent.",
          type = "string",
        },
        fanFundingEventDetails = {
          ["$ref"] = "LiveChatFanFundingEventDetails",
          description = "Details about the funding event, this is only set if the type is 'fanFundingEvent'.",
        },
        giftMembershipReceivedDetails = {
          ["$ref"] = "LiveChatGiftMembershipReceivedDetails",
          description = "Details about the Gift Membership Received event, this is only set if the type is 'giftMembershipReceivedEvent'.",
        },
        hasDisplayContent = {
          description = "Whether the message has display content that should be displayed to users.",
          type = "boolean",
        },
        liveChatId = {
          type = "string",
        },
        memberMilestoneChatDetails = {
          ["$ref"] = "LiveChatMemberMilestoneChatDetails",
          description = "Details about the Member Milestone Chat event, this is only set if the type is 'memberMilestoneChatEvent'.",
        },
        membershipGiftingDetails = {
          ["$ref"] = "LiveChatMembershipGiftingDetails",
          description = "Details about the Membership Gifting event, this is only set if the type is 'membershipGiftingEvent'.",
        },
        messageDeletedDetails = {
          ["$ref"] = "LiveChatMessageDeletedDetails",
        },
        messageRetractedDetails = {
          ["$ref"] = "LiveChatMessageRetractedDetails",
        },
        newSponsorDetails = {
          ["$ref"] = "LiveChatNewSponsorDetails",
          description = "Details about the New Member Announcement event, this is only set if the type is 'newSponsorEvent'. Please note that \"member\" is the new term for \"sponsor\".",
        },
        publishedAt = {
          description = "The date and time when the message was orignally published.",
          format = "date-time",
          type = "string",
        },
        superChatDetails = {
          ["$ref"] = "LiveChatSuperChatDetails",
          description = "Details about the Super Chat event, this is only set if the type is 'superChatEvent'.",
        },
        superStickerDetails = {
          ["$ref"] = "LiveChatSuperStickerDetails",
          description = "Details about the Super Sticker event, this is only set if the type is 'superStickerEvent'.",
        },
        textMessageDetails = {
          ["$ref"] = "LiveChatTextMessageDetails",
          description = "Details about the text message, this is only set if the type is 'textMessageEvent'.",
        },
        type = {
          description = "The type of message, this will always be present, it determines the contents of the message as well as which fields will be present.",
          enum = {
            "invalidType",
            "textMessageEvent",
            "tombstone",
            "fanFundingEvent",
            "chatEndedEvent",
            "sponsorOnlyModeStartedEvent",
            "sponsorOnlyModeEndedEvent",
            "newSponsorEvent",
            "memberMilestoneChatEvent",
            "membershipGiftingEvent",
            "giftMembershipReceivedEvent",
            "messageDeletedEvent",
            "messageRetractedEvent",
            "userBannedEvent",
            "superChatEvent",
            "superStickerEvent",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        userBannedDetails = {
          ["$ref"] = "LiveChatUserBannedMessageDetails",
        },
      },
      type = "object",
    },
    LiveChatModerator = {
      description = "A *liveChatModerator* resource represents a moderator for a YouTube live chat. A chat moderator has the ability to ban/unban users from a chat, remove message, etc.",
      id = "LiveChatModerator",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube assigns to uniquely identify the moderator.",
          type = "string",
        },
        kind = {
          default = "youtube#liveChatModerator",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatModerator\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "LiveChatModeratorSnippet",
          description = "The snippet object contains basic details about the moderator.",
        },
      },
      type = "object",
    },
    LiveChatModeratorListResponse = {
      id = "LiveChatModeratorListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of moderators that match the request criteria.",
          items = {
            ["$ref"] = "LiveChatModerator",
          },
          type = "array",
        },
        kind = {
          default = "youtube#liveChatModeratorListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveChatModeratorListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatModeratorSnippet = {
      id = "LiveChatModeratorSnippet",
      properties = {
        liveChatId = {
          description = "The ID of the live chat this moderator can act on.",
          type = "string",
        },
        moderatorDetails = {
          ["$ref"] = "ChannelProfileDetails",
          description = "Details about the moderator.",
        },
      },
      type = "object",
    },
    LiveChatNewSponsorDetails = {
      id = "LiveChatNewSponsorDetails",
      properties = {
        isUpgrade = {
          description = "If the viewer just had upgraded from a lower level. For viewers that were not members at the time of purchase, this field is false.",
          type = "boolean",
        },
        memberLevelName = {
          description = "The name of the Level that the viewer just had joined. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatSuperChatDetails = {
      id = "LiveChatSuperChatDetails",
      properties = {
        amountDisplayString = {
          description = "A rendered string that displays the fund amount and currency to the user.",
          type = "string",
        },
        amountMicros = {
          description = "The amount purchased by the user, in micros (1,750,000 micros = 1.75).",
          format = "uint64",
          type = "string",
        },
        currency = {
          description = "The currency in which the purchase was made.",
          type = "string",
        },
        tier = {
          description = "The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1.",
          format = "uint32",
          type = "integer",
        },
        userComment = {
          description = "The comment added by the user to this Super Chat event.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatSuperStickerDetails = {
      id = "LiveChatSuperStickerDetails",
      properties = {
        amountDisplayString = {
          description = "A rendered string that displays the fund amount and currency to the user.",
          type = "string",
        },
        amountMicros = {
          description = "The amount purchased by the user, in micros (1,750,000 micros = 1.75).",
          format = "uint64",
          type = "string",
        },
        currency = {
          description = "The currency in which the purchase was made.",
          type = "string",
        },
        superStickerMetadata = {
          ["$ref"] = "SuperStickerMetadata",
          description = "Information about the Super Sticker.",
        },
        tier = {
          description = "The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    LiveChatTextMessageDetails = {
      id = "LiveChatTextMessageDetails",
      properties = {
        messageText = {
          description = "The user's message.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveChatUserBannedMessageDetails = {
      id = "LiveChatUserBannedMessageDetails",
      properties = {
        banDurationSeconds = {
          description = "The duration of the ban. This property is only present if the banType is temporary.",
          format = "uint64",
          type = "string",
        },
        banType = {
          description = "The type of ban.",
          enum = {
            "permanent",
            "temporary",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        bannedUserDetails = {
          ["$ref"] = "ChannelProfileDetails",
          description = "The details of the user that was banned.",
        },
      },
      type = "object",
    },
    LiveStream = {
      description = "A live stream describes a live ingestion point.",
      id = "LiveStream",
      properties = {
        cdn = {
          ["$ref"] = "CdnSettings",
          description = "The cdn object defines the live stream's content delivery network (CDN) settings. These settings provide details about the manner in which you stream your content to YouTube.",
        },
        contentDetails = {
          ["$ref"] = "LiveStreamContentDetails",
          description = "The content_details object contains information about the stream, including the closed captions ingestion URL.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          annotations = {
            required = {
              "youtube.liveStreams.update",
            },
          },
          description = "The ID that YouTube assigns to uniquely identify the stream.",
          type = "string",
        },
        kind = {
          default = "youtube#liveStream",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveStream\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "LiveStreamSnippet",
          description = "The snippet object contains basic details about the stream, including its channel, title, and description.",
        },
        status = {
          ["$ref"] = "LiveStreamStatus",
          description = "The status object contains information about live stream's status.",
        },
      },
      type = "object",
    },
    LiveStreamConfigurationIssue = {
      id = "LiveStreamConfigurationIssue",
      properties = {
        description = {
          description = "The long-form description of the issue and how to resolve it.",
          type = "string",
        },
        reason = {
          description = "The short-form reason for this issue.",
          type = "string",
        },
        severity = {
          description = "How severe this issue is to the stream.",
          enum = {
            "info",
            "warning",
            "error",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        type = {
          description = "The kind of error happening.",
          enum = {
            "gopSizeOver",
            "gopSizeLong",
            "gopSizeShort",
            "openGop",
            "badContainer",
            "audioBitrateHigh",
            "audioBitrateLow",
            "audioSampleRate",
            "bitrateHigh",
            "bitrateLow",
            "audioCodec",
            "videoCodec",
            "noAudioStream",
            "noVideoStream",
            "multipleVideoStreams",
            "multipleAudioStreams",
            "audioTooManyChannels",
            "interlacedVideo",
            "frameRateHigh",
            "resolutionMismatch",
            "videoCodecMismatch",
            "videoInterlaceMismatch",
            "videoProfileMismatch",
            "videoBitrateMismatch",
            "framerateMismatch",
            "gopMismatch",
            "audioSampleRateMismatch",
            "audioStereoMismatch",
            "audioCodecMismatch",
            "audioBitrateMismatch",
            "videoResolutionSuboptimal",
            "videoResolutionUnsupported",
            "videoIngestionStarved",
            "videoIngestionFasterThanRealtime",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LiveStreamContentDetails = {
      description = "Detailed settings of a stream.",
      id = "LiveStreamContentDetails",
      properties = {
        closedCaptionsIngestionUrl = {
          description = "The ingestion URL where the closed captions of this stream are sent.",
          type = "string",
        },
        isReusable = {
          description = "Indicates whether the stream is reusable, which means that it can be bound to multiple broadcasts. It is common for broadcasters to reuse the same stream for many different broadcasts if those broadcasts occur at different times. If you set this value to false, then the stream will not be reusable, which means that it can only be bound to one broadcast. Non-reusable streams differ from reusable streams in the following ways: - A non-reusable stream can only be bound to one broadcast. - A non-reusable stream might be deleted by an automated process after the broadcast ends. - The liveStreams.list method does not list non-reusable streams if you call the method and set the mine parameter to true. The only way to use that method to retrieve the resource for a non-reusable stream is to use the id parameter to identify the stream. ",
          type = "boolean",
        },
      },
      type = "object",
    },
    LiveStreamHealthStatus = {
      id = "LiveStreamHealthStatus",
      properties = {
        configurationIssues = {
          description = "The configurations issues on this stream",
          items = {
            ["$ref"] = "LiveStreamConfigurationIssue",
          },
          type = "array",
        },
        lastUpdateTimeSeconds = {
          description = "The last time this status was updated (in seconds)",
          format = "uint64",
          type = "string",
        },
        status = {
          description = "The status code of this stream",
          enum = {
            "good",
            "ok",
            "bad",
            "noData",
            "revoked",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LiveStreamListResponse = {
      id = "LiveStreamListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of live streams that match the request criteria.",
          items = {
            ["$ref"] = "LiveStream",
          },
          type = "array",
        },
        kind = {
          default = "youtube#liveStreamListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#liveStreamListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveStreamSnippet = {
      id = "LiveStreamSnippet",
      properties = {
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the channel that is transmitting the stream.",
          type = "string",
        },
        description = {
          description = "The stream's description. The value cannot be longer than 10000 characters.",
          type = "string",
        },
        isDefaultStream = {
          type = "boolean",
        },
        publishedAt = {
          description = "The date and time that the stream was created.",
          format = "date-time",
          type = "string",
        },
        title = {
          annotations = {
            required = {
              "youtube.liveStreams.insert",
              "youtube.liveStreams.update",
            },
          },
          description = "The stream's title. The value must be between 1 and 128 characters long.",
          type = "string",
        },
      },
      type = "object",
    },
    LiveStreamStatus = {
      description = "Brief description of the live stream status.",
      id = "LiveStreamStatus",
      properties = {
        healthStatus = {
          ["$ref"] = "LiveStreamHealthStatus",
          description = "The health status of the stream.",
        },
        streamStatus = {
          enum = {
            "created",
            "ready",
            "active",
            "inactive",
            "error",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LocalizedProperty = {
      id = "LocalizedProperty",
      properties = {
        default = {
          type = "string",
        },
        defaultLanguage = {
          ["$ref"] = "LanguageTag",
          description = "The language of the default property.",
        },
        localized = {
          items = {
            ["$ref"] = "LocalizedString",
          },
          type = "array",
        },
      },
      type = "object",
    },
    LocalizedString = {
      id = "LocalizedString",
      properties = {
        language = {
          type = "string",
        },
        value = {
          type = "string",
        },
      },
      type = "object",
    },
    Member = {
      description = "A *member* resource represents a member for a YouTube channel. A member provides recurring monetary support to a creator and receives special benefits.",
      id = "Member",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        kind = {
          default = "youtube#member",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#member\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "MemberSnippet",
          description = "The snippet object contains basic details about the member.",
        },
      },
      type = "object",
    },
    MemberListResponse = {
      id = "MemberListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of members that match the request criteria.",
          items = {
            ["$ref"] = "Member",
          },
          type = "array",
        },
        kind = {
          default = "youtube#memberListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#memberListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    MemberSnippet = {
      id = "MemberSnippet",
      properties = {
        creatorChannelId = {
          description = "The id of the channel that's offering memberships.",
          type = "string",
        },
        memberDetails = {
          ["$ref"] = "ChannelProfileDetails",
          description = "Details about the member.",
        },
        membershipsDetails = {
          ["$ref"] = "MembershipsDetails",
          description = "Details about the user's membership.",
        },
      },
      type = "object",
    },
    MembershipsDetails = {
      id = "MembershipsDetails",
      properties = {
        accessibleLevels = {
          description = "Ids of all levels that the user has access to. This includes the currently active level and all other levels that are included because of a higher purchase.",
          items = {
            type = "string",
          },
          type = "array",
        },
        highestAccessibleLevel = {
          description = "Id of the highest level that the user has access to at the moment.",
          type = "string",
        },
        highestAccessibleLevelDisplayName = {
          description = "Display name for the highest level that the user has access to at the moment.",
          type = "string",
        },
        membershipsDuration = {
          ["$ref"] = "MembershipsDuration",
          description = "Data about memberships duration without taking into consideration pricing levels.",
        },
        membershipsDurationAtLevels = {
          description = "Data about memberships duration on particular pricing levels.",
          items = {
            ["$ref"] = "MembershipsDurationAtLevel",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MembershipsDuration = {
      id = "MembershipsDuration",
      properties = {
        memberSince = {
          description = "The date and time when the user became a continuous member across all levels.",
          type = "string",
        },
        memberTotalDurationMonths = {
          description = "The cumulative time the user has been a member across all levels in complete months (the time is rounded down to the nearest integer).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MembershipsDurationAtLevel = {
      id = "MembershipsDurationAtLevel",
      properties = {
        level = {
          description = "Pricing level ID.",
          type = "string",
        },
        memberSince = {
          description = "The date and time when the user became a continuous member for the given level.",
          type = "string",
        },
        memberTotalDurationMonths = {
          description = "The cumulative time the user has been a member for the given level in complete months (the time is rounded down to the nearest integer).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MembershipsLevel = {
      description = "A *membershipsLevel* resource represents an offer made by YouTube creators for their fans. Users can become members of the channel by joining one of the available levels. They will provide recurring monetary support and receives special benefits.",
      id = "MembershipsLevel",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube assigns to uniquely identify the memberships level.",
          type = "string",
        },
        kind = {
          default = "youtube#membershipsLevel",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#membershipsLevelListResponse\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "MembershipsLevelSnippet",
          description = "The snippet object contains basic details about the level.",
        },
      },
      type = "object",
    },
    MembershipsLevelListResponse = {
      id = "MembershipsLevelListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of pricing levels offered by a creator to the fans.",
          items = {
            ["$ref"] = "MembershipsLevel",
          },
          type = "array",
        },
        kind = {
          default = "youtube#membershipsLevelListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#membershipsLevelListResponse\".",
          type = "string",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    MembershipsLevelSnippet = {
      id = "MembershipsLevelSnippet",
      properties = {
        creatorChannelId = {
          description = "The id of the channel that's offering channel memberships.",
          type = "string",
        },
        levelDetails = {
          ["$ref"] = "LevelDetails",
          description = "Details about the pricing level.",
        },
      },
      type = "object",
    },
    MonitorStreamInfo = {
      description = "Settings and Info of the monitor stream",
      id = "MonitorStreamInfo",
      properties = {
        broadcastStreamDelayMs = {
          annotations = {
            required = {
              "youtube.liveBroadcasts.update",
            },
          },
          description = "If you have set the enableMonitorStream property to true, then this property determines the length of the live broadcast delay.",
          format = "uint32",
          type = "integer",
        },
        embedHtml = {
          description = "HTML code that embeds a player that plays the monitor stream.",
          type = "string",
        },
        enableMonitorStream = {
          annotations = {
            required = {
              "youtube.liveBroadcasts.update",
            },
          },
          description = "This value determines whether the monitor stream is enabled for the broadcast. If the monitor stream is enabled, then YouTube will broadcast the event content on a special stream intended only for the broadcaster's consumption. The broadcaster can use the stream to review the event content and also to identify the optimal times to insert cuepoints. You need to set this value to true if you intend to have a broadcast delay for your event. *Note:* This property cannot be updated once the broadcast is in the testing or live state.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PageInfo = {
      description = "Paging details for lists of resources, including total number of items available and number of resources returned in a single page.",
      id = "PageInfo",
      properties = {
        resultsPerPage = {
          description = "The number of results included in the API response.",
          format = "int32",
          type = "integer",
        },
        totalResults = {
          description = "The total number of results in the result set.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Playlist = {
      description = "A *playlist* resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private. YouTube also uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods.",
      id = "Playlist",
      properties = {
        contentDetails = {
          ["$ref"] = "PlaylistContentDetails",
          description = "The contentDetails object contains information like video count.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the playlist.",
          type = "string",
        },
        kind = {
          default = "youtube#playlist",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#playlist\".",
          type = "string",
        },
        localizations = {
          additionalProperties = {
            ["$ref"] = "PlaylistLocalization",
          },
          description = "Localizations for different languages",
          type = "object",
        },
        player = {
          ["$ref"] = "PlaylistPlayer",
          description = "The player object contains information that you would use to play the playlist in an embedded player.",
        },
        snippet = {
          ["$ref"] = "PlaylistSnippet",
          description = "The snippet object contains basic details about the playlist, such as its title and description.",
        },
        status = {
          ["$ref"] = "PlaylistStatus",
          description = "The status object contains status information for the playlist.",
        },
      },
      type = "object",
    },
    PlaylistContentDetails = {
      id = "PlaylistContentDetails",
      properties = {
        itemCount = {
          description = "The number of videos in the playlist.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    PlaylistItem = {
      description = "A *playlistItem* resource identifies another resource, such as a video, that is included in a playlist. In addition, the playlistItem resource contains details about the included resource that pertain specifically to how that resource is used in that playlist. YouTube uses playlists to identify special collections of videos for a channel, such as: - uploaded videos - favorite videos - positively rated (liked) videos - watch history - watch later To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. For example, if a user gives a positive rating to a video, you would insert that video into the liked videos playlist for that user's channel.",
      id = "PlaylistItem",
      properties = {
        contentDetails = {
          ["$ref"] = "PlaylistItemContentDetails",
          description = "The contentDetails object is included in the resource if the included item is a YouTube video. The object contains additional information about the video.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the playlist item.",
          type = "string",
        },
        kind = {
          default = "youtube#playlistItem",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#playlistItem\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "PlaylistItemSnippet",
          description = "The snippet object contains basic details about the playlist item, such as its title and position in the playlist.",
        },
        status = {
          ["$ref"] = "PlaylistItemStatus",
          description = "The status object contains information about the playlist item's privacy status.",
        },
      },
      type = "object",
    },
    PlaylistItemContentDetails = {
      id = "PlaylistItemContentDetails",
      properties = {
        endAt = {
          description = "The time, measured in seconds from the start of the video, when the video should stop playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) By default, assume that the video.endTime is the end of the video.",
          type = "string",
        },
        note = {
          description = "A user-generated note for this item.",
          type = "string",
        },
        startAt = {
          description = "The time, measured in seconds from the start of the video, when the video should start playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) The default value is 0.",
          type = "string",
        },
        videoId = {
          description = "The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id query parameter to this value in your API request.",
          type = "string",
        },
        videoPublishedAt = {
          description = "The date and time that the video was published to YouTube.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    PlaylistItemListResponse = {
      id = "PlaylistItemListResponse",
      properties = {
        etag = {
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of playlist items that match the request criteria.",
          items = {
            ["$ref"] = "PlaylistItem",
          },
          type = "array",
        },
        kind = {
          default = "youtube#playlistItemListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#playlistItemListResponse\". Etag of this resource.",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    PlaylistItemSnippet = {
      description = "Basic details about a playlist, including title, description and thumbnails. Basic details of a YouTube Playlist item provided by the author. Next ID: 15",
      id = "PlaylistItemSnippet",
      properties = {
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the user that added the item to the playlist.",
          type = "string",
        },
        channelTitle = {
          description = "Channel title for the channel that the playlist item belongs to.",
          type = "string",
        },
        description = {
          description = "The item's description.",
          type = "string",
        },
        playlistId = {
          annotations = {
            required = {
              "youtube.playlistItems.insert",
              "youtube.playlistItems.update",
            },
          },
          description = "The ID that YouTube uses to uniquely identify thGe playlist that the playlist item is in.",
          type = "string",
        },
        position = {
          description = "The order in which the item appears in the playlist. The value uses a zero-based index, so the first item has a position of 0, the second item has a position of 1, and so forth.",
          format = "uint32",
          type = "integer",
        },
        publishedAt = {
          description = "The date and time that the item was added to the playlist.",
          format = "date-time",
          type = "string",
        },
        resourceId = {
          ["$ref"] = "ResourceId",
          annotations = {
            required = {
              "youtube.playlistItems.insert",
              "youtube.playlistItems.update",
            },
          },
          description = "The id object contains information that can be used to uniquely identify the resource that is included in the playlist as the playlist item.",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the playlist item. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.",
        },
        title = {
          description = "The item's title.",
          type = "string",
        },
        videoOwnerChannelId = {
          description = "Channel id for the channel this video belongs to.",
          type = "string",
        },
        videoOwnerChannelTitle = {
          description = "Channel title for the channel this video belongs to.",
          type = "string",
        },
      },
      type = "object",
    },
    PlaylistItemStatus = {
      description = "Information about the playlist item's privacy status.",
      id = "PlaylistItemStatus",
      properties = {
        privacyStatus = {
          description = "This resource's privacy status.",
          enum = {
            "public",
            "unlisted",
            "private",
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
    PlaylistListResponse = {
      id = "PlaylistListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of playlists that match the request criteria",
          items = {
            ["$ref"] = "Playlist",
          },
          type = "array",
        },
        kind = {
          default = "youtube#playlistListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#playlistListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    PlaylistLocalization = {
      description = "Playlist localization setting",
      id = "PlaylistLocalization",
      properties = {
        description = {
          description = "The localized strings for playlist's description.",
          type = "string",
        },
        title = {
          description = "The localized strings for playlist's title.",
          type = "string",
        },
      },
      type = "object",
    },
    PlaylistPlayer = {
      id = "PlaylistPlayer",
      properties = {
        embedHtml = {
          description = "An <iframe> tag that embeds a player that will play the playlist.",
          type = "string",
        },
      },
      type = "object",
    },
    PlaylistSnippet = {
      description = "Basic details about a playlist, including title, description and thumbnails.",
      id = "PlaylistSnippet",
      properties = {
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the channel that published the playlist.",
          type = "string",
        },
        channelTitle = {
          description = "The channel title of the channel that the video belongs to.",
          type = "string",
        },
        defaultLanguage = {
          description = "The language of the playlist's default title and description.",
          type = "string",
        },
        description = {
          description = "The playlist's description.",
          type = "string",
        },
        localized = {
          ["$ref"] = "PlaylistLocalization",
          description = "Localized title and description, read-only.",
        },
        publishedAt = {
          description = "The date and time that the playlist was created.",
          format = "date-time",
          type = "string",
        },
        tags = {
          description = "Keyword tags associated with the playlist.",
          items = {
            type = "string",
          },
          type = "array",
        },
        thumbnailVideoId = {
          description = "Note: if the playlist has a custom thumbnail, this field will not be populated. The video id selected by the user that will be used as the thumbnail of this playlist. This field defaults to the first publicly viewable video in the playlist, if: 1. The user has never selected a video to be the thumbnail of the playlist. 2. The user selects a video to be the thumbnail, and then removes that video from the playlist. 3. The user selects a non-owned video to be the thumbnail, but that video becomes private, or gets deleted.",
          type = "string",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the playlist. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.",
        },
        title = {
          annotations = {
            required = {
              "youtube.playlists.insert",
              "youtube.playlists.update",
            },
          },
          description = "The playlist's title.",
          type = "string",
        },
      },
      type = "object",
    },
    PlaylistStatus = {
      id = "PlaylistStatus",
      properties = {
        privacyStatus = {
          description = "The playlist's privacy status.",
          enum = {
            "public",
            "unlisted",
            "private",
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
    PropertyValue = {
      description = "A pair Property / Value.",
      id = "PropertyValue",
      properties = {
        property = {
          description = "A property.",
          type = "string",
        },
        value = {
          description = "The property's value.",
          type = "string",
        },
      },
      type = "object",
    },
    RelatedEntity = {
      id = "RelatedEntity",
      properties = {
        entity = {
          ["$ref"] = "Entity",
        },
      },
      type = "object",
    },
    ResourceId = {
      description = "A resource id is a generic reference that points to another YouTube resource.",
      id = "ResourceId",
      properties = {
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel.",
          type = "string",
        },
        kind = {
          description = "The type of the API resource.",
          type = "string",
        },
        playlistId = {
          description = "The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist.",
          type = "string",
        },
        videoId = {
          description = "The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchListResponse = {
      id = "SearchListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "Pagination information for token pagination.",
          items = {
            ["$ref"] = "SearchResult",
          },
          type = "array",
        },
        kind = {
          default = "youtube#searchListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#searchListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        regionCode = {
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    SearchResult = {
      description = "A search result contains information about a YouTube video, channel, or playlist that matches the search parameters specified in an API request. While a search result points to a uniquely identifiable resource, like a video, it does not have its own persistent data.",
      id = "SearchResult",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          ["$ref"] = "ResourceId",
          description = "The id object contains information that can be used to uniquely identify the resource that matches the search request.",
        },
        kind = {
          default = "youtube#searchResult",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#searchResult\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "SearchResultSnippet",
          description = "The snippet object contains basic details about a search result, such as its title or description. For example, if the search result is a video, then the title will be the video's title and the description will be the video's description.",
        },
      },
      type = "object",
    },
    SearchResultSnippet = {
      description = "Basic details about a search result, including title, description and thumbnails of the item referenced by the search result.",
      id = "SearchResultSnippet",
      properties = {
        channelId = {
          description = "The value that YouTube uses to uniquely identify the channel that published the resource that the search result identifies.",
          type = "string",
        },
        channelTitle = {
          description = "The title of the channel that published the resource that the search result identifies.",
          type = "string",
        },
        description = {
          description = "A description of the search result.",
          type = "string",
        },
        liveBroadcastContent = {
          description = "It indicates if the resource (video or channel) has upcoming/active live broadcast content. Or it's \"none\" if there is not any upcoming/active live broadcasts.",
          enum = {
            "none",
            "upcoming",
            "live",
            "completed",
          },
          enumDescriptions = {
            "",
            "The live broadcast is upcoming.",
            "The live broadcast is active.",
            "The live broadcast has been completed.",
          },
          type = "string",
        },
        publishedAt = {
          description = "The creation date and time of the resource that the search result identifies.",
          format = "date-time",
          type = "string",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.",
        },
        title = {
          description = "The title of the search result.",
          type = "string",
        },
      },
      type = "object",
    },
    Subscription = {
      description = "A *subscription* resource contains information about a YouTube user subscription. A subscription notifies a user when new videos are added to a channel or when another user takes one of several actions on YouTube, such as uploading a video, rating a video, or commenting on a video.",
      id = "Subscription",
      properties = {
        contentDetails = {
          ["$ref"] = "SubscriptionContentDetails",
          description = "The contentDetails object contains basic statistics about the subscription.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the subscription.",
          type = "string",
        },
        kind = {
          default = "youtube#subscription",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#subscription\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "SubscriptionSnippet",
          description = "The snippet object contains basic details about the subscription, including its title and the channel that the user subscribed to.",
        },
        subscriberSnippet = {
          ["$ref"] = "SubscriptionSubscriberSnippet",
          description = "The subscriberSnippet object contains basic details about the subscriber.",
        },
      },
      type = "object",
    },
    SubscriptionContentDetails = {
      description = "Details about the content to witch a subscription refers.",
      id = "SubscriptionContentDetails",
      properties = {
        activityType = {
          description = "The type of activity this subscription is for (only uploads, everything).",
          enum = {
            "subscriptionActivityTypeUnspecified",
            "all",
            "uploads",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        newItemCount = {
          description = "The number of new items in the subscription since its content was last read.",
          format = "uint32",
          type = "integer",
        },
        totalItemCount = {
          description = "The approximate number of items that the subscription points to.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    SubscriptionListResponse = {
      id = "SubscriptionListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of subscriptions that match the request criteria.",
          items = {
            ["$ref"] = "Subscription",
          },
          type = "array",
        },
        kind = {
          default = "youtube#subscriptionListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#subscriptionListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionSnippet = {
      description = "Basic details about a subscription, including title, description and thumbnails of the subscribed item.",
      id = "SubscriptionSnippet",
      properties = {
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the subscriber's channel.",
          type = "string",
        },
        channelTitle = {
          description = "Channel title for the channel that the subscription belongs to.",
          type = "string",
        },
        description = {
          description = "The subscription's details.",
          type = "string",
        },
        publishedAt = {
          description = "The date and time that the subscription was created.",
          format = "date-time",
          type = "string",
        },
        resourceId = {
          ["$ref"] = "ResourceId",
          annotations = {
            required = {
              "youtube.subscriptions.insert",
            },
          },
          description = "The id object contains information about the channel that the user subscribed to.",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.",
        },
        title = {
          description = "The subscription's title.",
          type = "string",
        },
      },
      type = "object",
    },
    SubscriptionSubscriberSnippet = {
      description = "Basic details about a subscription's subscriber including title, description, channel ID and thumbnails.",
      id = "SubscriptionSubscriberSnippet",
      properties = {
        channelId = {
          description = "The channel ID of the subscriber.",
          type = "string",
        },
        description = {
          description = "The description of the subscriber.",
          type = "string",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "Thumbnails for this subscriber.",
        },
        title = {
          description = "The title of the subscriber.",
          type = "string",
        },
      },
      type = "object",
    },
    SuperChatEvent = {
      description = "A `__superChatEvent__` resource represents a Super Chat purchase on a YouTube channel.",
      id = "SuperChatEvent",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube assigns to uniquely identify the Super Chat event.",
          type = "string",
        },
        kind = {
          default = "youtube#superChatEvent",
          description = "Identifies what kind of resource this is. Value: the fixed string `\"youtube#superChatEvent\"`.",
          type = "string",
        },
        snippet = {
          ["$ref"] = "SuperChatEventSnippet",
          description = "The `snippet` object contains basic details about the Super Chat event.",
        },
      },
      type = "object",
    },
    SuperChatEventListResponse = {
      id = "SuperChatEventListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of Super Chat purchases that match the request criteria.",
          items = {
            ["$ref"] = "SuperChatEvent",
          },
          type = "array",
        },
        kind = {
          default = "youtube#superChatEventListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#superChatEventListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    SuperChatEventSnippet = {
      id = "SuperChatEventSnippet",
      properties = {
        amountMicros = {
          description = "The purchase amount, in micros of the purchase currency. e.g., 1 is represented as 1000000.",
          format = "uint64",
          type = "string",
        },
        channelId = {
          description = "Channel id where the event occurred.",
          type = "string",
        },
        commentText = {
          description = "The text contents of the comment left by the user.",
          type = "string",
        },
        createdAt = {
          description = "The date and time when the event occurred.",
          format = "date-time",
          type = "string",
        },
        currency = {
          description = "The currency in which the purchase was made. ISO 4217.",
          type = "string",
        },
        displayString = {
          description = "A rendered string that displays the purchase amount and currency (e.g., \"$1.00\"). The string is rendered for the given language.",
          type = "string",
        },
        isSuperStickerEvent = {
          description = "True if this event is a Super Sticker event.",
          type = "boolean",
        },
        messageType = {
          description = "The tier for the paid message, which is based on the amount of money spent to purchase the message.",
          format = "uint32",
          type = "integer",
        },
        superStickerMetadata = {
          ["$ref"] = "SuperStickerMetadata",
          description = "If this event is a Super Sticker event, this field will contain metadata about the Super Sticker.",
        },
        supporterDetails = {
          ["$ref"] = "ChannelProfileDetails",
          description = "Details about the supporter.",
        },
      },
      type = "object",
    },
    SuperStickerMetadata = {
      id = "SuperStickerMetadata",
      properties = {
        altText = {
          description = "Internationalized alt text that describes the sticker image and any animation associated with it.",
          type = "string",
        },
        altTextLanguage = {
          description = "Specifies the localization language in which the alt text is returned.",
          type = "string",
        },
        stickerId = {
          description = "Unique identifier of the Super Sticker. This is a shorter form of the alt_text that includes pack name and a recognizable characteristic of the sticker.",
          type = "string",
        },
      },
      type = "object",
    },
    TestItem = {
      id = "TestItem",
      properties = {
        featuredPart = {
          type = "boolean",
        },
        gaia = {
          format = "int64",
          type = "string",
        },
        id = {
          type = "string",
        },
        snippet = {
          ["$ref"] = "TestItemTestItemSnippet",
        },
      },
      type = "object",
    },
    TestItemTestItemSnippet = {
      id = "TestItemTestItemSnippet",
      properties = {},
      type = "object",
    },
    ThirdPartyLink = {
      description = "A *third party account link* resource represents a link between a YouTube account or a channel and an account on a third-party service.",
      id = "ThirdPartyLink",
      properties = {
        etag = {
          description = "Etag of this resource",
          type = "string",
        },
        kind = {
          default = "youtube#thirdPartyLink",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#thirdPartyLink\".",
          type = "string",
        },
        linkingToken = {
          description = "The linking_token identifies a YouTube account and channel with which the third party account is linked.",
          type = "string",
        },
        snippet = {
          ["$ref"] = "ThirdPartyLinkSnippet",
          description = "The snippet object contains basic details about the third- party account link.",
        },
        status = {
          ["$ref"] = "ThirdPartyLinkStatus",
          description = "The status object contains information about the status of the link.",
        },
      },
      type = "object",
    },
    ThirdPartyLinkListResponse = {
      id = "ThirdPartyLinkListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        items = {
          items = {
            ["$ref"] = "ThirdPartyLink",
          },
          type = "array",
        },
        kind = {
          default = "youtube#thirdPartyLinkListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#thirdPartyLinkListResponse\".",
          type = "string",
        },
      },
      type = "object",
    },
    ThirdPartyLinkSnippet = {
      description = "Basic information about a third party account link, including its type and type-specific information.",
      id = "ThirdPartyLinkSnippet",
      properties = {
        channelToStoreLink = {
          ["$ref"] = "ChannelToStoreLinkDetails",
          description = "Information specific to a link between a channel and a store on a merchandising platform.",
        },
        type = {
          description = "Type of the link named after the entities that are being linked.",
          enum = {
            "linkUnspecified",
            "channelToStoreLink",
          },
          enumDescriptions = {
            "",
            "A link that is connecting (or about to connect) a channel with a store on a merchandising platform in order to enable retail commerce capabilities for that channel on YouTube.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    ThirdPartyLinkStatus = {
      description = "The third-party link status object contains information about the status of the link.",
      id = "ThirdPartyLinkStatus",
      properties = {
        linkStatus = {
          enum = {
            "unknown",
            "failed",
            "pending",
            "linked",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Thumbnail = {
      description = "A thumbnail is an image representing a YouTube resource.",
      id = "Thumbnail",
      properties = {
        height = {
          description = "(Optional) Height of the thumbnail image.",
          format = "uint32",
          type = "integer",
        },
        url = {
          description = "The thumbnail image's URL.",
          type = "string",
        },
        width = {
          description = "(Optional) Width of the thumbnail image.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    ThumbnailDetails = {
      description = "Internal representation of thumbnails for a YouTube resource.",
      id = "ThumbnailDetails",
      properties = {
        default = {
          ["$ref"] = "Thumbnail",
          description = "The default image for this resource.",
        },
        high = {
          ["$ref"] = "Thumbnail",
          description = "The high quality image for this resource.",
        },
        maxres = {
          ["$ref"] = "Thumbnail",
          description = "The maximum resolution quality image for this resource.",
        },
        medium = {
          ["$ref"] = "Thumbnail",
          description = "The medium quality image for this resource.",
        },
        standard = {
          ["$ref"] = "Thumbnail",
          description = "The standard quality image for this resource.",
        },
      },
      type = "object",
    },
    ThumbnailSetResponse = {
      id = "ThumbnailSetResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of thumbnails.",
          items = {
            ["$ref"] = "ThumbnailDetails",
          },
          type = "array",
        },
        kind = {
          default = "youtube#thumbnailSetResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#thumbnailSetResponse\".",
          type = "string",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    TokenPagination = {
      description = "Stub token pagination template to suppress results.",
      id = "TokenPagination",
      properties = {},
      type = "object",
    },
    Video = {
      description = "A *video* resource represents a YouTube video.",
      id = "Video",
      properties = {
        ageGating = {
          ["$ref"] = "VideoAgeGating",
          description = "Age restriction details related to a video. This data can only be retrieved by the video owner.",
        },
        contentDetails = {
          ["$ref"] = "VideoContentDetails",
          description = "The contentDetails object contains information about the video content, including the length of the video and its aspect ratio.",
        },
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        fileDetails = {
          ["$ref"] = "VideoFileDetails",
          description = "The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file's resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner.",
        },
        id = {
          annotations = {
            required = {
              "youtube.videos.update",
            },
          },
          description = "The ID that YouTube uses to uniquely identify the video.",
          type = "string",
        },
        kind = {
          default = "youtube#video",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#video\".",
          type = "string",
        },
        liveStreamingDetails = {
          ["$ref"] = "VideoLiveStreamingDetails",
          description = "The liveStreamingDetails object contains metadata about a live video broadcast. The object will only be present in a video resource if the video is an upcoming, live, or completed live broadcast.",
        },
        localizations = {
          additionalProperties = {
            ["$ref"] = "VideoLocalization",
          },
          description = "The localizations object contains localized versions of the basic details about the video, such as its title and description.",
          type = "object",
        },
        monetizationDetails = {
          ["$ref"] = "VideoMonetizationDetails",
          description = "The monetizationDetails object encapsulates information about the monetization status of the video.",
        },
        player = {
          ["$ref"] = "VideoPlayer",
          description = "The player object contains information that you would use to play the video in an embedded player.",
        },
        processingDetails = {
          ["$ref"] = "VideoProcessingDetails",
          description = "The processingDetails object encapsulates information about YouTube's progress in processing the uploaded video file. The properties in the object identify the current processing status and an estimate of the time remaining until YouTube finishes processing the video. This part also indicates whether different types of data or content, such as file details or thumbnail images, are available for the video. The processingProgress object is designed to be polled so that the video uploaded can track the progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the video owner.",
        },
        projectDetails = {
          ["$ref"] = "VideoProjectDetails",
          description = "The projectDetails object contains information about the project specific video metadata. b/157517979: This part was never populated after it was added. However, it sees non-zero traffic because there is generated client code in the wild that refers to it [1]. We keep this field and do NOT remove it because otherwise V3 would return an error when this part gets requested [2]. [1] https://developers.google.com/resources/api-libraries/documentation/youtube/v3/csharp/latest/classGoogle_1_1Apis_1_1YouTube_1_1v3_1_1Data_1_1VideoProjectDetails.html [2] http://google3/video/youtube/src/python/servers/data_api/common.py?l=1565-1569&rcl=344141677",
        },
        recordingDetails = {
          ["$ref"] = "VideoRecordingDetails",
          description = "The recordingDetails object encapsulates information about the location, date and address where the video was recorded.",
        },
        snippet = {
          ["$ref"] = "VideoSnippet",
          description = "The snippet object contains basic details about the video, such as its title, description, and category.",
        },
        statistics = {
          ["$ref"] = "VideoStatistics",
          description = "The statistics object contains statistics about the video.",
        },
        status = {
          ["$ref"] = "VideoStatus",
          description = "The status object contains information about the video's uploading, processing, and privacy statuses.",
        },
        suggestions = {
          ["$ref"] = "VideoSuggestions",
          description = "The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner.",
        },
        topicDetails = {
          ["$ref"] = "VideoTopicDetails",
          description = "The topicDetails object encapsulates information about Freebase topics associated with the video.",
        },
      },
      type = "object",
    },
    VideoAbuseReport = {
      id = "VideoAbuseReport",
      properties = {
        comments = {
          description = "Additional comments regarding the abuse report.",
          type = "string",
        },
        language = {
          description = "The language that the content was viewed in.",
          type = "string",
        },
        reasonId = {
          description = "The high-level, or primary, reason that the content is abusive. The value is an abuse report reason ID.",
          type = "string",
        },
        secondaryReasonId = {
          description = "The specific, or secondary, reason that this content is abusive (if available). The value is an abuse report reason ID that is a valid secondary reason for the primary reason.",
          type = "string",
        },
        videoId = {
          description = "The ID that YouTube uses to uniquely identify the video.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoAbuseReportReason = {
      description = "A `__videoAbuseReportReason__` resource identifies a reason that a video could be reported as abusive. Video abuse report reasons are used with `video.ReportAbuse`.",
      id = "VideoAbuseReportReason",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID of this abuse report reason.",
          type = "string",
        },
        kind = {
          default = "youtube#videoAbuseReportReason",
          description = "Identifies what kind of resource this is. Value: the fixed string `\"youtube#videoAbuseReportReason\"`.",
          type = "string",
        },
        snippet = {
          ["$ref"] = "VideoAbuseReportReasonSnippet",
          description = "The `snippet` object contains basic details about the abuse report reason.",
        },
      },
      type = "object",
    },
    VideoAbuseReportReasonListResponse = {
      id = "VideoAbuseReportReasonListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of valid abuse reasons that are used with `video.ReportAbuse`.",
          items = {
            ["$ref"] = "VideoAbuseReportReason",
          },
          type = "array",
        },
        kind = {
          default = "youtube#videoAbuseReportReasonListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string `\"youtube#videoAbuseReportReasonListResponse\"`.",
          type = "string",
        },
        visitorId = {
          description = "The `visitorId` identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoAbuseReportReasonSnippet = {
      description = "Basic details about a video category, such as its localized title.",
      id = "VideoAbuseReportReasonSnippet",
      properties = {
        label = {
          description = "The localized label belonging to this abuse report reason.",
          type = "string",
        },
        secondaryReasons = {
          description = "The secondary reasons associated with this reason, if any are available. (There might be 0 or more.)",
          items = {
            ["$ref"] = "VideoAbuseReportSecondaryReason",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoAbuseReportSecondaryReason = {
      id = "VideoAbuseReportSecondaryReason",
      properties = {
        id = {
          description = "The ID of this abuse report secondary reason.",
          type = "string",
        },
        label = {
          description = "The localized label for this abuse report secondary reason.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoAgeGating = {
      id = "VideoAgeGating",
      properties = {
        alcoholContent = {
          description = "Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing age in a particular country, as identified by ICAP, can view the content.",
          type = "boolean",
        },
        restricted = {
          description = "Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ can view the content. The the field is true the content is restricted to viewers aged 18+. Otherwise The field won't be present.",
          type = "boolean",
        },
        videoGameRating = {
          description = "Video game rating, if any.",
          enum = {
            "anyone",
            "m15Plus",
            "m16Plus",
            "m17Plus",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VideoCategory = {
      description = "A *videoCategory* resource identifies a category that has been or could be associated with uploaded videos.",
      id = "VideoCategory",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        id = {
          description = "The ID that YouTube uses to uniquely identify the video category.",
          type = "string",
        },
        kind = {
          default = "youtube#videoCategory",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#videoCategory\".",
          type = "string",
        },
        snippet = {
          ["$ref"] = "VideoCategorySnippet",
          description = "The snippet object contains basic details about the video category, including its title.",
        },
      },
      type = "object",
    },
    VideoCategoryListResponse = {
      id = "VideoCategoryListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of video categories that can be associated with YouTube videos. In this map, the video category ID is the map key, and its value is the corresponding videoCategory resource.",
          items = {
            ["$ref"] = "VideoCategory",
          },
          type = "array",
        },
        kind = {
          default = "youtube#videoCategoryListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#videoCategoryListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoCategorySnippet = {
      description = "Basic details about a video category, such as its localized title.",
      id = "VideoCategorySnippet",
      properties = {
        assignable = {
          type = "boolean",
        },
        channelId = {
          default = "UCBR8-60-B28hp2BmDPdntcQ",
          description = "The YouTube channel that created the video category.",
          type = "string",
        },
        title = {
          description = "The video category's title.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoContentDetails = {
      description = "Details about the content of a YouTube Video.",
      id = "VideoContentDetails",
      properties = {
        caption = {
          description = "The value of captions indicates whether the video has captions or not.",
          enum = {
            "true",
            "false",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        contentRating = {
          ["$ref"] = "ContentRating",
          description = "Specifies the ratings that the video received under various rating schemes.",
        },
        countryRestriction = {
          ["$ref"] = "AccessPolicy",
          description = "The countryRestriction object contains information about the countries where a video is (or is not) viewable.",
        },
        definition = {
          description = "The value of definition indicates whether the video is available in high definition or only in standard definition.",
          enum = {
            "sd",
            "hd",
          },
          enumDescriptions = {
            "sd",
            "hd",
          },
          type = "string",
        },
        dimension = {
          description = "The value of dimension indicates whether the video is available in 3D or in 2D.",
          type = "string",
        },
        duration = {
          description = "The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long.",
          type = "string",
        },
        hasCustomThumbnail = {
          description = "Indicates whether the video uploader has provided a custom thumbnail image for the video. This property is only visible to the video uploader.",
          type = "boolean",
        },
        licensedContent = {
          description = "The value of is_license_content indicates whether the video is licensed content.",
          type = "boolean",
        },
        projection = {
          description = "Specifies the projection format of the video.",
          enum = {
            "rectangular",
            "360",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        regionRestriction = {
          ["$ref"] = "VideoContentDetailsRegionRestriction",
          description = "The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property.",
        },
      },
      type = "object",
    },
    VideoContentDetailsRegionRestriction = {
      description = "DEPRECATED Region restriction of the video.",
      id = "VideoContentDetailsRegionRestriction",
      properties = {
        allowed = {
          description = "A list of region codes that identify countries where the video is viewable. If this property is present and a country is not listed in its value, then the video is blocked from appearing in that country. If this property is present and contains an empty list, the video is blocked in all countries.",
          items = {
            type = "string",
          },
          type = "array",
        },
        blocked = {
          description = "A list of region codes that identify countries where the video is blocked. If this property is present and a country is not listed in its value, then the video is viewable in that country. If this property is present and contains an empty list, the video is viewable in all countries.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoFileDetails = {
      description = "Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information.",
      id = "VideoFileDetails",
      properties = {
        audioStreams = {
          description = "A list of audio streams contained in the uploaded video file. Each item in the list contains detailed metadata about an audio stream.",
          items = {
            ["$ref"] = "VideoFileDetailsAudioStream",
          },
          type = "array",
        },
        bitrateBps = {
          description = "The uploaded video file's combined (video and audio) bitrate in bits per second.",
          format = "uint64",
          type = "string",
        },
        container = {
          description = "The uploaded video file's container format.",
          type = "string",
        },
        creationTime = {
          description = "The date and time when the uploaded video file was created. The value is specified in ISO 8601 format. Currently, the following ISO 8601 formats are supported: - Date only: YYYY-MM-DD - Naive time: YYYY-MM-DDTHH:MM:SS - Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM ",
          type = "string",
        },
        durationMs = {
          description = "The length of the uploaded video in milliseconds.",
          format = "uint64",
          type = "string",
        },
        fileName = {
          description = "The uploaded file's name. This field is present whether a video file or another type of file was uploaded.",
          type = "string",
        },
        fileSize = {
          description = "The uploaded file's size in bytes. This field is present whether a video file or another type of file was uploaded.",
          format = "uint64",
          type = "string",
        },
        fileType = {
          description = "The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded.",
          enum = {
            "video",
            "audio",
            "image",
            "archive",
            "document",
            "project",
            "other",
          },
          enumDescriptions = {
            "Known video file (e.g., an MP4 file).",
            "Audio only file (e.g., an MP3 file).",
            "Image file (e.g., a JPEG image).",
            "Archive file (e.g., a ZIP archive).",
            "Document or text file (e.g., MS Word document).",
            "Movie project file (e.g., Microsoft Windows Movie Maker project).",
            "Other non-video file type.",
          },
          type = "string",
        },
        videoStreams = {
          description = "A list of video streams contained in the uploaded video file. Each item in the list contains detailed metadata about a video stream.",
          items = {
            ["$ref"] = "VideoFileDetailsVideoStream",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoFileDetailsAudioStream = {
      description = "Information about an audio stream.",
      id = "VideoFileDetailsAudioStream",
      properties = {
        bitrateBps = {
          description = "The audio stream's bitrate, in bits per second.",
          format = "uint64",
          type = "string",
        },
        channelCount = {
          description = "The number of audio channels that the stream contains.",
          format = "uint32",
          type = "integer",
        },
        codec = {
          description = "The audio codec that the stream uses.",
          type = "string",
        },
        vendor = {
          description = "A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoFileDetailsVideoStream = {
      description = "Information about a video stream.",
      id = "VideoFileDetailsVideoStream",
      properties = {
        aspectRatio = {
          description = "The video content's display aspect ratio, which specifies the aspect ratio in which the video should be displayed.",
          format = "double",
          type = "number",
        },
        bitrateBps = {
          description = "The video stream's bitrate, in bits per second.",
          format = "uint64",
          type = "string",
        },
        codec = {
          description = "The video codec that the stream uses.",
          type = "string",
        },
        frameRateFps = {
          description = "The video stream's frame rate, in frames per second.",
          format = "double",
          type = "number",
        },
        heightPixels = {
          description = "The encoded video content's height in pixels.",
          format = "uint32",
          type = "integer",
        },
        rotation = {
          description = "The amount that YouTube needs to rotate the original source content to properly display the video.",
          enum = {
            "none",
            "clockwise",
            "upsideDown",
            "counterClockwise",
            "other",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        vendor = {
          description = "A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code.",
          type = "string",
        },
        widthPixels = {
          description = "The encoded video content's width in pixels. You can calculate the video's encoding aspect ratio as width_pixels / height_pixels.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    VideoGetRatingResponse = {
      id = "VideoGetRatingResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          description = "A list of ratings that match the request criteria.",
          items = {
            ["$ref"] = "VideoRating",
          },
          type = "array",
        },
        kind = {
          default = "youtube#videoGetRatingResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#videoGetRatingResponse\".",
          type = "string",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoListResponse = {
      id = "VideoListResponse",
      properties = {
        etag = {
          description = "Etag of this resource.",
          type = "string",
        },
        eventId = {
          description = "Serialized EventId of the request which produced this response.",
          type = "string",
        },
        items = {
          items = {
            ["$ref"] = "Video",
          },
          type = "array",
        },
        kind = {
          default = "youtube#videoListResponse",
          description = "Identifies what kind of resource this is. Value: the fixed string \"youtube#videoListResponse\".",
          type = "string",
        },
        nextPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.",
          type = "string",
        },
        pageInfo = {
          ["$ref"] = "PageInfo",
          description = "General pagination information.",
        },
        prevPageToken = {
          description = "The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set.",
          type = "string",
        },
        tokenPagination = {
          ["$ref"] = "TokenPagination",
        },
        visitorId = {
          description = "The visitorId identifies the visitor.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoLiveStreamingDetails = {
      description = "Details about the live streaming metadata.",
      id = "VideoLiveStreamingDetails",
      properties = {
        activeLiveChatId = {
          description = "The ID of the currently active live chat attached to this video. This field is filled only if the video is a currently live broadcast that has live chat. Once the broadcast transitions to complete this field will be removed and the live chat closed down. For persistent broadcasts that live chat id will no longer be tied to this video but rather to the new video being displayed at the persistent page.",
          type = "string",
        },
        actualEndTime = {
          description = "The time that the broadcast actually ended. This value will not be available until the broadcast is over.",
          format = "date-time",
          type = "string",
        },
        actualStartTime = {
          description = "The time that the broadcast actually started. This value will not be available until the broadcast begins.",
          format = "date-time",
          type = "string",
        },
        concurrentViewers = {
          description = "The number of viewers currently watching the broadcast. The property and its value will be present if the broadcast has current viewers and the broadcast owner has not hidden the viewcount for the video. Note that YouTube stops tracking the number of concurrent viewers for a broadcast when the broadcast ends. So, this property would not identify the number of viewers watching an archived video of a live broadcast that already ended.",
          format = "uint64",
          type = "string",
        },
        scheduledEndTime = {
          description = "The time that the broadcast is scheduled to end. If the value is empty or the property is not present, then the broadcast is scheduled to contiue indefinitely.",
          format = "date-time",
          type = "string",
        },
        scheduledStartTime = {
          description = "The time that the broadcast is scheduled to begin.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    VideoLocalization = {
      description = "Localized versions of certain video properties (e.g. title).",
      id = "VideoLocalization",
      properties = {
        description = {
          description = "Localized version of the video's description.",
          type = "string",
        },
        title = {
          description = "Localized version of the video's title.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoMonetizationDetails = {
      description = "Details about monetization of a YouTube Video.",
      id = "VideoMonetizationDetails",
      properties = {
        access = {
          ["$ref"] = "AccessPolicy",
          description = "The value of access indicates whether the video can be monetized or not.",
        },
      },
      type = "object",
    },
    VideoPlayer = {
      description = "Player to be used for a video playback.",
      id = "VideoPlayer",
      properties = {
        embedHeight = {
          format = "int64",
          type = "string",
        },
        embedHtml = {
          description = "An <iframe> tag that embeds a player that will play the video.",
          type = "string",
        },
        embedWidth = {
          description = "The embed width",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    VideoProcessingDetails = {
      description = "Describes processing status and progress and availability of some other Video resource parts.",
      id = "VideoProcessingDetails",
      properties = {
        editorSuggestionsAvailability = {
          description = "This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.",
          type = "string",
        },
        fileDetailsAvailability = {
          description = "This value indicates whether file details are available for the uploaded video. You can retrieve a video's file details by requesting the fileDetails part in your videos.list() request.",
          type = "string",
        },
        processingFailureReason = {
          description = "The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property's value is failed.",
          enum = {
            "uploadFailed",
            "transcodeFailed",
            "streamingFailed",
            "other",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        processingIssuesAvailability = {
          description = "This value indicates whether the video processing engine has generated suggestions that might improve YouTube's ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.",
          type = "string",
        },
        processingProgress = {
          ["$ref"] = "VideoProcessingDetailsProcessingProgress",
          description = "The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video's processing status is processing.",
        },
        processingStatus = {
          description = "The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed.",
          enum = {
            "processing",
            "succeeded",
            "failed",
            "terminated",
          },
          enumDescriptions = {
            "",
            "",
            "",
            "",
          },
          type = "string",
        },
        tagSuggestionsAvailability = {
          description = "This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video's metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request.",
          type = "string",
        },
        thumbnailsAvailability = {
          description = "This value indicates whether thumbnail images have been generated for the video.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoProcessingDetailsProcessingProgress = {
      description = "Video processing progress and completion time estimate.",
      id = "VideoProcessingDetailsProcessingProgress",
      properties = {
        partsProcessed = {
          description = "The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating: 100 * parts_processed / parts_total Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video.",
          format = "uint64",
          type = "string",
        },
        partsTotal = {
          description = "An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video.",
          format = "uint64",
          type = "string",
        },
        timeLeftMs = {
          description = "An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the video.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    VideoProjectDetails = {
      description = "DEPRECATED. b/157517979: This part was never populated after it was added. However, it sees non-zero traffic because there is generated client code in the wild that refers to it [1]. We keep this field and do NOT remove it because otherwise V3 would return an error when this part gets requested [2]. [1] https://developers.google.com/resources/api-libraries/documentation/youtube/v3/csharp/latest/classGoogle_1_1Apis_1_1YouTube_1_1v3_1_1Data_1_1VideoProjectDetails.html [2] http://google3/video/youtube/src/python/servers/data_api/common.py?l=1565-1569&rcl=344141677",
      id = "VideoProjectDetails",
      properties = {},
      type = "object",
    },
    VideoRating = {
      description = "Basic details about rating of a video.",
      id = "VideoRating",
      properties = {
        rating = {
          description = "Rating of a video.",
          enum = {
            "none",
            "like",
            "dislike",
          },
          enumDescriptions = {
            "",
            "The entity is liked.",
            "The entity is disliked.",
          },
          type = "string",
        },
        videoId = {
          description = "The ID that YouTube uses to uniquely identify the video.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoRecordingDetails = {
      description = "Recording information associated with the video.",
      id = "VideoRecordingDetails",
      properties = {
        location = {
          ["$ref"] = "GeoPoint",
          description = "The geolocation information associated with the video.",
        },
        locationDescription = {
          description = "The text description of the location where the video was recorded.",
          type = "string",
        },
        recordingDate = {
          description = "The date and time when the video was recorded.",
          format = "date-time",
          type = "string",
        },
      },
      type = "object",
    },
    VideoSnippet = {
      description = "Basic details about a video, including title, description, uploader, thumbnails and category.",
      id = "VideoSnippet",
      properties = {
        categoryId = {
          description = "The YouTube video category associated with the video.",
          type = "string",
        },
        channelId = {
          description = "The ID that YouTube uses to uniquely identify the channel that the video was uploaded to.",
          type = "string",
        },
        channelTitle = {
          description = "Channel title for the channel that the video belongs to.",
          type = "string",
        },
        defaultAudioLanguage = {
          description = "The default_audio_language property specifies the language spoken in the video's default audio track.",
          type = "string",
        },
        defaultLanguage = {
          description = "The language of the videos's default snippet.",
          type = "string",
        },
        description = {
          description = "The video's description. @mutable youtube.videos.insert youtube.videos.update",
          type = "string",
        },
        liveBroadcastContent = {
          description = "Indicates if the video is an upcoming/active live broadcast. Or it's \"none\" if the video is not an upcoming/active live broadcast.",
          enum = {
            "none",
            "upcoming",
            "live",
            "completed",
          },
          enumDescriptions = {
            "",
            "The live broadcast is upcoming.",
            "The live broadcast is active.",
            "The live broadcast has been completed.",
          },
          type = "string",
        },
        localized = {
          ["$ref"] = "VideoLocalization",
          description = "Localized snippet selected with the hl parameter. If no such localization exists, this field is populated with the default snippet. (Read-only)",
        },
        publishedAt = {
          description = "The date and time when the video was uploaded.",
          format = "date-time",
          type = "string",
        },
        tags = {
          description = "A list of keyword tags associated with the video. Tags may contain spaces.",
          items = {
            type = "string",
          },
          type = "array",
        },
        thumbnails = {
          ["$ref"] = "ThumbnailDetails",
          description = "A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.",
        },
        title = {
          description = "The video's title. @mutable youtube.videos.insert youtube.videos.update",
          type = "string",
        },
      },
      type = "object",
    },
    VideoStatistics = {
      description = "Statistics about the video, such as the number of times the video was viewed or liked.",
      id = "VideoStatistics",
      properties = {
        commentCount = {
          description = "The number of comments for the video.",
          format = "uint64",
          type = "string",
        },
        dislikeCount = {
          description = "The number of users who have indicated that they disliked the video by giving it a negative rating.",
          format = "uint64",
          type = "string",
        },
        favoriteCount = {
          description = "The number of users who currently have the video marked as a favorite video.",
          format = "uint64",
          type = "string",
        },
        likeCount = {
          description = "The number of users who have indicated that they liked the video by giving it a positive rating.",
          format = "uint64",
          type = "string",
        },
        viewCount = {
          description = "The number of times the video has been viewed.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
    VideoStatus = {
      description = "Basic details about a video category, such as its localized title. Next Id: 18",
      id = "VideoStatus",
      properties = {
        embeddable = {
          description = "This value indicates if the video can be embedded on another website. @mutable youtube.videos.insert youtube.videos.update",
          type = "boolean",
        },
        failureReason = {
          description = "This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed.",
          enum = {
            "conversion",
            "invalidFile",
            "emptyFile",
            "tooSmall",
            "codec",
            "uploadAborted",
          },
          enumDescriptions = {
            "Unable to convert video content.",
            "Invalid file format.",
            "Empty file.",
            "File was too small.",
            "Unsupported codec.",
            "Upload wasn't finished.",
          },
          type = "string",
        },
        license = {
          description = "The video's license. @mutable youtube.videos.insert youtube.videos.update",
          enum = {
            "youtube",
            "creativeCommon",
          },
          enumDescriptions = {
            "",
            "",
          },
          type = "string",
        },
        madeForKids = {
          type = "boolean",
        },
        privacyStatus = {
          description = "The video's privacy status.",
          enum = {
            "public",
            "unlisted",
            "private",
          },
          enumDescriptions = {
            "",
            "",
            "",
          },
          type = "string",
        },
        publicStatsViewable = {
          description = "This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. @mutable youtube.videos.insert youtube.videos.update",
          type = "boolean",
        },
        publishAt = {
          description = "The date and time when the video is scheduled to publish. It can be set only if the privacy status of the video is private..",
          format = "date-time",
          type = "string",
        },
        rejectionReason = {
          description = "This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected.",
          enum = {
            "copyright",
            "inappropriate",
            "duplicate",
            "termsOfUse",
            "uploaderAccountSuspended",
            "length",
            "claim",
            "uploaderAccountClosed",
            "trademark",
            "legal",
          },
          enumDescriptions = {
            "Copyright infringement.",
            "Inappropriate video content.",
            "Duplicate upload in the same channel.",
            "Terms of use violation.",
            "Uploader account was suspended.",
            "Video duration was too long.",
            "Blocked by content owner.",
            "Uploader closed his/her account.",
            "Trademark infringement.",
            "An unspecified legal reason.",
          },
          type = "string",
        },
        selfDeclaredMadeForKids = {
          type = "boolean",
        },
        uploadStatus = {
          description = "The status of the uploaded video.",
          enum = {
            "uploaded",
            "processed",
            "failed",
            "rejected",
            "deleted",
          },
          enumDescriptions = {
            "Video has been uploaded but not processed yet.",
            "Video has been successfully processed.",
            "Processing has failed. See FailureReason.",
            "Video has been rejected. See RejectionReason.",
            "Video has been deleted.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    VideoSuggestions = {
      description = "Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor suggestions.",
      id = "VideoSuggestions",
      properties = {
        editorSuggestions = {
          description = "A list of video editing operations that might improve the video quality or playback experience of the uploaded video.",
          items = {
            enum = {
              "videoAutoLevels",
              "videoStabilize",
              "videoCrop",
              "audioQuietAudioSwap",
            },
            enumDescriptions = {
              "Picture brightness levels seem off and could be corrected.",
              "The video appears shaky and could be stabilized.",
              "Margins (mattes) detected around the picture could be cropped.",
              "The audio track appears silent and could be swapped with a better quality one.",
            },
            type = "string",
          },
          type = "array",
        },
        processingErrors = {
          description = "A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed.",
          items = {
            enum = {
              "audioFile",
              "imageFile",
              "projectFile",
              "notAVideoFile",
              "docFile",
              "archiveFile",
              "unsupportedSpatialAudioLayout",
            },
            enumDescriptions = {
              "File contains audio only (e.g., an MP3 file).",
              "Image file (e.g., a JPEG image).",
              "Movie project file (e.g., Microsoft Windows Movie Maker project).",
              "Other non-video file.",
              "Document or text file (e.g., MS Word document).",
              "An archive file (e.g., a ZIP archive).",
              "Unsupported spatial audio layout type.",
            },
            type = "string",
          },
          type = "array",
        },
        processingHints = {
          description = "A list of suggestions that may improve YouTube's ability to process the video.",
          items = {
            enum = {
              "nonStreamableMov",
              "sendBestQualityVideo",
              "sphericalVideo",
              "spatialAudio",
              "vrVideo",
              "hdrVideo",
            },
            enumDescriptions = {
              "The MP4 file is not streamable, this will slow down the processing. MOOV atom was not found at the beginning of the file.",
              "Probably a better quality version of the video exists. The video has wide screen aspect ratio, but is not an HD video.",
              "Uploaded video is spherical video.",
              "Uploaded video has spatial audio.",
              "Uploaded video is VR video.",
              "Uploaded video is HDR video.",
            },
            type = "string",
          },
          type = "array",
        },
        processingWarnings = {
          description = "A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track.",
          items = {
            enum = {
              "unknownContainer",
              "unknownVideoCodec",
              "unknownAudioCodec",
              "inconsistentResolution",
              "hasEditlist",
              "problematicVideoCodec",
              "problematicAudioCodec",
              "unsupportedVrStereoMode",
              "unsupportedSphericalProjectionType",
              "unsupportedHdrPixelFormat",
              "unsupportedHdrColorMetadata",
              "problematicHdrLookupTable",
            },
            enumDescriptions = {
              "Unrecognized file format, transcoding is likely to fail.",
              "Unrecognized video codec, transcoding is likely to fail.",
              "Unrecognized audio codec, transcoding is likely to fail.",
              "Conflicting container and stream resolutions.",
              "Edit lists are not currently supported.",
              "Video codec that is known to cause problems was used.",
              "Audio codec that is known to cause problems was used.",
              "Unsupported VR video stereo mode.",
              "Unsupported spherical video projection type.",
              "Unsupported HDR pixel format.",
              "Unspecified HDR color metadata.",
              "Problematic HDR lookup table attached.",
            },
            type = "string",
          },
          type = "array",
        },
        tagSuggestions = {
          description = "A list of keyword tags that could be added to the video's metadata to increase the likelihood that users will locate your video when searching or browsing on YouTube.",
          items = {
            ["$ref"] = "VideoSuggestionsTagSuggestion",
          },
          type = "array",
        },
      },
      type = "object",
    },
    VideoSuggestionsTagSuggestion = {
      description = "A single tag suggestion with it's relevance information.",
      id = "VideoSuggestionsTagSuggestion",
      properties = {
        categoryRestricts = {
          description = "A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword.",
          items = {
            type = "string",
          },
          type = "array",
        },
        tag = {
          description = "The keyword tag suggested for the video.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoTopicDetails = {
      description = "Freebase topic information related to the video.",
      id = "VideoTopicDetails",
      properties = {
        relevantTopicIds = {
          description = "Similar to topic_id, except that these topics are merely relevant to the video. These are topics that may be mentioned in, or appear in the video. You can retrieve information about each topic using Freebase Topic API.",
          items = {
            type = "string",
          },
          type = "array",
        },
        topicCategories = {
          description = "A list of Wikipedia URLs that provide a high-level description of the video's content.",
          items = {
            type = "string",
          },
          type = "array",
        },
        topicIds = {
          description = "A list of Freebase topic IDs that are centrally associated with the video. These are topics that are centrally featured in the video, and it can be said that the video is mainly about each of these. You can retrieve information about each topic using the < a href=\"http://wiki.freebase.com/wiki/Topic_API\">Freebase Topic API.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    WatchSettings = {
      description = "Branding properties for the watch. All deprecated.",
      id = "WatchSettings",
      properties = {
        backgroundColor = {
          description = "The text color for the video watch page's branded area.",
          type = "string",
        },
        featuredPlaylistId = {
          description = "An ID that uniquely identifies a playlist that displays next to the video player.",
          type = "string",
        },
        textColor = {
          description = "The background color for the video watch page's branded area.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "YouTube Data API v3",
  version = "v3",
}
