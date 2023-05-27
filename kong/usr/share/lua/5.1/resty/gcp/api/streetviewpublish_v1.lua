return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/streetviewpublish"] = {
          description = "Publish and manage your 360 photos on Google Street View",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://streetviewpublish.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Street View Publish",
  description = "Publishes 360 photos to Google Maps, along with position, orientation, and connectivity metadata. Apps can offer an interface for positioning, connecting, and uploading user-generated Street View images. ",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/streetview/publish/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "streetviewpublish:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://streetviewpublish.mtls.googleapis.com/",
  name = "streetviewpublish",
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
    photo = {
      methods = {
        create = {
          description = "After the client finishes uploading the photo with the returned UploadRef, CreatePhoto publishes the uploaded Photo to Street View on Google Maps. Currently, the only way to set heading, pitch, and roll in CreatePhoto is through the [Photo Sphere XMP metadata](https://developers.google.com/streetview/spherical-metadata) in the photo bytes. CreatePhoto ignores the `pose.heading`, `pose.pitch`, `pose.roll`, `pose.altitude`, and `pose.level` fields in Pose. This method returns the following error codes: * google.rpc.Code.INVALID_ARGUMENT if the request is malformed or if the uploaded photo is not a 360 photo. * google.rpc.Code.NOT_FOUND if the upload reference does not exist. * google.rpc.Code.RESOURCE_EXHAUSTED if the account has reached the storage limit.",
          flatPath = "v1/photo",
          httpMethod = "POST",
          id = "streetviewpublish.photo.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/photo",
          request = {
            ["$ref"] = "Photo",
          },
          response = {
            ["$ref"] = "Photo",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        delete = {
          description = "Deletes a Photo and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo. * google.rpc.Code.NOT_FOUND if the photo ID does not exist.",
          flatPath = "v1/photo/{photoId}",
          httpMethod = "DELETE",
          id = "streetviewpublish.photo.delete",
          parameterOrder = {
            "photoId",
          },
          parameters = {
            photoId = {
              description = "Required. ID of the Photo.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/photo/{photoId}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        get = {
          description = "Gets the metadata of the specified Photo. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested Photo. * google.rpc.Code.NOT_FOUND if the requested Photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.",
          flatPath = "v1/photo/{photoId}",
          httpMethod = "GET",
          id = "streetviewpublish.photo.get",
          parameterOrder = {
            "photoId",
          },
          parameters = {
            languageCode = {
              description = "The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. If language_code is unspecified, the user's language preference for Google services is used.",
              location = "query",
              type = "string",
            },
            photoId = {
              description = "Required. ID of the Photo.",
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              description = "Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.",
              enum = {
                "BASIC",
                "INCLUDE_DOWNLOAD_URL",
              },
              enumDescriptions = {
                "Server responses do not include the download URL for the photo bytes. The default value.",
                "Server responses include the download URL for the photo bytes.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/photo/{photoId}",
          response = {
            ["$ref"] = "Photo",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        startUpload = {
          description = "Creates an upload session to start uploading photo bytes. The method uses the upload URL of the returned UploadRef to upload the bytes for the Photo. In addition to the photo requirements shown in https://support.google.com/maps/answer/7012050?ref_topic=6275604, the photo must meet the following requirements: * Photo Sphere XMP metadata must be included in the photo metadata. See https://developers.google.com/streetview/spherical-metadata for the required fields. * The pixel size of the photo must meet the size requirements listed in https://support.google.com/maps/answer/7012050?ref_topic=6275604, and the photo must be a full 360 horizontally. After the upload completes, the method uses UploadRef with CreatePhoto to create the Photo object entry.",
          flatPath = "v1/photo:startUpload",
          httpMethod = "POST",
          id = "streetviewpublish.photo.startUpload",
          parameterOrder = {},
          parameters = {},
          path = "v1/photo:startUpload",
          request = {
            ["$ref"] = "Empty",
          },
          response = {
            ["$ref"] = "UploadRef",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        update = {
          description = "Updates the metadata of a Photo, such as pose, place association, connections, etc. Changing the pixels of a photo is not supported. Only the fields specified in the updateMask field are used. If `updateMask` is not present, the update applies to all fields. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo. * google.rpc.Code.INVALID_ARGUMENT if the request is malformed. * google.rpc.Code.NOT_FOUND if the requested photo does not exist. * google.rpc.Code.UNAVAILABLE if the requested Photo is still being indexed.",
          flatPath = "v1/photo/{id}",
          httpMethod = "PUT",
          id = "streetviewpublish.photo.update",
          parameterOrder = {
            "id",
          },
          parameters = {
            id = {
              description = "A unique identifier for a photo.",
              location = "path",
              required = true,
              type = "string",
            },
            updateMask = {
              description = "Required. Mask that identifies fields on the photo metadata to update. If not present, the old Photo metadata is entirely replaced with the new Photo metadata in this request. The update fails if invalid fields are specified. Multiple fields can be specified in a comma-delimited list. The following fields are valid: * `pose.heading` * `pose.latLngPair` * `pose.pitch` * `pose.roll` * `pose.level` * `pose.altitude` * `connections` * `places` > Note: When updateMask contains repeated fields, the entire set of repeated values get replaced with the new contents. For example, if updateMask contains `connections` and `UpdatePhotoRequest.photo.connections` is empty, all connections are removed.",
              format = "google-fieldmask",
              location = "query",
              type = "string",
            },
          },
          path = "v1/photo/{id}",
          request = {
            ["$ref"] = "Photo",
          },
          response = {
            ["$ref"] = "Photo",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
      },
    },
    photoSequence = {
      methods = {
        create = {
          description = "After the client finishes uploading the PhotoSequence with the returned UploadRef, CreatePhotoSequence extracts a sequence of 360 photos from a video or Extensible Device Metadata (XDM, http://www.xdm.org/) to be published to Street View on Google Maps. `CreatePhotoSequence` returns an Operation, with the PhotoSequence Id set in the `Operation.name` field. This method returns the following error codes: * google.rpc.Code.INVALID_ARGUMENT if the request is malformed. * google.rpc.Code.NOT_FOUND if the upload reference does not exist.",
          flatPath = "v1/photoSequence",
          httpMethod = "POST",
          id = "streetviewpublish.photoSequence.create",
          parameterOrder = {},
          parameters = {
            inputType = {
              description = "Required. The input form of PhotoSequence.",
              enum = {
                "INPUT_TYPE_UNSPECIFIED",
                "VIDEO",
                "XDM",
              },
              enumDescriptions = {
                "Not specified. Server will return google.rpc.Code.INVALID_ARGUMENT.",
                "360 Video.",
                "Extensible Device Metadata, http://www.xdm.org",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/photoSequence",
          request = {
            ["$ref"] = "PhotoSequence",
          },
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        delete = {
          description = "Deletes a PhotoSequence and its metadata. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested photo sequence. * google.rpc.Code.NOT_FOUND if the photo sequence ID does not exist. * google.rpc.Code.FAILED_PRECONDITION if the photo sequence ID is not yet finished processing.",
          flatPath = "v1/photoSequence/{sequenceId}",
          httpMethod = "DELETE",
          id = "streetviewpublish.photoSequence.delete",
          parameterOrder = {
            "sequenceId",
          },
          parameters = {
            sequenceId = {
              description = "Required. ID of the PhotoSequence.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/photoSequence/{sequenceId}",
          response = {
            ["$ref"] = "Empty",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        get = {
          description = "Gets the metadata of the specified PhotoSequence via the Operation interface. This method returns the following three types of responses: * `Operation.done` = false, if the processing of PhotoSequence is not finished yet. * `Operation.done` = true and `Operation.error` is populated, if there was an error in processing. * `Operation.done` = true and `Operation.response` is poulated, which contains a PhotoSequence message. This method returns the following error codes: * google.rpc.Code.PERMISSION_DENIED if the requesting user did not create the requested PhotoSequence. * google.rpc.Code.NOT_FOUND if the requested PhotoSequence does not exist.",
          flatPath = "v1/photoSequence/{sequenceId}",
          httpMethod = "GET",
          id = "streetviewpublish.photoSequence.get",
          parameterOrder = {
            "sequenceId",
          },
          parameters = {
            filter = {
              description = "Optional. The filter expression. For example: `published_status=PUBLISHED`. The filters supported are: `published_status`. See https://google.aip.dev/160 for more information.",
              location = "query",
              type = "string",
            },
            sequenceId = {
              description = "Required. ID of the photo sequence.",
              location = "path",
              required = true,
              type = "string",
            },
            view = {
              description = "Specifies if a download URL for the photo sequence should be returned in `download_url` of individual photos in the PhotoSequence response. > Note: Currently not implemented.",
              enum = {
                "BASIC",
                "INCLUDE_DOWNLOAD_URL",
              },
              enumDescriptions = {
                "Server responses do not include the download URL for the photo bytes. The default value.",
                "Server responses include the download URL for the photo bytes.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/photoSequence/{sequenceId}",
          response = {
            ["$ref"] = "Operation",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        startUpload = {
          description = "Creates an upload session to start uploading photo sequence data. The upload URL of the returned UploadRef is used to upload the data for the `photoSequence`. After the upload is complete, the UploadRef is used with CreatePhotoSequence to create the PhotoSequence object entry.",
          flatPath = "v1/photoSequence:startUpload",
          httpMethod = "POST",
          id = "streetviewpublish.photoSequence.startUpload",
          parameterOrder = {},
          parameters = {},
          path = "v1/photoSequence:startUpload",
          request = {
            ["$ref"] = "Empty",
          },
          response = {
            ["$ref"] = "UploadRef",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
      },
    },
    photoSequences = {
      methods = {
        list = {
          description = "Lists all the PhotoSequences that belong to the user, in descending CreatePhotoSequence timestamp order.",
          flatPath = "v1/photoSequences",
          httpMethod = "GET",
          id = "streetviewpublish.photoSequences.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Optional. The filter expression. For example: `imagery_type=SPHERICAL`. The filters supported are: `imagery_type`, `processing_state`, `min_latitude`, `max_latitude`, `min_longitude`, `max_longitude`, and `filename_query`. See https://google.aip.dev/160 for more information. Filename queries should sent as a Phrase in order to support multple words and special characters by adding escaped quotes. Ex: filename_query=\"example of a phrase.mp4\"",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The maximum number of photo sequences to return. `pageSize` must be non-negative. If `pageSize` is zero or is not provided, the default page size of 100 is used. The number of photo sequences returned in the response may be less than `pageSize` if the number of matches is less than `pageSize`. This is currently unimplemented but is in process.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. The nextPageToken value returned from a previous ListPhotoSequences request, if any.",
              location = "query",
              type = "string",
            },
          },
          path = "v1/photoSequences",
          response = {
            ["$ref"] = "ListPhotoSequencesResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
      },
    },
    photos = {
      methods = {
        batchDelete = {
          description = "Deletes a list of Photos and their metadata. Note that if BatchDeletePhotos fails, either critical fields are missing or there is an authentication error. Even if BatchDeletePhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchDeletePhotosResponse.results. See DeletePhoto for specific failures that can occur per photo.",
          flatPath = "v1/photos:batchDelete",
          httpMethod = "POST",
          id = "streetviewpublish.photos.batchDelete",
          parameterOrder = {},
          parameters = {},
          path = "v1/photos:batchDelete",
          request = {
            ["$ref"] = "BatchDeletePhotosRequest",
          },
          response = {
            ["$ref"] = "BatchDeletePhotosResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        batchGet = {
          description = "Gets the metadata of the specified Photo batch. Note that if BatchGetPhotos fails, either critical fields are missing or there is an authentication error. Even if BatchGetPhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchGetPhotosResponse.results. See GetPhoto for specific failures that can occur per photo.",
          flatPath = "v1/photos:batchGet",
          httpMethod = "GET",
          id = "streetviewpublish.photos.batchGet",
          parameterOrder = {},
          parameters = {
            languageCode = {
              description = "Optional. The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. If language_code is unspecified, the user's language preference for Google services is used.",
              location = "query",
              type = "string",
            },
            photoIds = {
              description = "Required. IDs of the Photos. For HTTP GET requests, the URL query parameter should be `photoIds=&photoIds=&...`.",
              location = "query",
              repeated = true,
              type = "string",
            },
            view = {
              description = "Required. Specifies if a download URL for the photo bytes should be returned in the Photo response.",
              enum = {
                "BASIC",
                "INCLUDE_DOWNLOAD_URL",
              },
              enumDescriptions = {
                "Server responses do not include the download URL for the photo bytes. The default value.",
                "Server responses include the download URL for the photo bytes.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/photos:batchGet",
          response = {
            ["$ref"] = "BatchGetPhotosResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        batchUpdate = {
          description = "Updates the metadata of Photos, such as pose, place association, connections, etc. Changing the pixels of photos is not supported. Note that if BatchUpdatePhotos fails, either critical fields are missing or there is an authentication error. Even if BatchUpdatePhotos succeeds, individual photos in the batch may have failures. These failures are specified in each PhotoResponse.status in BatchUpdatePhotosResponse.results. See UpdatePhoto for specific failures that can occur per photo. Only the fields specified in updateMask field are used. If `updateMask` is not present, the update applies to all fields. The number of UpdatePhotoRequest messages in a BatchUpdatePhotosRequest must not exceed 20. > Note: To update Pose.altitude, Pose.latLngPair has to be filled as well. Otherwise, the request will fail.",
          flatPath = "v1/photos:batchUpdate",
          httpMethod = "POST",
          id = "streetviewpublish.photos.batchUpdate",
          parameterOrder = {},
          parameters = {},
          path = "v1/photos:batchUpdate",
          request = {
            ["$ref"] = "BatchUpdatePhotosRequest",
          },
          response = {
            ["$ref"] = "BatchUpdatePhotosResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
        list = {
          description = "Lists all the Photos that belong to the user. > Note: Recently created photos that are still being indexed are not returned in the response.",
          flatPath = "v1/photos",
          httpMethod = "GET",
          id = "streetviewpublish.photos.list",
          parameterOrder = {},
          parameters = {
            filter = {
              description = "Optional. The filter expression. For example: `placeId=ChIJj61dQgK6j4AR4GeTYWZsKWw`. The filters supported are: `placeId`, `min_latitude`, `max_latitude`, `min_longitude`, and `max_longitude`. See https://google.aip.dev/160 for more information.",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "Optional. The BCP-47 language code, such as \"en-US\" or \"sr-Latn\". For more information, see http://www.unicode.org/reports/tr35/#Unicode_locale_identifier. If language_code is unspecified, the user's language preference for Google services is used.",
              location = "query",
              type = "string",
            },
            pageSize = {
              description = "Optional. The maximum number of photos to return. `pageSize` must be non-negative. If `pageSize` is zero or is not provided, the default page size of 100 is used. The number of photos returned in the response may be less than `pageSize` if the number of photos that belong to the user is less than `pageSize`.",
              format = "int32",
              location = "query",
              type = "integer",
            },
            pageToken = {
              description = "Optional. The nextPageToken value returned from a previous ListPhotos request, if any.",
              location = "query",
              type = "string",
            },
            view = {
              description = "Required. Specifies if a download URL for the photos bytes should be returned in the Photos response.",
              enum = {
                "BASIC",
                "INCLUDE_DOWNLOAD_URL",
              },
              enumDescriptions = {
                "Server responses do not include the download URL for the photo bytes. The default value.",
                "Server responses include the download URL for the photo bytes.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "v1/photos",
          response = {
            ["$ref"] = "ListPhotosResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/streetviewpublish",
          },
        },
      },
    },
  },
  revision = "20230116",
  rootUrl = "https://streetviewpublish.googleapis.com/",
  schemas = {
    BatchDeletePhotosRequest = {
      description = "Request to delete multiple Photos.",
      id = "BatchDeletePhotosRequest",
      properties = {
        photoIds = {
          description = "Required. IDs of the Photos. HTTP GET requests require the following syntax for the URL query parameter: `photoIds=&photoIds=&...`.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchDeletePhotosResponse = {
      description = "Response to batch delete of one or more Photos.",
      id = "BatchDeletePhotosResponse",
      properties = {
        status = {
          description = "The status for the operation to delete a single Photo in the batch request.",
          items = {
            ["$ref"] = "Status",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchGetPhotosResponse = {
      description = "Response to batch get of Photos.",
      id = "BatchGetPhotosResponse",
      properties = {
        results = {
          description = "List of results for each individual Photo requested, in the same order as the requests in BatchGetPhotos.",
          items = {
            ["$ref"] = "PhotoResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchUpdatePhotosRequest = {
      description = "Request to update the metadata of photos. Updating the pixels of photos is not supported.",
      id = "BatchUpdatePhotosRequest",
      properties = {
        updatePhotoRequests = {
          description = "Required. List of UpdatePhotoRequests.",
          items = {
            ["$ref"] = "UpdatePhotoRequest",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchUpdatePhotosResponse = {
      description = "Response to batch update of metadata of one or more Photos.",
      id = "BatchUpdatePhotosResponse",
      properties = {
        results = {
          description = "List of results for each individual Photo updated, in the same order as the request.",
          items = {
            ["$ref"] = "PhotoResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Connection = {
      description = "A connection is the link from a source photo to a destination photo.",
      id = "Connection",
      properties = {
        target = {
          ["$ref"] = "PhotoId",
          description = "Required. The destination of the connection from the containing photo to another photo.",
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
    GpsDataGapFailureDetails = {
      description = "Details related to ProcessingFailureReason#GPS_DATA_GAP. If there are multiple GPS data gaps, only the one with the largest duration is reported here.",
      id = "GpsDataGapFailureDetails",
      properties = {
        gapDuration = {
          description = "The duration of the gap in GPS data that was found.",
          format = "google-duration",
          type = "string",
        },
        gapStartTime = {
          description = "Relative time (from the start of the video stream) when the gap started.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    Imu = {
      description = "IMU data from the device sensors.",
      id = "Imu",
      properties = {
        accelMpsps = {
          description = "The accelerometer measurements in meters/sec^2 with increasing timestamps from devices.",
          items = {
            ["$ref"] = "Measurement3d",
          },
          type = "array",
        },
        gyroRps = {
          description = "The gyroscope measurements in radians/sec with increasing timestamps from devices.",
          items = {
            ["$ref"] = "Measurement3d",
          },
          type = "array",
        },
        magUt = {
          description = "The magnetometer measurements of the magnetic field in microtesla (uT) with increasing timestamps from devices.",
          items = {
            ["$ref"] = "Measurement3d",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ImuDataGapFailureDetails = {
      description = "Details related to ProcessingFailureReason#IMU_DATA_GAP. If there are multiple IMU data gaps, only the one with the largest duration is reported here.",
      id = "ImuDataGapFailureDetails",
      properties = {
        gapDuration = {
          description = "The duration of the gap in IMU data that was found.",
          format = "google-duration",
          type = "string",
        },
        gapStartTime = {
          description = "Relative time (from the start of the video stream) when the gap started.",
          format = "google-duration",
          type = "string",
        },
      },
      type = "object",
    },
    InsufficientGpsFailureDetails = {
      description = "Details related to ProcessingFailureReason#INSUFFICIENT_GPS.",
      id = "InsufficientGpsFailureDetails",
      properties = {
        gpsPointsFound = {
          description = "The number of GPS points that were found in the video.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    LatLng = {
      description = "An object that represents a latitude/longitude pair. This is expressed as a pair of doubles to represent degrees latitude and degrees longitude. Unless specified otherwise, this object must conform to the WGS84 standard. Values must be within normalized ranges.",
      id = "LatLng",
      properties = {
        latitude = {
          description = "The latitude in degrees. It must be in the range [-90.0, +90.0].",
          format = "double",
          type = "number",
        },
        longitude = {
          description = "The longitude in degrees. It must be in the range [-180.0, +180.0].",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    LatLngBounds = {
      description = "A rectangle in geographical coordinates.",
      id = "LatLngBounds",
      properties = {
        northeast = {
          ["$ref"] = "LatLng",
          description = "The northeast corner of these bounds.",
        },
        southwest = {
          ["$ref"] = "LatLng",
          description = "The southwest corner of these bounds.",
        },
      },
      type = "object",
    },
    Level = {
      description = "Level information containing level number and its corresponding name.",
      id = "Level",
      properties = {
        name = {
          description = "Required. A name assigned to this Level, restricted to 3 characters. Consider how the elevator buttons would be labeled for this level if there was an elevator.",
          type = "string",
        },
        number = {
          description = "Optional. Floor number, used for ordering. 0 indicates the ground level, 1 indicates the first level above ground level, -1 indicates the first level under ground level. Non-integer values are OK.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ListPhotoSequencesResponse = {
      description = "Response to list all photo sequences that belong to a user.",
      id = "ListPhotoSequencesResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        photoSequences = {
          description = "List of photo sequences via Operation interface. The maximum number of items returned is based on the pageSize field in the request. Each item in the list can have three possible states, * `Operation.done` = false, if the processing of PhotoSequence is not finished yet. * `Operation.done` = true and `Operation.error` is populated, if there was an error in processing. * `Operation.done` = true and `Operation.response` contains a PhotoSequence message, In each sequence, only Id is populated.",
          items = {
            ["$ref"] = "Operation",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListPhotosResponse = {
      description = "Response to list all photos that belong to a user.",
      id = "ListPhotosResponse",
      properties = {
        nextPageToken = {
          description = "Token to retrieve the next page of results, or empty if there are no more results in the list.",
          type = "string",
        },
        photos = {
          description = "List of photos. The pageSize field in the request determines the number of items returned.",
          items = {
            ["$ref"] = "Photo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Measurement3d = {
      description = "A Generic 3d measurement sample.",
      id = "Measurement3d",
      properties = {
        captureTime = {
          description = "The timestamp of the IMU measurement.",
          format = "google-datetime",
          type = "string",
        },
        x = {
          description = "The sensor measurement in the x axis.",
          format = "float",
          type = "number",
        },
        y = {
          description = "The sensor measurement in the y axis.",
          format = "float",
          type = "number",
        },
        z = {
          description = "The sensor measurement in the z axis.",
          format = "float",
          type = "number",
        },
      },
      type = "object",
    },
    NoOverlapGpsFailureDetails = {
      description = "Details related to PhotoSequenceProcessingFailureReason#NO_OVERLAP_GPS.",
      id = "NoOverlapGpsFailureDetails",
      properties = {
        gpsEndTime = {
          description = "Time of last recorded GPS point.",
          format = "google-datetime",
          type = "string",
        },
        gpsStartTime = {
          description = "Time of first recorded GPS point.",
          format = "google-datetime",
          type = "string",
        },
        videoEndTime = {
          description = "End time of video.",
          format = "google-datetime",
          type = "string",
        },
        videoStartTime = {
          description = "Start time of video.",
          format = "google-datetime",
          type = "string",
        },
      },
      type = "object",
    },
    NotOutdoorsFailureDetails = {
      description = "Details related to ProcessingFailureReason#NOT_OUTDOORS. If there are multiple indoor frames found, the first frame is recorded here.",
      id = "NotOutdoorsFailureDetails",
      properties = {
        startTime = {
          description = "Relative time (from the start of the video stream) when an indoor frame was found.",
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
    Photo = {
      description = "Photo is used to store 360 photos along with photo metadata.",
      id = "Photo",
      properties = {
        captureTime = {
          description = "Optional. Absolute time when the photo was captured. When the photo has no exif timestamp, this is used to set a timestamp in the photo metadata.",
          format = "google-datetime",
          type = "string",
        },
        connections = {
          description = "Optional. Connections to other photos. A connection represents the link from this photo to another photo.",
          items = {
            ["$ref"] = "Connection",
          },
          type = "array",
        },
        downloadUrl = {
          description = "Output only. The download URL for the photo bytes. This field is set only when GetPhotoRequest.view is set to PhotoView.INCLUDE_DOWNLOAD_URL.",
          readOnly = true,
          type = "string",
        },
        mapsPublishStatus = {
          description = "Output only. Status in Google Maps, whether this photo was published or rejected.",
          enum = {
            "UNSPECIFIED_MAPS_PUBLISH_STATUS",
            "PUBLISHED",
            "REJECTED_UNKNOWN",
          },
          enumDescriptions = {
            "The status of the photo is unknown.",
            "The photo is published to the public through Google Maps.",
            "The photo has been rejected for an unknown reason.",
          },
          readOnly = true,
          type = "string",
        },
        photoId = {
          ["$ref"] = "PhotoId",
          description = "Required. Output only. Required when updating a photo. Output only when creating a photo. Identifier for the photo, which is unique among all photos in Google.",
          readOnly = true,
        },
        places = {
          description = "Optional. Places where this photo belongs.",
          items = {
            ["$ref"] = "Place",
          },
          type = "array",
        },
        pose = {
          ["$ref"] = "Pose",
          description = "Optional. Pose of the photo.",
        },
        shareLink = {
          description = "Output only. The share link for the photo.",
          readOnly = true,
          type = "string",
        },
        thumbnailUrl = {
          description = "Output only. The thumbnail URL for showing a preview of the given photo.",
          readOnly = true,
          type = "string",
        },
        transferStatus = {
          description = "Output only. Status of rights transfer on this photo.",
          enum = {
            "TRANSFER_STATUS_UNKNOWN",
            "NEVER_TRANSFERRED",
            "PENDING",
            "COMPLETED",
            "REJECTED",
            "EXPIRED",
            "CANCELLED",
            "RECEIVED_VIA_TRANSFER",
          },
          enumDescriptions = {
            "The status of this transfer is unspecified.",
            "This photo has never been in a transfer.",
            "This photo transfer has been initiated, but the receiver has not yet responded.",
            "The photo transfer has been completed, and this photo has been transferred to the recipient.",
            "The recipient rejected this photo transfer.",
            "The photo transfer expired before the recipient took any action.",
            "The sender cancelled this photo transfer.",
            "The recipient owns this photo due to a rights transfer.",
          },
          readOnly = true,
          type = "string",
        },
        uploadReference = {
          ["$ref"] = "UploadRef",
          description = "Input only. Required when creating a photo. Input only. The resource URL where the photo bytes are uploaded to.",
        },
        uploadTime = {
          description = "Output only. Time when the image was uploaded.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        viewCount = {
          description = "Output only. View count of the photo.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    PhotoId = {
      description = "Identifier for a Photo.",
      id = "PhotoId",
      properties = {
        id = {
          description = "A unique identifier for a photo.",
          type = "string",
        },
      },
      type = "object",
    },
    PhotoResponse = {
      description = "Response payload for a single Photo in batch operations including BatchGetPhotos and BatchUpdatePhotos.",
      id = "PhotoResponse",
      properties = {
        photo = {
          ["$ref"] = "Photo",
          description = "The Photo resource, if the request was successful.",
        },
        status = {
          ["$ref"] = "Status",
          description = "The status for the operation to get or update a single photo in the batch request.",
        },
      },
      type = "object",
    },
    PhotoSequence = {
      description = "A sequence of 360 photos along with metadata.",
      id = "PhotoSequence",
      properties = {
        captureTimeOverride = {
          description = "Optional. Absolute time when the photo sequence starts to be captured. If the photo sequence is a video, this is the start time of the video. If this field is populated in input, it overrides the capture time in the video or XDM file.",
          format = "google-datetime",
          type = "string",
        },
        distanceMeters = {
          description = "Output only. The computed distance of the photo sequence in meters.",
          format = "double",
          readOnly = true,
          type = "number",
        },
        failureDetails = {
          ["$ref"] = "ProcessingFailureDetails",
          description = "Output only. If this sequence has `failure_reason` set, this may contain additional details about the failure.",
          readOnly = true,
        },
        failureReason = {
          description = "Output only. If this sequence has processing_state = FAILED, this will contain the reason why it failed. If the processing_state is any other value, this field will be unset.",
          enum = {
            "PROCESSING_FAILURE_REASON_UNSPECIFIED",
            "LOW_RESOLUTION",
            "DUPLICATE",
            "INSUFFICIENT_GPS",
            "NO_OVERLAP_GPS",
            "INVALID_GPS",
            "FAILED_TO_REFINE_POSITIONS",
            "TAKEDOWN",
            "CORRUPT_VIDEO",
            "INTERNAL",
            "INVALID_VIDEO_FORMAT",
            "INVALID_VIDEO_DIMENSIONS",
            "INVALID_CAPTURE_TIME",
            "GPS_DATA_GAP",
            "JUMPY_GPS",
            "INVALID_IMU",
            "INSUFFICIENT_IMU",
            "INSUFFICIENT_OVERLAP_TIME_SERIES",
            "IMU_DATA_GAP",
            "UNSUPPORTED_CAMERA",
            "NOT_OUTDOORS",
            "INSUFFICIENT_VIDEO_FRAMES",
            "INSUFFICIENT_MOVEMENT",
          },
          enumDescriptions = {
            "The failure reason is unspecified, this is the default value.",
            "Video frame's resolution is too small.",
            "This video has been uploaded before.",
            "Too few GPS points.",
            "No overlap between the time frame of GPS track and the time frame of video.",
            "GPS is invalid (e.x. all GPS points are at (0,0))",
            "The sequence of photos could not be accurately located in the world.",
            "The sequence was taken down for policy reasons.",
            "The video file was corrupt or could not be decoded.",
            "A permanent failure in the underlying system occurred.",
            "The video format is invalid or unsupported.",
            "Invalid image aspect ratio found.",
            "Invalid capture time. Timestamps were from the future.",
            "GPS data contains a gap greater than 5 seconds in duration.",
            "GPS data is too erratic to be processed.",
            "IMU (Accelerometer, Gyroscope, etc.) data are not valid. They may be missing required fields (x, y, z or time), may not be formatted correctly, or any other issue that prevents our systems from parsing it.",
            "Too few IMU points.",
            "Insufficient overlap in the time frame between GPS, IMU, and other time series data.",
            "IMU (Accelerometer, Gyroscope, etc.) data contain gaps greater than 0.1 seconds in duration.",
            "The camera is not supported.",
            "Some frames were indoors, which is unsupported.",
            "Not enough video frames.",
            "Not enough moving data.",
          },
          readOnly = true,
          type = "string",
        },
        filename = {
          description = "Output only. The filename of the upload. Does not include the directory path. Only available if the sequence was uploaded on a platform that provides the filename.",
          readOnly = true,
          type = "string",
        },
        gpsSource = {
          description = "Input only. If both raw_gps_timeline and the Camera Motion Metadata Track (CAMM) contain GPS measurements, indicate which takes precedence.",
          enum = {
            "PHOTO_SEQUENCE",
            "CAMERA_MOTION_METADATA_TRACK",
          },
          enumDescriptions = {
            "GPS in raw_gps_timeline takes precedence if it exists.",
            "GPS in Camera Motion Metadata Track (CAMM) takes precedence if it exists.",
          },
          type = "string",
        },
        id = {
          description = "Output only. Unique identifier for the photo sequence. This also acts as a long running operation ID if uploading is performed asynchronously.",
          readOnly = true,
          type = "string",
        },
        imu = {
          ["$ref"] = "Imu",
          description = "Input only. Three axis IMU data for the collection. If this data is too large to put in the request, then it should be put in the CAMM track for the video. This data always takes precedence over the equivalent CAMM data, if it exists.",
        },
        photos = {
          description = "Output only. Photos with increasing timestamps.",
          items = {
            ["$ref"] = "Photo",
          },
          readOnly = true,
          type = "array",
        },
        processingState = {
          description = "Output only. The processing state of this sequence.",
          enum = {
            "PROCESSING_STATE_UNSPECIFIED",
            "PENDING",
            "PROCESSING",
            "PROCESSED",
            "FAILED",
          },
          enumDescriptions = {
            "The state is unspecified, this is the default value.",
            "The sequence has not yet started processing.",
            "The sequence is currently in processing.",
            "The sequence has finished processing including refining position.",
            "The sequence failed processing. See FailureReason for more details.",
          },
          readOnly = true,
          type = "string",
        },
        rawGpsTimeline = {
          description = "Input only. Raw GPS measurements with increasing timestamps from the device that aren't time synced with each photo. These raw measurements will be used to infer the pose of each frame. Required in input when InputType is VIDEO and raw GPS measurements are not in Camera Motion Metadata Track (CAMM). User can indicate which takes precedence using gps_source if raw GPS measurements are provided in both raw_gps_timeline and Camera Motion Metadata Track (CAMM).",
          items = {
            ["$ref"] = "Pose",
          },
          type = "array",
        },
        sequenceBounds = {
          ["$ref"] = "LatLngBounds",
          description = "Output only. A rectangular box that encapsulates every image in this photo sequence.",
          readOnly = true,
        },
        uploadReference = {
          ["$ref"] = "UploadRef",
          description = "Input only. Required when creating photo sequence. The resource name where the bytes of the photo sequence (in the form of video) are uploaded.",
        },
        uploadTime = {
          description = "Output only. The time this photo sequence was created in uSV Store service.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        viewCount = {
          description = "Output only. The total number of views that all the published images in this PhotoSequence have received.",
          format = "int64",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Place = {
      description = "Place metadata for an entity.",
      id = "Place",
      properties = {
        languageCode = {
          description = "Output only. The language_code that the name is localized with. This should be the language_code specified in the request, but may be a fallback.",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The name of the place, localized to the language_code.",
          readOnly = true,
          type = "string",
        },
        placeId = {
          description = "Place identifier, as described in https://developers.google.com/places/place-id.",
          type = "string",
        },
      },
      type = "object",
    },
    Pose = {
      description = "Raw pose measurement for an entity.",
      id = "Pose",
      properties = {
        accuracyMeters = {
          description = "The estimated horizontal accuracy of this pose in meters with 68% confidence (one standard deviation). For example, on Android, this value is available from this method: https://developer.android.com/reference/android/location/Location#getAccuracy(). Other platforms have different methods of obtaining similar accuracy estimations.",
          format = "float",
          type = "number",
        },
        altitude = {
          description = "Altitude of the pose in meters above WGS84 ellipsoid. NaN indicates an unmeasured quantity.",
          format = "double",
          type = "number",
        },
        gpsRecordTimestampUnixEpoch = {
          description = "Time of the GPS record since UTC epoch.",
          format = "google-datetime",
          type = "string",
        },
        heading = {
          description = "The following pose parameters pertain to the center of the photo. They match https://developers.google.com/streetview/spherical-metadata. Compass heading, measured at the center of the photo in degrees clockwise from North. Value must be >=0 and <360. NaN indicates an unmeasured quantity.",
          format = "double",
          type = "number",
        },
        latLngPair = {
          ["$ref"] = "LatLng",
          description = "Latitude and longitude pair of the pose, as explained here: https://cloud.google.com/datastore/docs/reference/rest/Shared.Types/LatLng When creating a Photo, if the latitude and longitude pair are not provided, the geolocation from the exif header is used. A latitude and longitude pair not provided in the photo or exif header causes the photo process to fail.",
        },
        level = {
          ["$ref"] = "Level",
          description = "Level (the floor in a building) used to configure vertical navigation.",
        },
        pitch = {
          description = "Pitch, measured at the center of the photo in degrees. Value must be >=-90 and <= 90. A value of -90 means looking directly down, and a value of 90 means looking directly up. NaN indicates an unmeasured quantity.",
          format = "double",
          type = "number",
        },
        roll = {
          description = "Roll, measured in degrees. Value must be >= 0 and <360. A value of 0 means level with the horizon. NaN indicates an unmeasured quantity.",
          format = "double",
          type = "number",
        },
      },
      type = "object",
    },
    ProcessingFailureDetails = {
      description = "Additional details to accompany the ProcessingFailureReason enum. This message is always expected to be used in conjunction with ProcessingFailureReason, and the oneof value set in this message should match the FailureReason.",
      id = "ProcessingFailureDetails",
      properties = {
        gpsDataGapDetails = {
          ["$ref"] = "GpsDataGapFailureDetails",
          description = "See GpsDataGapFailureDetails.",
        },
        imuDataGapDetails = {
          ["$ref"] = "ImuDataGapFailureDetails",
          description = "See ImuDataGapFailureDetails.",
        },
        insufficientGpsDetails = {
          ["$ref"] = "InsufficientGpsFailureDetails",
          description = "See InsufficientGpsFailureDetails.",
        },
        noOverlapGpsDetails = {
          ["$ref"] = "NoOverlapGpsFailureDetails",
          description = "See NoOverlapGpsFailureDetails.",
        },
        notOutdoorsDetails = {
          ["$ref"] = "NotOutdoorsFailureDetails",
          description = "See NotOutdoorsFailureDetails.",
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
    UpdatePhotoRequest = {
      description = "Request to update the metadata of a Photo. Updating the pixels of a photo is not supported.",
      id = "UpdatePhotoRequest",
      properties = {
        photo = {
          ["$ref"] = "Photo",
          description = "Required. Photo object containing the new metadata.",
        },
        updateMask = {
          description = "Required. Mask that identifies fields on the photo metadata to update. If not present, the old Photo metadata is entirely replaced with the new Photo metadata in this request. The update fails if invalid fields are specified. Multiple fields can be specified in a comma-delimited list. The following fields are valid: * `pose.heading` * `pose.latLngPair` * `pose.pitch` * `pose.roll` * `pose.level` * `pose.altitude` * `connections` * `places` > Note: When updateMask contains repeated fields, the entire set of repeated values get replaced with the new contents. For example, if updateMask contains `connections` and `UpdatePhotoRequest.photo.connections` is empty, all connections are removed.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UploadRef = {
      description = "Upload reference for media files.",
      id = "UploadRef",
      properties = {
        uploadUrl = {
          description = "An upload reference should be unique for each user. It follows the form: \"https://streetviewpublish.googleapis.com/media/user/{account_id}/photo/{upload_reference}\"",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Street View Publish API",
  version = "v1",
  version_module = true,
}
