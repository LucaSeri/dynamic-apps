return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://mail.google.com/"] = {
          description = "Read, compose, send, and permanently delete all your email from Gmail",
        },
        ["https://www.googleapis.com/auth/gmail.addons.current.action.compose"] = {
          description = "Manage drafts and send emails when you interact with the add-on",
        },
        ["https://www.googleapis.com/auth/gmail.addons.current.message.action"] = {
          description = "View your email messages when you interact with the add-on",
        },
        ["https://www.googleapis.com/auth/gmail.addons.current.message.metadata"] = {
          description = "View your email message metadata when the add-on is running",
        },
        ["https://www.googleapis.com/auth/gmail.addons.current.message.readonly"] = {
          description = "View your email messages when the add-on is running",
        },
        ["https://www.googleapis.com/auth/gmail.compose"] = {
          description = "Manage drafts and send emails",
        },
        ["https://www.googleapis.com/auth/gmail.insert"] = {
          description = "Add emails into your Gmail mailbox",
        },
        ["https://www.googleapis.com/auth/gmail.labels"] = {
          description = "See and edit your email labels",
        },
        ["https://www.googleapis.com/auth/gmail.metadata"] = {
          description = "View your email message metadata such as labels and headers, but not the email body",
        },
        ["https://www.googleapis.com/auth/gmail.modify"] = {
          description = "Read, compose, and send emails from your Gmail account",
        },
        ["https://www.googleapis.com/auth/gmail.readonly"] = {
          description = "View your email messages and settings",
        },
        ["https://www.googleapis.com/auth/gmail.send"] = {
          description = "Send email on your behalf",
        },
        ["https://www.googleapis.com/auth/gmail.settings.basic"] = {
          description = "See, edit, create, or change your email settings and filters in Gmail",
        },
        ["https://www.googleapis.com/auth/gmail.settings.sharing"] = {
          description = "Manage your sensitive mail settings, including who can manage your mail",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://gmail.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Gmail",
  description = "The Gmail API lets you view and manage Gmail mailbox data like threads, messages, and labels.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/gmail/api/",
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "gmail:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://gmail.mtls.googleapis.com/",
  name = "gmail",
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
    users = {
      methods = {
        getProfile = {
          description = "Gets the current user's Gmail profile.",
          flatPath = "gmail/v1/users/{userId}/profile",
          httpMethod = "GET",
          id = "gmail.users.getProfile",
          parameterOrder = {
            "userId",
          },
          parameters = {
            userId = {
              default = "me",
              description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "gmail/v1/users/{userId}/profile",
          response = {
            ["$ref"] = "Profile",
          },
          scopes = {
            "https://mail.google.com/",
            "https://www.googleapis.com/auth/gmail.compose",
            "https://www.googleapis.com/auth/gmail.metadata",
            "https://www.googleapis.com/auth/gmail.modify",
            "https://www.googleapis.com/auth/gmail.readonly",
          },
        },
        stop = {
          description = "Stop receiving push notifications for the given user mailbox.",
          flatPath = "gmail/v1/users/{userId}/stop",
          httpMethod = "POST",
          id = "gmail.users.stop",
          parameterOrder = {
            "userId",
          },
          parameters = {
            userId = {
              default = "me",
              description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "gmail/v1/users/{userId}/stop",
          scopes = {
            "https://mail.google.com/",
            "https://www.googleapis.com/auth/gmail.metadata",
            "https://www.googleapis.com/auth/gmail.modify",
            "https://www.googleapis.com/auth/gmail.readonly",
          },
        },
        watch = {
          description = "Set up or update a push notification watch on the given user mailbox.",
          flatPath = "gmail/v1/users/{userId}/watch",
          httpMethod = "POST",
          id = "gmail.users.watch",
          parameterOrder = {
            "userId",
          },
          parameters = {
            userId = {
              default = "me",
              description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "gmail/v1/users/{userId}/watch",
          request = {
            ["$ref"] = "WatchRequest",
          },
          response = {
            ["$ref"] = "WatchResponse",
          },
          scopes = {
            "https://mail.google.com/",
            "https://www.googleapis.com/auth/gmail.metadata",
            "https://www.googleapis.com/auth/gmail.modify",
            "https://www.googleapis.com/auth/gmail.readonly",
          },
        },
      },
      resources = {
        drafts = {
          methods = {
            create = {
              description = "Creates a new draft with the `DRAFT` label.",
              flatPath = "gmail/v1/users/{userId}/drafts",
              httpMethod = "POST",
              id = "gmail.users.drafts.create",
              mediaUpload = {
                accept = {
                  "message/*",
                },
                maxSize = "36700160",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/gmail/v1/users/{userId}/drafts",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/gmail/v1/users/{userId}/drafts",
                  },
                },
              },
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/drafts",
              request = {
                ["$ref"] = "Draft",
              },
              response = {
                ["$ref"] = "Draft",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
                "https://www.googleapis.com/auth/gmail.compose",
                "https://www.googleapis.com/auth/gmail.modify",
              },
              supportsMediaUpload = true,
            },
            delete = {
              description = "Immediately and permanently deletes the specified draft. Does not simply trash it.",
              flatPath = "gmail/v1/users/{userId}/drafts/{id}",
              httpMethod = "DELETE",
              id = "gmail.users.drafts.delete",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the draft to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/drafts/{id}",
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
                "https://www.googleapis.com/auth/gmail.compose",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            get = {
              description = "Gets the specified draft.",
              flatPath = "gmail/v1/users/{userId}/drafts/{id}",
              httpMethod = "GET",
              id = "gmail.users.drafts.get",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                format = {
                  default = "full",
                  description = "The format to return the draft in.",
                  enum = {
                    "minimal",
                    "full",
                    "raw",
                    "metadata",
                  },
                  enumDescriptions = {
                    "Returns only email message ID and labels; does not return the email headers, body, or payload.",
                    "Returns the full email message data with body content parsed in the `payload` field; the `raw` field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.",
                    "Returns the full email message data with body content in the `raw` field as a base64url encoded string; the `payload` field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.",
                    "Returns only email message ID, labels, and email headers.",
                  },
                  location = "query",
                  type = "string",
                },
                id = {
                  description = "The ID of the draft to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/drafts/{id}",
              response = {
                ["$ref"] = "Draft",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.compose",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            list = {
              description = "Lists the drafts in the user's mailbox.",
              flatPath = "gmail/v1/users/{userId}/drafts",
              httpMethod = "GET",
              id = "gmail.users.drafts.list",
              parameterOrder = {
                "userId",
              },
              parameters = {
                includeSpamTrash = {
                  default = "false",
                  description = "Include drafts from `SPAM` and `TRASH` in the results.",
                  location = "query",
                  type = "boolean",
                },
                maxResults = {
                  default = "100",
                  description = "Maximum number of drafts to return. This field defaults to 100. The maximum allowed value for this field is 500.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to retrieve a specific page of results in the list.",
                  location = "query",
                  type = "string",
                },
                q = {
                  description = "Only return draft messages matching the specified query. Supports the same query format as the Gmail search box. For example, `\"from:someuser@example.com rfc822msgid: is:unread\"`.",
                  location = "query",
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/drafts",
              response = {
                ["$ref"] = "ListDraftsResponse",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.compose",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            send = {
              description = "Sends the specified, existing draft to the recipients in the `To`, `Cc`, and `Bcc` headers.",
              flatPath = "gmail/v1/users/{userId}/drafts/send",
              httpMethod = "POST",
              id = "gmail.users.drafts.send",
              mediaUpload = {
                accept = {
                  "message/*",
                },
                maxSize = "36700160",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/gmail/v1/users/{userId}/drafts/send",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/gmail/v1/users/{userId}/drafts/send",
                  },
                },
              },
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/drafts/send",
              request = {
                ["$ref"] = "Draft",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
                "https://www.googleapis.com/auth/gmail.compose",
                "https://www.googleapis.com/auth/gmail.modify",
              },
              supportsMediaUpload = true,
            },
            update = {
              description = "Replaces a draft's content.",
              flatPath = "gmail/v1/users/{userId}/drafts/{id}",
              httpMethod = "PUT",
              id = "gmail.users.drafts.update",
              mediaUpload = {
                accept = {
                  "message/*",
                },
                maxSize = "36700160",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/gmail/v1/users/{userId}/drafts/{id}",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/gmail/v1/users/{userId}/drafts/{id}",
                  },
                },
              },
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the draft to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/drafts/{id}",
              request = {
                ["$ref"] = "Draft",
              },
              response = {
                ["$ref"] = "Draft",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
                "https://www.googleapis.com/auth/gmail.compose",
                "https://www.googleapis.com/auth/gmail.modify",
              },
              supportsMediaUpload = true,
            },
          },
        },
        history = {
          methods = {
            list = {
              description = "Lists the history of all changes to the given mailbox. History results are returned in chronological order (increasing `historyId`).",
              flatPath = "gmail/v1/users/{userId}/history",
              httpMethod = "GET",
              id = "gmail.users.history.list",
              parameterOrder = {
                "userId",
              },
              parameters = {
                historyTypes = {
                  description = "History types to be returned by the function",
                  enum = {
                    "messageAdded",
                    "messageDeleted",
                    "labelAdded",
                    "labelRemoved",
                  },
                  enumDescriptions = {
                    "",
                    "",
                    "",
                    "",
                  },
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                labelId = {
                  description = "Only return messages with a label matching the ID.",
                  location = "query",
                  type = "string",
                },
                maxResults = {
                  default = "100",
                  description = "Maximum number of history records to return. This field defaults to 100. The maximum allowed value for this field is 500.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to retrieve a specific page of results in the list.",
                  location = "query",
                  type = "string",
                },
                startHistoryId = {
                  description = "Required. Returns history records after the specified `startHistoryId`. The supplied `startHistoryId` should be obtained from the `historyId` of a message, thread, or previous `list` response. History IDs increase chronologically but are not contiguous with random gaps in between valid IDs. Supplying an invalid or out of date `startHistoryId` typically returns an `HTTP 404` error code. A `historyId` is typically valid for at least a week, but in some rare circumstances may be valid for only a few hours. If you receive an `HTTP 404` error response, your application should perform a full sync. If you receive no `nextPageToken` in the response, there are no updates to retrieve and you can store the returned `historyId` for a future request.",
                  format = "uint64",
                  location = "query",
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/history",
              response = {
                ["$ref"] = "ListHistoryResponse",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.metadata",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
          },
        },
        labels = {
          methods = {
            create = {
              description = "Creates a new label.",
              flatPath = "gmail/v1/users/{userId}/labels",
              httpMethod = "POST",
              id = "gmail.users.labels.create",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/labels",
              request = {
                ["$ref"] = "Label",
              },
              response = {
                ["$ref"] = "Label",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.labels",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            delete = {
              description = "Immediately and permanently deletes the specified label and removes it from any messages and threads that it is applied to.",
              flatPath = "gmail/v1/users/{userId}/labels/{id}",
              httpMethod = "DELETE",
              id = "gmail.users.labels.delete",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the label to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/labels/{id}",
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.labels",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            get = {
              description = "Gets the specified label.",
              flatPath = "gmail/v1/users/{userId}/labels/{id}",
              httpMethod = "GET",
              id = "gmail.users.labels.get",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the label to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/labels/{id}",
              response = {
                ["$ref"] = "Label",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.labels",
                "https://www.googleapis.com/auth/gmail.metadata",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            list = {
              description = "Lists all labels in the user's mailbox.",
              flatPath = "gmail/v1/users/{userId}/labels",
              httpMethod = "GET",
              id = "gmail.users.labels.list",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/labels",
              response = {
                ["$ref"] = "ListLabelsResponse",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.labels",
                "https://www.googleapis.com/auth/gmail.metadata",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            patch = {
              description = "Patch the specified label.",
              flatPath = "gmail/v1/users/{userId}/labels/{id}",
              httpMethod = "PATCH",
              id = "gmail.users.labels.patch",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the label to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/labels/{id}",
              request = {
                ["$ref"] = "Label",
              },
              response = {
                ["$ref"] = "Label",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.labels",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            update = {
              description = "Updates the specified label.",
              flatPath = "gmail/v1/users/{userId}/labels/{id}",
              httpMethod = "PUT",
              id = "gmail.users.labels.update",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the label to update.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/labels/{id}",
              request = {
                ["$ref"] = "Label",
              },
              response = {
                ["$ref"] = "Label",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.labels",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
          },
        },
        messages = {
          methods = {
            batchDelete = {
              description = "Deletes many messages by message ID. Provides no guarantees that messages were not already deleted or even existed at all.",
              flatPath = "gmail/v1/users/{userId}/messages/batchDelete",
              httpMethod = "POST",
              id = "gmail.users.messages.batchDelete",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/batchDelete",
              request = {
                ["$ref"] = "BatchDeleteMessagesRequest",
              },
              scopes = {
                "https://mail.google.com/",
              },
            },
            batchModify = {
              description = "Modifies the labels on the specified messages.",
              flatPath = "gmail/v1/users/{userId}/messages/batchModify",
              httpMethod = "POST",
              id = "gmail.users.messages.batchModify",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/batchModify",
              request = {
                ["$ref"] = "BatchModifyMessagesRequest",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            delete = {
              description = "Immediately and permanently deletes the specified message. This operation cannot be undone. Prefer `messages.trash` instead.",
              flatPath = "gmail/v1/users/{userId}/messages/{id}",
              httpMethod = "DELETE",
              id = "gmail.users.messages.delete",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the message to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/{id}",
              scopes = {
                "https://mail.google.com/",
              },
            },
            get = {
              description = "Gets the specified message.",
              flatPath = "gmail/v1/users/{userId}/messages/{id}",
              httpMethod = "GET",
              id = "gmail.users.messages.get",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                format = {
                  default = "full",
                  description = "The format to return the message in.",
                  enum = {
                    "minimal",
                    "full",
                    "raw",
                    "metadata",
                  },
                  enumDescriptions = {
                    "Returns only email message ID and labels; does not return the email headers, body, or payload.",
                    "Returns the full email message data with body content parsed in the `payload` field; the `raw` field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.",
                    "Returns the full email message data with body content in the `raw` field as a base64url encoded string; the `payload` field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.",
                    "Returns only email message ID, labels, and email headers.",
                  },
                  location = "query",
                  type = "string",
                },
                id = {
                  description = "The ID of the message to retrieve. This ID is usually retrieved using `messages.list`. The ID is also contained in the result when a message is inserted (`messages.insert`) or imported (`messages.import`).",
                  location = "path",
                  required = true,
                  type = "string",
                },
                metadataHeaders = {
                  description = "When given and format is `METADATA`, only include headers specified.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/{id}",
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.addons.current.message.action",
                "https://www.googleapis.com/auth/gmail.addons.current.message.metadata",
                "https://www.googleapis.com/auth/gmail.addons.current.message.readonly",
                "https://www.googleapis.com/auth/gmail.metadata",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            import = {
              description = "Imports a message into only this user's mailbox, with standard email delivery scanning and classification similar to receiving via SMTP. This method doesn't perform SPF checks, so it might not work for some spam messages, such as those attempting to perform domain spoofing. This method does not send a message. Note: This function doesn't trigger forwarding rules or filters set up by the user.",
              flatPath = "gmail/v1/users/{userId}/messages/import",
              httpMethod = "POST",
              id = "gmail.users.messages.import",
              mediaUpload = {
                accept = {
                  "message/*",
                },
                maxSize = "52428800",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/gmail/v1/users/{userId}/messages/import",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/gmail/v1/users/{userId}/messages/import",
                  },
                },
              },
              parameterOrder = {
                "userId",
              },
              parameters = {
                deleted = {
                  default = "false",
                  description = "Mark the email as permanently deleted (not TRASH) and only visible in Google Vault to a Vault administrator. Only used for G Suite accounts.",
                  location = "query",
                  type = "boolean",
                },
                internalDateSource = {
                  default = "dateHeader",
                  description = "Source for Gmail's internal date of the message.",
                  enum = {
                    "receivedTime",
                    "dateHeader",
                  },
                  enumDescriptions = {
                    "Internal message date set to current time when received by Gmail.",
                    "Internal message time based on 'Date' header in email, when valid.",
                  },
                  location = "query",
                  type = "string",
                },
                neverMarkSpam = {
                  default = "false",
                  description = "Ignore the Gmail spam classifier decision and never mark this email as SPAM in the mailbox.",
                  location = "query",
                  type = "boolean",
                },
                processForCalendar = {
                  default = "false",
                  description = "Process calendar invites in the email and add any extracted meetings to the Google Calendar for this user.",
                  location = "query",
                  type = "boolean",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/import",
              request = {
                ["$ref"] = "Message",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.insert",
                "https://www.googleapis.com/auth/gmail.modify",
              },
              supportsMediaUpload = true,
            },
            insert = {
              description = "Directly inserts a message into only this user's mailbox similar to `IMAP APPEND`, bypassing most scanning and classification. Does not send a message.",
              flatPath = "gmail/v1/users/{userId}/messages",
              httpMethod = "POST",
              id = "gmail.users.messages.insert",
              mediaUpload = {
                accept = {
                  "message/*",
                },
                maxSize = "52428800",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/gmail/v1/users/{userId}/messages",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/gmail/v1/users/{userId}/messages",
                  },
                },
              },
              parameterOrder = {
                "userId",
              },
              parameters = {
                deleted = {
                  default = "false",
                  description = "Mark the email as permanently deleted (not TRASH) and only visible in Google Vault to a Vault administrator. Only used for G Suite accounts.",
                  location = "query",
                  type = "boolean",
                },
                internalDateSource = {
                  default = "receivedTime",
                  description = "Source for Gmail's internal date of the message.",
                  enum = {
                    "receivedTime",
                    "dateHeader",
                  },
                  enumDescriptions = {
                    "Internal message date set to current time when received by Gmail.",
                    "Internal message time based on 'Date' header in email, when valid.",
                  },
                  location = "query",
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages",
              request = {
                ["$ref"] = "Message",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.insert",
                "https://www.googleapis.com/auth/gmail.modify",
              },
              supportsMediaUpload = true,
            },
            list = {
              description = "Lists the messages in the user's mailbox.",
              flatPath = "gmail/v1/users/{userId}/messages",
              httpMethod = "GET",
              id = "gmail.users.messages.list",
              parameterOrder = {
                "userId",
              },
              parameters = {
                includeSpamTrash = {
                  default = "false",
                  description = "Include messages from `SPAM` and `TRASH` in the results.",
                  location = "query",
                  type = "boolean",
                },
                labelIds = {
                  description = "Only return messages with labels that match all of the specified label IDs.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                maxResults = {
                  default = "100",
                  description = "Maximum number of messages to return. This field defaults to 100. The maximum allowed value for this field is 500.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to retrieve a specific page of results in the list.",
                  location = "query",
                  type = "string",
                },
                q = {
                  description = "Only return messages matching the specified query. Supports the same query format as the Gmail search box. For example, `\"from:someuser@example.com rfc822msgid: is:unread\"`. Parameter cannot be used when accessing the api using the gmail.metadata scope.",
                  location = "query",
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages",
              response = {
                ["$ref"] = "ListMessagesResponse",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.metadata",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            modify = {
              description = "Modifies the labels on the specified message.",
              flatPath = "gmail/v1/users/{userId}/messages/{id}/modify",
              httpMethod = "POST",
              id = "gmail.users.messages.modify",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the message to modify.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/{id}/modify",
              request = {
                ["$ref"] = "ModifyMessageRequest",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            send = {
              description = "Sends the specified message to the recipients in the `To`, `Cc`, and `Bcc` headers.",
              flatPath = "gmail/v1/users/{userId}/messages/send",
              httpMethod = "POST",
              id = "gmail.users.messages.send",
              mediaUpload = {
                accept = {
                  "message/*",
                },
                maxSize = "36700160",
                protocols = {
                  resumable = {
                    multipart = true,
                    path = "/resumable/upload/gmail/v1/users/{userId}/messages/send",
                  },
                  simple = {
                    multipart = true,
                    path = "/upload/gmail/v1/users/{userId}/messages/send",
                  },
                },
              },
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/send",
              request = {
                ["$ref"] = "Message",
              },
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.addons.current.action.compose",
                "https://www.googleapis.com/auth/gmail.compose",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.send",
              },
              supportsMediaUpload = true,
            },
            trash = {
              description = "Moves the specified message to the trash.",
              flatPath = "gmail/v1/users/{userId}/messages/{id}/trash",
              httpMethod = "POST",
              id = "gmail.users.messages.trash",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the message to Trash.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/{id}/trash",
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            untrash = {
              description = "Removes the specified message from the trash.",
              flatPath = "gmail/v1/users/{userId}/messages/{id}/untrash",
              httpMethod = "POST",
              id = "gmail.users.messages.untrash",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the message to remove from Trash.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/messages/{id}/untrash",
              response = {
                ["$ref"] = "Message",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
          },
          resources = {
            attachments = {
              methods = {
                get = {
                  description = "Gets the specified message attachment.",
                  flatPath = "gmail/v1/users/{userId}/messages/{messageId}/attachments/{id}",
                  httpMethod = "GET",
                  id = "gmail.users.messages.attachments.get",
                  parameterOrder = {
                    "userId",
                    "messageId",
                    "id",
                  },
                  parameters = {
                    id = {
                      description = "The ID of the attachment.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    messageId = {
                      description = "The ID of the message containing the attachment.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/messages/{messageId}/attachments/{id}",
                  response = {
                    ["$ref"] = "MessagePartBody",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.addons.current.message.action",
                    "https://www.googleapis.com/auth/gmail.addons.current.message.readonly",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                  },
                },
              },
            },
          },
        },
        settings = {
          methods = {
            getAutoForwarding = {
              description = "Gets the auto-forwarding setting for the specified account.",
              flatPath = "gmail/v1/users/{userId}/settings/autoForwarding",
              httpMethod = "GET",
              id = "gmail.users.settings.getAutoForwarding",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/autoForwarding",
              response = {
                ["$ref"] = "AutoForwarding",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            getImap = {
              description = "Gets IMAP settings.",
              flatPath = "gmail/v1/users/{userId}/settings/imap",
              httpMethod = "GET",
              id = "gmail.users.settings.getImap",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/imap",
              response = {
                ["$ref"] = "ImapSettings",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            getLanguage = {
              description = "Gets language settings.",
              flatPath = "gmail/v1/users/{userId}/settings/language",
              httpMethod = "GET",
              id = "gmail.users.settings.getLanguage",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/language",
              response = {
                ["$ref"] = "LanguageSettings",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            getPop = {
              description = "Gets POP settings.",
              flatPath = "gmail/v1/users/{userId}/settings/pop",
              httpMethod = "GET",
              id = "gmail.users.settings.getPop",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/pop",
              response = {
                ["$ref"] = "PopSettings",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            getVacation = {
              description = "Gets vacation responder settings.",
              flatPath = "gmail/v1/users/{userId}/settings/vacation",
              httpMethod = "GET",
              id = "gmail.users.settings.getVacation",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/vacation",
              response = {
                ["$ref"] = "VacationSettings",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            updateAutoForwarding = {
              description = "Updates the auto-forwarding setting for the specified account. A verified forwarding address must be specified when auto-forwarding is enabled. This method is only available to service account clients that have been delegated domain-wide authority.",
              flatPath = "gmail/v1/users/{userId}/settings/autoForwarding",
              httpMethod = "PUT",
              id = "gmail.users.settings.updateAutoForwarding",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/autoForwarding",
              request = {
                ["$ref"] = "AutoForwarding",
              },
              response = {
                ["$ref"] = "AutoForwarding",
              },
              scopes = {
                "https://www.googleapis.com/auth/gmail.settings.sharing",
              },
            },
            updateImap = {
              description = "Updates IMAP settings.",
              flatPath = "gmail/v1/users/{userId}/settings/imap",
              httpMethod = "PUT",
              id = "gmail.users.settings.updateImap",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/imap",
              request = {
                ["$ref"] = "ImapSettings",
              },
              response = {
                ["$ref"] = "ImapSettings",
              },
              scopes = {
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            updateLanguage = {
              description = "Updates language settings. If successful, the return object contains the `displayLanguage` that was saved for the user, which may differ from the value passed into the request. This is because the requested `displayLanguage` may not be directly supported by Gmail but have a close variant that is, and so the variant may be chosen and saved instead.",
              flatPath = "gmail/v1/users/{userId}/settings/language",
              httpMethod = "PUT",
              id = "gmail.users.settings.updateLanguage",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/language",
              request = {
                ["$ref"] = "LanguageSettings",
              },
              response = {
                ["$ref"] = "LanguageSettings",
              },
              scopes = {
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            updatePop = {
              description = "Updates POP settings.",
              flatPath = "gmail/v1/users/{userId}/settings/pop",
              httpMethod = "PUT",
              id = "gmail.users.settings.updatePop",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/pop",
              request = {
                ["$ref"] = "PopSettings",
              },
              response = {
                ["$ref"] = "PopSettings",
              },
              scopes = {
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
            updateVacation = {
              description = "Updates vacation responder settings.",
              flatPath = "gmail/v1/users/{userId}/settings/vacation",
              httpMethod = "PUT",
              id = "gmail.users.settings.updateVacation",
              parameterOrder = {
                "userId",
              },
              parameters = {
                userId = {
                  default = "me",
                  description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/settings/vacation",
              request = {
                ["$ref"] = "VacationSettings",
              },
              response = {
                ["$ref"] = "VacationSettings",
              },
              scopes = {
                "https://www.googleapis.com/auth/gmail.settings.basic",
              },
            },
          },
          resources = {
            cse = {
              resources = {
                identities = {
                  methods = {
                    create = {
                      description = "Creates and configures a client-side encryption identity that's authorized to send mail from the user account. Google publishes the S/MIME certificate to a shared domain-wide directory so that people within a Google Workspace organization can encrypt and send mail to the identity. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/identities",
                      httpMethod = "POST",
                      id = "gmail.users.settings.cse.identities.create",
                      parameterOrder = {
                        "userId",
                      },
                      parameters = {
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/identities",
                      request = {
                        ["$ref"] = "CseIdentity",
                      },
                      response = {
                        ["$ref"] = "CseIdentity",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    delete = {
                      description = "Deletes a client-side encryption identity. The authenticated user can no longer use the identity to send encrypted messages. You cannot restore the identity after you delete it. Instead, use the CreateCseIdentity method to create another identity with the same configuration. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}",
                      httpMethod = "DELETE",
                      id = "gmail.users.settings.cse.identities.delete",
                      parameterOrder = {
                        "userId",
                        "cseEmailAddress",
                      },
                      parameters = {
                        cseEmailAddress = {
                          description = "The primary email address associated with the client-side encryption identity configuration that's removed.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}",
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    get = {
                      description = "Retrieves a client-side encryption identity configuration. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}",
                      httpMethod = "GET",
                      id = "gmail.users.settings.cse.identities.get",
                      parameterOrder = {
                        "userId",
                        "cseEmailAddress",
                      },
                      parameters = {
                        cseEmailAddress = {
                          description = "The primary email address associated with the client-side encryption identity configuration that's retrieved.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/identities/{cseEmailAddress}",
                      response = {
                        ["$ref"] = "CseIdentity",
                      },
                      scopes = {
                        "https://mail.google.com/",
                        "https://www.googleapis.com/auth/gmail.modify",
                        "https://www.googleapis.com/auth/gmail.readonly",
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    list = {
                      description = "Lists the client-side encrypted identities for an authenticated user. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/identities",
                      httpMethod = "GET",
                      id = "gmail.users.settings.cse.identities.list",
                      parameterOrder = {
                        "userId",
                      },
                      parameters = {
                        pageSize = {
                          default = "20",
                          description = "The number of identities to return. If not provided, the page size will default to 20 entries.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Pagination token indicating which page of identities to return. If the token is not supplied, then the API will return the first page of results.",
                          location = "query",
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/identities",
                      response = {
                        ["$ref"] = "ListCseIdentitiesResponse",
                      },
                      scopes = {
                        "https://mail.google.com/",
                        "https://www.googleapis.com/auth/gmail.modify",
                        "https://www.googleapis.com/auth/gmail.readonly",
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    patch = {
                      description = "Associates a different key pair with an existing client-side encryption identity. The updated key pair must validate against Google's [S/MIME certificate profiles](https://support.google.com/a/answer/7300887). [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/identities/{emailAddress}",
                      httpMethod = "PATCH",
                      id = "gmail.users.settings.cse.identities.patch",
                      parameterOrder = {
                        "userId",
                        "emailAddress",
                      },
                      parameters = {
                        emailAddress = {
                          description = "The email address of the client-side encryption identity to update.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/identities/{emailAddress}",
                      request = {
                        ["$ref"] = "CseIdentity",
                      },
                      response = {
                        ["$ref"] = "CseIdentity",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                  },
                },
                keypairs = {
                  methods = {
                    create = {
                      description = "Creates and uploads a client-side encryption S/MIME public key certificate chain and private key metadata for the authenticated user. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/keypairs",
                      httpMethod = "POST",
                      id = "gmail.users.settings.cse.keypairs.create",
                      parameterOrder = {
                        "userId",
                      },
                      parameters = {
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/keypairs",
                      request = {
                        ["$ref"] = "CseKeyPair",
                      },
                      response = {
                        ["$ref"] = "CseKeyPair",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    disable = {
                      description = "Turns off a client-side encryption key pair. The authenticated user can no longer use the key pair to decrypt incoming CSE message texts or sign outgoing CSE mail. To regain access, use the EnableCseKeyPair to turn on the key pair. After 30 days, you can permanently delete the key pair by using the ObliterateCseKeyPair method. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:disable",
                      httpMethod = "POST",
                      id = "gmail.users.settings.cse.keypairs.disable",
                      parameterOrder = {
                        "userId",
                        "keyPairId",
                      },
                      parameters = {
                        keyPairId = {
                          description = "The identifier of the key pair to turn off.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:disable",
                      request = {
                        ["$ref"] = "DisableCseKeyPairRequest",
                      },
                      response = {
                        ["$ref"] = "CseKeyPair",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    enable = {
                      description = "Turns on a client-side encryption key pair that was turned off. The key pair becomes active again for any associated client-side encryption identities. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:enable",
                      httpMethod = "POST",
                      id = "gmail.users.settings.cse.keypairs.enable",
                      parameterOrder = {
                        "userId",
                        "keyPairId",
                      },
                      parameters = {
                        keyPairId = {
                          description = "The identifier of the key pair to turn on.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:enable",
                      request = {
                        ["$ref"] = "EnableCseKeyPairRequest",
                      },
                      response = {
                        ["$ref"] = "CseKeyPair",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    get = {
                      description = "Retrieves an existing client-side encryption key pair. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}",
                      httpMethod = "GET",
                      id = "gmail.users.settings.cse.keypairs.get",
                      parameterOrder = {
                        "userId",
                        "keyPairId",
                      },
                      parameters = {
                        keyPairId = {
                          description = "The identifier of the key pair to retrieve.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}",
                      response = {
                        ["$ref"] = "CseKeyPair",
                      },
                      scopes = {
                        "https://mail.google.com/",
                        "https://www.googleapis.com/auth/gmail.modify",
                        "https://www.googleapis.com/auth/gmail.readonly",
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    list = {
                      description = "Lists client-side encryption key pairs for an authenticated user. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/keypairs",
                      httpMethod = "GET",
                      id = "gmail.users.settings.cse.keypairs.list",
                      parameterOrder = {
                        "userId",
                      },
                      parameters = {
                        pageSize = {
                          default = "20",
                          description = "The number of key pairs to return. If not provided, the page size will default to 20 entries.",
                          format = "int32",
                          location = "query",
                          type = "integer",
                        },
                        pageToken = {
                          description = "Pagination token indicating which page of key pairs to return. If the token is not supplied, then the API will return the first page of results.",
                          location = "query",
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/keypairs",
                      response = {
                        ["$ref"] = "ListCseKeyPairsResponse",
                      },
                      scopes = {
                        "https://mail.google.com/",
                        "https://www.googleapis.com/auth/gmail.modify",
                        "https://www.googleapis.com/auth/gmail.readonly",
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    obliterate = {
                      description = "Deletes a client-side encryption key pair permanently and immediately. You can only permanently delete key pairs that have been turned off for more than 30 days. To turn off a key pair, use the DisableCseKeyPair method. Gmail can't restore or decrypt any messages that were encrypted by an obliterated key. Authenticated users and Google Workspace administrators lose access to reading the encrypted messages. [Beta](https://workspace.google.com/terms/service-terms/index.html).",
                      flatPath = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:obliterate",
                      httpMethod = "POST",
                      id = "gmail.users.settings.cse.keypairs.obliterate",
                      parameterOrder = {
                        "userId",
                        "keyPairId",
                      },
                      parameters = {
                        keyPairId = {
                          description = "The identifier of the key pair to obliterate.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The requester's primary email address. To indicate the authenticated user, you can use the special value `me`.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/cse/keypairs/{keyPairId}:obliterate",
                      request = {
                        ["$ref"] = "ObliterateCseKeyPairRequest",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                  },
                },
              },
            },
            delegates = {
              methods = {
                create = {
                  description = "Adds a delegate with its verification status set directly to `accepted`, without sending any verification email. The delegate user must be a member of the same G Suite organization as the delegator user. Gmail imposes limitations on the number of delegates and delegators each user in a G Suite organization can have. These limits depend on your organization, but in general each user can have up to 25 delegates and up to 10 delegators. Note that a delegate user must be referred to by their primary email address, and not an email alias. Also note that when a new delegate is created, there may be up to a one minute delay before the new delegate is available for use. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/delegates",
                  httpMethod = "POST",
                  id = "gmail.users.settings.delegates.create",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/delegates",
                  request = {
                    ["$ref"] = "Delegate",
                  },
                  response = {
                    ["$ref"] = "Delegate",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                delete = {
                  description = "Removes the specified delegate (which can be of any verification status), and revokes any verification that may have been required for using it. Note that a delegate user must be referred to by their primary email address, and not an email alias. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/delegates/{delegateEmail}",
                  httpMethod = "DELETE",
                  id = "gmail.users.settings.delegates.delete",
                  parameterOrder = {
                    "userId",
                    "delegateEmail",
                  },
                  parameters = {
                    delegateEmail = {
                      description = "The email address of the user to be removed as a delegate.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/delegates/{delegateEmail}",
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                get = {
                  description = "Gets the specified delegate. Note that a delegate user must be referred to by their primary email address, and not an email alias. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/delegates/{delegateEmail}",
                  httpMethod = "GET",
                  id = "gmail.users.settings.delegates.get",
                  parameterOrder = {
                    "userId",
                    "delegateEmail",
                  },
                  parameters = {
                    delegateEmail = {
                      description = "The email address of the user whose delegate relationship is to be retrieved.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/delegates/{delegateEmail}",
                  response = {
                    ["$ref"] = "Delegate",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
                list = {
                  description = "Lists the delegates for the specified account. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/delegates",
                  httpMethod = "GET",
                  id = "gmail.users.settings.delegates.list",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/delegates",
                  response = {
                    ["$ref"] = "ListDelegatesResponse",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
              },
            },
            filters = {
              methods = {
                create = {
                  description = "Creates a filter. Note: you can only create a maximum of 1,000 filters.",
                  flatPath = "gmail/v1/users/{userId}/settings/filters",
                  httpMethod = "POST",
                  id = "gmail.users.settings.filters.create",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/filters",
                  request = {
                    ["$ref"] = "Filter",
                  },
                  response = {
                    ["$ref"] = "Filter",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
                delete = {
                  description = "Immediately and permanently deletes the specified filter.",
                  flatPath = "gmail/v1/users/{userId}/settings/filters/{id}",
                  httpMethod = "DELETE",
                  id = "gmail.users.settings.filters.delete",
                  parameterOrder = {
                    "userId",
                    "id",
                  },
                  parameters = {
                    id = {
                      description = "The ID of the filter to be deleted.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/filters/{id}",
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
                get = {
                  description = "Gets a filter.",
                  flatPath = "gmail/v1/users/{userId}/settings/filters/{id}",
                  httpMethod = "GET",
                  id = "gmail.users.settings.filters.get",
                  parameterOrder = {
                    "userId",
                    "id",
                  },
                  parameters = {
                    id = {
                      description = "The ID of the filter to be fetched.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/filters/{id}",
                  response = {
                    ["$ref"] = "Filter",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
                list = {
                  description = "Lists the message filters of a Gmail user.",
                  flatPath = "gmail/v1/users/{userId}/settings/filters",
                  httpMethod = "GET",
                  id = "gmail.users.settings.filters.list",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/filters",
                  response = {
                    ["$ref"] = "ListFiltersResponse",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
              },
            },
            forwardingAddresses = {
              methods = {
                create = {
                  description = "Creates a forwarding address. If ownership verification is required, a message will be sent to the recipient and the resource's verification status will be set to `pending`; otherwise, the resource will be created with verification status set to `accepted`. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/forwardingAddresses",
                  httpMethod = "POST",
                  id = "gmail.users.settings.forwardingAddresses.create",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/forwardingAddresses",
                  request = {
                    ["$ref"] = "ForwardingAddress",
                  },
                  response = {
                    ["$ref"] = "ForwardingAddress",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                delete = {
                  description = "Deletes the specified forwarding address and revokes any verification that may have been required. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}",
                  httpMethod = "DELETE",
                  id = "gmail.users.settings.forwardingAddresses.delete",
                  parameterOrder = {
                    "userId",
                    "forwardingEmail",
                  },
                  parameters = {
                    forwardingEmail = {
                      description = "The forwarding address to be deleted.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}",
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                get = {
                  description = "Gets the specified forwarding address.",
                  flatPath = "gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}",
                  httpMethod = "GET",
                  id = "gmail.users.settings.forwardingAddresses.get",
                  parameterOrder = {
                    "userId",
                    "forwardingEmail",
                  },
                  parameters = {
                    forwardingEmail = {
                      description = "The forwarding address to be retrieved.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/forwardingAddresses/{forwardingEmail}",
                  response = {
                    ["$ref"] = "ForwardingAddress",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
                list = {
                  description = "Lists the forwarding addresses for the specified account.",
                  flatPath = "gmail/v1/users/{userId}/settings/forwardingAddresses",
                  httpMethod = "GET",
                  id = "gmail.users.settings.forwardingAddresses.list",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/forwardingAddresses",
                  response = {
                    ["$ref"] = "ListForwardingAddressesResponse",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
              },
            },
            sendAs = {
              methods = {
                create = {
                  description = "Creates a custom \"from\" send-as alias. If an SMTP MSA is specified, Gmail will attempt to connect to the SMTP service to validate the configuration before creating the alias. If ownership verification is required for the alias, a message will be sent to the email address and the resource's verification status will be set to `pending`; otherwise, the resource will be created with verification status set to `accepted`. If a signature is provided, Gmail will sanitize the HTML before saving it with the alias. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/sendAs",
                  httpMethod = "POST",
                  id = "gmail.users.settings.sendAs.create",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/sendAs",
                  request = {
                    ["$ref"] = "SendAs",
                  },
                  response = {
                    ["$ref"] = "SendAs",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                delete = {
                  description = "Deletes the specified send-as alias. Revokes any verification that may have been required for using it. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  httpMethod = "DELETE",
                  id = "gmail.users.settings.sendAs.delete",
                  parameterOrder = {
                    "userId",
                    "sendAsEmail",
                  },
                  parameters = {
                    sendAsEmail = {
                      description = "The send-as alias to be deleted.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                get = {
                  description = "Gets the specified send-as alias. Fails with an HTTP 404 error if the specified address is not a member of the collection.",
                  flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  httpMethod = "GET",
                  id = "gmail.users.settings.sendAs.get",
                  parameterOrder = {
                    "userId",
                    "sendAsEmail",
                  },
                  parameters = {
                    sendAsEmail = {
                      description = "The send-as alias to be retrieved.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  response = {
                    ["$ref"] = "SendAs",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
                list = {
                  description = "Lists the send-as aliases for the specified account. The result includes the primary send-as address associated with the account as well as any custom \"from\" aliases.",
                  flatPath = "gmail/v1/users/{userId}/settings/sendAs",
                  httpMethod = "GET",
                  id = "gmail.users.settings.sendAs.list",
                  parameterOrder = {
                    "userId",
                  },
                  parameters = {
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/sendAs",
                  response = {
                    ["$ref"] = "ListSendAsResponse",
                  },
                  scopes = {
                    "https://mail.google.com/",
                    "https://www.googleapis.com/auth/gmail.modify",
                    "https://www.googleapis.com/auth/gmail.readonly",
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                  },
                },
                patch = {
                  description = "Patch the specified send-as alias.",
                  flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  httpMethod = "PATCH",
                  id = "gmail.users.settings.sendAs.patch",
                  parameterOrder = {
                    "userId",
                    "sendAsEmail",
                  },
                  parameters = {
                    sendAsEmail = {
                      description = "The send-as alias to be updated.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  request = {
                    ["$ref"] = "SendAs",
                  },
                  response = {
                    ["$ref"] = "SendAs",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                update = {
                  description = "Updates a send-as alias. If a signature is provided, Gmail will sanitize the HTML before saving it with the alias. Addresses other than the primary address for the account can only be updated by service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  httpMethod = "PUT",
                  id = "gmail.users.settings.sendAs.update",
                  parameterOrder = {
                    "userId",
                    "sendAsEmail",
                  },
                  parameters = {
                    sendAsEmail = {
                      description = "The send-as alias to be updated.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}",
                  request = {
                    ["$ref"] = "SendAs",
                  },
                  response = {
                    ["$ref"] = "SendAs",
                  },
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.basic",
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
                verify = {
                  description = "Sends a verification email to the specified send-as alias address. The verification status must be `pending`. This method is only available to service account clients that have been delegated domain-wide authority.",
                  flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/verify",
                  httpMethod = "POST",
                  id = "gmail.users.settings.sendAs.verify",
                  parameterOrder = {
                    "userId",
                    "sendAsEmail",
                  },
                  parameters = {
                    sendAsEmail = {
                      description = "The send-as alias to be verified.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                    userId = {
                      default = "me",
                      description = "User's email address. The special value \"me\" can be used to indicate the authenticated user.",
                      location = "path",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/verify",
                  scopes = {
                    "https://www.googleapis.com/auth/gmail.settings.sharing",
                  },
                },
              },
              resources = {
                smimeInfo = {
                  methods = {
                    delete = {
                      description = "Deletes the specified S/MIME config for the specified send-as alias.",
                      flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}",
                      httpMethod = "DELETE",
                      id = "gmail.users.settings.sendAs.smimeInfo.delete",
                      parameterOrder = {
                        "userId",
                        "sendAsEmail",
                        "id",
                      },
                      parameters = {
                        id = {
                          description = "The immutable ID for the SmimeInfo.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        sendAsEmail = {
                          description = "The email address that appears in the \"From:\" header for mail sent using this alias.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}",
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    get = {
                      description = "Gets the specified S/MIME config for the specified send-as alias.",
                      flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}",
                      httpMethod = "GET",
                      id = "gmail.users.settings.sendAs.smimeInfo.get",
                      parameterOrder = {
                        "userId",
                        "sendAsEmail",
                        "id",
                      },
                      parameters = {
                        id = {
                          description = "The immutable ID for the SmimeInfo.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        sendAsEmail = {
                          description = "The email address that appears in the \"From:\" header for mail sent using this alias.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}",
                      response = {
                        ["$ref"] = "SmimeInfo",
                      },
                      scopes = {
                        "https://mail.google.com/",
                        "https://www.googleapis.com/auth/gmail.modify",
                        "https://www.googleapis.com/auth/gmail.readonly",
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    insert = {
                      description = "Insert (upload) the given S/MIME config for the specified send-as alias. Note that pkcs12 format is required for the key.",
                      flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo",
                      httpMethod = "POST",
                      id = "gmail.users.settings.sendAs.smimeInfo.insert",
                      parameterOrder = {
                        "userId",
                        "sendAsEmail",
                      },
                      parameters = {
                        sendAsEmail = {
                          description = "The email address that appears in the \"From:\" header for mail sent using this alias.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo",
                      request = {
                        ["$ref"] = "SmimeInfo",
                      },
                      response = {
                        ["$ref"] = "SmimeInfo",
                      },
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    list = {
                      description = "Lists S/MIME configs for the specified send-as alias.",
                      flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo",
                      httpMethod = "GET",
                      id = "gmail.users.settings.sendAs.smimeInfo.list",
                      parameterOrder = {
                        "userId",
                        "sendAsEmail",
                      },
                      parameters = {
                        sendAsEmail = {
                          description = "The email address that appears in the \"From:\" header for mail sent using this alias.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo",
                      response = {
                        ["$ref"] = "ListSmimeInfoResponse",
                      },
                      scopes = {
                        "https://mail.google.com/",
                        "https://www.googleapis.com/auth/gmail.modify",
                        "https://www.googleapis.com/auth/gmail.readonly",
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                    setDefault = {
                      description = "Sets the default S/MIME config for the specified send-as alias.",
                      flatPath = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}/setDefault",
                      httpMethod = "POST",
                      id = "gmail.users.settings.sendAs.smimeInfo.setDefault",
                      parameterOrder = {
                        "userId",
                        "sendAsEmail",
                        "id",
                      },
                      parameters = {
                        id = {
                          description = "The immutable ID for the SmimeInfo.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        sendAsEmail = {
                          description = "The email address that appears in the \"From:\" header for mail sent using this alias.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                        userId = {
                          default = "me",
                          description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                          location = "path",
                          required = true,
                          type = "string",
                        },
                      },
                      path = "gmail/v1/users/{userId}/settings/sendAs/{sendAsEmail}/smimeInfo/{id}/setDefault",
                      scopes = {
                        "https://www.googleapis.com/auth/gmail.settings.basic",
                        "https://www.googleapis.com/auth/gmail.settings.sharing",
                      },
                    },
                  },
                },
              },
            },
          },
        },
        threads = {
          methods = {
            delete = {
              description = "Immediately and permanently deletes the specified thread. Any messages that belong to the thread are also deleted. This operation cannot be undone. Prefer `threads.trash` instead.",
              flatPath = "gmail/v1/users/{userId}/threads/{id}",
              httpMethod = "DELETE",
              id = "gmail.users.threads.delete",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "ID of the Thread to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/threads/{id}",
              scopes = {
                "https://mail.google.com/",
              },
            },
            get = {
              description = "Gets the specified thread.",
              flatPath = "gmail/v1/users/{userId}/threads/{id}",
              httpMethod = "GET",
              id = "gmail.users.threads.get",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                format = {
                  default = "full",
                  description = "The format to return the messages in.",
                  enum = {
                    "full",
                    "metadata",
                    "minimal",
                  },
                  enumDescriptions = {
                    "Returns the full email message data with body content parsed in the `payload` field; the `raw` field is not used. Format cannot be used when accessing the api using the gmail.metadata scope.",
                    "Returns only email message IDs, labels, and email headers.",
                    "Returns only email message IDs and labels; does not return the email headers, body, or payload.",
                  },
                  location = "query",
                  type = "string",
                },
                id = {
                  description = "The ID of the thread to retrieve.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                metadataHeaders = {
                  description = "When given and format is METADATA, only include headers specified.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/threads/{id}",
              response = {
                ["$ref"] = "Thread",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.addons.current.message.action",
                "https://www.googleapis.com/auth/gmail.addons.current.message.metadata",
                "https://www.googleapis.com/auth/gmail.addons.current.message.readonly",
                "https://www.googleapis.com/auth/gmail.metadata",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            list = {
              description = "Lists the threads in the user's mailbox.",
              flatPath = "gmail/v1/users/{userId}/threads",
              httpMethod = "GET",
              id = "gmail.users.threads.list",
              parameterOrder = {
                "userId",
              },
              parameters = {
                includeSpamTrash = {
                  default = "false",
                  description = "Include threads from `SPAM` and `TRASH` in the results.",
                  location = "query",
                  type = "boolean",
                },
                labelIds = {
                  description = "Only return threads with labels that match all of the specified label IDs.",
                  location = "query",
                  repeated = true,
                  type = "string",
                },
                maxResults = {
                  default = "100",
                  description = "Maximum number of threads to return. This field defaults to 100. The maximum allowed value for this field is 500.",
                  format = "uint32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Page token to retrieve a specific page of results in the list.",
                  location = "query",
                  type = "string",
                },
                q = {
                  description = "Only return threads matching the specified query. Supports the same query format as the Gmail search box. For example, `\"from:someuser@example.com rfc822msgid: is:unread\"`. Parameter cannot be used when accessing the api using the gmail.metadata scope.",
                  location = "query",
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/threads",
              response = {
                ["$ref"] = "ListThreadsResponse",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.metadata",
                "https://www.googleapis.com/auth/gmail.modify",
                "https://www.googleapis.com/auth/gmail.readonly",
              },
            },
            modify = {
              description = "Modifies the labels applied to the thread. This applies to all messages in the thread.",
              flatPath = "gmail/v1/users/{userId}/threads/{id}/modify",
              httpMethod = "POST",
              id = "gmail.users.threads.modify",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the thread to modify.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/threads/{id}/modify",
              request = {
                ["$ref"] = "ModifyThreadRequest",
              },
              response = {
                ["$ref"] = "Thread",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            trash = {
              description = "Moves the specified thread to the trash. Any messages that belong to the thread are also moved to the trash.",
              flatPath = "gmail/v1/users/{userId}/threads/{id}/trash",
              httpMethod = "POST",
              id = "gmail.users.threads.trash",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the thread to Trash.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/threads/{id}/trash",
              response = {
                ["$ref"] = "Thread",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
            untrash = {
              description = "Removes the specified thread from the trash. Any messages that belong to the thread are also removed from the trash.",
              flatPath = "gmail/v1/users/{userId}/threads/{id}/untrash",
              httpMethod = "POST",
              id = "gmail.users.threads.untrash",
              parameterOrder = {
                "userId",
                "id",
              },
              parameters = {
                id = {
                  description = "The ID of the thread to remove from Trash.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                userId = {
                  default = "me",
                  description = "The user's email address. The special value `me` can be used to indicate the authenticated user.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "gmail/v1/users/{userId}/threads/{id}/untrash",
              response = {
                ["$ref"] = "Thread",
              },
              scopes = {
                "https://mail.google.com/",
                "https://www.googleapis.com/auth/gmail.modify",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230102",
  rootUrl = "https://gmail.googleapis.com/",
  schemas = {
    AutoForwarding = {
      description = "Auto-forwarding settings for an account.",
      id = "AutoForwarding",
      properties = {
        disposition = {
          description = "The state that a message should be left in after it has been forwarded.",
          enum = {
            "dispositionUnspecified",
            "leaveInInbox",
            "archive",
            "trash",
            "markRead",
          },
          enumDescriptions = {
            "Unspecified disposition.",
            "Leave the message in the `INBOX`.",
            "Archive the message.",
            "Move the message to the `TRASH`.",
            "Leave the message in the `INBOX` and mark it as read.",
          },
          type = "string",
        },
        emailAddress = {
          description = "Email address to which all incoming messages are forwarded. This email address must be a verified member of the forwarding addresses.",
          type = "string",
        },
        enabled = {
          description = "Whether all incoming mail is automatically forwarded to another address.",
          type = "boolean",
        },
      },
      type = "object",
    },
    BatchDeleteMessagesRequest = {
      id = "BatchDeleteMessagesRequest",
      properties = {
        ids = {
          description = "The IDs of the messages to delete.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    BatchModifyMessagesRequest = {
      id = "BatchModifyMessagesRequest",
      properties = {
        addLabelIds = {
          description = "A list of label IDs to add to messages.",
          items = {
            type = "string",
          },
          type = "array",
        },
        ids = {
          description = "The IDs of the messages to modify. There is a limit of 1000 ids per request.",
          items = {
            type = "string",
          },
          type = "array",
        },
        removeLabelIds = {
          description = "A list of label IDs to remove from messages.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CseIdentity = {
      description = "[Beta](https://workspace.google.com/terms/service-terms/index.html). The client-side encryption (CSE) configuration for the email address of an authenticated user. Gmail uses CSE configurations to save drafts of client-side encrypted email messages, and to sign and send encrypted email messages.",
      id = "CseIdentity",
      properties = {
        emailAddress = {
          description = "The email address for the sending identity. The email address must be the primary email address of the authenticated user.",
          type = "string",
        },
        primaryKeyPairId = {
          description = "If a key pair is associated, the identifier of the key pair, CseKeyPair.",
          type = "string",
        },
      },
      type = "object",
    },
    CseKeyPair = {
      description = "[Beta](https://workspace.google.com/terms/service-terms/index.html). A client-side encryption S/MIME key pair, which is comprised of a public key, its certificate chain, and metadata for its paired private key. Gmail uses the key pair to complete the following tasks: - Sign outgoing client-side encrypted messages. - Save and reopen drafts of client-side encrypted messages. - Save and reopen sent messages. - Decrypt incoming or archived S/MIME messages.",
      id = "CseKeyPair",
      properties = {
        disableTime = {
          description = "Output only. If a key pair is set to `DISABLED`, the time that the key pair's state changed from `ENABLED` to `DISABLED`. This field is present only when the key pair is in state `DISABLED`.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        enablementState = {
          description = "Output only. The current state of the key pair.",
          enum = {
            "stateUnspecified",
            "enabled",
            "disabled",
          },
          enumDescriptions = {
            "The current state of the key pair is not set. The key pair is neither turned on nor turned off.",
            "The key pair is turned on. For any email messages that this key pair encrypts, Gmail decrypts the messages and signs any outgoing mail with the private key. To turn on a key pair, use the EnableCseKeyPair method.",
            "The key pair is turned off. Authenticated users cannot decrypt email messages nor sign outgoing messages. If a key pair is turned off for more than 30 days, you can permanently delete it. To turn off a key pair, use the DisableCseKeyPair method.",
          },
          readOnly = true,
          type = "string",
        },
        keyPairId = {
          description = "Output only. The immutable ID for the client-side encryption S/MIME key pair.",
          readOnly = true,
          type = "string",
        },
        pem = {
          description = "Output only. The public key and its certificate chain, in [PEM](https://en.wikipedia.org/wiki/Privacy-Enhanced_Mail) format.",
          readOnly = true,
          type = "string",
        },
        pkcs7 = {
          description = "Input only. The public key and its certificate chain. The chain must be in [PKCS#7](https://en.wikipedia.org/wiki/PKCS_7) format and use PEM encoding and ASCII armor.",
          type = "string",
        },
        privateKeyMetadata = {
          description = "Metadata for instances of this key pair's private key.",
          items = {
            ["$ref"] = "CsePrivateKeyMetadata",
          },
          type = "array",
        },
        subjectEmailAddresses = {
          description = "Output only. The email address identities that are specified on the leaf certificate.",
          items = {
            type = "string",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    CsePrivateKeyMetadata = {
      description = "Metadata for a private key instance.",
      id = "CsePrivateKeyMetadata",
      properties = {
        kaclsKeyMetadata = {
          ["$ref"] = "KaclsKeyMetadata",
          description = "Metadata for a private key instance managed by an external key access control list service.",
        },
        privateKeyMetadataId = {
          description = "Output only. The immutable ID for the private key metadata instance.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    Delegate = {
      description = "Settings for a delegate. Delegates can read, send, and delete messages, as well as view and add contacts, for the delegator's account. See \"Set up mail delegation\" for more information about delegates.",
      id = "Delegate",
      properties = {
        delegateEmail = {
          description = "The email address of the delegate.",
          type = "string",
        },
        verificationStatus = {
          description = "Indicates whether this address has been verified and can act as a delegate for the account. Read-only.",
          enum = {
            "verificationStatusUnspecified",
            "accepted",
            "pending",
            "rejected",
            "expired",
          },
          enumDescriptions = {
            "Unspecified verification status.",
            "The address can act a delegate for the account.",
            "A verification request was mailed to the address, and the owner has not yet accepted it.",
            "A verification request was mailed to the address, and the owner rejected it.",
            "A verification request was mailed to the address, and it expired without verification.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    DisableCseKeyPairRequest = {
      description = "Requests to turn off a client-side encryption key pair.",
      id = "DisableCseKeyPairRequest",
      properties = {},
      type = "object",
    },
    Draft = {
      description = "A draft email in the user's mailbox.",
      id = "Draft",
      properties = {
        id = {
          annotations = {
            required = {
              "gmail.users.drafts.send",
            },
          },
          description = "The immutable ID of the draft.",
          type = "string",
        },
        message = {
          ["$ref"] = "Message",
          description = "The message content of the draft.",
        },
      },
      type = "object",
    },
    EnableCseKeyPairRequest = {
      description = "Requests to turn on a client-side encryption key pair.",
      id = "EnableCseKeyPairRequest",
      properties = {},
      type = "object",
    },
    Filter = {
      description = "Resource definition for Gmail filters. Filters apply to specific messages instead of an entire email thread.",
      id = "Filter",
      properties = {
        action = {
          ["$ref"] = "FilterAction",
          description = "Action that the filter performs.",
        },
        criteria = {
          ["$ref"] = "FilterCriteria",
          description = "Matching criteria for the filter.",
        },
        id = {
          description = "The server assigned ID of the filter.",
          type = "string",
        },
      },
      type = "object",
    },
    FilterAction = {
      description = "A set of actions to perform on a message.",
      id = "FilterAction",
      properties = {
        addLabelIds = {
          description = "List of labels to add to the message.",
          items = {
            type = "string",
          },
          type = "array",
        },
        forward = {
          description = "Email address that the message should be forwarded to.",
          type = "string",
        },
        removeLabelIds = {
          description = "List of labels to remove from the message.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    FilterCriteria = {
      description = "Message matching criteria.",
      id = "FilterCriteria",
      properties = {
        excludeChats = {
          description = "Whether the response should exclude chats.",
          type = "boolean",
        },
        from = {
          description = "The sender's display name or email address.",
          type = "string",
        },
        hasAttachment = {
          description = "Whether the message has any attachment.",
          type = "boolean",
        },
        negatedQuery = {
          description = "Only return messages not matching the specified query. Supports the same query format as the Gmail search box. For example, `\"from:someuser@example.com rfc822msgid: is:unread\"`.",
          type = "string",
        },
        query = {
          description = "Only return messages matching the specified query. Supports the same query format as the Gmail search box. For example, `\"from:someuser@example.com rfc822msgid: is:unread\"`.",
          type = "string",
        },
        size = {
          description = "The size of the entire RFC822 message in bytes, including all headers and attachments.",
          format = "int32",
          type = "integer",
        },
        sizeComparison = {
          description = "How the message size in bytes should be in relation to the size field.",
          enum = {
            "unspecified",
            "smaller",
            "larger",
          },
          enumDescriptions = {
            "",
            "Find messages smaller than the given size.",
            "Find messages larger than the given size.",
          },
          type = "string",
        },
        subject = {
          description = "Case-insensitive phrase found in the message's subject. Trailing and leading whitespace are be trimmed and adjacent spaces are collapsed.",
          type = "string",
        },
        to = {
          description = "The recipient's display name or email address. Includes recipients in the \"to\", \"cc\", and \"bcc\" header fields. You can use simply the local part of the email address. For example, \"example\" and \"example@\" both match \"example@gmail.com\". This field is case-insensitive.",
          type = "string",
        },
      },
      type = "object",
    },
    ForwardingAddress = {
      description = "Settings for a forwarding address.",
      id = "ForwardingAddress",
      properties = {
        forwardingEmail = {
          description = "An email address to which messages can be forwarded.",
          type = "string",
        },
        verificationStatus = {
          description = "Indicates whether this address has been verified and is usable for forwarding. Read-only.",
          enum = {
            "verificationStatusUnspecified",
            "accepted",
            "pending",
          },
          enumDescriptions = {
            "Unspecified verification status.",
            "The address is ready to use for forwarding.",
            "The address is awaiting verification by the owner.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    History = {
      description = "A record of a change to the user's mailbox. Each history change may affect multiple messages in multiple ways.",
      id = "History",
      properties = {
        id = {
          description = "The mailbox sequence ID.",
          format = "uint64",
          type = "string",
        },
        labelsAdded = {
          description = "Labels added to messages in this history record.",
          items = {
            ["$ref"] = "HistoryLabelAdded",
          },
          type = "array",
        },
        labelsRemoved = {
          description = "Labels removed from messages in this history record.",
          items = {
            ["$ref"] = "HistoryLabelRemoved",
          },
          type = "array",
        },
        messages = {
          description = "List of messages changed in this history record. The fields for specific change types, such as `messagesAdded` may duplicate messages in this field. We recommend using the specific change-type fields instead of this.",
          items = {
            ["$ref"] = "Message",
          },
          type = "array",
        },
        messagesAdded = {
          description = "Messages added to the mailbox in this history record.",
          items = {
            ["$ref"] = "HistoryMessageAdded",
          },
          type = "array",
        },
        messagesDeleted = {
          description = "Messages deleted (not Trashed) from the mailbox in this history record.",
          items = {
            ["$ref"] = "HistoryMessageDeleted",
          },
          type = "array",
        },
      },
      type = "object",
    },
    HistoryLabelAdded = {
      id = "HistoryLabelAdded",
      properties = {
        labelIds = {
          description = "Label IDs added to the message.",
          items = {
            type = "string",
          },
          type = "array",
        },
        message = {
          ["$ref"] = "Message",
        },
      },
      type = "object",
    },
    HistoryLabelRemoved = {
      id = "HistoryLabelRemoved",
      properties = {
        labelIds = {
          description = "Label IDs removed from the message.",
          items = {
            type = "string",
          },
          type = "array",
        },
        message = {
          ["$ref"] = "Message",
        },
      },
      type = "object",
    },
    HistoryMessageAdded = {
      id = "HistoryMessageAdded",
      properties = {
        message = {
          ["$ref"] = "Message",
        },
      },
      type = "object",
    },
    HistoryMessageDeleted = {
      id = "HistoryMessageDeleted",
      properties = {
        message = {
          ["$ref"] = "Message",
        },
      },
      type = "object",
    },
    ImapSettings = {
      description = "IMAP settings for an account.",
      id = "ImapSettings",
      properties = {
        autoExpunge = {
          description = "If this value is true, Gmail will immediately expunge a message when it is marked as deleted in IMAP. Otherwise, Gmail will wait for an update from the client before expunging messages marked as deleted.",
          type = "boolean",
        },
        enabled = {
          description = "Whether IMAP is enabled for the account.",
          type = "boolean",
        },
        expungeBehavior = {
          description = "The action that will be executed on a message when it is marked as deleted and expunged from the last visible IMAP folder.",
          enum = {
            "expungeBehaviorUnspecified",
            "archive",
            "trash",
            "deleteForever",
          },
          enumDescriptions = {
            "Unspecified behavior.",
            "Archive messages marked as deleted.",
            "Move messages marked as deleted to the trash.",
            "Immediately and permanently delete messages marked as deleted. The expunged messages cannot be recovered.",
          },
          type = "string",
        },
        maxFolderSize = {
          description = "An optional limit on the number of messages that an IMAP folder may contain. Legal values are 0, 1000, 2000, 5000 or 10000. A value of zero is interpreted to mean that there is no limit.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    KaclsKeyMetadata = {
      description = "Metadata for private keys managed by an external key access control list service. For details about managing key access, see [Google Workspace CSE API Reference](https://developers.google.com/workspace/cse/reference).",
      id = "KaclsKeyMetadata",
      properties = {
        kaclsData = {
          description = "Opaque data generated and used by the key access control list service. Maximum size: 8 KiB.",
          type = "string",
        },
        kaclsUri = {
          description = "The URI of the key access control list service that manages the private key.",
          type = "string",
        },
      },
      type = "object",
    },
    Label = {
      description = "Labels are used to categorize messages and threads within the user's mailbox. The maximum number of labels supported for a user's mailbox is 10,000.",
      id = "Label",
      properties = {
        color = {
          ["$ref"] = "LabelColor",
          description = "The color to assign to the label. Color is only available for labels that have their `type` set to `user`.",
        },
        id = {
          annotations = {
            required = {
              "gmail.users.labels.update",
            },
          },
          description = "The immutable ID of the label.",
          type = "string",
        },
        labelListVisibility = {
          annotations = {
            required = {
              "gmail.users.labels.create",
              "gmail.users.labels.update",
            },
          },
          description = "The visibility of the label in the label list in the Gmail web interface.",
          enum = {
            "labelShow",
            "labelShowIfUnread",
            "labelHide",
          },
          enumDescriptions = {
            "Show the label in the label list.",
            "Show the label if there are any unread messages with that label.",
            "Do not show the label in the label list.",
          },
          type = "string",
        },
        messageListVisibility = {
          annotations = {
            required = {
              "gmail.users.labels.create",
              "gmail.users.labels.update",
            },
          },
          description = "The visibility of messages with this label in the message list in the Gmail web interface.",
          enum = {
            "show",
            "hide",
          },
          enumDescriptions = {
            "Show the label in the message list.",
            "Do not show the label in the message list.",
          },
          type = "string",
        },
        messagesTotal = {
          description = "The total number of messages with the label.",
          format = "int32",
          type = "integer",
        },
        messagesUnread = {
          description = "The number of unread messages with the label.",
          format = "int32",
          type = "integer",
        },
        name = {
          annotations = {
            required = {
              "gmail.users.labels.create",
              "gmail.users.labels.update",
            },
          },
          description = "The display name of the label.",
          type = "string",
        },
        threadsTotal = {
          description = "The total number of threads with the label.",
          format = "int32",
          type = "integer",
        },
        threadsUnread = {
          description = "The number of unread threads with the label.",
          format = "int32",
          type = "integer",
        },
        type = {
          description = "The owner type for the label. User labels are created by the user and can be modified and deleted by the user and can be applied to any message or thread. System labels are internally created and cannot be added, modified, or deleted. System labels may be able to be applied to or removed from messages and threads under some circumstances but this is not guaranteed. For example, users can apply and remove the `INBOX` and `UNREAD` labels from messages and threads, but cannot apply or remove the `DRAFTS` or `SENT` labels from messages or threads.",
          enum = {
            "system",
            "user",
          },
          enumDescriptions = {
            "Labels created by Gmail.",
            "Custom labels created by the user or application.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    LabelColor = {
      id = "LabelColor",
      properties = {
        backgroundColor = {
          description = "The background color represented as hex string #RRGGBB (ex #000000). This field is required in order to set the color of a label. Only the following predefined set of color values are allowed: \\#000000, #434343, #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff, \\#fb4c2f, #ffad47, #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3, \\#f6c5be, #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8, \\#efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9, \\#e66550, #ffbc6b, #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0, \\#cc3a21, #eaa041, #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798, \\#ac2b16, #cf8933, #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775, \\#822111, #a46a21, #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c \\#464646, #e7e7e7, #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff, \\#711a36, #fbd3e0, #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5, \\#594c05, #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1, \\#c2c2c2, #4986e7, #2da2bb, #b99aff, #994a64, #f691b2, #ff7537, #ffad46, \\#662e37, #ebdbde, #cca6ac, #094228, #42d692, #16a765",
          type = "string",
        },
        textColor = {
          description = "The text color of the label, represented as hex string. This field is required in order to set the color of a label. Only the following predefined set of color values are allowed: \\#000000, #434343, #666666, #999999, #cccccc, #efefef, #f3f3f3, #ffffff, \\#fb4c2f, #ffad47, #fad165, #16a766, #43d692, #4a86e8, #a479e2, #f691b3, \\#f6c5be, #ffe6c7, #fef1d1, #b9e4d0, #c6f3de, #c9daf8, #e4d7f5, #fcdee8, \\#efa093, #ffd6a2, #fce8b3, #89d3b2, #a0eac9, #a4c2f4, #d0bcf1, #fbc8d9, \\#e66550, #ffbc6b, #fcda83, #44b984, #68dfa9, #6d9eeb, #b694e8, #f7a7c0, \\#cc3a21, #eaa041, #f2c960, #149e60, #3dc789, #3c78d8, #8e63ce, #e07798, \\#ac2b16, #cf8933, #d5ae49, #0b804b, #2a9c68, #285bac, #653e9b, #b65775, \\#822111, #a46a21, #aa8831, #076239, #1a764d, #1c4587, #41236d, #83334c \\#464646, #e7e7e7, #0d3472, #b6cff5, #0d3b44, #98d7e4, #3d188e, #e3d7ff, \\#711a36, #fbd3e0, #8a1c0a, #f2b2a8, #7a2e0b, #ffc8af, #7a4706, #ffdeb5, \\#594c05, #fbe983, #684e07, #fdedc1, #0b4f30, #b3efd3, #04502e, #a2dcc1, \\#c2c2c2, #4986e7, #2da2bb, #b99aff, #994a64, #f691b2, #ff7537, #ffad46, \\#662e37, #ebdbde, #cca6ac, #094228, #42d692, #16a765",
          type = "string",
        },
      },
      type = "object",
    },
    LanguageSettings = {
      description = "Language settings for an account. These settings correspond to the \"Language settings\" feature in the web interface.",
      id = "LanguageSettings",
      properties = {
        displayLanguage = {
          description = "The language to display Gmail in, formatted as an RFC 3066 Language Tag (for example `en-GB`, `fr` or `ja` for British English, French, or Japanese respectively). The set of languages supported by Gmail evolves over time, so please refer to the \"Language\" dropdown in the Gmail settings for all available options, as described in the language settings help article. A table of sample values is also provided in the Managing Language Settings guide Not all Gmail clients can display the same set of languages. In the case that a user's display language is not available for use on a particular client, said client automatically chooses to display in the closest supported variant (or a reasonable default).",
          type = "string",
        },
      },
      type = "object",
    },
    ListCseIdentitiesResponse = {
      id = "ListCseIdentitiesResponse",
      properties = {
        cseIdentities = {
          description = "One page of the list of CSE identities configured for the user.",
          items = {
            ["$ref"] = "CseIdentity",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Pagination token to be passed to a subsequent ListCseIdentities call in order to retrieve the next page of identities. If this value is not returned or is the empty string, then no further pages remain.",
          type = "string",
        },
      },
      type = "object",
    },
    ListCseKeyPairsResponse = {
      id = "ListCseKeyPairsResponse",
      properties = {
        cseKeyPairs = {
          description = "One page of the list of CSE key pairs installed for the user.",
          items = {
            ["$ref"] = "CseKeyPair",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Pagination token to be passed to a subsequent ListCseKeyPairs call in order to retrieve the next page of key pairs. If this value is not returned, then no further pages remain.",
          type = "string",
        },
      },
      type = "object",
    },
    ListDelegatesResponse = {
      description = "Response for the ListDelegates method.",
      id = "ListDelegatesResponse",
      properties = {
        delegates = {
          description = "List of the user's delegates (with any verification status). If an account doesn't have delegates, this field doesn't appear.",
          items = {
            ["$ref"] = "Delegate",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListDraftsResponse = {
      id = "ListDraftsResponse",
      properties = {
        drafts = {
          description = "List of drafts. Note that the `Message` property in each `Draft` resource only contains an `id` and a `threadId`. The messages.get method can fetch additional message details.",
          items = {
            ["$ref"] = "Draft",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results in the list.",
          type = "string",
        },
        resultSizeEstimate = {
          description = "Estimated total number of results.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListFiltersResponse = {
      description = "Response for the ListFilters method.",
      id = "ListFiltersResponse",
      properties = {
        filter = {
          description = "List of a user's filters.",
          items = {
            ["$ref"] = "Filter",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListForwardingAddressesResponse = {
      description = "Response for the ListForwardingAddresses method.",
      id = "ListForwardingAddressesResponse",
      properties = {
        forwardingAddresses = {
          description = "List of addresses that may be used for forwarding.",
          items = {
            ["$ref"] = "ForwardingAddress",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListHistoryResponse = {
      id = "ListHistoryResponse",
      properties = {
        history = {
          description = "List of history records. Any `messages` contained in the response will typically only have `id` and `threadId` fields populated.",
          items = {
            ["$ref"] = "History",
          },
          type = "array",
        },
        historyId = {
          description = "The ID of the mailbox's current history record.",
          format = "uint64",
          type = "string",
        },
        nextPageToken = {
          description = "Page token to retrieve the next page of results in the list.",
          type = "string",
        },
      },
      type = "object",
    },
    ListLabelsResponse = {
      id = "ListLabelsResponse",
      properties = {
        labels = {
          description = "List of labels. Note that each label resource only contains an `id`, `name`, `messageListVisibility`, `labelListVisibility`, and `type`. The labels.get method can fetch additional label details.",
          items = {
            ["$ref"] = "Label",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListMessagesResponse = {
      id = "ListMessagesResponse",
      properties = {
        messages = {
          description = "List of messages. Note that each message resource contains only an `id` and a `threadId`. Additional message details can be fetched using the messages.get method.",
          items = {
            ["$ref"] = "Message",
          },
          type = "array",
        },
        nextPageToken = {
          description = "Token to retrieve the next page of results in the list.",
          type = "string",
        },
        resultSizeEstimate = {
          description = "Estimated total number of results.",
          format = "uint32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListSendAsResponse = {
      description = "Response for the ListSendAs method.",
      id = "ListSendAsResponse",
      properties = {
        sendAs = {
          description = "List of send-as aliases.",
          items = {
            ["$ref"] = "SendAs",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListSmimeInfoResponse = {
      id = "ListSmimeInfoResponse",
      properties = {
        smimeInfo = {
          description = "List of SmimeInfo.",
          items = {
            ["$ref"] = "SmimeInfo",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListThreadsResponse = {
      id = "ListThreadsResponse",
      properties = {
        nextPageToken = {
          description = "Page token to retrieve the next page of results in the list.",
          type = "string",
        },
        resultSizeEstimate = {
          description = "Estimated total number of results.",
          format = "uint32",
          type = "integer",
        },
        threads = {
          description = "List of threads. Note that each thread resource does not contain a list of `messages`. The list of `messages` for a given thread can be fetched using the threads.get method.",
          items = {
            ["$ref"] = "Thread",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Message = {
      description = "An email message.",
      id = "Message",
      properties = {
        historyId = {
          description = "The ID of the last history record that modified this message.",
          format = "uint64",
          type = "string",
        },
        id = {
          description = "The immutable ID of the message.",
          type = "string",
        },
        internalDate = {
          description = "The internal message creation timestamp (epoch ms), which determines ordering in the inbox. For normal SMTP-received email, this represents the time the message was originally accepted by Google, which is more reliable than the `Date` header. However, for API-migrated mail, it can be configured by client to be based on the `Date` header.",
          format = "int64",
          type = "string",
        },
        labelIds = {
          description = "List of IDs of labels applied to this message.",
          items = {
            type = "string",
          },
          type = "array",
        },
        payload = {
          ["$ref"] = "MessagePart",
          description = "The parsed email structure in the message parts.",
        },
        raw = {
          annotations = {
            required = {
              "gmail.users.drafts.create",
              "gmail.users.drafts.update",
              "gmail.users.messages.insert",
              "gmail.users.messages.send",
            },
          },
          description = "The entire email message in an RFC 2822 formatted and base64url encoded string. Returned in `messages.get` and `drafts.get` responses when the `format=RAW` parameter is supplied.",
          format = "byte",
          type = "string",
        },
        sizeEstimate = {
          description = "Estimated size in bytes of the message.",
          format = "int32",
          type = "integer",
        },
        snippet = {
          description = "A short part of the message text.",
          type = "string",
        },
        threadId = {
          description = "The ID of the thread the message belongs to. To add a message or draft to a thread, the following criteria must be met: 1. The requested `threadId` must be specified on the `Message` or `Draft.Message` you supply with your request. 2. The `References` and `In-Reply-To` headers must be set in compliance with the [RFC 2822](https://tools.ietf.org/html/rfc2822) standard. 3. The `Subject` headers must match. ",
          type = "string",
        },
      },
      type = "object",
    },
    MessagePart = {
      description = "A single MIME message part.",
      id = "MessagePart",
      properties = {
        body = {
          ["$ref"] = "MessagePartBody",
          description = "The message part body for this part, which may be empty for container MIME message parts.",
        },
        filename = {
          description = "The filename of the attachment. Only present if this message part represents an attachment.",
          type = "string",
        },
        headers = {
          description = "List of headers on this message part. For the top-level message part, representing the entire message payload, it will contain the standard RFC 2822 email headers such as `To`, `From`, and `Subject`.",
          items = {
            ["$ref"] = "MessagePartHeader",
          },
          type = "array",
        },
        mimeType = {
          description = "The MIME type of the message part.",
          type = "string",
        },
        partId = {
          description = "The immutable ID of the message part.",
          type = "string",
        },
        parts = {
          description = "The child MIME message parts of this part. This only applies to container MIME message parts, for example `multipart/*`. For non- container MIME message part types, such as `text/plain`, this field is empty. For more information, see RFC 1521.",
          items = {
            ["$ref"] = "MessagePart",
          },
          type = "array",
        },
      },
      type = "object",
    },
    MessagePartBody = {
      description = "The body of a single MIME message part.",
      id = "MessagePartBody",
      properties = {
        attachmentId = {
          description = "When present, contains the ID of an external attachment that can be retrieved in a separate `messages.attachments.get` request. When not present, the entire content of the message part body is contained in the data field.",
          type = "string",
        },
        data = {
          description = "The body data of a MIME message part as a base64url encoded string. May be empty for MIME container types that have no message body or when the body data is sent as a separate attachment. An attachment ID is present if the body data is contained in a separate attachment.",
          format = "byte",
          type = "string",
        },
        size = {
          description = "Number of bytes for the message part data (encoding notwithstanding).",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MessagePartHeader = {
      id = "MessagePartHeader",
      properties = {
        name = {
          description = "The name of the header before the `:` separator. For example, `To`.",
          type = "string",
        },
        value = {
          description = "The value of the header after the `:` separator. For example, `someuser@example.com`.",
          type = "string",
        },
      },
      type = "object",
    },
    ModifyMessageRequest = {
      id = "ModifyMessageRequest",
      properties = {
        addLabelIds = {
          description = "A list of IDs of labels to add to this message. You can add up to 100 labels with each update.",
          items = {
            type = "string",
          },
          type = "array",
        },
        removeLabelIds = {
          description = "A list IDs of labels to remove from this message. You can remove up to 100 labels with each update.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ModifyThreadRequest = {
      id = "ModifyThreadRequest",
      properties = {
        addLabelIds = {
          description = "A list of IDs of labels to add to this thread. You can add up to 100 labels with each update.",
          items = {
            type = "string",
          },
          type = "array",
        },
        removeLabelIds = {
          description = "A list of IDs of labels to remove from this thread. You can remove up to 100 labels with each update.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ObliterateCseKeyPairRequest = {
      description = "Request to obliterate a CSE key pair.",
      id = "ObliterateCseKeyPairRequest",
      properties = {},
      type = "object",
    },
    PopSettings = {
      description = "POP settings for an account.",
      id = "PopSettings",
      properties = {
        accessWindow = {
          description = "The range of messages which are accessible via POP.",
          enum = {
            "accessWindowUnspecified",
            "disabled",
            "fromNowOn",
            "allMail",
          },
          enumDescriptions = {
            "Unspecified range.",
            "Indicates that no messages are accessible via POP.",
            "Indicates that unfetched messages received after some past point in time are accessible via POP.",
            "Indicates that all unfetched messages are accessible via POP.",
          },
          type = "string",
        },
        disposition = {
          description = "The action that will be executed on a message after it has been fetched via POP.",
          enum = {
            "dispositionUnspecified",
            "leaveInInbox",
            "archive",
            "trash",
            "markRead",
          },
          enumDescriptions = {
            "Unspecified disposition.",
            "Leave the message in the `INBOX`.",
            "Archive the message.",
            "Move the message to the `TRASH`.",
            "Leave the message in the `INBOX` and mark it as read.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    Profile = {
      description = "Profile for a Gmail user.",
      id = "Profile",
      properties = {
        emailAddress = {
          description = "The user's email address.",
          type = "string",
        },
        historyId = {
          description = "The ID of the mailbox's current history record.",
          format = "uint64",
          type = "string",
        },
        messagesTotal = {
          description = "The total number of messages in the mailbox.",
          format = "int32",
          type = "integer",
        },
        threadsTotal = {
          description = "The total number of threads in the mailbox.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    SendAs = {
      description = "Settings associated with a send-as alias, which can be either the primary login address associated with the account or a custom \"from\" address. Send-as aliases correspond to the \"Send Mail As\" feature in the web interface.",
      id = "SendAs",
      properties = {
        displayName = {
          description = "A name that appears in the \"From:\" header for mail sent using this alias. For custom \"from\" addresses, when this is empty, Gmail will populate the \"From:\" header with the name that is used for the primary address associated with the account. If the admin has disabled the ability for users to update their name format, requests to update this field for the primary login will silently fail.",
          type = "string",
        },
        isDefault = {
          description = "Whether this address is selected as the default \"From:\" address in situations such as composing a new message or sending a vacation auto-reply. Every Gmail account has exactly one default send-as address, so the only legal value that clients may write to this field is `true`. Changing this from `false` to `true` for an address will result in this field becoming `false` for the other previous default address.",
          type = "boolean",
        },
        isPrimary = {
          description = "Whether this address is the primary address used to login to the account. Every Gmail account has exactly one primary address, and it cannot be deleted from the collection of send-as aliases. This field is read-only.",
          type = "boolean",
        },
        replyToAddress = {
          description = "An optional email address that is included in a \"Reply-To:\" header for mail sent using this alias. If this is empty, Gmail will not generate a \"Reply-To:\" header.",
          type = "string",
        },
        sendAsEmail = {
          description = "The email address that appears in the \"From:\" header for mail sent using this alias. This is read-only for all operations except create.",
          type = "string",
        },
        signature = {
          description = "An optional HTML signature that is included in messages composed with this alias in the Gmail web UI. This signature is added to new emails only.",
          type = "string",
        },
        smtpMsa = {
          ["$ref"] = "SmtpMsa",
          description = "An optional SMTP service that will be used as an outbound relay for mail sent using this alias. If this is empty, outbound mail will be sent directly from Gmail's servers to the destination SMTP service. This setting only applies to custom \"from\" aliases.",
        },
        treatAsAlias = {
          description = "Whether Gmail should treat this address as an alias for the user's primary email address. This setting only applies to custom \"from\" aliases.",
          type = "boolean",
        },
        verificationStatus = {
          description = "Indicates whether this address has been verified for use as a send-as alias. Read-only. This setting only applies to custom \"from\" aliases.",
          enum = {
            "verificationStatusUnspecified",
            "accepted",
            "pending",
          },
          enumDescriptions = {
            "Unspecified verification status.",
            "The address is ready to use as a send-as alias.",
            "The address is awaiting verification by the owner.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    SmimeInfo = {
      description = "An S/MIME email config.",
      id = "SmimeInfo",
      properties = {
        encryptedKeyPassword = {
          description = "Encrypted key password, when key is encrypted.",
          type = "string",
        },
        expiration = {
          description = "When the certificate expires (in milliseconds since epoch).",
          format = "int64",
          type = "string",
        },
        id = {
          description = "The immutable ID for the SmimeInfo.",
          type = "string",
        },
        isDefault = {
          description = "Whether this SmimeInfo is the default one for this user's send-as address.",
          type = "boolean",
        },
        issuerCn = {
          description = "The S/MIME certificate issuer's common name.",
          type = "string",
        },
        pem = {
          description = "PEM formatted X509 concatenated certificate string (standard base64 encoding). Format used for returning key, which includes public key as well as certificate chain (not private key).",
          type = "string",
        },
        pkcs12 = {
          description = "PKCS#12 format containing a single private/public key pair and certificate chain. This format is only accepted from client for creating a new SmimeInfo and is never returned, because the private key is not intended to be exported. PKCS#12 may be encrypted, in which case encryptedKeyPassword should be set appropriately.",
          format = "byte",
          type = "string",
        },
      },
      type = "object",
    },
    SmtpMsa = {
      description = "Configuration for communication with an SMTP service.",
      id = "SmtpMsa",
      properties = {
        host = {
          description = "The hostname of the SMTP service. Required.",
          type = "string",
        },
        password = {
          description = "The password that will be used for authentication with the SMTP service. This is a write-only field that can be specified in requests to create or update SendAs settings; it is never populated in responses.",
          type = "string",
        },
        port = {
          description = "The port of the SMTP service. Required.",
          format = "int32",
          type = "integer",
        },
        securityMode = {
          description = "The protocol that will be used to secure communication with the SMTP service. Required.",
          enum = {
            "securityModeUnspecified",
            "none",
            "ssl",
            "starttls",
          },
          enumDescriptions = {
            "Unspecified security mode.",
            "Communication with the remote SMTP service is unsecured. Requires port 25.",
            "Communication with the remote SMTP service is secured using SSL.",
            "Communication with the remote SMTP service is secured using STARTTLS.",
          },
          type = "string",
        },
        username = {
          description = "The username that will be used for authentication with the SMTP service. This is a write-only field that can be specified in requests to create or update SendAs settings; it is never populated in responses.",
          type = "string",
        },
      },
      type = "object",
    },
    Thread = {
      description = "A collection of messages representing a conversation.",
      id = "Thread",
      properties = {
        historyId = {
          description = "The ID of the last history record that modified this thread.",
          format = "uint64",
          type = "string",
        },
        id = {
          description = "The unique ID of the thread.",
          type = "string",
        },
        messages = {
          description = "The list of messages in the thread.",
          items = {
            ["$ref"] = "Message",
          },
          type = "array",
        },
        snippet = {
          description = "A short part of the message text.",
          type = "string",
        },
      },
      type = "object",
    },
    VacationSettings = {
      description = "Vacation auto-reply settings for an account. These settings correspond to the \"Vacation responder\" feature in the web interface.",
      id = "VacationSettings",
      properties = {
        enableAutoReply = {
          description = "Flag that controls whether Gmail automatically replies to messages.",
          type = "boolean",
        },
        endTime = {
          description = "An optional end time for sending auto-replies (epoch ms). When this is specified, Gmail will automatically reply only to messages that it receives before the end time. If both `startTime` and `endTime` are specified, `startTime` must precede `endTime`.",
          format = "int64",
          type = "string",
        },
        responseBodyHtml = {
          description = "Response body in HTML format. Gmail will sanitize the HTML before storing it. If both `response_body_plain_text` and `response_body_html` are specified, `response_body_html` will be used.",
          type = "string",
        },
        responseBodyPlainText = {
          description = "Response body in plain text format. If both `response_body_plain_text` and `response_body_html` are specified, `response_body_html` will be used.",
          type = "string",
        },
        responseSubject = {
          description = "Optional text to prepend to the subject line in vacation responses. In order to enable auto-replies, either the response subject or the response body must be nonempty.",
          type = "string",
        },
        restrictToContacts = {
          description = "Flag that determines whether responses are sent to recipients who are not in the user's list of contacts.",
          type = "boolean",
        },
        restrictToDomain = {
          description = "Flag that determines whether responses are sent to recipients who are outside of the user's domain. This feature is only available for G Suite users.",
          type = "boolean",
        },
        startTime = {
          description = "An optional start time for sending auto-replies (epoch ms). When this is specified, Gmail will automatically reply only to messages that it receives after the start time. If both `startTime` and `endTime` are specified, `startTime` must precede `endTime`.",
          format = "int64",
          type = "string",
        },
      },
      type = "object",
    },
    WatchRequest = {
      description = "Set up or update a new push notification watch on this user's mailbox.",
      id = "WatchRequest",
      properties = {
        labelFilterAction = {
          description = "Filtering behavior of labelIds list specified.",
          enum = {
            "include",
            "exclude",
          },
          enumDescriptions = {
            "Only get push notifications for message changes relating to labelIds specified.",
            "Get push notifications for all message changes except those relating to labelIds specified.",
          },
          type = "string",
        },
        labelIds = {
          description = "List of label_ids to restrict notifications about. By default, if unspecified, all changes are pushed out. If specified then dictates which labels are required for a push notification to be generated.",
          items = {
            type = "string",
          },
          type = "array",
        },
        topicName = {
          description = "A fully qualified Google Cloud Pub/Sub API topic name to publish the events to. This topic name **must** already exist in Cloud Pub/Sub and you **must** have already granted gmail \"publish\" permission on it. For example, \"projects/my-project-identifier/topics/my-topic-name\" (using the Cloud Pub/Sub \"v1\" topic naming format). Note that the \"my-project-identifier\" portion must exactly match your Google developer project id (the one executing this watch request).",
          type = "string",
        },
      },
      type = "object",
    },
    WatchResponse = {
      description = "Push notification watch response.",
      id = "WatchResponse",
      properties = {
        expiration = {
          description = "When Gmail will stop sending notifications for mailbox updates (epoch millis). Call `watch` again before this time to renew the watch.",
          format = "int64",
          type = "string",
        },
        historyId = {
          description = "The ID of the mailbox's current history record.",
          format = "uint64",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Gmail API",
  version = "v1",
}
