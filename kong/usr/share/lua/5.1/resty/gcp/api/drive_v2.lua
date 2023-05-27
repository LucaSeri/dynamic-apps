return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/drive"] = {
          description = "See, edit, create, and delete all of your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.appdata"] = {
          description = "See, create, and delete its own configuration data in your Google Drive",
        },
        ["https://www.googleapis.com/auth/drive.apps.readonly"] = {
          description = "View your Google Drive apps",
        },
        ["https://www.googleapis.com/auth/drive.file"] = {
          description = "See, edit, create, and delete only the specific Google Drive files you use with this app",
        },
        ["https://www.googleapis.com/auth/drive.metadata"] = {
          description = "View and manage metadata of files in your Google Drive",
        },
        ["https://www.googleapis.com/auth/drive.metadata.readonly"] = {
          description = "See information about your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.photos.readonly"] = {
          description = "View the photos, videos and albums in your Google Photos",
        },
        ["https://www.googleapis.com/auth/drive.readonly"] = {
          description = "See and download all your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.scripts"] = {
          description = "Modify your Google Apps Script scripts' behavior",
        },
      },
    },
  },
  basePath = "/drive/v2/",
  baseUrl = "https://www.googleapis.com/drive/v2/",
  batchPath = "batch/drive/v2",
  description = "Manages files in Drive including uploading, downloading, searching, detecting changes, and updating sharing permissions.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/drive/",
  etag = "\"uWj2hSb4GVjzdDlAnRd2gbM1ZQ8/x5b-YdVpYecPlbkeJZj4PNXRNas\"",
  icons = {
    x16 = "https://ssl.gstatic.com/docs/doclist/images/drive_icon_16.png",
    x32 = "https://ssl.gstatic.com/docs/doclist/images/drive_icon_32.png",
  },
  id = "drive:v2",
  kind = "discovery#restDescription",
  name = "drive",
  ownerDomain = "google.com",
  ownerName = "Google",
  parameters = {
    alt = {
      default = "json",
      description = "Data format for the response.",
      enum = {
        "json",
      },
      enumDescriptions = {
        "Responses with Content-Type of application/json",
      },
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
      description = "An opaque string that represents a user for quota purposes. Must not exceed 40 characters.",
      location = "query",
      type = "string",
    },
    userIp = {
      description = "Deprecated. Please use quotaUser instead.",
      location = "query",
      type = "string",
    },
  },
  protocol = "rest",
  resources = {
    about = {
      methods = {
        get = {
          description = "Gets the information about the current user along with Drive API settings",
          httpMethod = "GET",
          id = "drive.about.get",
          parameters = {
            includeSubscribed = {
              default = "true",
              description = "Whether to count changes outside the My Drive hierarchy. When set to false, changes to files such as those in the Application Data folder or shared files which have not been added to My Drive will be omitted from the maxChangeIdCount.",
              location = "query",
              type = "boolean",
            },
            maxChangeIdCount = {
              default = "1",
              description = "Maximum number of remaining change IDs to count",
              format = "int64",
              location = "query",
              type = "string",
            },
            startChangeId = {
              description = "Change ID to start counting from when calculating number of remaining change IDs",
              format = "int64",
              location = "query",
              type = "string",
            },
          },
          path = "about",
          response = {
            ["$ref"] = "About",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
      },
    },
    apps = {
      methods = {
        get = {
          description = "Gets a specific app.",
          httpMethod = "GET",
          id = "drive.apps.get",
          parameterOrder = {
            "appId",
          },
          parameters = {
            appId = {
              description = "The ID of the app.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "apps/{appId}",
          response = {
            ["$ref"] = "App",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Lists a user's installed apps.",
          httpMethod = "GET",
          id = "drive.apps.list",
          parameters = {
            appFilterExtensions = {
              default = "",
              description = "A comma-separated list of file extensions for open with filtering. All apps within the given app query scope which can open any of the given file extensions will be included in the response. If appFilterMimeTypes are provided as well, the result is a union of the two resulting app lists.",
              location = "query",
              type = "string",
            },
            appFilterMimeTypes = {
              default = "",
              description = "A comma-separated list of MIME types for open with filtering. All apps within the given app query scope which can open any of the given MIME types will be included in the response. If appFilterExtensions are provided as well, the result is a union of the two resulting app lists.",
              location = "query",
              type = "string",
            },
            languageCode = {
              description = "A language or locale code, as defined by BCP 47, with some extensions from Unicode's LDML format (http://www.unicode.org/reports/tr35/).",
              location = "query",
              type = "string",
            },
          },
          path = "apps",
          response = {
            ["$ref"] = "AppList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive.apps.readonly",
          },
        },
      },
    },
    changes = {
      methods = {
        get = {
          description = "Deprecated - Use changes.getStartPageToken and changes.list to retrieve recent changes.",
          httpMethod = "GET",
          id = "drive.changes.get",
          parameterOrder = {
            "changeId",
          },
          parameters = {
            changeId = {
              description = "The ID of the change.",
              location = "path",
              required = true,
              type = "string",
            },
            driveId = {
              description = "The shared drive from which the change is returned.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "changes/{changeId}",
          response = {
            ["$ref"] = "Change",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        getStartPageToken = {
          description = "Gets the starting pageToken for listing future changes.",
          httpMethod = "GET",
          id = "drive.changes.getStartPageToken",
          parameters = {
            driveId = {
              description = "The ID of the shared drive for which the starting pageToken for listing future changes from that shared drive is returned.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "changes/startPageToken",
          response = {
            ["$ref"] = "StartPageToken",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Lists the changes for a user or shared drive.",
          httpMethod = "GET",
          id = "drive.changes.list",
          parameters = {
            driveId = {
              description = "The shared drive from which changes are returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.",
              location = "query",
              type = "string",
            },
            includeCorpusRemovals = {
              default = "false",
              description = "Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.",
              location = "query",
              type = "boolean",
            },
            includeDeleted = {
              default = "true",
              description = "Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.",
              location = "query",
              type = "boolean",
            },
            includeItemsFromAllDrives = {
              default = "false",
              description = "Whether both My Drive and shared drive items should be included in results.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            includeSubscribed = {
              default = "true",
              description = "Whether to include changes outside the My Drive hierarchy in the result. When set to false, changes to files such as those in the Application Data folder or shared files which have not been added to My Drive are omitted from the result.",
              location = "query",
              type = "boolean",
            },
            includeTeamDriveItems = {
              default = "false",
              description = "Deprecated use includeItemsFromAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "100",
              description = "Maximum number of changes to return.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response or to the response from the getStartPageToken method.",
              location = "query",
              type = "string",
            },
            spaces = {
              description = "A comma-separated list of spaces to query. Supported values are 'drive', 'appDataFolder' and 'photos'.",
              location = "query",
              type = "string",
            },
            startChangeId = {
              description = "Deprecated - use pageToken instead.",
              format = "int64",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "changes",
          response = {
            ["$ref"] = "ChangeList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsSubscription = true,
        },
        watch = {
          description = "Subscribe to changes for a user.",
          httpMethod = "POST",
          id = "drive.changes.watch",
          parameters = {
            driveId = {
              description = "The shared drive from which changes are returned. If specified the change IDs will be reflective of the shared drive; use the combined drive ID and change ID as an identifier.",
              location = "query",
              type = "string",
            },
            includeCorpusRemovals = {
              default = "false",
              description = "Whether changes should include the file resource if the file is still accessible by the user at the time of the request, even when a file was removed from the list of changes and there will be no further change entries for this file.",
              location = "query",
              type = "boolean",
            },
            includeDeleted = {
              default = "true",
              description = "Whether to include changes indicating that items have been removed from the list of changes, for example by deletion or loss of access.",
              location = "query",
              type = "boolean",
            },
            includeItemsFromAllDrives = {
              default = "false",
              description = "Whether both My Drive and shared drive items should be included in results.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            includeSubscribed = {
              default = "true",
              description = "Whether to include changes outside the My Drive hierarchy in the result. When set to false, changes to files such as those in the Application Data folder or shared files which have not been added to My Drive are omitted from the result.",
              location = "query",
              type = "boolean",
            },
            includeTeamDriveItems = {
              default = "false",
              description = "Deprecated use includeItemsFromAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "100",
              description = "Maximum number of changes to return.",
              format = "int32",
              location = "query",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response or to the response from the getStartPageToken method.",
              location = "query",
              type = "string",
            },
            spaces = {
              description = "A comma-separated list of spaces to query. Supported values are 'drive', 'appDataFolder' and 'photos'.",
              location = "query",
              type = "string",
            },
            startChangeId = {
              description = "Deprecated - use pageToken instead.",
              format = "int64",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "changes/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsSubscription = true,
        },
      },
    },
    channels = {
      methods = {
        stop = {
          description = "Stop watching resources through this channel",
          httpMethod = "POST",
          id = "drive.channels.stop",
          path = "channels/stop",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
      },
    },
    children = {
      methods = {
        delete = {
          description = "Removes a child from a folder.",
          httpMethod = "DELETE",
          id = "drive.children.delete",
          parameterOrder = {
            "folderId",
            "childId",
          },
          parameters = {
            childId = {
              description = "The ID of the child.",
              location = "path",
              required = true,
              type = "string",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner's root.",
              location = "query",
              type = "boolean",
            },
            folderId = {
              description = "The ID of the folder.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{folderId}/children/{childId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a specific child reference.",
          httpMethod = "GET",
          id = "drive.children.get",
          parameterOrder = {
            "folderId",
            "childId",
          },
          parameters = {
            childId = {
              description = "The ID of the child.",
              location = "path",
              required = true,
              type = "string",
            },
            folderId = {
              description = "The ID of the folder.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{folderId}/children/{childId}",
          response = {
            ["$ref"] = "ChildReference",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        insert = {
          description = "Inserts a file into a folder.",
          httpMethod = "POST",
          id = "drive.children.insert",
          parameterOrder = {
            "folderId",
          },
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Adding files to multiple folders is no longer supported. Use shortcuts instead.",
              location = "query",
              type = "boolean",
            },
            folderId = {
              description = "The ID of the folder.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{folderId}/children",
          request = {
            ["$ref"] = "ChildReference",
          },
          response = {
            ["$ref"] = "ChildReference",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        list = {
          description = "Lists a folder's children.",
          httpMethod = "GET",
          id = "drive.children.list",
          parameterOrder = {
            "folderId",
          },
          parameters = {
            folderId = {
              description = "The ID of the folder.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "100",
              description = "Maximum number of children to return.",
              format = "int32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "A comma-separated list of sort keys. Valid keys are 'createdDate', 'folder', 'lastViewedByMeDate', 'modifiedByMeDate', 'modifiedDate', 'quotaBytesUsed', 'recency', 'sharedWithMeDate', 'starred', and 'title'. Each key sorts ascending by default, but may be reversed with the 'desc' modifier. Example usage: ?orderBy=folder,modifiedDate desc,title. Please note that there is a current limitation for users with approximately one million files in which the requested sort order is ignored.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Page token for children.",
              location = "query",
              type = "string",
            },
            q = {
              description = "Query string for searching children.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{folderId}/children",
          response = {
            ["$ref"] = "ChildList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
      },
    },
    comments = {
      methods = {
        delete = {
          description = "Deletes a comment.",
          httpMethod = "DELETE",
          id = "drive.comments.delete",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a comment by ID.",
          httpMethod = "GET",
          id = "drive.comments.get",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "If set, this will succeed when retrieving a deleted comment, and will include any deleted replies.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/comments/{commentId}",
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        insert = {
          description = "Creates a new comment on the given file.",
          httpMethod = "POST",
          id = "drive.comments.insert",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments",
          request = {
            ["$ref"] = "Comment",
          },
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        list = {
          description = "Lists a file's comments.",
          httpMethod = "GET",
          id = "drive.comments.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "If set, all comments and replies, including deleted comments and replies (with content stripped) will be returned.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "20",
              description = "The maximum number of discussions to include in the response, used for paging.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.",
              location = "query",
              type = "string",
            },
            updatedMin = {
              description = "Only discussions that were updated after this timestamp will be returned. Formatted as an RFC 3339 timestamp.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/comments",
          response = {
            ["$ref"] = "CommentList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        patch = {
          description = "Updates an existing comment.",
          httpMethod = "PATCH",
          id = "drive.comments.patch",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}",
          request = {
            ["$ref"] = "Comment",
          },
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        update = {
          description = "Updates an existing comment.",
          httpMethod = "PUT",
          id = "drive.comments.update",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}",
          request = {
            ["$ref"] = "Comment",
          },
          response = {
            ["$ref"] = "Comment",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    drives = {
      methods = {
        delete = {
          description = "Permanently deletes a shared drive for which the user is an organizer. The shared drive cannot contain any untrashed items.",
          httpMethod = "DELETE",
          id = "drive.drives.delete",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            allowItemDeletion = {
              default = "false",
              description = "Whether any items inside the shared drive should also be deleted. This option is only supported when useDomainAdminAccess is also set to true.",
              location = "query",
              type = "boolean",
            },
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives/{driveId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        get = {
          description = "Gets a shared drive's metadata by ID.",
          httpMethod = "GET",
          id = "drive.drives.get",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives/{driveId}",
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        hide = {
          description = "Hides a shared drive from the default view.",
          httpMethod = "POST",
          id = "drive.drives.hide",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "drives/{driveId}/hide",
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        insert = {
          description = "Creates a new shared drive.",
          httpMethod = "POST",
          id = "drive.drives.insert",
          parameterOrder = {
            "requestId",
          },
          parameters = {
            requestId = {
              description = "An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a shared drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same shared drive. If the shared drive already exists a 409 error will be returned.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "drives",
          request = {
            ["$ref"] = "Drive",
          },
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        list = {
          description = "Lists the user's shared drives.",
          httpMethod = "GET",
          id = "drive.drives.list",
          parameters = {
            maxResults = {
              default = "10",
              description = "Maximum number of shared drives to return per page.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Page token for shared drives.",
              location = "query",
              type = "string",
            },
            q = {
              description = "Query string for searching shared drives.",
              location = "query",
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then all shared drives of the domain in which the requester is an administrator are returned.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives",
          response = {
            ["$ref"] = "DriveList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        unhide = {
          description = "Restores a shared drive to the default view.",
          httpMethod = "POST",
          id = "drive.drives.unhide",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "drives/{driveId}/unhide",
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        update = {
          description = "Updates the metadata for a shared drive.",
          httpMethod = "PUT",
          id = "drive.drives.update",
          parameterOrder = {
            "driveId",
          },
          parameters = {
            driveId = {
              description = "The ID of the shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "drives/{driveId}",
          request = {
            ["$ref"] = "Drive",
          },
          response = {
            ["$ref"] = "Drive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
      },
    },
    files = {
      methods = {
        copy = {
          description = "Creates a copy of the specified file. Folders cannot be copied.",
          httpMethod = "POST",
          id = "drive.files.copy",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            convert = {
              default = "false",
              description = "Whether to convert this file to the corresponding Docs Editors format.",
              location = "query",
              type = "boolean",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Copying files into multiple folders is no longer supported. Use shortcuts instead.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file to copy.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            ocr = {
              default = "false",
              description = "Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.",
              location = "query",
              type = "boolean",
            },
            ocrLanguage = {
              description = "If ocr is true, hints at the language to use. Valid values are BCP 47 codes.",
              location = "query",
              type = "string",
            },
            pinned = {
              default = "false",
              description = "Whether to pin the head revision of the new copy. A file can have a maximum of 200 pinned revisions.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            timedTextLanguage = {
              description = "The language of the timed text.",
              location = "query",
              type = "string",
            },
            timedTextTrackName = {
              description = "The timed text track name.",
              location = "query",
              type = "string",
            },
            visibility = {
              default = "DEFAULT",
              description = "The visibility of the new file. This parameter is only relevant when the source is not a native Google Doc and convert=false.",
              enum = {
                "DEFAULT",
                "PRIVATE",
              },
              enumDescriptions = {
                "The visibility of the new file is determined by the user's default visibility/sharing policies.",
                "The new file will be visible to only the owner.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/copy",
          request = {
            ["$ref"] = "File",
          },
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.photos.readonly",
          },
        },
        delete = {
          description = "Permanently deletes a file by ID. Skips the trash. The currently authenticated user must own the file or be an organizer on the parent for shared drive files.",
          httpMethod = "DELETE",
          id = "drive.files.delete",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner's root.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file to delete.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        emptyTrash = {
          description = "Permanently deletes all of the user's trashed files.",
          httpMethod = "DELETE",
          id = "drive.files.emptyTrash",
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner's root.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/trash",
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        export = {
          description = "Exports a Google Workspace document to the requested MIME type and returns exported byte content. Note that the exported content is limited to 10MB.",
          httpMethod = "GET",
          id = "drive.files.export",
          parameterOrder = {
            "fileId",
            "mimeType",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            mimeType = {
              description = "The MIME type of the format requested for this export.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/export",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsMediaDownload = true,
        },
        generateIds = {
          description = "Generates a set of file IDs which can be provided in insert or copy requests.",
          httpMethod = "GET",
          id = "drive.files.generateIds",
          parameters = {
            maxResults = {
              default = "10",
              description = "Maximum number of IDs to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            space = {
              default = "drive",
              description = "The space in which the IDs can be used to create new files. Supported values are 'drive' and 'appDataFolder'. (Default: 'drive')",
              location = "query",
              type = "string",
            },
            type = {
              default = "files",
              description = "The type of items which the IDs can be used for. Supported values are 'files' and 'shortcuts'. Note that 'shortcuts' are only supported in the drive 'space'. (Default: 'files')",
              location = "query",
              type = "string",
            },
          },
          path = "files/generateIds",
          response = {
            ["$ref"] = "GeneratedIds",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a file's metadata or content by ID.",
          httpMethod = "GET",
          id = "drive.files.get",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            acknowledgeAbuse = {
              default = "false",
              description = "Whether the user is acknowledging the risk of downloading known malware or other abusive files.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID for the file in question.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            projection = {
              description = "This parameter is deprecated and has no function.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Deprecated",
                "Deprecated",
              },
              location = "query",
              type = "string",
            },
            revisionId = {
              description = "Specifies the Revision ID that should be downloaded. Ignored unless alt=media is specified.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            updateViewedDate = {
              default = "false",
              description = "Deprecated: Use files.update with modifiedDateBehavior=noChange, updateViewedDate=true and an empty request body.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}",
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsMediaDownload = true,
          supportsSubscription = true,
          useMediaDownloadService = true,
        },
        insert = {
          description = "Insert a new file.",
          httpMethod = "POST",
          id = "drive.files.insert",
          mediaUpload = {
            accept = {
              "*/*",
            },
            maxSize = "5120GB",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/drive/v2/files",
              },
              simple = {
                multipart = true,
                path = "/upload/drive/v2/files",
              },
            },
          },
          parameters = {
            convert = {
              default = "false",
              description = "Whether to convert this file to the corresponding Docs Editors format.",
              location = "query",
              type = "boolean",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Creating files in multiple folders is no longer supported.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            ocr = {
              default = "false",
              description = "Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.",
              location = "query",
              type = "boolean",
            },
            ocrLanguage = {
              description = "If ocr is true, hints at the language to use. Valid values are BCP 47 codes.",
              location = "query",
              type = "string",
            },
            pinned = {
              default = "false",
              description = "Whether to pin the head revision of the uploaded file. A file can have a maximum of 200 pinned revisions.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            timedTextLanguage = {
              description = "The language of the timed text.",
              location = "query",
              type = "string",
            },
            timedTextTrackName = {
              description = "The timed text track name.",
              location = "query",
              type = "string",
            },
            useContentAsIndexableText = {
              default = "false",
              description = "Whether to use the content as indexable text.",
              location = "query",
              type = "boolean",
            },
            visibility = {
              default = "DEFAULT",
              description = "The visibility of the new file. This parameter is only relevant when convert=false.",
              enum = {
                "DEFAULT",
                "PRIVATE",
              },
              enumDescriptions = {
                "The visibility of the new file is determined by the user's default visibility/sharing policies.",
                "The new file will be visible to only the owner.",
              },
              location = "query",
              type = "string",
            },
          },
          path = "files",
          request = {
            ["$ref"] = "File",
          },
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
          },
          supportsMediaUpload = true,
          supportsSubscription = true,
        },
        list = {
          description = "Lists the user's files.",
          httpMethod = "GET",
          id = "drive.files.list",
          parameters = {
            corpora = {
              description = "Groupings of files to which the query applies. Supported groupings are: 'user' (files created by, opened by, or shared directly with the user), 'drive' (files in the specified shared drive as indicated by the 'driveId'), 'domain' (files shared to the user's domain), and 'allDrives' (A combination of 'user' and 'drive' for all drives where the user is a member). When able, use 'user' or 'drive', instead of 'allDrives', for efficiency.",
              location = "query",
              type = "string",
            },
            corpus = {
              description = "The body of items (files/documents) to which the query applies. Deprecated: use 'corpora' instead.",
              enum = {
                "DEFAULT",
                "DOMAIN",
              },
              enumDescriptions = {
                "The items that the user has accessed.",
                "Items shared to the user's domain.",
              },
              location = "query",
              type = "string",
            },
            driveId = {
              description = "ID of the shared drive to search.",
              location = "query",
              type = "string",
            },
            includeItemsFromAllDrives = {
              default = "false",
              description = "Whether both My Drive and shared drive items should be included in results.",
              location = "query",
              type = "boolean",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            includeTeamDriveItems = {
              default = "false",
              description = "Deprecated use includeItemsFromAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "100",
              description = "The maximum number of files to return per page. Partial or empty result pages are possible even before the end of the files list has been reached.",
              format = "int32",
              location = "query",
              minimum = "0",
              type = "integer",
            },
            orderBy = {
              description = "A comma-separated list of sort keys. Valid keys are 'createdDate', 'folder', 'lastViewedByMeDate', 'modifiedByMeDate', 'modifiedDate', 'quotaBytesUsed', 'recency', 'sharedWithMeDate', 'starred', 'title', and 'title_natural'. Each key sorts ascending by default, but may be reversed with the 'desc' modifier. Example usage: ?orderBy=folder,modifiedDate desc,title. Please note that there is a current limitation for users with approximately one million files in which the requested sort order is ignored.",
              location = "query",
              type = "string",
            },
            pageToken = {
              description = "Page token for files.",
              location = "query",
              type = "string",
            },
            projection = {
              description = "This parameter is deprecated and has no function.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Deprecated",
                "Deprecated",
              },
              location = "query",
              type = "string",
            },
            q = {
              description = "Query string for searching files.",
              location = "query",
              type = "string",
            },
            spaces = {
              description = "A comma-separated list of spaces to query. Supported values are 'drive' and 'appDataFolder'.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            teamDriveId = {
              description = "Deprecated use driveId instead.",
              location = "query",
              type = "string",
            },
          },
          path = "files",
          response = {
            ["$ref"] = "FileList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        listLabels = {
          description = "Lists the labels on a file.",
          httpMethod = "GET",
          id = "drive.files.listLabels",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "100",
              description = "The maximum number of labels to return per page. When not set, this defaults to 100.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/listLabels",
          response = {
            ["$ref"] = "LabelList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        modifyLabels = {
          description = "Modifies the set of labels on a file.",
          httpMethod = "POST",
          id = "drive.files.modifyLabels",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file for which the labels are modified.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/modifyLabels",
          request = {
            ["$ref"] = "ModifyLabelsRequest",
          },
          response = {
            ["$ref"] = "ModifyLabelsResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
          },
        },
        patch = {
          description = "Updates a file's metadata and/or content. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might change automatically, such as modifiedDate. This method supports patch semantics.",
          httpMethod = "PATCH",
          id = "drive.files.patch",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            addParents = {
              description = "Comma-separated list of parent IDs to add.",
              location = "query",
              type = "string",
            },
            convert = {
              default = "false",
              description = "This parameter is deprecated and has no function.",
              location = "query",
              type = "boolean",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Adding files to multiple folders is no longer supported. Use shortcuts instead.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file to update.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            modifiedDateBehavior = {
              description = "Determines the behavior in which modifiedDate is updated. This overrides setModifiedDate.",
              enum = {
                "fromBody",
                "fromBodyIfNeeded",
                "fromBodyOrNow",
                "noChange",
                "now",
                "nowIfNeeded",
              },
              enumDescriptions = {
                "Set modifiedDate to the value provided in the body of the request. No change if no value was provided.",
                "Set modifiedDate to the value provided in the body of the request depending on other contents of the update.",
                "Set modifiedDate to the value provided in the body of the request, or to the current time if no value was provided.",
                "Maintain the previous value of modifiedDate.",
                "Set modifiedDate to the current time.",
                "Set modifiedDate to the current time depending on contents of the update.",
              },
              location = "query",
              type = "string",
            },
            newRevision = {
              default = "true",
              description = "Whether a blob upload should create a new revision. If false, the blob data in the current head revision is replaced. If true or not set, a new blob is created as head revision, and previous unpinned revisions are preserved for a short period of time. Pinned revisions are stored indefinitely, using additional storage quota, up to a maximum of 200 revisions. For details on how revisions are retained, see the Drive Help Center. Note that this field is ignored if there is no payload in the request.",
              location = "query",
              type = "boolean",
            },
            ocr = {
              default = "false",
              description = "Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.",
              location = "query",
              type = "boolean",
            },
            ocrLanguage = {
              description = "If ocr is true, hints at the language to use. Valid values are BCP 47 codes.",
              location = "query",
              type = "string",
            },
            pinned = {
              default = "false",
              description = "Whether to pin the new revision. A file can have a maximum of 200 pinned revisions. Note that this field is ignored if there is no payload in the request.",
              location = "query",
              type = "boolean",
            },
            removeParents = {
              description = "Comma-separated list of parent IDs to remove.",
              location = "query",
              type = "string",
            },
            setModifiedDate = {
              default = "false",
              description = "Whether to set the modified date using the value supplied in the request body. Setting this field to true is equivalent to modifiedDateBehavior=fromBodyOrNow, and false is equivalent to modifiedDateBehavior=now. To prevent any changes to the modified date set modifiedDateBehavior=noChange.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            timedTextLanguage = {
              description = "The language of the timed text.",
              location = "query",
              type = "string",
            },
            timedTextTrackName = {
              description = "The timed text track name.",
              location = "query",
              type = "string",
            },
            updateViewedDate = {
              default = "true",
              description = "Whether to update the view date after successfully updating the file.",
              location = "query",
              type = "boolean",
            },
            useContentAsIndexableText = {
              default = "false",
              description = "Whether to use the content as indexable text.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}",
          request = {
            ["$ref"] = "File",
          },
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.scripts",
          },
        },
        touch = {
          description = "Set the file's updated time to the current server time.",
          httpMethod = "POST",
          id = "drive.files.touch",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file to update.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/touch",
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
          },
        },
        trash = {
          description = "Moves a file to the trash. The currently authenticated user must own the file or be at least a fileOrganizer on the parent for shared drive files. Only the owner may trash a file. The trashed item is excluded from all files.list responses returned for any user who does not own the file. However, all users with access to the file can see the trashed item metadata in an API response. All users with access can copy, download, export, and share the file.",
          httpMethod = "POST",
          id = "drive.files.trash",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file to trash.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/trash",
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        untrash = {
          description = "Restores a file from the trash. The currently authenticated user must own the file or be at least a fileOrganizer on the parent for shared drive files. Only the owner may untrash a file.",
          httpMethod = "POST",
          id = "drive.files.untrash",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file to untrash.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/untrash",
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        update = {
          description = "Updates a file's metadata and/or content. When calling this method, only populate fields in the request that you want to modify. When updating fields, some fields might be changed automatically, such as modifiedDate. This method supports patch semantics.",
          httpMethod = "PUT",
          id = "drive.files.update",
          mediaUpload = {
            accept = {
              "*/*",
            },
            maxSize = "5120GB",
            protocols = {
              resumable = {
                multipart = true,
                path = "/resumable/upload/drive/v2/files/{fileId}",
              },
              simple = {
                multipart = true,
                path = "/upload/drive/v2/files/{fileId}",
              },
            },
          },
          parameterOrder = {
            "fileId",
          },
          parameters = {
            addParents = {
              description = "Comma-separated list of parent IDs to add.",
              location = "query",
              type = "string",
            },
            convert = {
              default = "false",
              description = "This parameter is deprecated and has no function.",
              location = "query",
              type = "boolean",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Adding files to multiple folders is no longer supported. Use shortcuts instead.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file to update.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            modifiedDateBehavior = {
              description = "Determines the behavior in which modifiedDate is updated. This overrides setModifiedDate.",
              enum = {
                "fromBody",
                "fromBodyIfNeeded",
                "fromBodyOrNow",
                "noChange",
                "now",
                "nowIfNeeded",
              },
              enumDescriptions = {
                "Set modifiedDate to the value provided in the body of the request. No change if no value was provided.",
                "Set modifiedDate to the value provided in the body of the request depending on other contents of the update.",
                "Set modifiedDate to the value provided in the body of the request, or to the current time if no value was provided.",
                "Maintain the previous value of modifiedDate.",
                "Set modifiedDate to the current time.",
                "Set modifiedDate to the current time depending on contents of the update.",
              },
              location = "query",
              type = "string",
            },
            newRevision = {
              default = "true",
              description = "Whether a blob upload should create a new revision. If false, the blob data in the current head revision is replaced. If true or not set, a new blob is created as head revision, and previous unpinned revisions are preserved for a short period of time. Pinned revisions are stored indefinitely, using additional storage quota, up to a maximum of 200 revisions. For details on how revisions are retained, see the Drive Help Center. Note that this field is ignored if there is no payload in the request.",
              location = "query",
              type = "boolean",
            },
            ocr = {
              default = "false",
              description = "Whether to attempt OCR on .jpg, .png, .gif, or .pdf uploads.",
              location = "query",
              type = "boolean",
            },
            ocrLanguage = {
              description = "If ocr is true, hints at the language to use. Valid values are BCP 47 codes.",
              location = "query",
              type = "string",
            },
            pinned = {
              default = "false",
              description = "Whether to pin the new revision. A file can have a maximum of 200 pinned revisions. Note that this field is ignored if there is no payload in the request.",
              location = "query",
              type = "boolean",
            },
            removeParents = {
              description = "Comma-separated list of parent IDs to remove.",
              location = "query",
              type = "string",
            },
            setModifiedDate = {
              default = "false",
              description = "Whether to set the modified date using the value supplied in the request body. Setting this field to true is equivalent to modifiedDateBehavior=fromBodyOrNow, and false is equivalent to modifiedDateBehavior=now. To prevent any changes to the modified date set modifiedDateBehavior=noChange.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            timedTextLanguage = {
              description = "The language of the timed text.",
              location = "query",
              type = "string",
            },
            timedTextTrackName = {
              description = "The timed text track name.",
              location = "query",
              type = "string",
            },
            updateViewedDate = {
              default = "true",
              description = "Whether to update the view date after successfully updating the file.",
              location = "query",
              type = "boolean",
            },
            useContentAsIndexableText = {
              default = "false",
              description = "Whether to use the content as indexable text.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}",
          request = {
            ["$ref"] = "File",
          },
          response = {
            ["$ref"] = "File",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.scripts",
          },
          supportsMediaUpload = true,
        },
        watch = {
          description = "Subscribes to changes to a file. While you can establish a channel for changes to a file on a shared drive, a change to a shared drive file won't create a notification.",
          httpMethod = "POST",
          id = "drive.files.watch",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            acknowledgeAbuse = {
              default = "false",
              description = "Whether the user is acknowledging the risk of downloading known malware or other abusive files.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID for the file in question.",
              location = "path",
              required = true,
              type = "string",
            },
            includeLabels = {
              description = "A comma-separated list of IDs of labels to include in the labelInfo part of the response.",
              location = "query",
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            projection = {
              description = "This parameter is deprecated and has no function.",
              enum = {
                "BASIC",
                "FULL",
              },
              enumDescriptions = {
                "Deprecated",
                "Deprecated",
              },
              location = "query",
              type = "string",
            },
            revisionId = {
              description = "Specifies the Revision ID that should be downloaded. Ignored unless alt=media is specified.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            updateViewedDate = {
              default = "false",
              description = "Deprecated: Use files.update with modifiedDateBehavior=noChange, updateViewedDate=true and an empty request body.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/watch",
          request = {
            ["$ref"] = "Channel",
            parameterName = "resource",
          },
          response = {
            ["$ref"] = "Channel",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
          supportsMediaDownload = true,
          supportsSubscription = true,
          useMediaDownloadService = true,
        },
      },
    },
    parents = {
      methods = {
        delete = {
          description = "Removes a parent from a file.",
          httpMethod = "DELETE",
          id = "drive.parents.delete",
          parameterOrder = {
            "fileId",
            "parentId",
          },
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. If an item is not in a shared drive and its last parent is deleted but the item itself is not, the item will be placed under its owner's root.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            parentId = {
              description = "The ID of the parent.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/parents/{parentId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a specific parent reference.",
          httpMethod = "GET",
          id = "drive.parents.get",
          parameterOrder = {
            "fileId",
            "parentId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            parentId = {
              description = "The ID of the parent.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/parents/{parentId}",
          response = {
            ["$ref"] = "ParentReference",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        insert = {
          description = "Adds a parent folder for a file.",
          httpMethod = "POST",
          id = "drive.parents.insert",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. Adding files to multiple folders is no longer supported. Use shortcuts instead.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/parents",
          request = {
            ["$ref"] = "ParentReference",
          },
          response = {
            ["$ref"] = "ParentReference",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        list = {
          description = "Lists a file's parents.",
          httpMethod = "GET",
          id = "drive.parents.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/parents",
          response = {
            ["$ref"] = "ParentList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
      },
    },
    permissions = {
      methods = {
        delete = {
          description = "Deletes a permission from a file or shared drive.",
          httpMethod = "DELETE",
          id = "drive.permissions.delete",
          parameterOrder = {
            "fileId",
            "permissionId",
          },
          parameters = {
            fileId = {
              description = "The ID for the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            permissionId = {
              description = "The ID for the permission.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions/{permissionId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a permission by ID.",
          httpMethod = "GET",
          id = "drive.permissions.get",
          parameterOrder = {
            "fileId",
            "permissionId",
          },
          parameters = {
            fileId = {
              description = "The ID for the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            permissionId = {
              description = "The ID for the permission.",
              location = "path",
              required = true,
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions/{permissionId}",
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        getIdForEmail = {
          description = "Returns the permission ID for an email address.",
          httpMethod = "GET",
          id = "drive.permissions.getIdForEmail",
          parameterOrder = {
            "email",
          },
          parameters = {
            email = {
              description = "The email address for which to return a permission ID",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "permissionIds/{email}",
          response = {
            ["$ref"] = "PermissionId",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.apps.readonly",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        insert = {
          description = "Inserts a permission for a file or shared drive.",
          httpMethod = "POST",
          id = "drive.permissions.insert",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            emailMessage = {
              description = "A plain text custom message to include in notification emails.",
              location = "query",
              type = "string",
            },
            enforceSingleParent = {
              default = "false",
              description = "Deprecated. See moveToNewOwnersRoot for details.",
              location = "query",
              type = "boolean",
            },
            fileId = {
              description = "The ID for the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            moveToNewOwnersRoot = {
              default = "false",
              description = "This parameter will only take effect if the item is not in a shared drive and the request is attempting to transfer the ownership of the item. If set to true, the item will be moved to the new owner's My Drive root folder and all prior parents removed. If set to false, parents are not changed.",
              location = "query",
              type = "boolean",
            },
            sendNotificationEmails = {
              default = "true",
              description = "Whether to send notification emails when sharing to users or groups. This parameter is ignored and an email is sent if the role is owner.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions",
          request = {
            ["$ref"] = "Permission",
          },
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        list = {
          description = "Lists a file's or shared drive's permissions.",
          httpMethod = "GET",
          id = "drive.permissions.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID for the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            includePermissionsForView = {
              description = "Specifies which additional view's permissions to include in the response. Only 'published' is supported.",
              location = "query",
              type = "string",
            },
            maxResults = {
              description = "The maximum number of permissions to return per page. When not set for files in a shared drive, at most 100 results will be returned. When not set for files that are not in a shared drive, the entire list will be returned.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.",
              location = "query",
              type = "string",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions",
          response = {
            ["$ref"] = "PermissionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        patch = {
          description = "Updates a permission using patch semantics.",
          httpMethod = "PATCH",
          id = "drive.permissions.patch",
          parameterOrder = {
            "fileId",
            "permissionId",
          },
          parameters = {
            fileId = {
              description = "The ID for the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            permissionId = {
              description = "The ID for the permission.",
              location = "path",
              required = true,
              type = "string",
            },
            removeExpiration = {
              default = "false",
              description = "Whether to remove the expiration date.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            transferOwnership = {
              default = "false",
              description = "Whether changing a role to 'owner' downgrades the current owners to writers. Does nothing if the specified role is not 'owner'.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions/{permissionId}",
          request = {
            ["$ref"] = "Permission",
          },
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        update = {
          description = "Updates a permission.",
          httpMethod = "PUT",
          id = "drive.permissions.update",
          parameterOrder = {
            "fileId",
            "permissionId",
          },
          parameters = {
            fileId = {
              description = "The ID for the file or shared drive.",
              location = "path",
              required = true,
              type = "string",
            },
            permissionId = {
              description = "The ID for the permission.",
              location = "path",
              required = true,
              type = "string",
            },
            removeExpiration = {
              default = "false",
              description = "Whether to remove the expiration date.",
              location = "query",
              type = "boolean",
            },
            supportsAllDrives = {
              default = "false",
              description = "Whether the requesting application supports both My Drives and shared drives.",
              location = "query",
              type = "boolean",
            },
            supportsTeamDrives = {
              default = "false",
              description = "Deprecated use supportsAllDrives instead.",
              location = "query",
              type = "boolean",
            },
            transferOwnership = {
              default = "false",
              description = "Whether to transfer ownership to the specified user and downgrade the current owner to a writer. This parameter is required as an acknowledgement of the side effect. File owners can only transfer ownership of files existing on My Drive. Files existing in a shared drive are owned by the organization that owns that shared drive. Ownership transfers are not supported for files and folders in shared drives. Organizers of a shared drive can move items from that shared drive into their My Drive which transfers the ownership to them.",
              location = "query",
              type = "boolean",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if the file ID parameter refers to a shared drive and the requester is an administrator of the domain to which the shared drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "files/{fileId}/permissions/{permissionId}",
          request = {
            ["$ref"] = "Permission",
          },
          response = {
            ["$ref"] = "Permission",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    properties = {
      methods = {
        delete = {
          description = "Deletes a property.",
          httpMethod = "DELETE",
          id = "drive.properties.delete",
          parameterOrder = {
            "fileId",
            "propertyKey",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            propertyKey = {
              description = "The key of the property.",
              location = "path",
              required = true,
              type = "string",
            },
            visibility = {
              default = "private",
              description = "The visibility of the property.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/properties/{propertyKey}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
          },
        },
        get = {
          description = "Gets a property by its key.",
          httpMethod = "GET",
          id = "drive.properties.get",
          parameterOrder = {
            "fileId",
            "propertyKey",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            propertyKey = {
              description = "The key of the property.",
              location = "path",
              required = true,
              type = "string",
            },
            visibility = {
              default = "private",
              description = "The visibility of the property.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/properties/{propertyKey}",
          response = {
            ["$ref"] = "Property",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        insert = {
          description = "Adds a property to a file, or updates it if it already exists.",
          httpMethod = "POST",
          id = "drive.properties.insert",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/properties",
          request = {
            ["$ref"] = "Property",
          },
          response = {
            ["$ref"] = "Property",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
          },
        },
        list = {
          description = "Lists a file's properties.",
          httpMethod = "GET",
          id = "drive.properties.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/properties",
          response = {
            ["$ref"] = "PropertyList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        patch = {
          description = "Updates a property.",
          httpMethod = "PATCH",
          id = "drive.properties.patch",
          parameterOrder = {
            "fileId",
            "propertyKey",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            propertyKey = {
              description = "The key of the property.",
              location = "path",
              required = true,
              type = "string",
            },
            visibility = {
              default = "private",
              description = "The visibility of the property. Allowed values are PRIVATE and PUBLIC. (Default: PRIVATE)",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/properties/{propertyKey}",
          request = {
            ["$ref"] = "Property",
          },
          response = {
            ["$ref"] = "Property",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
          },
        },
        update = {
          description = "Updates a property.",
          httpMethod = "PUT",
          id = "drive.properties.update",
          parameterOrder = {
            "fileId",
            "propertyKey",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            propertyKey = {
              description = "The key of the property.",
              location = "path",
              required = true,
              type = "string",
            },
            visibility = {
              default = "private",
              description = "The visibility of the property. Allowed values are PRIVATE and PUBLIC. (Default: PRIVATE)",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/properties/{propertyKey}",
          request = {
            ["$ref"] = "Property",
          },
          response = {
            ["$ref"] = "Property",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
          },
        },
      },
    },
    replies = {
      methods = {
        delete = {
          description = "Deletes a reply.",
          httpMethod = "DELETE",
          id = "drive.replies.delete",
          parameterOrder = {
            "fileId",
            "commentId",
            "replyId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            replyId = {
              description = "The ID of the reply.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies/{replyId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a reply.",
          httpMethod = "GET",
          id = "drive.replies.get",
          parameterOrder = {
            "fileId",
            "commentId",
            "replyId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "If set, this will succeed when retrieving a deleted reply.",
              location = "query",
              type = "boolean",
            },
            replyId = {
              description = "The ID of the reply.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies/{replyId}",
          response = {
            ["$ref"] = "CommentReply",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        insert = {
          description = "Creates a new reply to the given comment.",
          httpMethod = "POST",
          id = "drive.replies.insert",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies",
          request = {
            ["$ref"] = "CommentReply",
          },
          response = {
            ["$ref"] = "CommentReply",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        list = {
          description = "Lists all of the replies to a comment.",
          httpMethod = "GET",
          id = "drive.replies.list",
          parameterOrder = {
            "fileId",
            "commentId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            includeDeleted = {
              default = "false",
              description = "If set, all replies, including deleted replies (with content stripped) will be returned.",
              location = "query",
              type = "boolean",
            },
            maxResults = {
              default = "20",
              description = "The maximum number of replies to include in the response, used for paging.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "0",
              type = "integer",
            },
            pageToken = {
              description = "The continuation token, used to page through large result sets. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies",
          response = {
            ["$ref"] = "CommentReplyList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        patch = {
          description = "Updates an existing reply.",
          httpMethod = "PATCH",
          id = "drive.replies.patch",
          parameterOrder = {
            "fileId",
            "commentId",
            "replyId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            replyId = {
              description = "The ID of the reply.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies/{replyId}",
          request = {
            ["$ref"] = "CommentReply",
          },
          response = {
            ["$ref"] = "CommentReply",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        update = {
          description = "Updates an existing reply.",
          httpMethod = "PUT",
          id = "drive.replies.update",
          parameterOrder = {
            "fileId",
            "commentId",
            "replyId",
          },
          parameters = {
            commentId = {
              description = "The ID of the comment.",
              location = "path",
              required = true,
              type = "string",
            },
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            replyId = {
              description = "The ID of the reply.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/comments/{commentId}/replies/{replyId}",
          request = {
            ["$ref"] = "CommentReply",
          },
          response = {
            ["$ref"] = "CommentReply",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    revisions = {
      methods = {
        delete = {
          description = "Permanently deletes a file version. You can only delete revisions for files with binary content, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can't be deleted.",
          httpMethod = "DELETE",
          id = "drive.revisions.delete",
          parameterOrder = {
            "fileId",
            "revisionId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            revisionId = {
              description = "The ID of the revision.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/revisions/{revisionId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        get = {
          description = "Gets a specific revision.",
          httpMethod = "GET",
          id = "drive.revisions.get",
          parameterOrder = {
            "fileId",
            "revisionId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            revisionId = {
              description = "The ID of the revision.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/revisions/{revisionId}",
          response = {
            ["$ref"] = "Revision",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        list = {
          description = "Lists a file's revisions.",
          httpMethod = "GET",
          id = "drive.revisions.list",
          parameterOrder = {
            "fileId",
          },
          parameters = {
            fileId = {
              description = "The ID of the file.",
              location = "path",
              required = true,
              type = "string",
            },
            maxResults = {
              default = "200",
              description = "Maximum number of revisions to return.",
              format = "int32",
              location = "query",
              maximum = "1000",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Page token for revisions. To get the next page of results, set this parameter to the value of \"nextPageToken\" from the previous response.",
              location = "query",
              type = "string",
            },
          },
          path = "files/{fileId}/revisions",
          response = {
            ["$ref"] = "RevisionList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.metadata",
            "https://www.googleapis.com/auth/drive.metadata.readonly",
            "https://www.googleapis.com/auth/drive.photos.readonly",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        patch = {
          description = "Updates a revision.",
          httpMethod = "PATCH",
          id = "drive.revisions.patch",
          parameterOrder = {
            "fileId",
            "revisionId",
          },
          parameters = {
            fileId = {
              description = "The ID for the file.",
              location = "path",
              required = true,
              type = "string",
            },
            revisionId = {
              description = "The ID for the revision.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/revisions/{revisionId}",
          request = {
            ["$ref"] = "Revision",
          },
          response = {
            ["$ref"] = "Revision",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
        update = {
          description = "Updates a revision.",
          httpMethod = "PUT",
          id = "drive.revisions.update",
          parameterOrder = {
            "fileId",
            "revisionId",
          },
          parameters = {
            fileId = {
              description = "The ID for the file.",
              location = "path",
              required = true,
              type = "string",
            },
            revisionId = {
              description = "The ID for the revision.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "files/{fileId}/revisions/{revisionId}",
          request = {
            ["$ref"] = "Revision",
          },
          response = {
            ["$ref"] = "Revision",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.appdata",
            "https://www.googleapis.com/auth/drive.file",
          },
        },
      },
    },
    teamdrives = {
      methods = {
        delete = {
          description = "Deprecated use drives.delete instead.",
          httpMethod = "DELETE",
          id = "drive.teamdrives.delete",
          parameterOrder = {
            "teamDriveId",
          },
          parameters = {
            teamDriveId = {
              description = "The ID of the Team Drive",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "teamdrives/{teamDriveId}",
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        get = {
          description = "Deprecated use drives.get instead.",
          httpMethod = "GET",
          id = "drive.teamdrives.get",
          parameterOrder = {
            "teamDriveId",
          },
          parameters = {
            teamDriveId = {
              description = "The ID of the Team Drive",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the Team Drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "teamdrives/{teamDriveId}",
          response = {
            ["$ref"] = "TeamDrive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        insert = {
          description = "Deprecated use drives.insert instead.",
          httpMethod = "POST",
          id = "drive.teamdrives.insert",
          parameterOrder = {
            "requestId",
          },
          parameters = {
            requestId = {
              description = "An ID, such as a random UUID, which uniquely identifies this user's request for idempotent creation of a Team Drive. A repeated request by the same user and with the same request ID will avoid creating duplicates by attempting to create the same Team Drive. If the Team Drive already exists a 409 error will be returned.",
              location = "query",
              required = true,
              type = "string",
            },
          },
          path = "teamdrives",
          request = {
            ["$ref"] = "TeamDrive",
          },
          response = {
            ["$ref"] = "TeamDrive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
        list = {
          description = "Deprecated use drives.list instead.",
          httpMethod = "GET",
          id = "drive.teamdrives.list",
          parameters = {
            maxResults = {
              default = "10",
              description = "Maximum number of Team Drives to return.",
              format = "int32",
              location = "query",
              maximum = "100",
              minimum = "1",
              type = "integer",
            },
            pageToken = {
              description = "Page token for Team Drives.",
              location = "query",
              type = "string",
            },
            q = {
              description = "Query string for searching Team Drives.",
              location = "query",
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then all Team Drives of the domain in which the requester is an administrator are returned.",
              location = "query",
              type = "boolean",
            },
          },
          path = "teamdrives",
          response = {
            ["$ref"] = "TeamDriveList",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.readonly",
          },
        },
        update = {
          description = "Deprecated use drives.update instead.",
          httpMethod = "PUT",
          id = "drive.teamdrives.update",
          parameterOrder = {
            "teamDriveId",
          },
          parameters = {
            teamDriveId = {
              description = "The ID of the Team Drive",
              location = "path",
              required = true,
              type = "string",
            },
            useDomainAdminAccess = {
              default = "false",
              description = "Issue the request as a domain administrator; if set to true, then the requester will be granted access if they are an administrator of the domain to which the Team Drive belongs.",
              location = "query",
              type = "boolean",
            },
          },
          path = "teamdrives/{teamDriveId}",
          request = {
            ["$ref"] = "TeamDrive",
          },
          response = {
            ["$ref"] = "TeamDrive",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
          },
        },
      },
    },
  },
  revision = "20230105",
  rootUrl = "https://www.googleapis.com/",
  schemas = {
    About = {
      description = "An item with user information and settings.",
      id = "About",
      properties = {
        additionalRoleInfo = {
          description = "Information about supported additional roles per file type. The most specific type takes precedence.",
          items = {
            properties = {
              roleSets = {
                description = "The supported additional roles per primary role.",
                items = {
                  properties = {
                    additionalRoles = {
                      description = "The supported additional roles with the primary role.",
                      items = {
                        type = "string",
                      },
                      type = "array",
                    },
                    primaryRole = {
                      description = "A primary permission role.",
                      type = "string",
                    },
                  },
                  type = "object",
                },
                type = "array",
              },
              type = {
                description = "The content type that this additional role info applies to.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        canCreateDrives = {
          description = "Whether the user can create shared drives.",
          type = "boolean",
        },
        canCreateTeamDrives = {
          description = "Deprecated - use canCreateDrives instead.",
          type = "boolean",
        },
        domainSharingPolicy = {
          description = "The domain sharing policy for the current user. Possible values are:  \
- allowed \
- allowedWithWarning \
- incomingOnly \
- disallowed",
          type = "string",
        },
        driveThemes = {
          description = "A list of themes that are supported for shared drives.",
          items = {
            properties = {
              backgroundImageLink = {
                description = "A link to this theme's background image.",
                type = "string",
              },
              colorRgb = {
                description = "The color of this theme as an RGB hex string.",
                type = "string",
              },
              id = {
                description = "The ID of the theme.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        etag = {
          description = "The ETag of the item.",
          type = "string",
        },
        exportFormats = {
          description = "The allowable export formats.",
          items = {
            properties = {
              source = {
                description = "The content type to convert from.",
                type = "string",
              },
              targets = {
                description = "The possible content types to convert to.",
                items = {
                  type = "string",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        features = {
          description = "List of additional features enabled on this account.",
          items = {
            properties = {
              featureName = {
                description = "The name of the feature.",
                type = "string",
              },
              featureRate = {
                description = "The request limit rate for this feature, in queries per second.",
                format = "double",
                type = "number",
              },
            },
            type = "object",
          },
          type = "array",
        },
        folderColorPalette = {
          description = "The palette of allowable folder colors as RGB hex strings.",
          items = {
            type = "string",
          },
          type = "array",
        },
        importFormats = {
          description = "The allowable import formats.",
          items = {
            properties = {
              source = {
                description = "The imported file's content type to convert from.",
                type = "string",
              },
              targets = {
                description = "The possible content types to convert to.",
                items = {
                  type = "string",
                },
                type = "array",
              },
            },
            type = "object",
          },
          type = "array",
        },
        isCurrentAppInstalled = {
          description = "A boolean indicating whether the authenticated app is installed by the authenticated user.",
          type = "boolean",
        },
        kind = {
          default = "drive#about",
          description = "This is always drive#about.",
          type = "string",
        },
        languageCode = {
          description = "The user's language or locale code, as defined by BCP 47, with some extensions from Unicode's LDML format (http://www.unicode.org/reports/tr35/).",
          type = "string",
        },
        largestChangeId = {
          description = "The largest change id.",
          format = "int64",
          type = "string",
        },
        maxUploadSizes = {
          description = "List of max upload sizes for each file type. The most specific type takes precedence.",
          items = {
            properties = {
              size = {
                description = "The max upload size for this type.",
                format = "int64",
                type = "string",
              },
              type = {
                description = "The file type.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        name = {
          description = "The name of the current user.",
          type = "string",
        },
        permissionId = {
          description = "The current user's ID as visible in the permissions collection.",
          type = "string",
        },
        quotaBytesByService = {
          description = "The amount of storage quota used by different Google services.",
          items = {
            properties = {
              bytesUsed = {
                description = "The storage quota bytes used by the service.",
                format = "int64",
                type = "string",
              },
              serviceName = {
                description = "The service's name, e.g. DRIVE, GMAIL, or PHOTOS.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        quotaBytesTotal = {
          description = "The total number of quota bytes. This is only relevant when quotaType is LIMITED.",
          format = "int64",
          type = "string",
        },
        quotaBytesUsed = {
          description = "The number of quota bytes used by Google Drive.",
          format = "int64",
          type = "string",
        },
        quotaBytesUsedAggregate = {
          description = "The number of quota bytes used by all Google apps (Drive, Picasa, etc.).",
          format = "int64",
          type = "string",
        },
        quotaBytesUsedInTrash = {
          description = "The number of quota bytes used by trashed items.",
          format = "int64",
          type = "string",
        },
        quotaType = {
          description = "The type of the user's storage quota. Possible values are:  \
- LIMITED \
- UNLIMITED",
          type = "string",
        },
        remainingChangeIds = {
          description = "The number of remaining change ids, limited to no more than 2500.",
          format = "int64",
          type = "string",
        },
        rootFolderId = {
          description = "The id of the root folder.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this item.",
          type = "string",
        },
        teamDriveThemes = {
          description = "Deprecated - use driveThemes instead.",
          items = {
            properties = {
              backgroundImageLink = {
                description = "Deprecated - use driveThemes/backgroundImageLink instead.",
                type = "string",
              },
              colorRgb = {
                description = "Deprecated - use driveThemes/colorRgb instead.",
                type = "string",
              },
              id = {
                description = "Deprecated - use driveThemes/id instead.",
                type = "string",
              },
            },
            type = "object",
          },
          type = "array",
        },
        user = {
          ["$ref"] = "User",
          description = "The authenticated user.",
        },
      },
      type = "object",
    },
    App = {
      description = "The apps resource provides a list of the apps that a user has installed, with information about each app's supported MIME types, file extensions, and other details.",
      id = "App",
      properties = {
        authorized = {
          description = "Whether the app is authorized to access data on the user's Drive.",
          type = "boolean",
        },
        createInFolderTemplate = {
          description = "The template url to create a new file with this app in a given folder. The template will contain {folderId} to be replaced by the folder to create the new file in.",
          type = "string",
        },
        createUrl = {
          description = "The url to create a new file with this app.",
          type = "string",
        },
        hasDriveWideScope = {
          description = "Whether the app has drive-wide scope. An app with drive-wide scope can access all files in the user's drive.",
          type = "boolean",
        },
        icons = {
          description = "The various icons for the app.",
          items = {
            properties = {
              category = {
                description = "Category of the icon. Allowed values are:  \
- application - icon for the application \
- document - icon for a file associated with the app \
- documentShared - icon for a shared file associated with the app",
                type = "string",
              },
              iconUrl = {
                description = "URL for the icon.",
                type = "string",
              },
              size = {
                description = "Size of the icon. Represented as the maximum of the width and height.",
                format = "int32",
                type = "integer",
              },
            },
            type = "object",
          },
          type = "array",
        },
        id = {
          description = "The ID of the app.",
          type = "string",
        },
        installed = {
          description = "Whether the app is installed.",
          type = "boolean",
        },
        kind = {
          default = "drive#app",
          description = "This is always drive#app.",
          type = "string",
        },
        longDescription = {
          description = "A long description of the app.",
          type = "string",
        },
        name = {
          description = "The name of the app.",
          type = "string",
        },
        objectType = {
          description = "The type of object this app creates (e.g. Chart). If empty, the app name should be used instead.",
          type = "string",
        },
        openUrlTemplate = {
          description = "The template url for opening files with this app. The template will contain {ids} and/or {exportIds} to be replaced by the actual file ids. See  Open Files  for the full documentation.",
          type = "string",
        },
        primaryFileExtensions = {
          description = "The list of primary file extensions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        primaryMimeTypes = {
          description = "The list of primary mime types.",
          items = {
            type = "string",
          },
          type = "array",
        },
        productId = {
          description = "The ID of the product listing for this app.",
          type = "string",
        },
        productUrl = {
          description = "A link to the product listing for this app.",
          type = "string",
        },
        secondaryFileExtensions = {
          description = "The list of secondary file extensions.",
          items = {
            type = "string",
          },
          type = "array",
        },
        secondaryMimeTypes = {
          description = "The list of secondary mime types.",
          items = {
            type = "string",
          },
          type = "array",
        },
        shortDescription = {
          description = "A short description of the app.",
          type = "string",
        },
        supportsCreate = {
          description = "Whether this app supports creating new objects.",
          type = "boolean",
        },
        supportsImport = {
          description = "Whether this app supports importing from Docs Editors.",
          type = "boolean",
        },
        supportsMultiOpen = {
          description = "Whether this app supports opening more than one file.",
          type = "boolean",
        },
        supportsOfflineCreate = {
          description = "Whether this app supports creating new files when offline.",
          type = "boolean",
        },
        useByDefault = {
          description = "Whether the app is selected as the default handler for the types it supports.",
          type = "boolean",
        },
      },
      type = "object",
    },
    AppList = {
      description = "A list of third-party applications which the user has installed or given access to Google Drive.",
      id = "AppList",
      properties = {
        defaultAppIds = {
          description = "List of app IDs that the user has specified to use by default. The list is in reverse-priority order (lowest to highest).",
          items = {
            type = "string",
          },
          type = "array",
        },
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        items = {
          description = "The list of apps.",
          items = {
            ["$ref"] = "App",
          },
          type = "array",
        },
        kind = {
          default = "drive#appList",
          description = "This is always drive#appList.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    Change = {
      description = "Representation of a change to a file or shared drive.",
      id = "Change",
      properties = {
        changeType = {
          description = "The type of the change. Possible values are file and drive.",
          type = "string",
        },
        deleted = {
          description = "Whether the file or shared drive has been removed from this list of changes, for example by deletion or loss of access.",
          type = "boolean",
        },
        drive = {
          ["$ref"] = "Drive",
          description = "The updated state of the shared drive. Present if the changeType is drive, the user is still a member of the shared drive, and the shared drive has not been deleted.",
        },
        driveId = {
          description = "The ID of the shared drive associated with this change.",
          type = "string",
        },
        file = {
          ["$ref"] = "File",
          description = "The updated state of the file. Present if the type is file and the file has not been removed from this list of changes.",
        },
        fileId = {
          description = "The ID of the file associated with this change.",
          type = "string",
        },
        id = {
          description = "The ID of the change.",
          format = "int64",
          type = "string",
        },
        kind = {
          default = "drive#change",
          description = "This is always drive#change.",
          type = "string",
        },
        modificationDate = {
          description = "The time of this modification.",
          format = "date-time",
          type = "string",
        },
        selfLink = {
          description = "A link back to this change.",
          type = "string",
        },
        teamDrive = {
          ["$ref"] = "TeamDrive",
          description = "Deprecated - use drive instead.",
        },
        teamDriveId = {
          description = "Deprecated - use driveId instead.",
          type = "string",
        },
        type = {
          description = "Deprecated - use changeType instead.",
          type = "string",
        },
      },
      type = "object",
    },
    ChangeList = {
      description = "A list of changes for a user.",
      id = "ChangeList",
      properties = {
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        items = {
          description = "The list of changes. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Change",
          },
          type = "array",
        },
        kind = {
          default = "drive#changeList",
          description = "This is always drive#changeList.",
          type = "string",
        },
        largestChangeId = {
          description = "The current largest change ID.",
          format = "int64",
          type = "string",
        },
        newStartPageToken = {
          description = "The starting page token for future changes. This will be present only if the end of the current changes list has been reached.",
          type = "string",
        },
        nextLink = {
          description = "A link to the next page of changes.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of changes. This will be absent if the end of the changes list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    Channel = {
      description = "An notification channel used to watch for resource changes.",
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
          description = "Identifies this as a notification channel used to watch for changes to a resource, which is \"api#channel\".",
          type = "string",
        },
        params = {
          additionalProperties = {
            description = "Declares a new parameter by name.",
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
          description = "The type of delivery mechanism used for this channel. Valid values are \"web_hook\" (or \"webhook\"). Both values refer to a channel where Http requests are used to deliver messages.",
          type = "string",
        },
      },
      type = "object",
    },
    ChildList = {
      description = "A list of children of a file.",
      id = "ChildList",
      properties = {
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        items = {
          description = "The list of children. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "ChildReference",
          },
          type = "array",
        },
        kind = {
          default = "drive#childList",
          description = "This is always drive#childList.",
          type = "string",
        },
        nextLink = {
          description = "A link to the next page of children.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of children. This will be absent if the end of the children list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    ChildReference = {
      description = "A reference to a folder's child.",
      id = "ChildReference",
      properties = {
        childLink = {
          description = "A link to the child.",
          type = "string",
        },
        id = {
          annotations = {
            required = {
              "drive.children.insert",
            },
          },
          description = "The ID of the child.",
          type = "string",
        },
        kind = {
          default = "drive#childReference",
          description = "This is always drive#childReference.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this reference.",
          type = "string",
        },
      },
      type = "object",
    },
    Comment = {
      description = "A comment on a file in Google Drive.",
      id = "Comment",
      properties = {
        anchor = {
          description = "A region of the document represented as a JSON string. For details on defining anchor properties, refer to  Add comments and replies.",
          type = "string",
        },
        author = {
          ["$ref"] = "User",
          description = "The author of the comment. The author's email address and permission ID will not be populated.",
        },
        commentId = {
          description = "The ID of the comment.",
          type = "string",
        },
        content = {
          annotations = {
            required = {
              "drive.comments.insert",
              "drive.comments.patch",
              "drive.comments.update",
            },
          },
          description = "The plain text content used to create this comment. This is not HTML safe and should only be used as a starting point to make edits to a comment's content.",
          type = "string",
        },
        context = {
          description = "The context of the file which is being commented on.",
          properties = {
            type = {
              description = "The MIME type of the context snippet.",
              type = "string",
            },
            value = {
              description = "Data representation of the segment of the file being commented on. In the case of a text file for example, this would be the actual text that the comment is about.",
              type = "string",
            },
          },
          type = "object",
        },
        createdDate = {
          description = "The date when this comment was first created.",
          format = "date-time",
          type = "string",
        },
        deleted = {
          description = "Whether this comment has been deleted. If a comment has been deleted the content will be cleared and this will only represent a comment that once existed.",
          type = "boolean",
        },
        fileId = {
          description = "The file which this comment is addressing.",
          type = "string",
        },
        fileTitle = {
          description = "The title of the file which this comment is addressing.",
          type = "string",
        },
        htmlContent = {
          description = "HTML formatted content for this comment.",
          type = "string",
        },
        kind = {
          default = "drive#comment",
          description = "This is always drive#comment.",
          type = "string",
        },
        modifiedDate = {
          description = "The date when this comment or any of its replies were last modified.",
          format = "date-time",
          type = "string",
        },
        replies = {
          description = "Replies to this post.",
          items = {
            ["$ref"] = "CommentReply",
          },
          type = "array",
        },
        selfLink = {
          description = "A link back to this comment.",
          type = "string",
        },
        status = {
          description = "The status of this comment. Status can be changed by posting a reply to a comment with the desired status.  \
- \"open\" - The comment is still open. \
- \"resolved\" - The comment has been resolved by one of its replies.",
          type = "string",
        },
      },
      type = "object",
    },
    CommentList = {
      description = "A list of comments on a file in Google Drive.",
      id = "CommentList",
      properties = {
        items = {
          description = "The list of comments. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Comment",
          },
          type = "array",
        },
        kind = {
          default = "drive#commentList",
          description = "This is always drive#commentList.",
          type = "string",
        },
        nextLink = {
          description = "A link to the next page of comments.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of comments. This will be absent if the end of the comments list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    CommentReply = {
      description = "A comment on a file in Google Drive.",
      id = "CommentReply",
      properties = {
        author = {
          ["$ref"] = "User",
          description = "The author of the reply. The author's email address and permission ID will not be populated.",
        },
        content = {
          annotations = {
            required = {
              "drive.replies.patch",
              "drive.replies.update",
            },
          },
          description = "The plain text content used to create this reply. This is not HTML safe and should only be used as a starting point to make edits to a reply's content. This field is required on inserts if no verb is specified (resolve/reopen).",
          type = "string",
        },
        createdDate = {
          description = "The date when this reply was first created.",
          format = "date-time",
          type = "string",
        },
        deleted = {
          description = "Whether this reply has been deleted. If a reply has been deleted the content will be cleared and this will only represent a reply that once existed.",
          type = "boolean",
        },
        htmlContent = {
          description = "HTML formatted content for this reply.",
          type = "string",
        },
        kind = {
          default = "drive#commentReply",
          description = "This is always drive#commentReply.",
          type = "string",
        },
        modifiedDate = {
          description = "The date when this reply was last modified.",
          format = "date-time",
          type = "string",
        },
        replyId = {
          description = "The ID of the reply.",
          type = "string",
        },
        verb = {
          description = "The action this reply performed to the parent comment. When creating a new reply this is the action to be perform to the parent comment. Possible values are:  \
- \"resolve\" - To resolve a comment. \
- \"reopen\" - To reopen (un-resolve) a comment.",
          type = "string",
        },
      },
      type = "object",
    },
    CommentReplyList = {
      description = "A list of replies to a comment on a file in Google Drive.",
      id = "CommentReplyList",
      properties = {
        items = {
          description = "The list of replies. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "CommentReply",
          },
          type = "array",
        },
        kind = {
          default = "drive#commentReplyList",
          description = "This is always drive#commentReplyList.",
          type = "string",
        },
        nextLink = {
          description = "A link to the next page of replies.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of replies. This will be absent if the end of the replies list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    ContentRestriction = {
      description = "A restriction for accessing the content of the file.",
      id = "ContentRestriction",
      properties = {
        readOnly = {
          description = "Whether the content of the file is read-only. If a file is read-only, a new revision of the file may not be added, comments may not be added or modified, and the title of the file may not be modified.",
          type = "boolean",
        },
        reason = {
          description = "Reason for why the content of the file is restricted. This is only mutable on requests that also set readOnly=true.",
          type = "string",
        },
        restrictingUser = {
          ["$ref"] = "User",
          description = "The user who set the content restriction. Only populated if readOnly is true.",
        },
        restrictionDate = {
          description = "The time at which the content restriction was set (formatted RFC 3339 timestamp). Only populated if readOnly is true.",
          format = "date-time",
          type = "string",
        },
        type = {
          description = "The type of the content restriction. Currently the only possible value is globalContentRestriction.",
          type = "string",
        },
      },
      type = "object",
    },
    Drive = {
      description = "Representation of a shared drive.",
      id = "Drive",
      properties = {
        backgroundImageFile = {
          description = "An image file and cropping parameters from which a background image for this shared drive is set. This is a write only field; it can only be set on drive.drives.update requests that don't set themeId. When specified, all fields of the backgroundImageFile must be set.",
          properties = {
            id = {
              description = "The ID of an image file in Google Drive to use for the background image.",
              type = "string",
            },
            width = {
              description = "The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.",
              format = "float",
              type = "number",
            },
            xCoordinate = {
              description = "The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.",
              format = "float",
              type = "number",
            },
            yCoordinate = {
              description = "The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.",
              format = "float",
              type = "number",
            },
          },
          type = "object",
        },
        backgroundImageLink = {
          description = "A short-lived link to this shared drive's background image.",
          type = "string",
        },
        capabilities = {
          description = "Capabilities the current user has on this shared drive.",
          properties = {
            canAddChildren = {
              description = "Whether the current user can add children to folders in this shared drive.",
              type = "boolean",
            },
            canChangeCopyRequiresWriterPermissionRestriction = {
              description = "Whether the current user can change the copyRequiresWriterPermission restriction of this shared drive.",
              type = "boolean",
            },
            canChangeDomainUsersOnlyRestriction = {
              description = "Whether the current user can change the domainUsersOnly restriction of this shared drive.",
              type = "boolean",
            },
            canChangeDriveBackground = {
              description = "Whether the current user can change the background of this shared drive.",
              type = "boolean",
            },
            canChangeDriveMembersOnlyRestriction = {
              description = "Whether the current user can change the driveMembersOnly restriction of this shared drive.",
              type = "boolean",
            },
            canComment = {
              description = "Whether the current user can comment on files in this shared drive.",
              type = "boolean",
            },
            canCopy = {
              description = "Whether the current user can copy files in this shared drive.",
              type = "boolean",
            },
            canDeleteChildren = {
              description = "Whether the current user can delete children from folders in this shared drive.",
              type = "boolean",
            },
            canDeleteDrive = {
              description = "Whether the current user can delete this shared drive. Attempting to delete the shared drive may still fail if there are untrashed items inside the shared drive.",
              type = "boolean",
            },
            canDownload = {
              description = "Whether the current user can download files in this shared drive.",
              type = "boolean",
            },
            canEdit = {
              description = "Whether the current user can edit files in this shared drive",
              type = "boolean",
            },
            canListChildren = {
              description = "Whether the current user can list the children of folders in this shared drive.",
              type = "boolean",
            },
            canManageMembers = {
              description = "Whether the current user can add members to this shared drive or remove them or change their role.",
              type = "boolean",
            },
            canReadRevisions = {
              description = "Whether the current user can read the revisions resource of files in this shared drive.",
              type = "boolean",
            },
            canRename = {
              description = "Whether the current user can rename files or folders in this shared drive.",
              type = "boolean",
            },
            canRenameDrive = {
              description = "Whether the current user can rename this shared drive.",
              type = "boolean",
            },
            canResetDriveRestrictions = {
              description = "Whether the current user can reset the shared drive restrictions to defaults.",
              type = "boolean",
            },
            canShare = {
              description = "Whether the current user can share files or folders in this shared drive.",
              type = "boolean",
            },
            canTrashChildren = {
              description = "Whether the current user can trash children from folders in this shared drive.",
              type = "boolean",
            },
          },
          type = "object",
        },
        colorRgb = {
          description = "The color of this shared drive as an RGB hex string. It can only be set on a drive.drives.update request that does not set themeId.",
          type = "string",
        },
        createdDate = {
          description = "The time at which the shared drive was created (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        hidden = {
          description = "Whether the shared drive is hidden from default view.",
          type = "boolean",
        },
        id = {
          description = "The ID of this shared drive which is also the ID of the top level folder of this shared drive.",
          type = "string",
        },
        kind = {
          default = "drive#drive",
          description = "This is always drive#drive",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "drive.drives.insert",
            },
          },
          description = "The name of this shared drive.",
          type = "string",
        },
        orgUnitId = {
          description = "The organizational unit of this shared drive. This field is only populated on drives.list responses when the useDomainAdminAccess parameter is set to true.",
          type = "string",
        },
        restrictions = {
          description = "A set of restrictions that apply to this shared drive or items inside this shared drive.",
          properties = {
            adminManagedRestrictions = {
              description = "Whether administrative privileges on this shared drive are required to modify restrictions.",
              type = "boolean",
            },
            copyRequiresWriterPermission = {
              description = "Whether the options to copy, print, or download files inside this shared drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this shared drive.",
              type = "boolean",
            },
            domainUsersOnly = {
              description = "Whether access to this shared drive and items inside this shared drive is restricted to users of the domain to which this shared drive belongs. This restriction may be overridden by other sharing policies controlled outside of this shared drive.",
              type = "boolean",
            },
            driveMembersOnly = {
              description = "Whether access to items inside this shared drive is restricted to its members.",
              type = "boolean",
            },
          },
          type = "object",
        },
        themeId = {
          description = "The ID of the theme from which the background image and color will be set. The set of possible driveThemes can be retrieved from a drive.about.get response. When not specified on a drive.drives.insert request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don't set colorRgb or backgroundImageFile.",
          type = "string",
        },
      },
      type = "object",
    },
    DriveList = {
      description = "A list of shared drives.",
      id = "DriveList",
      properties = {
        items = {
          description = "The list of shared drives. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Drive",
          },
          type = "array",
        },
        kind = {
          default = "drive#driveList",
          description = "This is always drive#driveList",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of shared drives. This will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    File = {
      description = "The metadata for a file.",
      id = "File",
      properties = {
        alternateLink = {
          description = "A link for opening the file in a relevant Google editor or viewer.",
          type = "string",
        },
        appDataContents = {
          description = "Whether this file is in the Application Data folder.",
          type = "boolean",
        },
        canComment = {
          description = "Deprecated: use capabilities/canComment.",
          type = "boolean",
        },
        canReadRevisions = {
          description = "Deprecated: use capabilities/canReadRevisions.",
          type = "boolean",
        },
        capabilities = {
          description = "Capabilities the current user has on this file. Each capability corresponds to a fine-grained action that a user may take.",
          properties = {
            canAcceptOwnership = {
              description = "Whether the current user is the pending owner of the file. Not populated for shared drive files.",
              type = "boolean",
            },
            canAddChildren = {
              description = "Whether the current user can add children to this folder. This is always false when the item is not a folder.",
              type = "boolean",
            },
            canAddFolderFromAnotherDrive = {
              description = "Whether the current user can add a folder from another drive (different shared drive or My Drive) to this folder. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canAddMyDriveParent = {
              description = "Whether the current user can add a parent for the item without removing an existing parent in the same request. Not populated for shared drive files.",
              type = "boolean",
            },
            canChangeCopyRequiresWriterPermission = {
              description = "Whether the current user can change the copyRequiresWriterPermission restriction of this file.",
              type = "boolean",
            },
            canChangeRestrictedDownload = {
              description = "Deprecated",
              type = "boolean",
            },
            canChangeSecurityUpdateEnabled = {
              description = "Whether the current user can change the securityUpdateEnabled field on link share metadata.",
              type = "boolean",
            },
            canComment = {
              description = "Whether the current user can comment on this file.",
              type = "boolean",
            },
            canCopy = {
              description = "Whether the current user can copy this file. For an item in a shared drive, whether the current user can copy non-folder descendants of this item, or this item itself if it is not a folder.",
              type = "boolean",
            },
            canDelete = {
              description = "Whether the current user can delete this file.",
              type = "boolean",
            },
            canDeleteChildren = {
              description = "Whether the current user can delete children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canDownload = {
              description = "Whether the current user can download this file.",
              type = "boolean",
            },
            canEdit = {
              description = "Whether the current user can edit this file. Other factors may limit the type of changes a user can make to a file. For example, see canChangeCopyRequiresWriterPermission or canModifyContent.",
              type = "boolean",
            },
            canListChildren = {
              description = "Whether the current user can list the children of this folder. This is always false when the item is not a folder.",
              type = "boolean",
            },
            canModifyContent = {
              description = "Whether the current user can modify the content of this file.",
              type = "boolean",
            },
            canModifyContentRestriction = {
              description = "Whether the current user can modify restrictions on content of this file.",
              type = "boolean",
            },
            canModifyLabels = {
              description = "Whether the current user can modify the labels on this file.",
              type = "boolean",
            },
            canMoveChildrenOutOfDrive = {
              description = "Whether the current user can move children of this folder outside of the shared drive. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canMoveChildrenOutOfTeamDrive = {
              description = "Deprecated - use canMoveChildrenOutOfDrive instead.",
              type = "boolean",
            },
            canMoveChildrenWithinDrive = {
              description = "Whether the current user can move children of this folder within this drive. This is false when the item is not a folder. Note that a request to move the child may still fail depending on the current user's access to the child and to the destination folder.",
              type = "boolean",
            },
            canMoveChildrenWithinTeamDrive = {
              description = "Deprecated - use canMoveChildrenWithinDrive instead.",
              type = "boolean",
            },
            canMoveItemIntoTeamDrive = {
              description = "Deprecated - use canMoveItemOutOfDrive instead.",
              type = "boolean",
            },
            canMoveItemOutOfDrive = {
              description = "Whether the current user can move this item outside of this drive by changing its parent. Note that a request to change the parent of the item may still fail depending on the new parent that is being added.",
              type = "boolean",
            },
            canMoveItemOutOfTeamDrive = {
              description = "Deprecated - use canMoveItemOutOfDrive instead.",
              type = "boolean",
            },
            canMoveItemWithinDrive = {
              description = "Whether the current user can move this item within this drive. Note that a request to change the parent of the item may still fail depending on the new parent that is being added and the parent that is being removed.",
              type = "boolean",
            },
            canMoveItemWithinTeamDrive = {
              description = "Deprecated - use canMoveItemWithinDrive instead.",
              type = "boolean",
            },
            canMoveTeamDriveItem = {
              description = "Deprecated - use canMoveItemWithinDrive or canMoveItemOutOfDrive instead.",
              type = "boolean",
            },
            canReadDrive = {
              description = "Whether the current user can read the shared drive to which this file belongs. Only populated for items in shared drives.",
              type = "boolean",
            },
            canReadLabels = {
              description = "Whether the current user can read the labels on this file.",
              type = "boolean",
            },
            canReadRevisions = {
              description = "Whether the current user can read the revisions resource of this file. For a shared drive item, whether revisions of non-folder descendants of this item, or this item itself if it isn't a folder, can be read.",
              type = "boolean",
            },
            canReadTeamDrive = {
              description = "Deprecated - use canReadDrive instead.",
              type = "boolean",
            },
            canRemoveChildren = {
              description = "Whether the current user can remove children from this folder. This is always false when the item is not a folder. For a folder in a shared drive, use canDeleteChildren or canTrashChildren instead.",
              type = "boolean",
            },
            canRemoveMyDriveParent = {
              description = "Whether the current user can remove a parent from the item without adding another parent in the same request. Not populated for shared drive files.",
              type = "boolean",
            },
            canRename = {
              description = "Whether the current user can rename this file.",
              type = "boolean",
            },
            canShare = {
              description = "Whether the current user can modify the sharing settings for this file.",
              type = "boolean",
            },
            canTrash = {
              description = "Whether the current user can move this file to trash.",
              type = "boolean",
            },
            canTrashChildren = {
              description = "Whether the current user can trash children of this folder. This is false when the item is not a folder. Only populated for items in shared drives.",
              type = "boolean",
            },
            canUntrash = {
              description = "Whether the current user can restore this file from trash.",
              type = "boolean",
            },
          },
          type = "object",
        },
        contentRestrictions = {
          description = "Restrictions for accessing the content of the file. Only populated if such a restriction exists.",
          items = {
            ["$ref"] = "ContentRestriction",
          },
          type = "array",
        },
        copyRequiresWriterPermission = {
          description = "Whether the options to copy, print, or download this file, should be disabled for readers and commenters.",
          type = "boolean",
        },
        copyable = {
          description = "Deprecated: use capabilities/canCopy.",
          type = "boolean",
        },
        createdDate = {
          description = "Create time for this file (formatted RFC 3339 timestamp).",
          format = "date-time",
          type = "string",
        },
        defaultOpenWithLink = {
          description = "A link to open this file with the user's default app for this file. Only populated when the drive.apps.readonly scope is used.",
          type = "string",
        },
        description = {
          description = "A short description of the file.",
          type = "string",
        },
        downloadUrl = {
          description = "Short lived download URL for the file. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        driveId = {
          description = "ID of the shared drive the file resides in. Only populated for items in shared drives.",
          type = "string",
        },
        editable = {
          description = "Deprecated: use capabilities/canEdit.",
          type = "boolean",
        },
        embedLink = {
          description = "A link for embedding the file.",
          type = "string",
        },
        etag = {
          description = "ETag of the file.",
          type = "string",
        },
        explicitlyTrashed = {
          description = "Whether this file has been explicitly trashed, as opposed to recursively trashed.",
          type = "boolean",
        },
        exportLinks = {
          additionalProperties = {
            description = "A mapping from export format to URL",
            type = "string",
          },
          description = "Links for exporting Docs Editors files to specific formats.",
          readOnly = true,
          type = "object",
        },
        fileExtension = {
          description = "The final component of fullFileExtension with trailing text that does not appear to be part of the extension removed. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        fileSize = {
          description = "The size of the file in bytes. This field is populated for files with content stored in Google Drive and for files in Docs Editors; it isn't populated for shortcut files.",
          format = "int64",
          type = "string",
        },
        folderColorRgb = {
          description = "Folder color as an RGB hex string if the file is a folder or a shortcut to a folder. The list of supported colors is available in the folderColorPalette field of the About resource. If an unsupported color is specified, it will be changed to the closest color in the palette.",
          type = "string",
        },
        fullFileExtension = {
          description = "The full file extension; extracted from the title. May contain multiple concatenated extensions, such as \"tar.gz\". Removing an extension from the title does not clear this field; however, changing the extension on the title does update this field. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        hasAugmentedPermissions = {
          description = "Whether there are permissions directly on this file. This field is only populated for items in shared drives.",
          type = "boolean",
        },
        hasThumbnail = {
          description = "Whether this file has a thumbnail. This does not indicate whether the requesting app has access to the thumbnail. To check access, look for the presence of the thumbnailLink field.",
          type = "boolean",
        },
        headRevisionId = {
          description = "The ID of the file's head revision. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        iconLink = {
          description = "A link to the file's icon.",
          type = "string",
        },
        id = {
          description = "The ID of the file.",
          type = "string",
        },
        imageMediaMetadata = {
          description = "Metadata about image media. This will only be present for image types, and its contents will depend on what can be parsed from the image content.",
          properties = {
            aperture = {
              description = "The aperture used to create the photo (f-number).",
              format = "float",
              type = "number",
            },
            cameraMake = {
              description = "The make of the camera used to create the photo.",
              type = "string",
            },
            cameraModel = {
              description = "The model of the camera used to create the photo.",
              type = "string",
            },
            colorSpace = {
              description = "The color space of the photo.",
              type = "string",
            },
            date = {
              description = "The date and time the photo was taken (EXIF format timestamp).",
              type = "string",
            },
            exposureBias = {
              description = "The exposure bias of the photo (APEX value).",
              format = "float",
              type = "number",
            },
            exposureMode = {
              description = "The exposure mode used to create the photo.",
              type = "string",
            },
            exposureTime = {
              description = "The length of the exposure, in seconds.",
              format = "float",
              type = "number",
            },
            flashUsed = {
              description = "Whether a flash was used to create the photo.",
              type = "boolean",
            },
            focalLength = {
              description = "The focal length used to create the photo, in millimeters.",
              format = "float",
              type = "number",
            },
            height = {
              description = "The height of the image in pixels.",
              format = "int32",
              type = "integer",
            },
            isoSpeed = {
              description = "The ISO speed used to create the photo.",
              format = "int32",
              type = "integer",
            },
            lens = {
              description = "The lens used to create the photo.",
              type = "string",
            },
            location = {
              description = "Geographic location information stored in the image.",
              properties = {
                altitude = {
                  description = "The altitude stored in the image.",
                  format = "double",
                  type = "number",
                },
                latitude = {
                  description = "The latitude stored in the image.",
                  format = "double",
                  type = "number",
                },
                longitude = {
                  description = "The longitude stored in the image.",
                  format = "double",
                  type = "number",
                },
              },
              type = "object",
            },
            maxApertureValue = {
              description = "The smallest f-number of the lens at the focal length used to create the photo (APEX value).",
              format = "float",
              type = "number",
            },
            meteringMode = {
              description = "The metering mode used to create the photo.",
              type = "string",
            },
            rotation = {
              description = "The number of clockwise 90 degree rotations applied from the image's original orientation.",
              format = "int32",
              type = "integer",
            },
            sensor = {
              description = "The type of sensor used to create the photo.",
              type = "string",
            },
            subjectDistance = {
              description = "The distance to the subject of the photo, in meters.",
              format = "int32",
              type = "integer",
            },
            whiteBalance = {
              description = "The white balance mode used to create the photo.",
              type = "string",
            },
            width = {
              description = "The width of the image in pixels.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        indexableText = {
          description = "Indexable text attributes for the file (can only be written). For more information, see Manage file metadata.",
          properties = {
            text = {
              description = "The text to be indexed for this file.",
              type = "string",
            },
          },
          type = "object",
        },
        isAppAuthorized = {
          description = "Whether the file was created or opened by the requesting app.",
          type = "boolean",
        },
        kind = {
          default = "drive#file",
          description = "The type of file. This is always drive#file.",
          type = "string",
        },
        labelInfo = {
          description = "An overview of the labels on the file.",
          properties = {
            labels = {
              description = "The set of labels on the file as requested by the label IDs in the includeLabels parameter. By default, no labels are returned.",
              items = {
                ["$ref"] = "Label",
              },
              type = "array",
            },
          },
          type = "object",
        },
        labels = {
          description = "A group of labels for the file.",
          properties = {
            hidden = {
              description = "Deprecated.",
              type = "boolean",
            },
            modified = {
              description = "Whether the file has been modified by this user.",
              type = "boolean",
            },
            restricted = {
              description = "Deprecated - use copyRequiresWriterPermission instead.",
              type = "boolean",
            },
            starred = {
              description = "Whether this file is starred by the user.",
              type = "boolean",
            },
            trashed = {
              description = "Whether the file has been trashed, either explicitly or from a trashed parent folder. Only the owner may trash a file. The trashed item is excluded from all files.list responses returned for any user who does not own the file. However, all users with access to the file can see the trashed item metadata in an API response. All users with access can copy, download, export, and share the file.",
              type = "boolean",
            },
            viewed = {
              description = "Whether this file has been viewed by this user.",
              type = "boolean",
            },
          },
          type = "object",
        },
        lastModifyingUser = {
          ["$ref"] = "User",
          description = "The last user to modify this file.",
        },
        lastModifyingUserName = {
          description = "Name of the last user to modify this file.",
          type = "string",
        },
        lastViewedByMeDate = {
          description = "Last time this file was viewed by the user (formatted RFC 3339 timestamp).",
          format = "date-time",
          type = "string",
        },
        linkShareMetadata = {
          description = "Contains details about the link URLs that clients are using to refer to this item.",
          properties = {
            securityUpdateEligible = {
              description = "Whether the file is eligible for security update.",
              type = "boolean",
            },
            securityUpdateEnabled = {
              description = "Whether the security update is enabled for this file.",
              type = "boolean",
            },
          },
          type = "object",
        },
        markedViewedByMeDate = {
          description = "Deprecated.",
          format = "date-time",
          type = "string",
        },
        md5Checksum = {
          description = "An MD5 checksum for the content of this file. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        mimeType = {
          description = "The MIME type of the file. This is only mutable on update when uploading new content. This field can be left blank, and the mimetype will be determined from the uploaded content's MIME type.",
          type = "string",
        },
        modifiedByMeDate = {
          description = "Last time this file was modified by the user (formatted RFC 3339 timestamp). Note that setting modifiedDate will also update the modifiedByMe date for the user which set the date.",
          format = "date-time",
          type = "string",
        },
        modifiedDate = {
          description = "Last time this file was modified by anyone (formatted RFC 3339 timestamp). This is only mutable on update when the setModifiedDate parameter is set.",
          format = "date-time",
          type = "string",
        },
        openWithLinks = {
          additionalProperties = {
            type = "string",
          },
          description = "A map of the id of each of the user's apps to a link to open this file with that app. Only populated when the drive.apps.readonly scope is used.",
          type = "object",
        },
        originalFilename = {
          description = "The original filename of the uploaded content if available, or else the original value of the title field. This is only available for files with binary content in Google Drive.",
          type = "string",
        },
        ownedByMe = {
          description = "Whether the file is owned by the current user. Not populated for items in shared drives.",
          type = "boolean",
        },
        ownerNames = {
          description = "Name(s) of the owner(s) of this file. Not populated for items in shared drives.",
          items = {
            type = "string",
          },
          type = "array",
        },
        owners = {
          description = "The owner of this file. Only certain legacy files may have more than one owner. This field isn't populated for items in shared drives.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
        parents = {
          description = "Collection of parent folders which contain this file.\
If not specified as part of an insert request, the file will be placed directly in the user's My Drive folder. If not specified as part of a copy request, the file will inherit any discoverable parents of the source file. Update requests can also use the addParents and removeParents parameters to modify the parents list.",
          items = {
            ["$ref"] = "ParentReference",
          },
          type = "array",
        },
        permissionIds = {
          description = "List of permission IDs for users with access to this file.",
          items = {
            type = "string",
          },
          type = "array",
        },
        permissions = {
          description = "The list of permissions for users with access to this file. Not populated for items in shared drives.",
          items = {
            ["$ref"] = "Permission",
          },
          type = "array",
        },
        properties = {
          description = "The list of properties.",
          items = {
            ["$ref"] = "Property",
          },
          type = "array",
        },
        quotaBytesUsed = {
          description = "The number of quota bytes used by this file.",
          format = "int64",
          type = "string",
        },
        resourceKey = {
          description = "A key needed to access the item via a shared link.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this file.",
          type = "string",
        },
        sha1Checksum = {
          description = "The SHA1 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        sha256Checksum = {
          description = "The SHA256 checksum associated with this file, if available. This field is only populated for files with content stored in Google Drive; it isn't populated for Docs Editors or shortcut files.",
          type = "string",
        },
        shareable = {
          description = "Deprecated: use capabilities/canShare.",
          type = "boolean",
        },
        shared = {
          description = "Whether the file has been shared. Not populated for items in shared drives.",
          type = "boolean",
        },
        sharedWithMeDate = {
          description = "Time at which this file was shared with the user (formatted RFC 3339 timestamp).",
          format = "date-time",
          type = "string",
        },
        sharingUser = {
          ["$ref"] = "User",
          description = "User that shared the item with the current user, if available.",
        },
        shortcutDetails = {
          description = "Shortcut file details. Only populated for shortcut files, which have the mimeType field set to application/vnd.google-apps.shortcut.",
          properties = {
            targetId = {
              description = "The ID of the file that this shortcut points to.",
              type = "string",
            },
            targetMimeType = {
              description = "The MIME type of the file that this shortcut points to. The value of this field is a snapshot of the target's MIME type, captured when the shortcut is created.",
              type = "string",
            },
            targetResourceKey = {
              description = "The ResourceKey for the target file.",
              type = "string",
            },
          },
          type = "object",
        },
        spaces = {
          description = "The list of spaces which contain the file. Supported values are 'drive', 'appDataFolder' and 'photos'.",
          items = {
            type = "string",
          },
          type = "array",
        },
        teamDriveId = {
          description = "Deprecated - use driveId instead.",
          type = "string",
        },
        thumbnail = {
          description = "A thumbnail for the file. This will only be used if a standard thumbnail cannot be generated.",
          properties = {
            image = {
              description = "The URL-safe Base64 encoded bytes of the thumbnail image. It should conform to RFC 4648 section 5.",
              format = "byte",
              type = "string",
            },
            mimeType = {
              description = "The MIME type of the thumbnail.",
              type = "string",
            },
          },
          type = "object",
        },
        thumbnailLink = {
          description = "A short-lived link to the file's thumbnail. Typically lasts on the order of hours. Only populated when the requesting app can access the file's content. If the file isn't shared publicly, the URL returned in Files.thumbnailLink must be fetched using a credentialed request.",
          type = "string",
        },
        thumbnailVersion = {
          description = "The thumbnail version for use in thumbnail cache invalidation.",
          format = "int64",
          type = "string",
        },
        title = {
          description = "The title of this file. Note that for immutable items such as the top level folders of shared drives, My Drive root folder, and Application Data folder the title is constant.",
          type = "string",
        },
        trashedDate = {
          description = "The time that the item was trashed (formatted RFC 3339 timestamp). Only populated for items in shared drives.",
          format = "date-time",
          type = "string",
        },
        trashingUser = {
          ["$ref"] = "User",
          description = "If the file has been explicitly trashed, the user who trashed it. Only populated for items in shared drives.",
        },
        userPermission = {
          ["$ref"] = "Permission",
          description = "The permissions for the authenticated user on this file.",
        },
        version = {
          description = "A monotonically increasing version number for the file. This reflects every change made to the file on the server, even those not visible to the requesting user.",
          format = "int64",
          type = "string",
        },
        videoMediaMetadata = {
          description = "Metadata about video media. This will only be present for video types.",
          properties = {
            durationMillis = {
              description = "The duration of the video in milliseconds.",
              format = "int64",
              type = "string",
            },
            height = {
              description = "The height of the video in pixels.",
              format = "int32",
              type = "integer",
            },
            width = {
              description = "The width of the video in pixels.",
              format = "int32",
              type = "integer",
            },
          },
          type = "object",
        },
        webContentLink = {
          description = "A link for downloading the content of the file in a browser using cookie based authentication. In cases where the content is shared publicly, the content can be downloaded without any credentials.",
          type = "string",
        },
        webViewLink = {
          description = "A link only available on public folders for viewing their static web assets (HTML, CSS, JS, etc) via Google Drive's Website Hosting.",
          type = "string",
        },
        writersCanShare = {
          description = "Whether writers can share the document with other users. Not populated for items in shared drives.",
          type = "boolean",
        },
      },
      type = "object",
    },
    FileList = {
      description = "A list of files.",
      id = "FileList",
      properties = {
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        incompleteSearch = {
          description = "Whether the search process was incomplete. If true, then some search results may be missing, since all documents were not searched. This may occur when searching multiple drives with the \"allDrives\" corpora, but all corpora could not be searched. When this happens, it is suggested that clients narrow their query by choosing a different corpus such as \"default\" or \"drive\".",
          type = "boolean",
        },
        items = {
          description = "The list of files. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "File",
          },
          type = "array",
        },
        kind = {
          default = "drive#fileList",
          description = "This is always drive#fileList.",
          type = "string",
        },
        nextLink = {
          description = "A link to the next page of files.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of files. This will be absent if the end of the files list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    GeneratedIds = {
      description = "A list of generated IDs which can be provided in insert requests",
      id = "GeneratedIds",
      properties = {
        ids = {
          description = "The IDs generated for the requesting user in the specified space.",
          items = {
            type = "string",
          },
          type = "array",
        },
        kind = {
          default = "drive#generatedIds",
          description = "This is always drive#generatedIds",
          type = "string",
        },
        space = {
          description = "The type of file that can be created with these IDs.",
          type = "string",
        },
      },
      type = "object",
    },
    Label = {
      description = "Representation of a label and its fields.",
      id = "Label",
      properties = {
        fields = {
          additionalProperties = {
            ["$ref"] = "LabelField",
          },
          description = "A map of the label's fields keyed by the field ID.",
          type = "object",
        },
        id = {
          description = "The ID of the label.",
          type = "string",
        },
        kind = {
          default = "drive#label",
          description = "This is always drive#label",
          type = "string",
        },
        revisionId = {
          description = "The revision ID of the label.",
          type = "string",
        },
      },
      type = "object",
    },
    LabelField = {
      description = "Representation of a label field.",
      id = "LabelField",
      properties = {
        dateString = {
          description = "Only present if valueType is dateString. RFC 3339 formatted date: YYYY-MM-DD.",
          items = {
            format = "date",
            type = "string",
          },
          type = "array",
        },
        id = {
          description = "The identifier of this field.",
          type = "string",
        },
        integer = {
          description = "Only present if valueType is integer.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        kind = {
          default = "drive#labelField",
          description = "This is always drive#labelField.",
          type = "string",
        },
        selection = {
          description = "Only present if valueType is selection.",
          items = {
            type = "string",
          },
          type = "array",
        },
        text = {
          description = "Only present if valueType is text.",
          items = {
            type = "string",
          },
          type = "array",
        },
        user = {
          description = "Only present if valueType is user.",
          items = {
            ["$ref"] = "User",
          },
          type = "array",
        },
        valueType = {
          description = "The field type. While new values may be supported in the future, the following are currently allowed:  \
- dateString \
- integer \
- selection \
- text \
- user",
          type = "string",
        },
      },
      type = "object",
    },
    LabelFieldModification = {
      description = "A modification to a label's field.",
      id = "LabelFieldModification",
      properties = {
        fieldId = {
          description = "The ID of the field to be modified.",
          type = "string",
        },
        kind = {
          default = "drive#labelFieldModification",
          description = "This is always drive#labelFieldModification.",
          type = "string",
        },
        setDateValues = {
          description = "Replaces a dateString field with these new values. The values must be strings in the RFC 3339 full-date format: YYYY-MM-DD.",
          items = {
            format = "date",
            type = "string",
          },
          type = "array",
        },
        setIntegerValues = {
          description = "Replaces an integer field with these new values.",
          items = {
            format = "int64",
            type = "string",
          },
          type = "array",
        },
        setSelectionValues = {
          description = "Replaces a selection field with these new values.",
          items = {
            type = "string",
          },
          type = "array",
        },
        setTextValues = {
          description = "Replaces a text field with these new values.",
          items = {
            type = "string",
          },
          type = "array",
        },
        setUserValues = {
          description = "Replaces a user field with these new values. The values must be valid email addresses.",
          items = {
            type = "string",
          },
          type = "array",
        },
        unsetValues = {
          description = "Unsets the values for this field.",
          type = "boolean",
        },
      },
      type = "object",
    },
    LabelList = {
      description = "A list of labels.",
      id = "LabelList",
      properties = {
        items = {
          description = "The list of labels.",
          items = {
            ["$ref"] = "Label",
          },
          type = "array",
        },
        kind = {
          default = "drive#labelList",
          description = "This is always drive#labelList",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of labels. This field will be absent if the end of the list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
      },
      type = "object",
    },
    LabelModification = {
      description = "A modification to a label on a file. A LabelModification can be used to apply a label to a file, update an existing label on a file, or remove a label from a file.",
      id = "LabelModification",
      properties = {
        fieldModifications = {
          description = "The list of modifications to this label's fields.",
          items = {
            ["$ref"] = "LabelFieldModification",
          },
          type = "array",
        },
        kind = {
          default = "drive#labelModification",
          description = "This is always drive#labelModification.",
          type = "string",
        },
        labelId = {
          annotations = {
            required = {
              "drive.files.modifyLabels",
            },
          },
          description = "The ID of the label to modify.",
          type = "string",
        },
        removeLabel = {
          description = "If true, the label will be removed from the file.",
          type = "boolean",
        },
      },
      type = "object",
    },
    ModifyLabelsRequest = {
      description = "A request to modify the set of labels on a file. This request may contain many modifications that will either all succeed or all fail transactionally.",
      id = "ModifyLabelsRequest",
      properties = {
        kind = {
          default = "drive#modifyLabelsRequest",
          description = "This is always drive#modifyLabelsRequest",
          type = "string",
        },
        labelModifications = {
          description = "The list of modifications to apply to the labels on the file.",
          items = {
            ["$ref"] = "LabelModification",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyLabelsResponse = {
      description = "Response to a ModifyLabels request. This contains only those labels which were added or updated by the request.",
      id = "ModifyLabelsResponse",
      properties = {
        kind = {
          default = "drive#modifyLabelsResponse",
          description = "This is always drive#modifyLabelsResponse",
          type = "string",
        },
        modifiedLabels = {
          description = "The list of labels which were added or updated by the request.",
          items = {
            ["$ref"] = "Label",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ParentList = {
      description = "A list of a file's parents.",
      id = "ParentList",
      properties = {
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        items = {
          description = "The list of parents.",
          items = {
            ["$ref"] = "ParentReference",
          },
          type = "array",
        },
        kind = {
          default = "drive#parentList",
          description = "This is always drive#parentList.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    ParentReference = {
      description = "A reference to a file's parent.",
      id = "ParentReference",
      properties = {
        id = {
          annotations = {
            required = {
              "drive.parents.insert",
            },
          },
          description = "The ID of the parent.",
          type = "string",
        },
        isRoot = {
          description = "Whether or not the parent is the root folder.",
          type = "boolean",
        },
        kind = {
          default = "drive#parentReference",
          description = "This is always drive#parentReference.",
          type = "string",
        },
        parentLink = {
          description = "A link to the parent.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this reference.",
          type = "string",
        },
      },
      type = "object",
    },
    Permission = {
      description = "A permission for a file.",
      id = "Permission",
      properties = {
        additionalRoles = {
          description = "Additional roles for this user. Only commenter is currently allowed, though more may be supported in the future.",
          items = {
            type = "string",
          },
          type = "array",
        },
        authKey = {
          description = "Deprecated.",
          type = "string",
        },
        deleted = {
          description = "Whether the account associated with this permission has been deleted. This field only pertains to user and group permissions.",
          type = "boolean",
        },
        domain = {
          description = "The domain name of the entity this permission refers to. This is an output-only field which is present when the permission type is user, group or domain.",
          type = "string",
        },
        emailAddress = {
          description = "The email address of the user or group this permission refers to. This is an output-only field which is present when the permission type is user or group.",
          type = "string",
        },
        etag = {
          description = "The ETag of the permission.",
          type = "string",
        },
        expirationDate = {
          description = "The time at which this permission will expire (RFC 3339 date-time). Expiration dates have the following restrictions:  \
- They cannot be set on shared drive items \
- They can only be set on user and group permissions \
- The date must be in the future \
- The date cannot be more than a year in the future",
          format = "date-time",
          type = "string",
        },
        id = {
          description = "The ID of the user this permission refers to, and identical to the permissionId in the About and Files resources. When making a drive.permissions.insert request, exactly one of the id or value fields must be specified unless the permission type is anyone, in which case both id and value are ignored.",
          type = "string",
        },
        kind = {
          default = "drive#permission",
          description = "This is always drive#permission.",
          type = "string",
        },
        name = {
          description = "The name for this permission.",
          type = "string",
        },
        pendingOwner = {
          description = "Whether the account associated with this permission is a pending owner. Only populated for user type permissions for files that are not in a shared drive.",
          type = "boolean",
        },
        permissionDetails = {
          description = "Details of whether the permissions on this shared drive item are inherited or directly on this item. This is an output-only field which is present only for shared drive items.",
          items = {
            properties = {
              additionalRoles = {
                description = "Additional roles for this user. Only commenter is currently possible, though more may be supported in the future.",
                items = {
                  type = "string",
                },
                type = "array",
              },
              inherited = {
                description = "Whether this permission is inherited. This field is always populated. This is an output-only field.",
                type = "boolean",
              },
              inheritedFrom = {
                description = "The ID of the item from which this permission is inherited. This is an output-only field.",
                type = "string",
              },
              permissionType = {
                description = "The permission type for this user. While new values may be added in future, the following are currently possible:  \
- file \
- member",
                type = "string",
              },
              role = {
                description = "The primary role for this user. While new values may be added in the future, the following are currently possible:  \
- organizer \
- fileOrganizer \
- writer \
- reader",
                type = "string",
              },
            },
            type = "object",
          },
          readOnly = true,
          type = "array",
        },
        photoLink = {
          description = "A link to the profile photo, if available.",
          type = "string",
        },
        role = {
          annotations = {
            required = {
              "drive.permissions.insert",
            },
          },
          description = "The primary role for this user. While new values may be supported in the future, the following are currently allowed:  \
- owner \
- organizer \
- fileOrganizer \
- writer \
- reader",
          type = "string",
        },
        selfLink = {
          description = "A link back to this permission.",
          type = "string",
        },
        teamDrivePermissionDetails = {
          description = "Deprecated - use permissionDetails instead.",
          items = {
            properties = {
              additionalRoles = {
                description = "Deprecated - use permissionDetails/additionalRoles instead.",
                items = {
                  type = "string",
                },
                type = "array",
              },
              inherited = {
                description = "Deprecated - use permissionDetails/inherited instead.",
                type = "boolean",
              },
              inheritedFrom = {
                description = "Deprecated - use permissionDetails/inheritedFrom instead.",
                type = "string",
              },
              role = {
                description = "Deprecated - use permissionDetails/role instead.",
                type = "string",
              },
              teamDrivePermissionType = {
                description = "Deprecated - use permissionDetails/permissionType instead.",
                type = "string",
              },
            },
            type = "object",
          },
          readOnly = true,
          type = "array",
        },
        type = {
          annotations = {
            required = {
              "drive.permissions.insert",
            },
          },
          description = "The account type. Allowed values are:  \
- user \
- group \
- domain \
- anyone",
          type = "string",
        },
        value = {
          description = "The email address or domain name for the entity. This is used during inserts and is not populated in responses. When making a drive.permissions.insert request, exactly one of the id or value fields must be specified unless the permission type is anyone, in which case both id and value are ignored.",
          type = "string",
        },
        view = {
          description = "Indicates the view for this permission. Only populated for permissions that belong to a view. published is the only supported value.",
          type = "string",
        },
        withLink = {
          description = "Whether the link is required for this permission.",
          type = "boolean",
        },
      },
      type = "object",
    },
    PermissionId = {
      description = "An ID for a user or group as seen in Permission items.",
      id = "PermissionId",
      properties = {
        id = {
          description = "The permission ID.",
          type = "string",
        },
        kind = {
          default = "drive#permissionId",
          description = "This is always drive#permissionId.",
          type = "string",
        },
      },
      type = "object",
    },
    PermissionList = {
      description = "A list of permissions associated with a file.",
      id = "PermissionList",
      properties = {
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        items = {
          description = "The list of permissions.",
          items = {
            ["$ref"] = "Permission",
          },
          type = "array",
        },
        kind = {
          default = "drive#permissionList",
          description = "This is always drive#permissionList.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of permissions. This field will be absent if the end of the permissions list has been reached. If the token is rejected for any reason, it should be discarded, and pagination should be restarted from the first page of results.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    Property = {
      description = "A key-value pair attached to a file that is either public or private to an application.\
The following limits apply to file properties:  \
- Maximum of 100 properties total per file\
- Maximum of 30 private properties per app\
- Maximum of 30 public properties\
- Maximum of 124 bytes size limit on (key + value) string in UTF-8 encoding for a single property.",
      id = "Property",
      properties = {
        etag = {
          description = "ETag of the property.",
          type = "string",
        },
        key = {
          annotations = {
            required = {
              "drive.properties.insert",
            },
          },
          description = "The key of this property.",
          type = "string",
        },
        kind = {
          default = "drive#property",
          description = "This is always drive#property.",
          type = "string",
        },
        selfLink = {
          description = "The link back to this property.",
          type = "string",
        },
        value = {
          description = "The value of this property.",
          type = "string",
        },
        visibility = {
          description = "The visibility of this property. Allowed values are PRIVATE and PUBLIC. (Default: PRIVATE). Private properties can only be retrieved using an authenticated request. An authenticated request uses an access token obtained with a OAuth 2 client ID. You cannot use an API key to retrieve private properties.",
          type = "string",
        },
      },
      type = "object",
    },
    PropertyList = {
      description = "A collection of properties, key-value pairs that are either public or private to an application.",
      id = "PropertyList",
      properties = {
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        items = {
          description = "The list of properties.",
          items = {
            ["$ref"] = "Property",
          },
          type = "array",
        },
        kind = {
          default = "drive#propertyList",
          description = "This is always drive#propertyList.",
          type = "string",
        },
        selfLink = {
          description = "The link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    Revision = {
      description = "A revision of a file.",
      id = "Revision",
      properties = {
        downloadUrl = {
          type = "string",
        },
        etag = {
          description = "The ETag of the revision.",
          type = "string",
        },
        exportLinks = {
          additionalProperties = {
            description = "A mapping from export format to URL",
            type = "string",
          },
          description = "Links for exporting Docs Editors files to specific formats.",
          type = "object",
        },
        fileSize = {
          description = "The size of the revision in bytes. This will only be populated on files with content stored in Drive.",
          format = "int64",
          type = "string",
        },
        id = {
          description = "The ID of the revision.",
          type = "string",
        },
        kind = {
          default = "drive#revision",
          description = "This is always drive#revision.",
          type = "string",
        },
        lastModifyingUser = {
          ["$ref"] = "User",
          description = "The last user to modify this revision.",
        },
        lastModifyingUserName = {
          description = "Name of the last user to modify this revision.",
          type = "string",
        },
        md5Checksum = {
          description = "An MD5 checksum for the content of this revision. This will only be populated on files with content stored in Drive.",
          type = "string",
        },
        mimeType = {
          description = "The MIME type of the revision.",
          type = "string",
        },
        modifiedDate = {
          description = "Last time this revision was modified (formatted RFC 3339 timestamp).",
          format = "date-time",
          type = "string",
        },
        originalFilename = {
          description = "The original filename when this revision was created. This will only be populated on files with content stored in Drive.",
          type = "string",
        },
        pinned = {
          description = "Whether this revision is pinned to prevent automatic purging. If not set, the revision is automatically purged 30 days after newer content is uploaded. This field can only be modified on files with content stored in Drive, excluding Docs Editors files. Revisions can also be pinned when they are created through the drive.files.insert/update/copy by using the pinned query parameter. Pinned revisions are stored indefinitely using additional storage quota, up to a maximum of 200 revisions.",
          type = "boolean",
        },
        publishAuto = {
          description = "Whether subsequent revisions will be automatically republished. This is only populated and can only be modified for Docs Editors files.",
          type = "boolean",
        },
        published = {
          description = "Whether this revision is published. This is only populated and can only be modified for Docs Editors files.",
          type = "boolean",
        },
        publishedLink = {
          description = "A link to the published revision. This is only populated for Google Sites files.",
          type = "string",
        },
        publishedOutsideDomain = {
          description = "Whether this revision is published outside the domain. This is only populated and can only be modified for Docs Editors files.",
          type = "boolean",
        },
        selfLink = {
          description = "A link back to this revision.",
          type = "string",
        },
      },
      type = "object",
    },
    RevisionList = {
      description = "A list of revisions of a file.",
      id = "RevisionList",
      properties = {
        etag = {
          description = "The ETag of the list.",
          type = "string",
        },
        items = {
          description = "The list of revisions. If nextPageToken is populated, then this list may be incomplete and an additional page of results should be fetched.",
          items = {
            ["$ref"] = "Revision",
          },
          type = "array",
        },
        kind = {
          default = "drive#revisionList",
          description = "This is always drive#revisionList.",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of revisions. This field will be absent if the end of the revisions list has been reached. If the token is rejected for any reason, it should be discarded and pagination should be restarted from the first page of results.",
          type = "string",
        },
        selfLink = {
          description = "A link back to this list.",
          type = "string",
        },
      },
      type = "object",
    },
    StartPageToken = {
      id = "StartPageToken",
      properties = {
        kind = {
          default = "drive#startPageToken",
          description = "Identifies what kind of resource this is. Value: the fixed string \"drive#startPageToken\".",
          type = "string",
        },
        startPageToken = {
          description = "The starting page token for listing changes.",
          type = "string",
        },
      },
      type = "object",
    },
    TeamDrive = {
      description = "Deprecated: use the drive collection instead.",
      id = "TeamDrive",
      properties = {
        backgroundImageFile = {
          description = "An image file and cropping parameters from which a background image for this Team Drive is set. This is a write only field; it can only be set on drive.teamdrives.update requests that don't set themeId. When specified, all fields of the backgroundImageFile must be set.",
          properties = {
            id = {
              description = "The ID of an image file in Drive to use for the background image.",
              type = "string",
            },
            width = {
              description = "The width of the cropped image in the closed range of 0 to 1. This value represents the width of the cropped image divided by the width of the entire image. The height is computed by applying a width to height aspect ratio of 80 to 9. The resulting image must be at least 1280 pixels wide and 144 pixels high.",
              format = "float",
              type = "number",
            },
            xCoordinate = {
              description = "The X coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the horizontal distance from the left side of the entire image to the left side of the cropping area divided by the width of the entire image.",
              format = "float",
              type = "number",
            },
            yCoordinate = {
              description = "The Y coordinate of the upper left corner of the cropping area in the background image. This is a value in the closed range of 0 to 1. This value represents the vertical distance from the top side of the entire image to the top side of the cropping area divided by the height of the entire image.",
              format = "float",
              type = "number",
            },
          },
          type = "object",
        },
        backgroundImageLink = {
          description = "A short-lived link to this Team Drive's background image.",
          type = "string",
        },
        capabilities = {
          description = "Capabilities the current user has on this Team Drive.",
          properties = {
            canAddChildren = {
              description = "Whether the current user can add children to folders in this Team Drive.",
              type = "boolean",
            },
            canChangeCopyRequiresWriterPermissionRestriction = {
              description = "Whether the current user can change the copyRequiresWriterPermission restriction of this Team Drive.",
              type = "boolean",
            },
            canChangeDomainUsersOnlyRestriction = {
              description = "Whether the current user can change the domainUsersOnly restriction of this Team Drive.",
              type = "boolean",
            },
            canChangeTeamDriveBackground = {
              description = "Whether the current user can change the background of this Team Drive.",
              type = "boolean",
            },
            canChangeTeamMembersOnlyRestriction = {
              description = "Whether the current user can change the teamMembersOnly restriction of this Team Drive.",
              type = "boolean",
            },
            canComment = {
              description = "Whether the current user can comment on files in this Team Drive.",
              type = "boolean",
            },
            canCopy = {
              description = "Whether the current user can copy files in this Team Drive.",
              type = "boolean",
            },
            canDeleteChildren = {
              description = "Whether the current user can delete children from folders in this Team Drive.",
              type = "boolean",
            },
            canDeleteTeamDrive = {
              description = "Whether the current user can delete this Team Drive. Attempting to delete the Team Drive may still fail if there are untrashed items inside the Team Drive.",
              type = "boolean",
            },
            canDownload = {
              description = "Whether the current user can download files in this Team Drive.",
              type = "boolean",
            },
            canEdit = {
              description = "Whether the current user can edit files in this Team Drive",
              type = "boolean",
            },
            canListChildren = {
              description = "Whether the current user can list the children of folders in this Team Drive.",
              type = "boolean",
            },
            canManageMembers = {
              description = "Whether the current user can add members to this Team Drive or remove them or change their role.",
              type = "boolean",
            },
            canReadRevisions = {
              description = "Whether the current user can read the revisions resource of files in this Team Drive.",
              type = "boolean",
            },
            canRemoveChildren = {
              description = "Deprecated - use canDeleteChildren or canTrashChildren instead.",
              type = "boolean",
            },
            canRename = {
              description = "Whether the current user can rename files or folders in this Team Drive.",
              type = "boolean",
            },
            canRenameTeamDrive = {
              description = "Whether the current user can rename this Team Drive.",
              type = "boolean",
            },
            canResetTeamDriveRestrictions = {
              description = "Whether the current user can reset the Team Drive restrictions to defaults.",
              type = "boolean",
            },
            canShare = {
              description = "Whether the current user can share files or folders in this Team Drive.",
              type = "boolean",
            },
            canTrashChildren = {
              description = "Whether the current user can trash children from folders in this Team Drive.",
              type = "boolean",
            },
          },
          type = "object",
        },
        colorRgb = {
          description = "The color of this Team Drive as an RGB hex string. It can only be set on a drive.teamdrives.update request that does not set themeId.",
          type = "string",
        },
        createdDate = {
          description = "The time at which the Team Drive was created (RFC 3339 date-time).",
          format = "date-time",
          type = "string",
        },
        id = {
          description = "The ID of this Team Drive which is also the ID of the top level folder of this Team Drive.",
          type = "string",
        },
        kind = {
          default = "drive#teamDrive",
          description = "This is always drive#teamDrive",
          type = "string",
        },
        name = {
          annotations = {
            required = {
              "drive.teamdrives.insert",
            },
          },
          description = "The name of this Team Drive.",
          type = "string",
        },
        orgUnitId = {
          description = "The organizational unit of this shared drive. This field is only populated on drives.list responses when the useDomainAdminAccess parameter is set to true.",
          type = "string",
        },
        restrictions = {
          description = "A set of restrictions that apply to this Team Drive or items inside this Team Drive.",
          properties = {
            adminManagedRestrictions = {
              description = "Whether administrative privileges on this Team Drive are required to modify restrictions.",
              type = "boolean",
            },
            copyRequiresWriterPermission = {
              description = "Whether the options to copy, print, or download files inside this Team Drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this Team Drive.",
              type = "boolean",
            },
            domainUsersOnly = {
              description = "Whether access to this Team Drive and items inside this Team Drive is restricted to users of the domain to which this Team Drive belongs. This restriction may be overridden by other sharing policies controlled outside of this Team Drive.",
              type = "boolean",
            },
            teamMembersOnly = {
              description = "Whether access to items inside this Team Drive is restricted to members of this Team Drive.",
              type = "boolean",
            },
          },
          type = "object",
        },
        themeId = {
          description = "The ID of the theme from which the background image and color will be set. The set of possible teamDriveThemes can be retrieved from a drive.about.get response. When not specified on a drive.teamdrives.insert request, a random theme is chosen from which the background image and color are set. This is a write-only field; it can only be set on requests that don't set colorRgb or backgroundImageFile.",
          type = "string",
        },
      },
      type = "object",
    },
    TeamDriveList = {
      description = "A list of Team Drives.",
      id = "TeamDriveList",
      properties = {
        items = {
          description = "The list of Team Drives.",
          items = {
            ["$ref"] = "TeamDrive",
          },
          type = "array",
        },
        kind = {
          default = "drive#teamDriveList",
          description = "This is always drive#teamDriveList",
          type = "string",
        },
        nextPageToken = {
          description = "The page token for the next page of Team Drives.",
          type = "string",
        },
      },
      type = "object",
    },
    User = {
      description = "Information about a Drive user.",
      id = "User",
      properties = {
        displayName = {
          description = "A plain text displayable name for this user.",
          type = "string",
        },
        emailAddress = {
          description = "The email address of the user.",
          type = "string",
        },
        isAuthenticatedUser = {
          description = "Whether this user is the same as the authenticated user for whom the request was made.",
          type = "boolean",
        },
        kind = {
          default = "drive#user",
          description = "This is always drive#user.",
          type = "string",
        },
        permissionId = {
          description = "The user's ID as visible in the permissions collection.",
          type = "string",
        },
        picture = {
          description = "The user's profile picture.",
          properties = {
            url = {
              description = "A URL that points to a profile picture of this user.",
              type = "string",
            },
          },
          type = "object",
        },
      },
      type = "object",
    },
  },
  servicePath = "drive/v2/",
  title = "Drive API",
  version = "v2",
}