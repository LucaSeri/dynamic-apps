return {
  auth = {
    oauth2 = {
      scopes = {
        ["https://www.googleapis.com/auth/drive"] = {
          description = "See, edit, create, and delete all of your Google Drive files",
        },
        ["https://www.googleapis.com/auth/drive.file"] = {
          description = "See, edit, create, and delete only the specific Google Drive files you use with this app",
        },
        ["https://www.googleapis.com/auth/drive.readonly"] = {
          description = "See and download all your Google Drive files",
        },
        ["https://www.googleapis.com/auth/forms.body"] = {
          description = "See, edit, create, and delete all your Google Forms forms",
        },
        ["https://www.googleapis.com/auth/forms.body.readonly"] = {
          description = "See all your Google Forms forms",
        },
        ["https://www.googleapis.com/auth/forms.responses.readonly"] = {
          description = "See all responses to your Google Forms forms",
        },
      },
    },
  },
  basePath = "",
  baseUrl = "https://forms.googleapis.com/",
  batchPath = "batch",
  canonicalName = "Forms",
  description = "Reads and writes Google Forms and responses.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/forms/api",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "forms:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://forms.mtls.googleapis.com/",
  name = "forms",
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
    forms = {
      methods = {
        batchUpdate = {
          description = "Change the form with a batch of updates.",
          flatPath = "v1/forms/{formId}:batchUpdate",
          httpMethod = "POST",
          id = "forms.forms.batchUpdate",
          parameterOrder = {
            "formId",
          },
          parameters = {
            formId = {
              description = "Required. The form ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/forms/{formId}:batchUpdate",
          request = {
            ["$ref"] = "BatchUpdateFormRequest",
          },
          response = {
            ["$ref"] = "BatchUpdateFormResponse",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/forms.body",
          },
        },
        create = {
          description = "Create a new form using the title given in the provided form message in the request. *Important:* Only the form.info.title and form.info.document_title fields are copied to the new form. All other fields including the form description, items and settings are disallowed. To create a new form and add items, you must first call forms.create to create an empty form with a title and (optional) document title, and then call forms.update to add the items.",
          flatPath = "v1/forms",
          httpMethod = "POST",
          id = "forms.forms.create",
          parameterOrder = {},
          parameters = {},
          path = "v1/forms",
          request = {
            ["$ref"] = "Form",
          },
          response = {
            ["$ref"] = "Form",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/forms.body",
          },
        },
        get = {
          description = "Get a form.",
          flatPath = "v1/forms/{formId}",
          httpMethod = "GET",
          id = "forms.forms.get",
          parameterOrder = {
            "formId",
          },
          parameters = {
            formId = {
              description = "Required. The form ID.",
              location = "path",
              required = true,
              type = "string",
            },
          },
          path = "v1/forms/{formId}",
          response = {
            ["$ref"] = "Form",
          },
          scopes = {
            "https://www.googleapis.com/auth/drive",
            "https://www.googleapis.com/auth/drive.file",
            "https://www.googleapis.com/auth/drive.readonly",
            "https://www.googleapis.com/auth/forms.body",
            "https://www.googleapis.com/auth/forms.body.readonly",
          },
        },
      },
      resources = {
        responses = {
          methods = {
            get = {
              description = "Get one response from the form.",
              flatPath = "v1/forms/{formId}/responses/{responseId}",
              httpMethod = "GET",
              id = "forms.forms.responses.get",
              parameterOrder = {
                "formId",
                "responseId",
              },
              parameters = {
                formId = {
                  description = "Required. The form ID.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                responseId = {
                  description = "Required. The response ID within the form.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/forms/{formId}/responses/{responseId}",
              response = {
                ["$ref"] = "FormResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/forms.responses.readonly",
              },
            },
            list = {
              description = "List a form's responses.",
              flatPath = "v1/forms/{formId}/responses",
              httpMethod = "GET",
              id = "forms.forms.responses.list",
              parameterOrder = {
                "formId",
              },
              parameters = {
                filter = {
                  description = "Which form responses to return. Currently, the only supported filters are: * timestamp > *N* which means to get all form responses submitted after (but not at) timestamp *N*. * timestamp >= *N* which means to get all form responses submitted at and after timestamp *N*. For both supported filters, timestamp must be formatted in RFC3339 UTC \"Zulu\" format. Examples: \"2014-10-02T15:01:23Z\" and \"2014-10-02T15:01:23.045123456Z\".",
                  location = "query",
                  type = "string",
                },
                formId = {
                  description = "Required. ID of the Form whose responses to list.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                pageSize = {
                  description = "The maximum number of responses to return. The service may return fewer than this value. If unspecified or zero, at most 5000 responses are returned.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "A page token returned by a previous list response. If this field is set, the form and the values of the filter must be the same as for the original request.",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/forms/{formId}/responses",
              response = {
                ["$ref"] = "ListFormResponsesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/forms.responses.readonly",
              },
            },
          },
        },
        watches = {
          methods = {
            create = {
              description = "Create a new watch. If a watch ID is provided, it must be unused. For each invoking project, the per form limit is one watch per Watch.EventType. A watch expires seven days after it is created (see Watch.expire_time).",
              flatPath = "v1/forms/{formId}/watches",
              httpMethod = "POST",
              id = "forms.forms.watches.create",
              parameterOrder = {
                "formId",
              },
              parameters = {
                formId = {
                  description = "Required. ID of the Form to watch.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/forms/{formId}/watches",
              request = {
                ["$ref"] = "CreateWatchRequest",
              },
              response = {
                ["$ref"] = "Watch",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/forms.body",
                "https://www.googleapis.com/auth/forms.body.readonly",
                "https://www.googleapis.com/auth/forms.responses.readonly",
              },
            },
            delete = {
              description = "Delete a watch.",
              flatPath = "v1/forms/{formId}/watches/{watchId}",
              httpMethod = "DELETE",
              id = "forms.forms.watches.delete",
              parameterOrder = {
                "formId",
                "watchId",
              },
              parameters = {
                formId = {
                  description = "Required. The ID of the Form.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                watchId = {
                  description = "Required. The ID of the Watch to delete.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/forms/{formId}/watches/{watchId}",
              response = {
                ["$ref"] = "Empty",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/forms.body",
                "https://www.googleapis.com/auth/forms.body.readonly",
                "https://www.googleapis.com/auth/forms.responses.readonly",
              },
            },
            list = {
              description = "Return a list of the watches owned by the invoking project. The maximum number of watches is two: For each invoker, the limit is one for each event type per form.",
              flatPath = "v1/forms/{formId}/watches",
              httpMethod = "GET",
              id = "forms.forms.watches.list",
              parameterOrder = {
                "formId",
              },
              parameters = {
                formId = {
                  description = "Required. ID of the Form whose watches to list.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/forms/{formId}/watches",
              response = {
                ["$ref"] = "ListWatchesResponse",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/forms.body",
                "https://www.googleapis.com/auth/forms.body.readonly",
                "https://www.googleapis.com/auth/forms.responses.readonly",
              },
            },
            renew = {
              description = "Renew an existing watch for seven days. The state of the watch after renewal is `ACTIVE`, and the `expire_time` is seven days from the renewal. Renewing a watch in an error state (e.g. `SUSPENDED`) succeeds if the error is no longer present, but fail otherwise. After a watch has expired, RenewWatch returns `NOT_FOUND`.",
              flatPath = "v1/forms/{formId}/watches/{watchId}:renew",
              httpMethod = "POST",
              id = "forms.forms.watches.renew",
              parameterOrder = {
                "formId",
                "watchId",
              },
              parameters = {
                formId = {
                  description = "Required. The ID of the Form.",
                  location = "path",
                  required = true,
                  type = "string",
                },
                watchId = {
                  description = "Required. The ID of the Watch to renew.",
                  location = "path",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/forms/{formId}/watches/{watchId}:renew",
              request = {
                ["$ref"] = "RenewWatchRequest",
              },
              response = {
                ["$ref"] = "Watch",
              },
              scopes = {
                "https://www.googleapis.com/auth/drive",
                "https://www.googleapis.com/auth/drive.file",
                "https://www.googleapis.com/auth/drive.readonly",
                "https://www.googleapis.com/auth/forms.body",
                "https://www.googleapis.com/auth/forms.body.readonly",
                "https://www.googleapis.com/auth/forms.responses.readonly",
              },
            },
          },
        },
      },
    },
  },
  revision = "20230110",
  rootUrl = "https://forms.googleapis.com/",
  schemas = {
    Answer = {
      description = "The submitted answer for a question.",
      id = "Answer",
      properties = {
        fileUploadAnswers = {
          ["$ref"] = "FileUploadAnswers",
          description = "Output only. The answers to a file upload question.",
          readOnly = true,
        },
        grade = {
          ["$ref"] = "Grade",
          description = "Output only. The grade for the answer if the form was a quiz.",
          readOnly = true,
        },
        questionId = {
          description = "Output only. The question's ID. See also Question.question_id.",
          readOnly = true,
          type = "string",
        },
        textAnswers = {
          ["$ref"] = "TextAnswers",
          description = "Output only. The specific answers as text.",
          readOnly = true,
        },
      },
      type = "object",
    },
    BatchUpdateFormRequest = {
      description = "A batch of updates to perform on a form. All the specified updates are made or none of them are.",
      id = "BatchUpdateFormRequest",
      properties = {
        includeFormInResponse = {
          description = "Whether to return an updated version of the model in the response.",
          type = "boolean",
        },
        requests = {
          description = "Required. The update requests of this batch.",
          items = {
            ["$ref"] = "Request",
          },
          type = "array",
        },
        writeControl = {
          ["$ref"] = "WriteControl",
          description = "Provides control over how write requests are executed.",
        },
      },
      type = "object",
    },
    BatchUpdateFormResponse = {
      description = "Response to a BatchUpdateFormRequest.",
      id = "BatchUpdateFormResponse",
      properties = {
        form = {
          ["$ref"] = "Form",
          description = "Based on the bool request field `include_form_in_response`, a form with all applied mutations/updates is returned or not. This may be later than the revision ID created by these changes.",
        },
        replies = {
          description = "The reply of the updates. This maps 1:1 with the update requests, although replies to some requests may be empty.",
          items = {
            ["$ref"] = "Response",
          },
          type = "array",
        },
        writeControl = {
          ["$ref"] = "WriteControl",
          description = "The updated write control after applying the request.",
        },
      },
      type = "object",
    },
    ChoiceQuestion = {
      description = "A radio/checkbox/dropdown question.",
      id = "ChoiceQuestion",
      properties = {
        options = {
          description = "Required. List of options that a respondent must choose from.",
          items = {
            ["$ref"] = "Option",
          },
          type = "array",
        },
        shuffle = {
          description = "Whether the options should be displayed in random order for different instances of the quiz. This is often used to prevent cheating by respondents who might be looking at another respondent's screen, or to address bias in a survey that might be introduced by always putting the same options first or last.",
          type = "boolean",
        },
        type = {
          description = "Required. The type of choice question.",
          enum = {
            "CHOICE_TYPE_UNSPECIFIED",
            "RADIO",
            "CHECKBOX",
            "DROP_DOWN",
          },
          enumDescriptions = {
            "Default value. Unused.",
            "Radio buttons: All choices are shown to the user, who can only pick one of them.",
            "Checkboxes: All choices are shown to the user, who can pick any number of them.",
            "Drop-down menu: The choices are only shown to the user on demand, otherwise only the current choice is shown. Only one option can be chosen.",
          },
          type = "string",
        },
      },
      type = "object",
    },
    CloudPubsubTopic = {
      description = "A Pub/Sub topic.",
      id = "CloudPubsubTopic",
      properties = {
        topicName = {
          description = "Required. A fully qualified Pub/Sub topic name to publish the events to. This topic must be owned by the calling project and already exist in Pub/Sub.",
          type = "string",
        },
      },
      type = "object",
    },
    CorrectAnswer = {
      description = "A single correct answer for a question. For multiple-valued (`CHECKBOX`) questions, several `CorrectAnswer`s may be needed to represent a single correct response option.",
      id = "CorrectAnswer",
      properties = {
        value = {
          description = "Required. The correct answer value. See the documentation for TextAnswer.value for details on how various value types are formatted.",
          type = "string",
        },
      },
      type = "object",
    },
    CorrectAnswers = {
      description = "The answer key for a question.",
      id = "CorrectAnswers",
      properties = {
        answers = {
          description = "A list of correct answers. A quiz response can be automatically graded based on these answers. For single-valued questions, a response is marked correct if it matches any value in this list (in other words, multiple correct answers are possible). For multiple-valued (`CHECKBOX`) questions, a response is marked correct if it contains exactly the values in this list.",
          items = {
            ["$ref"] = "CorrectAnswer",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreateItemRequest = {
      description = "Create an item in a form.",
      id = "CreateItemRequest",
      properties = {
        item = {
          ["$ref"] = "Item",
          description = "Required. The item to create.",
        },
        location = {
          ["$ref"] = "Location",
          description = "Required. Where to place the new item.",
        },
      },
      type = "object",
    },
    CreateItemResponse = {
      description = "The result of creating an item.",
      id = "CreateItemResponse",
      properties = {
        itemId = {
          description = "The ID of the created item.",
          type = "string",
        },
        questionId = {
          description = "The ID of the question created as part of this item, for a question group it lists IDs of all the questions created for this item.",
          items = {
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    CreateWatchRequest = {
      description = "Create a new watch.",
      id = "CreateWatchRequest",
      properties = {
        watch = {
          ["$ref"] = "Watch",
          description = "Required. The watch object. No ID should be set on this object; use `watch_id` instead.",
        },
        watchId = {
          description = "The ID to use for the watch. If specified, the ID must not already be in use. If not specified, an ID is generated. This value should be 4-63 characters, and valid characters are /a-z-/.",
          type = "string",
        },
      },
      type = "object",
    },
    DateQuestion = {
      description = "A date question. Date questions default to just month + day.",
      id = "DateQuestion",
      properties = {
        includeTime = {
          description = "Whether to include the time as part of the question.",
          type = "boolean",
        },
        includeYear = {
          description = "Whether to include the year as part of the question.",
          type = "boolean",
        },
      },
      type = "object",
    },
    DeleteItemRequest = {
      description = "Delete an item in a form.",
      id = "DeleteItemRequest",
      properties = {
        location = {
          ["$ref"] = "Location",
          description = "Required. The location of the item to delete.",
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
    ExtraMaterial = {
      description = "Supplementary material to the feedback.",
      id = "ExtraMaterial",
      properties = {
        link = {
          ["$ref"] = "TextLink",
          description = "Text feedback.",
        },
        video = {
          ["$ref"] = "VideoLink",
          description = "Video feedback.",
        },
      },
      type = "object",
    },
    Feedback = {
      description = "Feedback for a respondent about their response to a question.",
      id = "Feedback",
      properties = {
        material = {
          description = "Additional information provided as part of the feedback, often used to point the respondent to more reading and resources.",
          items = {
            ["$ref"] = "ExtraMaterial",
          },
          type = "array",
        },
        text = {
          description = "Required. The main text of the feedback.",
          type = "string",
        },
      },
      type = "object",
    },
    FileUploadAnswer = {
      description = "Info for a single file submitted to a file upload question.",
      id = "FileUploadAnswer",
      properties = {
        fileId = {
          description = "Output only. The ID of the Google Drive file.",
          readOnly = true,
          type = "string",
        },
        fileName = {
          description = "Output only. The file name, as stored in Google Drive on upload.",
          readOnly = true,
          type = "string",
        },
        mimeType = {
          description = "Output only. The MIME type of the file, as stored in Google Drive on upload.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    FileUploadAnswers = {
      description = "All submitted files for a FileUpload question.",
      id = "FileUploadAnswers",
      properties = {
        answers = {
          description = "Output only. All submitted files for a FileUpload question.",
          items = {
            ["$ref"] = "FileUploadAnswer",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    FileUploadQuestion = {
      description = "A file upload question. The API currently does not support creating file upload questions.",
      id = "FileUploadQuestion",
      properties = {
        folderId = {
          description = "Required. The ID of the Drive folder where uploaded files are stored.",
          type = "string",
        },
        maxFileSize = {
          description = "Maximum number of bytes allowed for any single file uploaded to this question.",
          format = "int64",
          type = "string",
        },
        maxFiles = {
          description = "Maximum number of files that can be uploaded for this question in a single response.",
          format = "int32",
          type = "integer",
        },
        types = {
          description = "File types accepted by this question.",
          items = {
            enum = {
              "FILE_TYPE_UNSPECIFIED",
              "ANY",
              "DOCUMENT",
              "PRESENTATION",
              "SPREADSHEET",
              "DRAWING",
              "PDF",
              "IMAGE",
              "VIDEO",
              "AUDIO",
            },
            enumDescriptions = {
              "Default value. Unused.",
              "No restrictions on type.",
              "A Google Docs document.",
              "A Google Slides presentation.",
              "A Google Sheets spreadsheet.",
              "A drawing.",
              "A PDF.",
              "An image.",
              "A video.",
              "An audio file.",
            },
            type = "string",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Form = {
      description = "A Google Forms document. A form is created in Drive, and deleting a form or changing its access protections is done via the [Drive API](https://developers.google.com/drive/api/v3/about-sdk).",
      id = "Form",
      properties = {
        formId = {
          description = "Output only. The form ID.",
          readOnly = true,
          type = "string",
        },
        info = {
          ["$ref"] = "Info",
          description = "Required. The title and description of the form.",
        },
        items = {
          description = "Required. A list of the form's items, which can include section headers, questions, embedded media, etc.",
          items = {
            ["$ref"] = "Item",
          },
          type = "array",
        },
        linkedSheetId = {
          description = "Output only. The ID of the linked Google Sheet which is accumulating responses from this Form (if such a Sheet exists).",
          readOnly = true,
          type = "string",
        },
        responderUri = {
          description = "Output only. The form URI to share with responders. This opens a page that allows the user to submit responses but not edit the questions.",
          readOnly = true,
          type = "string",
        },
        revisionId = {
          description = "Output only. The revision ID of the form. Used in the WriteControl in update requests to identify the revision on which the changes are based. The format of the revision ID may change over time, so it should be treated opaquely. A returned revision ID is only guaranteed to be valid for 24 hours after it has been returned and cannot be shared across users. If the revision ID is unchanged between calls, then the form has not changed. Conversely, a changed ID (for the same form and user) usually means the form has been updated; however, a changed ID can also be due to internal factors such as ID format changes.",
          readOnly = true,
          type = "string",
        },
        settings = {
          ["$ref"] = "FormSettings",
          description = "The form's settings. This must be updated with UpdateSettingsRequest; it is ignored during `forms.create` and UpdateFormInfoRequest.",
        },
      },
      type = "object",
    },
    FormResponse = {
      description = "A form response.",
      id = "FormResponse",
      properties = {
        answers = {
          additionalProperties = {
            ["$ref"] = "Answer",
          },
          description = "Output only. The actual answers to the questions, keyed by question_id.",
          readOnly = true,
          type = "object",
        },
        createTime = {
          description = "Output only. Timestamp for the first time the response was submitted.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        formId = {
          description = "Output only. The form ID.",
          readOnly = true,
          type = "string",
        },
        lastSubmittedTime = {
          description = "Output only. Timestamp for the most recent time the response was submitted. Does not track changes to grades.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        respondentEmail = {
          description = "Output only. The email address (if collected) for the respondent.",
          readOnly = true,
          type = "string",
        },
        responseId = {
          description = "Output only. The response ID.",
          readOnly = true,
          type = "string",
        },
        totalScore = {
          description = "Output only. The total number of points the respondent received for their submission Only set if the form was a quiz and the response was graded. This includes points automatically awarded via autograding adjusted by any manual corrections entered by the form owner.",
          format = "double",
          readOnly = true,
          type = "number",
        },
      },
      type = "object",
    },
    FormSettings = {
      description = "A form's settings.",
      id = "FormSettings",
      properties = {
        quizSettings = {
          ["$ref"] = "QuizSettings",
          description = "Settings related to quiz forms and grading.",
        },
      },
      type = "object",
    },
    Grade = {
      description = "Grade information associated with a respondent's answer to a question.",
      id = "Grade",
      properties = {
        correct = {
          description = "Output only. Whether the question was answered correctly or not. A zero-point score is not enough to infer incorrectness, since a correctly answered question could be worth zero points.",
          readOnly = true,
          type = "boolean",
        },
        feedback = {
          ["$ref"] = "Feedback",
          description = "Output only. Additional feedback given for an answer.",
          readOnly = true,
        },
        score = {
          description = "Output only. The numeric score awarded for the answer.",
          format = "double",
          readOnly = true,
          type = "number",
        },
      },
      type = "object",
    },
    Grading = {
      description = "Grading for a single question",
      id = "Grading",
      properties = {
        correctAnswers = {
          ["$ref"] = "CorrectAnswers",
          description = "Required. The answer key for the question. Responses are automatically graded based on this field.",
        },
        generalFeedback = {
          ["$ref"] = "Feedback",
          description = "The feedback displayed for all answers. This is commonly used for short answer questions when a quiz owner wants to quickly give respondents some sense of whether they answered the question correctly before they've had a chance to officially grade the response. General feedback cannot be set for automatically graded multiple choice questions.",
        },
        pointValue = {
          description = "Required. The maximum number of points a respondent can automatically get for a correct answer. This must not be negative.",
          format = "int32",
          type = "integer",
        },
        whenRight = {
          ["$ref"] = "Feedback",
          description = "The feedback displayed for correct responses. This feedback can only be set for multiple choice questions that have correct answers provided.",
        },
        whenWrong = {
          ["$ref"] = "Feedback",
          description = "The feedback displayed for incorrect responses. This feedback can only be set for multiple choice questions that have correct answers provided.",
        },
      },
      type = "object",
    },
    Grid = {
      description = "A grid of choices (radio or check boxes) with each row constituting a separate question. Each row has the same choices, which are shown as the columns.",
      id = "Grid",
      properties = {
        columns = {
          ["$ref"] = "ChoiceQuestion",
          description = "Required. The choices shared by each question in the grid. In other words, the values of the columns. Only `CHECK_BOX` and `RADIO` choices are allowed.",
        },
        shuffleQuestions = {
          description = "If `true`, the questions are randomly ordered. In other words, the rows appear in a different order for every respondent.",
          type = "boolean",
        },
      },
      type = "object",
    },
    Image = {
      description = "Data representing an image.",
      id = "Image",
      properties = {
        altText = {
          description = "A description of the image that is shown on hover and read by screenreaders.",
          type = "string",
        },
        contentUri = {
          description = "Output only. A URI from which you can download the image; this is valid only for a limited time.",
          readOnly = true,
          type = "string",
        },
        properties = {
          ["$ref"] = "MediaProperties",
          description = "Properties of an image.",
        },
        sourceUri = {
          description = "Input only. The source URI is the URI used to insert the image. The source URI can be empty when fetched.",
          type = "string",
        },
      },
      type = "object",
    },
    ImageItem = {
      description = "An item containing an image.",
      id = "ImageItem",
      properties = {
        image = {
          ["$ref"] = "Image",
          description = "Required. The image displayed in the item.",
        },
      },
      type = "object",
    },
    Info = {
      description = "The general information for a form.",
      id = "Info",
      properties = {
        description = {
          description = "The description of the form.",
          type = "string",
        },
        documentTitle = {
          description = "Output only. The title of the document which is visible in Drive. If `Info.title` is empty, `document_title` may appear in its place in the Google Forms UI and be visible to responders. `document_title` can be set on create, but cannot be modified by a batchUpdate request. Please use the [Google Drive API](https://developers.google.com/drive/api/v3/reference/files/update) if you need to programmatically update `document_title`.",
          readOnly = true,
          type = "string",
        },
        title = {
          description = "Required. The title of the form which is visible to responders.",
          type = "string",
        },
      },
      type = "object",
    },
    Item = {
      description = "A single item of the form. `kind` defines which kind of item it is.",
      id = "Item",
      properties = {
        description = {
          description = "The description of the item.",
          type = "string",
        },
        imageItem = {
          ["$ref"] = "ImageItem",
          description = "Displays an image on the page.",
        },
        itemId = {
          description = "The item ID. On creation, it can be provided but the ID must not be already used in the form. If not provided, a new ID is assigned.",
          type = "string",
        },
        pageBreakItem = {
          ["$ref"] = "PageBreakItem",
          description = "Starts a new page with a title.",
        },
        questionGroupItem = {
          ["$ref"] = "QuestionGroupItem",
          description = "Poses one or more questions to the user with a single major prompt.",
        },
        questionItem = {
          ["$ref"] = "QuestionItem",
          description = "Poses a question to the user.",
        },
        textItem = {
          ["$ref"] = "TextItem",
          description = "Displays a title and description on the page.",
        },
        title = {
          description = "The title of the item.",
          type = "string",
        },
        videoItem = {
          ["$ref"] = "VideoItem",
          description = "Displays a video on the page.",
        },
      },
      type = "object",
    },
    ListFormResponsesResponse = {
      description = "Response to a ListFormResponsesRequest.",
      id = "ListFormResponsesResponse",
      properties = {
        nextPageToken = {
          description = "If set, there are more responses. To get the next page of responses, provide this as `page_token` in a future request.",
          type = "string",
        },
        responses = {
          description = "The returned form responses. Note: The `formId` field is not returned in the `FormResponse` object for list requests.",
          items = {
            ["$ref"] = "FormResponse",
          },
          type = "array",
        },
      },
      type = "object",
    },
    ListWatchesResponse = {
      description = "The response of a ListWatchesRequest.",
      id = "ListWatchesResponse",
      properties = {
        watches = {
          description = "The returned watches.",
          items = {
            ["$ref"] = "Watch",
          },
          type = "array",
        },
      },
      type = "object",
    },
    Location = {
      description = "A specific location in a form.",
      id = "Location",
      properties = {
        index = {
          description = "The index of an item in the form. This must be in the range [0..*N*), where *N* is the number of items in the form.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MediaProperties = {
      description = "Properties of the media.",
      id = "MediaProperties",
      properties = {
        alignment = {
          description = "Position of the media.",
          enum = {
            "ALIGNMENT_UNSPECIFIED",
            "LEFT",
            "RIGHT",
            "CENTER",
          },
          enumDescriptions = {
            "Default value. Unused.",
            "Left align.",
            "Right align.",
            "Center.",
          },
          type = "string",
        },
        width = {
          description = "The width of the media in pixels. When the media is displayed, it is scaled to the smaller of this value or the width of the displayed form. The original aspect ratio of the media is preserved. If a width is not specified when the media is added to the form, it is set to the width of the media source. Width must be between 0 and 740, inclusive. Setting width to 0 or unspecified is only permitted when updating the media source.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    MoveItemRequest = {
      description = "Move an item in a form.",
      id = "MoveItemRequest",
      properties = {
        newLocation = {
          ["$ref"] = "Location",
          description = "Required. The new location for the item.",
        },
        originalLocation = {
          ["$ref"] = "Location",
          description = "Required. The location of the item to move.",
        },
      },
      type = "object",
    },
    Option = {
      description = "An option for a Choice question.",
      id = "Option",
      properties = {
        goToAction = {
          description = "Section navigation type.",
          enum = {
            "GO_TO_ACTION_UNSPECIFIED",
            "NEXT_SECTION",
            "RESTART_FORM",
            "SUBMIT_FORM",
          },
          enumDescriptions = {
            "Default value. Unused.",
            "Go to the next section.",
            "Go back to the beginning of the form.",
            "Submit form immediately.",
          },
          type = "string",
        },
        goToSectionId = {
          description = "Item ID of section header to go to.",
          type = "string",
        },
        image = {
          ["$ref"] = "Image",
          description = "Display image as an option.",
        },
        isOther = {
          description = "Whether the option is \"other\". Currently only applies to `RADIO` and `CHECKBOX` choice types, but is not allowed in a QuestionGroupItem.",
          type = "boolean",
        },
        value = {
          description = "Required. The choice as presented to the user.",
          type = "string",
        },
      },
      type = "object",
    },
    PageBreakItem = {
      description = "A page break. The title and description of this item are shown at the top of the new page.",
      id = "PageBreakItem",
      properties = {},
      type = "object",
    },
    Question = {
      description = "Any question. The specific type of question is known by its `kind`.",
      id = "Question",
      properties = {
        choiceQuestion = {
          ["$ref"] = "ChoiceQuestion",
          description = "A respondent can choose from a pre-defined set of options.",
        },
        dateQuestion = {
          ["$ref"] = "DateQuestion",
          description = "A respondent can enter a date.",
        },
        fileUploadQuestion = {
          ["$ref"] = "FileUploadQuestion",
          description = "A respondent can upload one or more files.",
        },
        grading = {
          ["$ref"] = "Grading",
          description = "Grading setup for the question.",
        },
        questionId = {
          description = "Read only. The question ID. On creation, it can be provided but the ID must not be already used in the form. If not provided, a new ID is assigned.",
          type = "string",
        },
        required = {
          description = "Whether the question must be answered in order for a respondent to submit their response.",
          type = "boolean",
        },
        rowQuestion = {
          ["$ref"] = "RowQuestion",
          description = "A row of a QuestionGroupItem.",
        },
        scaleQuestion = {
          ["$ref"] = "ScaleQuestion",
          description = "A respondent can choose a number from a range.",
        },
        textQuestion = {
          ["$ref"] = "TextQuestion",
          description = "A respondent can enter a free text response.",
        },
        timeQuestion = {
          ["$ref"] = "TimeQuestion",
          description = "A respondent can enter a time.",
        },
      },
      type = "object",
    },
    QuestionGroupItem = {
      description = "Defines a question that comprises multiple questions grouped together.",
      id = "QuestionGroupItem",
      properties = {
        grid = {
          ["$ref"] = "Grid",
          description = "The question group is a grid with rows of multiple choice questions that share the same options. When `grid` is set, all questions in the group must be of kind `row`.",
        },
        image = {
          ["$ref"] = "Image",
          description = "The image displayed within the question group above the specific questions.",
        },
        questions = {
          description = "Required. A list of questions that belong in this question group. A question must only belong to one group. The `kind` of the group may affect what types of questions are allowed.",
          items = {
            ["$ref"] = "Question",
          },
          type = "array",
        },
      },
      type = "object",
    },
    QuestionItem = {
      description = "A form item containing a single question.",
      id = "QuestionItem",
      properties = {
        image = {
          ["$ref"] = "Image",
          description = "The image displayed within the question.",
        },
        question = {
          ["$ref"] = "Question",
          description = "Required. The displayed question.",
        },
      },
      type = "object",
    },
    QuizSettings = {
      description = "Settings related to quiz forms and grading. These must be updated with the UpdateSettingsRequest.",
      id = "QuizSettings",
      properties = {
        isQuiz = {
          description = "Whether this form is a quiz or not. When true, responses are graded based on question Grading. Upon setting to false, all question Grading is deleted.",
          type = "boolean",
        },
      },
      type = "object",
    },
    RenewWatchRequest = {
      description = "Renew an existing Watch for seven days.",
      id = "RenewWatchRequest",
      properties = {},
      type = "object",
    },
    Request = {
      description = "The kinds of update requests that can be made.",
      id = "Request",
      properties = {
        createItem = {
          ["$ref"] = "CreateItemRequest",
          description = "Create a new item.",
        },
        deleteItem = {
          ["$ref"] = "DeleteItemRequest",
          description = "Delete an item.",
        },
        moveItem = {
          ["$ref"] = "MoveItemRequest",
          description = "Move an item to a specified location.",
        },
        updateFormInfo = {
          ["$ref"] = "UpdateFormInfoRequest",
          description = "Update Form's Info.",
        },
        updateItem = {
          ["$ref"] = "UpdateItemRequest",
          description = "Update an item.",
        },
        updateSettings = {
          ["$ref"] = "UpdateSettingsRequest",
          description = "Updates the Form's settings.",
        },
      },
      type = "object",
    },
    Response = {
      description = "A single response from an update.",
      id = "Response",
      properties = {
        createItem = {
          ["$ref"] = "CreateItemResponse",
          description = "The result of creating an item.",
        },
      },
      type = "object",
    },
    RowQuestion = {
      description = "Configuration for a question that is part of a question group.",
      id = "RowQuestion",
      properties = {
        title = {
          description = "Required. The title for the single row in the QuestionGroupItem.",
          type = "string",
        },
      },
      type = "object",
    },
    ScaleQuestion = {
      description = "A scale question. The user has a range of numeric values to choose from.",
      id = "ScaleQuestion",
      properties = {
        high = {
          description = "Required. The highest possible value for the scale.",
          format = "int32",
          type = "integer",
        },
        highLabel = {
          description = "The label to display describing the highest point on the scale.",
          type = "string",
        },
        low = {
          description = "Required. The lowest possible value for the scale.",
          format = "int32",
          type = "integer",
        },
        lowLabel = {
          description = "The label to display describing the lowest point on the scale.",
          type = "string",
        },
      },
      type = "object",
    },
    TextAnswer = {
      description = "An answer to a question represented as text.",
      id = "TextAnswer",
      properties = {
        value = {
          description = "Output only. The answer value. Formatting used for different kinds of question: * ChoiceQuestion * `RADIO` or `DROP_DOWN`: A single string corresponding to the option that was selected. * `CHECKBOX`: Multiple strings corresponding to each option that was selected. * TextQuestion: The text that the user entered. * ScaleQuestion: A string containing the number that was selected. * DateQuestion * Without time or year: MM-DD e.g. \"05-19\" * With year: YYYY-MM-DD e.g. \"1986-05-19\" * With time: MM-DD HH:MM e.g. \"05-19 14:51\" * With year and time: YYYY-MM-DD HH:MM e.g. \"1986-05-19 14:51\" * TimeQuestion: String with time or duration in HH:MM format e.g. \"14:51\" * RowQuestion within QuestionGroupItem: The answer for each row of a QuestionGroupItem is represented as a separate Answer. Each will contain one string for `RADIO`-type choices or multiple strings for `CHECKBOX` choices.",
          readOnly = true,
          type = "string",
        },
      },
      type = "object",
    },
    TextAnswers = {
      description = "A question's answers as text.",
      id = "TextAnswers",
      properties = {
        answers = {
          description = "Output only. Answers to a question. For multiple-value ChoiceQuestions, each answer is a separate value.",
          items = {
            ["$ref"] = "TextAnswer",
          },
          readOnly = true,
          type = "array",
        },
      },
      type = "object",
    },
    TextItem = {
      description = "A text item.",
      id = "TextItem",
      properties = {},
      type = "object",
    },
    TextLink = {
      description = "Link for text.",
      id = "TextLink",
      properties = {
        displayText = {
          description = "Required. Display text for the URI.",
          type = "string",
        },
        uri = {
          description = "Required. The URI.",
          type = "string",
        },
      },
      type = "object",
    },
    TextQuestion = {
      description = "A text-based question.",
      id = "TextQuestion",
      properties = {
        paragraph = {
          description = "Whether the question is a paragraph question or not. If not, the question is a short text question.",
          type = "boolean",
        },
      },
      type = "object",
    },
    TimeQuestion = {
      description = "A time question.",
      id = "TimeQuestion",
      properties = {
        duration = {
          description = "`true` if the question is about an elapsed time. Otherwise it is about a time of day.",
          type = "boolean",
        },
      },
      type = "object",
    },
    UpdateFormInfoRequest = {
      description = "Update Form's Info.",
      id = "UpdateFormInfoRequest",
      properties = {
        info = {
          ["$ref"] = "Info",
          description = "The info to update.",
        },
        updateMask = {
          description = "Required. Only values named in this mask are changed. At least one field must be specified. The root `info` is implied and should not be specified. A single `\"*\"` can be used as short-hand for updating every field.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateItemRequest = {
      description = "Update an item in a form.",
      id = "UpdateItemRequest",
      properties = {
        item = {
          ["$ref"] = "Item",
          description = "Required. New values for the item. Note that item and question IDs are used if they are provided (and are in the field mask). If an ID is blank (and in the field mask) a new ID is generated. This means you can modify an item by getting the form via forms.get, modifying your local copy of that item to be how you want it, and using UpdateItemRequest to write it back, with the IDs being the same (or not in the field mask).",
        },
        location = {
          ["$ref"] = "Location",
          description = "Required. The location identifying the item to update.",
        },
        updateMask = {
          description = "Required. Only values named in this mask are changed.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    UpdateSettingsRequest = {
      description = "Update Form's FormSettings.",
      id = "UpdateSettingsRequest",
      properties = {
        settings = {
          ["$ref"] = "FormSettings",
          description = "Required. The settings to update with.",
        },
        updateMask = {
          description = "Required. Only values named in this mask are changed. At least one field must be specified. The root `settings` is implied and should not be specified. A single `\"*\"` can be used as short-hand for updating every field.",
          format = "google-fieldmask",
          type = "string",
        },
      },
      type = "object",
    },
    Video = {
      description = "Data representing a video.",
      id = "Video",
      properties = {
        properties = {
          ["$ref"] = "MediaProperties",
          description = "Properties of a video.",
        },
        youtubeUri = {
          description = "Required. A YouTube URI.",
          type = "string",
        },
      },
      type = "object",
    },
    VideoItem = {
      description = "An item containing a video.",
      id = "VideoItem",
      properties = {
        caption = {
          description = "The text displayed below the video.",
          type = "string",
        },
        video = {
          ["$ref"] = "Video",
          description = "Required. The video displayed in the item.",
        },
      },
      type = "object",
    },
    VideoLink = {
      description = "Link to a video.",
      id = "VideoLink",
      properties = {
        displayText = {
          description = "Required. The display text for the link.",
          type = "string",
        },
        youtubeUri = {
          description = "The URI of a YouTube video.",
          type = "string",
        },
      },
      type = "object",
    },
    Watch = {
      description = "A watch for events for a form. When the designated event happens, a notification will be published to the specified target. The notification's attributes will include a `formId` key that has the ID of the watched form and an `eventType` key that has the string of the type. Messages are sent with at-least-once delivery and are only dropped in extraordinary circumstances. Typically all notifications should be reliably delivered within a few seconds; however, in some situations notifications may be delayed. A watch expires seven days after it is created unless it is renewed with watches.renew",
      id = "Watch",
      properties = {
        createTime = {
          description = "Output only. Timestamp of when this was created.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        errorType = {
          description = "Output only. The most recent error type for an attempted delivery. To begin watching the form again a call can be made to watches.renew which also clears this error information.",
          enum = {
            "ERROR_TYPE_UNSPECIFIED",
            "PROJECT_NOT_AUTHORIZED",
            "NO_USER_ACCESS",
            "OTHER_ERRORS",
          },
          enumDescriptions = {
            "Unspecified error type.",
            "The cloud project does not have access to the form being watched. This occurs if the user has revoked the authorization for your project to access their form(s). Watches with this error will not be retried. To attempt to begin watching the form again a call can be made to watches.renew",
            "The user that granted access no longer has access to the form being watched. Watches with this error will not be retried. To attempt to begin watching the form again a call can be made to watches.renew",
            "Another type of error has occurred. Whether notifications will continue depends on the watch state.",
          },
          readOnly = true,
          type = "string",
        },
        eventType = {
          description = "Required. Which event type to watch for.",
          enum = {
            "EVENT_TYPE_UNSPECIFIED",
            "SCHEMA",
            "RESPONSES",
          },
          enumDescriptions = {
            "Unspecified event type. This value should not be used.",
            "The schema event type. A watch with this event type will be notified about changes to form content and settings.",
            "The responses event type. A watch with this event type will be notified when form responses are submitted.",
          },
          type = "string",
        },
        expireTime = {
          description = "Output only. Timestamp for when this will expire. Each watches.renew call resets this to seven days in the future.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        id = {
          description = "Output only. The ID of this watch. See notes on CreateWatchRequest.watch_id.",
          readOnly = true,
          type = "string",
        },
        state = {
          description = "Output only. The current state of the watch. Additional details about suspended watches can be found by checking the `error_type`.",
          enum = {
            "STATE_UNSPECIFIED",
            "ACTIVE",
            "SUSPENDED",
          },
          enumDescriptions = {
            "Unspecified state.",
            "Watch is active.",
            "The watch is suspended due to an error that may be resolved. The watch will continue to exist until it expires. To attempt to reactivate the watch a call can be made to watches.renew",
          },
          readOnly = true,
          type = "string",
        },
        target = {
          ["$ref"] = "WatchTarget",
          description = "Required. Where to send the notification.",
        },
      },
      type = "object",
    },
    WatchTarget = {
      description = "The target for notification delivery.",
      id = "WatchTarget",
      properties = {
        topic = {
          ["$ref"] = "CloudPubsubTopic",
          description = "A Pub/Sub topic. To receive notifications, the topic must grant publish privileges to the Forms service account `serviceAccount:forms-notifications@system.gserviceaccount.com`. Only the project that owns a topic may create a watch with it. Pub/Sub delivery guarantees should be considered.",
        },
      },
      type = "object",
    },
    WriteControl = {
      description = "Provides control over how write requests are executed.",
      id = "WriteControl",
      properties = {
        requiredRevisionId = {
          description = "The revision ID of the form that the write request is applied to. If this is not the latest revision of the form, the request is not processed and returns a 400 bad request error.",
          type = "string",
        },
        targetRevisionId = {
          description = "The target revision ID of the form that the write request is applied to. If changes have occurred after this revision, the changes in this update request are transformed against those changes. This results in a new revision of the form that incorporates both the changes in the request and the intervening changes, with the server resolving conflicting changes. The target revision ID may only be used to write to recent versions of a form. If the target revision is too far behind the latest revision, the request is not processed and returns a 400 (Bad Request Error). The request may be retried after reading the latest version of the form. In most cases a target revision ID remains valid for several minutes after it is read, but for frequently-edited forms this window may be shorter.",
          type = "string",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "Google Forms API",
  version = "v1",
  version_module = true,
}
