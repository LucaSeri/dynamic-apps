return {
  basePath = "",
  baseUrl = "https://mybusinessqanda.googleapis.com/",
  batchPath = "batch",
  canonicalName = "My Business Q&A",
  description = "The My Business Q&A API allows questions and answers to be posted for specific listings. Note - If you have a quota of 0 after enabling the API, please request for GBP API access.",
  discoveryVersion = "v1",
  documentationLink = "https://developers.google.com/my-business/",
  fullyEncodeReservedExpansion = true,
  icons = {
    x16 = "http://www.google.com/images/icons/product/search-16.gif",
    x32 = "http://www.google.com/images/icons/product/search-32.gif",
  },
  id = "mybusinessqanda:v1",
  kind = "discovery#restDescription",
  mtlsRootUrl = "https://mybusinessqanda.mtls.googleapis.com/",
  name = "mybusinessqanda",
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
    locations = {
      resources = {
        questions = {
          methods = {
            create = {
              description = "Adds a question for the specified location.",
              flatPath = "v1/locations/{locationsId}/questions",
              httpMethod = "POST",
              id = "mybusinessqanda.locations.questions.create",
              parameterOrder = {
                "parent",
              },
              parameters = {
                parent = {
                  description = "Required. The name of the location to write a question for.",
                  location = "path",
                  pattern = "^locations/[^/]+/questions$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}",
              request = {
                ["$ref"] = "Question",
              },
              response = {
                ["$ref"] = "Question",
              },
            },
            delete = {
              description = "Deletes a specific question written by the current user.",
              flatPath = "v1/locations/{locationsId}/questions/{questionsId}",
              httpMethod = "DELETE",
              id = "mybusinessqanda.locations.questions.delete",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Required. The name of the question to delete.",
                  location = "path",
                  pattern = "^locations/[^/]+/questions/[^/]+$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+name}",
              response = {
                ["$ref"] = "Empty",
              },
            },
            list = {
              description = "Returns the paginated list of questions and some of its answers for a specified location. This operation is only valid if the specified location is verified.",
              flatPath = "v1/locations/{locationsId}/questions",
              httpMethod = "GET",
              id = "mybusinessqanda.locations.questions.list",
              parameterOrder = {
                "parent",
              },
              parameters = {
                answersPerQuestion = {
                  description = "Optional. How many answers to fetch per question. The default and maximum `answers_per_question` values are 10.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                filter = {
                  description = "Optional. A filter constraining the questions to return. The only filter currently supported is \"ignore_answered=true\"",
                  location = "query",
                  type = "string",
                },
                orderBy = {
                  description = "Optional. The order to return the questions. Valid options include 'update_time desc' and 'upvote_count desc', which will return the questions sorted descendingly by the requested field. The default sort order is 'update_time desc'.",
                  location = "query",
                  type = "string",
                },
                pageSize = {
                  description = "Optional. How many questions to fetch per page. The default and maximum `page_size` values are 10.",
                  format = "int32",
                  location = "query",
                  type = "integer",
                },
                pageToken = {
                  description = "Optional. If specified, the next page of questions is retrieved.",
                  location = "query",
                  type = "string",
                },
                parent = {
                  description = "Required. The name of the location to fetch questions for.",
                  location = "path",
                  pattern = "^locations/[^/]+/questions$",
                  required = true,
                  type = "string",
                },
              },
              path = "v1/{+parent}",
              response = {
                ["$ref"] = "ListQuestionsResponse",
              },
            },
            patch = {
              description = "Updates a specific question written by the current user.",
              flatPath = "v1/locations/{locationsId}/questions/{questionsId}",
              httpMethod = "PATCH",
              id = "mybusinessqanda.locations.questions.patch",
              parameterOrder = {
                "name",
              },
              parameters = {
                name = {
                  description = "Immutable. The unique name for the question. locations/*/questions/* This field will be ignored if set during question creation.",
                  location = "path",
                  pattern = "^locations/[^/]+/questions/[^/]+$",
                  required = true,
                  type = "string",
                },
                updateMask = {
                  description = "Required. The specific fields to update. Only question text can be updated.",
                  format = "google-fieldmask",
                  location = "query",
                  type = "string",
                },
              },
              path = "v1/{+name}",
              request = {
                ["$ref"] = "Question",
              },
              response = {
                ["$ref"] = "Question",
              },
            },
          },
          resources = {
            answers = {
              methods = {
                delete = {
                  description = "Deletes the answer written by the current user to a question.",
                  flatPath = "v1/locations/{locationsId}/questions/{questionsId}/answers:delete",
                  httpMethod = "DELETE",
                  id = "mybusinessqanda.locations.questions.answers.delete",
                  parameterOrder = {
                    "name",
                  },
                  parameters = {
                    name = {
                      description = "Required. The name of the question to delete an answer for.",
                      location = "path",
                      pattern = "^locations/[^/]+/questions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+name}/answers:delete",
                  response = {
                    ["$ref"] = "Empty",
                  },
                },
                list = {
                  description = "Returns the paginated list of answers for a specified question.",
                  flatPath = "v1/locations/{locationsId}/questions/{questionsId}/answers",
                  httpMethod = "GET",
                  id = "mybusinessqanda.locations.questions.answers.list",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    orderBy = {
                      description = "Optional. The order to return the answers. Valid options include 'update_time desc' and 'upvote_count desc', which will return the answers sorted descendingly by the requested field. The default sort order is 'update_time desc'.",
                      location = "query",
                      type = "string",
                    },
                    pageSize = {
                      description = "Optional. How many answers to fetch per page. The default and maximum `page_size` values are 10.",
                      format = "int32",
                      location = "query",
                      type = "integer",
                    },
                    pageToken = {
                      description = "Optional. If specified, the next page of answers is retrieved.",
                      location = "query",
                      type = "string",
                    },
                    parent = {
                      description = "Required. The name of the question to fetch answers for.",
                      location = "path",
                      pattern = "^locations/[^/]+/questions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/answers",
                  response = {
                    ["$ref"] = "ListAnswersResponse",
                  },
                },
                upsert = {
                  description = "Creates an answer or updates the existing answer written by the user for the specified question. A user can only create one answer per question.",
                  flatPath = "v1/locations/{locationsId}/questions/{questionsId}/answers:upsert",
                  httpMethod = "POST",
                  id = "mybusinessqanda.locations.questions.answers.upsert",
                  parameterOrder = {
                    "parent",
                  },
                  parameters = {
                    parent = {
                      description = "Required. The name of the question to write an answer for.",
                      location = "path",
                      pattern = "^locations/[^/]+/questions/[^/]+$",
                      required = true,
                      type = "string",
                    },
                  },
                  path = "v1/{+parent}/answers:upsert",
                  request = {
                    ["$ref"] = "UpsertAnswerRequest",
                  },
                  response = {
                    ["$ref"] = "Answer",
                  },
                },
              },
            },
          },
        },
      },
    },
  },
  revision = "20230117",
  rootUrl = "https://mybusinessqanda.googleapis.com/",
  schemas = {
    Answer = {
      description = "Represents an answer to a question",
      id = "Answer",
      properties = {
        author = {
          ["$ref"] = "Author",
          description = "Output only. The author of the answer. Will only be set during list operations.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The timestamp for when the answer was written. Only retrieved during ListResponse fetching.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Output only. The unique name for the answer locations/*/questions/*/answers/*",
          readOnly = true,
          type = "string",
        },
        text = {
          description = "Required. The text of the answer. It should contain at least one non-whitespace character. The maximum length is 4096 characters.",
          type = "string",
        },
        updateTime = {
          description = "Output only. The timestamp for when the answer was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        upvoteCount = {
          description = "Output only. The number of upvotes for the answer.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    Author = {
      description = "Represents the author of a question or answer",
      id = "Author",
      properties = {
        displayName = {
          description = "The display name of the user",
          type = "string",
        },
        profilePhotoUri = {
          description = "The profile photo URI of the user.",
          type = "string",
        },
        type = {
          description = "The type of user the author is.",
          enum = {
            "AUTHOR_TYPE_UNSPECIFIED",
            "REGULAR_USER",
            "LOCAL_GUIDE",
            "MERCHANT",
          },
          enumDescriptions = {
            "This should not be used.",
            "A regular user.",
            "A Local Guide",
            "The owner/manager of the location",
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
    ListAnswersResponse = {
      description = "Response message for QuestionsAndAnswers.ListAnswers",
      id = "ListAnswersResponse",
      properties = {
        answers = {
          description = "The requested answers.",
          items = {
            ["$ref"] = "Answer",
          },
          type = "array",
        },
        nextPageToken = {
          description = "If the number of answers exceeds the requested max page size, this field is populated with a token to fetch the next page of answers on a subsequent call. If there are no more answers, this field is not present in the response.",
          type = "string",
        },
        totalSize = {
          description = "The total number of answers posted for this question across all pages.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    ListQuestionsResponse = {
      description = "Response message for QuestionsAndAnswers.ListQuestions",
      id = "ListQuestionsResponse",
      properties = {
        nextPageToken = {
          description = "If the number of questions exceeds the requested max page size, this field is populated with a token to fetch the next page of questions on a subsequent call. If there are no more questions, this field is not present in the response.",
          type = "string",
        },
        questions = {
          description = "The requested questions,",
          items = {
            ["$ref"] = "Question",
          },
          type = "array",
        },
        totalSize = {
          description = "The total number of questions posted for this location across all pages.",
          format = "int32",
          type = "integer",
        },
      },
      type = "object",
    },
    Question = {
      description = "Represents a single question and some of its answers.",
      id = "Question",
      properties = {
        author = {
          ["$ref"] = "Author",
          description = "Output only. The author of the question.",
          readOnly = true,
        },
        createTime = {
          description = "Output only. The timestamp for when the question was written.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        name = {
          description = "Immutable. The unique name for the question. locations/*/questions/* This field will be ignored if set during question creation.",
          type = "string",
        },
        text = {
          description = "Required. The text of the question. It should contain at least three words and the total length should be greater than or equal to 10 characters. The maximum length is 4096 characters.",
          type = "string",
        },
        topAnswers = {
          description = "Output only. A list of answers to the question, sorted by upvotes. This may not be a complete list of answers depending on the request parameters (answers_per_question)",
          items = {
            ["$ref"] = "Answer",
          },
          readOnly = true,
          type = "array",
        },
        totalAnswerCount = {
          description = "Output only. The total number of answers posted for this question.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
        updateTime = {
          description = "Output only. The timestamp for when the question was last modified.",
          format = "google-datetime",
          readOnly = true,
          type = "string",
        },
        upvoteCount = {
          description = "Output only. The number of upvotes for the question.",
          format = "int32",
          readOnly = true,
          type = "integer",
        },
      },
      type = "object",
    },
    UpsertAnswerRequest = {
      description = "Request message for QuestionsAndAnswers.UpsertAnswer",
      id = "UpsertAnswerRequest",
      properties = {
        answer = {
          ["$ref"] = "Answer",
          description = "Required. The new answer.",
        },
      },
      type = "object",
    },
  },
  servicePath = "",
  title = "My Business Q&A API",
  version = "v1",
  version_module = true,
}
